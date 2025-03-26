// ignore_for_file: constant_identifier_names

import 'dart:js_interop';
import 'package:web/web.dart' as web;

import 'package:flutter/material.dart';

class VimeoPlayer extends StatefulWidget {
  final String videoId;
  final String hash;
  final double? width;
  final double? height;
  final int? rangeStart; // 구간 반복 시작 시간
  final int? rangeEnd; // 구간 반복 종료 시간
  final bool autoplay; // 자동 재생 파라미터 추가
  final bool muted; // 음소거 파라미터 추가
  final bool showControls; // 컨트롤 표시 여부 옵션 추가
  final VoidCallback? onClick; // 클릭 이벤트 콜백 추가
  final VoidCallback? onStateChanged; // 상태 변경 콜백 추가

  const VimeoPlayer({
    super.key,
    required this.videoId,
    required this.hash,
    this.width,
    this.height,
    this.rangeStart,
    this.rangeEnd,
    this.autoplay = false, // 기본값은 false
    this.muted = false, // 기본값은 false
    this.showControls = false, // 기본값은 false
    this.onClick, // 클릭 콜백 추가
    this.onStateChanged, // 콜백 파라미터 추가
  });

  @override
  State<VimeoPlayer> createState() => VimeoPlayerState();
}

class VimeoPlayerState extends State<VimeoPlayer> {
  // 이벤트 이름 상수 (8번 최적화 함께 적용)
  static const String _EVENT_TIME_UPDATE = 'vimeoTimeUpdate';
  static const String _EVENT_PLAY = 'vimeoPlay';
  static const String _EVENT_PAUSE = 'vimeoPause';
  static const String _EVENT_DURATION = 'vimeoDuration';
  static const String _EVENT_INITIALIZED = 'vimeoInitialized';

  // 이벤트 리스너 관리를 위한 맵 추가
  final Map<String, JSFunction> _registeredEventListeners = {};

  late final String playerId;
  double playbackRate = 1.0;
  bool isLooping = false;
  bool isRangeLooping = false; // 구간 반복 상태
  int startTime = 4; // 시작 시간 (초)
  int endTime = 8; // 종료 시간 (초)
  bool isPlaying = false;
  double currentTime = 0;
  double duration = 0;
  bool _isIframeLoaded = false; // iframe 로드 상태
  bool _isPlayerInitialized = false; // 플레이어 초기화 상태

  final List<VoidCallback> _stateChangedListeners = [];

  // 상태 변경 리스너 추가 메서드
  void addStateChangedListener(VoidCallback listener) {
    _stateChangedListeners.add(listener);
  }

  // 상태 변경 리스너 제거 메서드
  void removeStateChangedListener(VoidCallback listener) {
    _stateChangedListeners.remove(listener);
  }

  // 모든 리스너에게 상태 변경 알림
  void _notifyStateChanged() {
    // 위젯 콜백 호출
    widget.onStateChanged?.call();

    // 등록된 모든 리스너 호출
    for (final listener in _stateChangedListeners) {
      listener();
    }
  }

  // 1번 최적화: 공통 JS 실행 함수
  void _executeJs(String jsCode) {
    final scriptElement =
        web.document.createElement('script') as web.HTMLScriptElement;
    scriptElement.textContent = jsCode;
    web.document.body?.appendChild(scriptElement);

    // 스크립트 실행 후 제거 (메모리 누수 방지)
    Future.delayed(Duration.zero, () {
      try {
        if (scriptElement.parentNode != null) {
          web.document.body?.removeChild(scriptElement);
        }
      } catch (e) {
        // 제거 실패 시 오류 무시
      }
    });
  }

  @override
  void initState() {
    super.initState();
    playerId = 'vimeo-player-${DateTime.now().millisecondsSinceEpoch}';

    // 시작/종료 시간 초기 설정
    if (widget.rangeStart != null) startTime = widget.rangeStart!;
    if (widget.rangeEnd != null) endTime = widget.rangeEnd!;

    _setupTimeUpdateListener();
  }

  // iframe과 API 모두 로드되었는지 확인하고 플레이어 초기화
  void _tryInitPlayer() {
    if (_isIframeLoaded && !_isPlayerInitialized) {
      _initializePlayer();
    }
  }

  // 플레이어 초기화 (한 번만 실행)
  void _initializePlayer() {
    if (_isPlayerInitialized) return; // 이미 초기화되었으면 무시

    _executeJs('''
      try {
        // 전역 변수 초기화
        window.vimeoPlayers = window.vimeoPlayers || {};
        
        // 이미 초기화된 플레이어가 없는지 확인
        if (!window.vimeoPlayers['$playerId']) {
          console.log('플레이어 초기화: $playerId');
          var player = new Vimeo.Player('$playerId');
          window.vimeoPlayers['$playerId'] = player;
          
          // 기본 이벤트 핸들러 등록
          player.getDuration().then(function(duration) {
            document.dispatchEvent(new CustomEvent('vimeoDuration_$playerId', { 
              detail: duration 
            }));
          });
          
          // 재생 이벤트
          player.on('play', function() {
            document.dispatchEvent(new CustomEvent('vimeoPlay_$playerId', { detail: true }));
          });
          
          // 일시정지 이벤트
          player.on('pause', function() {
            document.dispatchEvent(new CustomEvent('vimeoPause_$playerId', { detail: false }));
          });
          
          // 초기화 완료 이벤트
          document.dispatchEvent(new CustomEvent('vimeoInitialized_$playerId'));
        }
      } catch (err) {
        console.error('플레이어 초기화 오류:', err);
      }
    ''');

    // 초기화 완료 리스너
    web.document.addEventListener(
      'vimeoInitialized_$playerId',
      ((web.Event _) {
        setState(() => _isPlayerInitialized = true);

        // 인터벌 시작 - 초기화 직후 한 번만 설정
        _startGlobalTimeInterval();

        if (widget.muted) {
          _withPlayer('''
            player.setMuted(true).catch(function(error) {
              console.error('초기 음소거 설정 오류:', error);
            });
          ''');
        }
      }).toJS,
    );
  }

  // 글로벌 시간 업데이트 인터벌 시작 (수정)
  void _startGlobalTimeInterval() {
    _withPlayer('''
      (function() {
        // 이미 활성화된 인터벌이 있으면 제거
        if (window.vimeoTimeInterval && window.vimeoTimeInterval['$playerId']) {
          clearInterval(window.vimeoTimeInterval['$playerId']);
        }
        
        console.log('시간 인터벌 시작 (구간 반복: ' + (window.isVimeoRangeLoopActive && window.isVimeoRangeLoopActive['$playerId'] ? '활성화' : '비활성화') + ')');
        
        // 새 인터벌 설정
        window.vimeoTimeInterval = window.vimeoTimeInterval || {};
        window.vimeoTimeInterval['$playerId'] = setInterval(function() {
          var player = window.vimeoPlayers['$playerId'];
          if (!player) return;
          
          // 현재 시간 가져오기
          player.getCurrentTime().then(function(time) {
            // 시간 업데이트 이벤트 발생
            document.dispatchEvent(new CustomEvent('vimeoTimeUpdate_$playerId', { 
              detail: time 
            }));
            
            // 전역 플래그로 구간 반복 체크
            var isActive = window.isVimeoRangeLoopActive && window.isVimeoRangeLoopActive['$playerId'];
            if (isActive && time >= $endTime) {
              console.log('구간 반복 실행: ' + time + '초 → ' + $startTime + '초');
              player.setCurrentTime($startTime).then(function() {
                document.dispatchEvent(new CustomEvent('vimeoTimeUpdate_$playerId', { 
                  detail: $startTime
                }));
                
                // 재생 상태 확인 (getPaused는 일시정지 상태이면 true를 반환)
                player.getPaused().then(function(isPaused) {
                  if (!isPaused) {
                    // 일시정지 상태가 아니면(= 재생 중이면) 재생 시작
                    player.play();
                  }
                }).catch(function(err) {
                  console.error('재생 상태 확인 오류:', err);
                });
              });
            }
          }).catch(function(err) {
            console.error('시간 가져오기 오류:', err);
          });
        }, 100);
      })();
    ''');
  }

  // 플레이어가 사용 가능한지 확인하고 JS 코드 실행
  void _withPlayer(String playerCode) {
    // 플레이어가 초기화되지 않았으면 초기화 시도
    if (!_isPlayerInitialized && _isIframeLoaded) {
      _initializePlayer();
    }

    _executeJs('''
      try {
        // 플레이어 인스턴스 확인
        if (window.vimeoPlayers && window.vimeoPlayers['$playerId']) {
          var player = window.vimeoPlayers['$playerId'];
          $playerCode
        } else {
          console.warn('Vimeo player not ready yet for: $playerId');
        }
      } catch (err) {
        console.error('Error with Vimeo player operation:', err);
      }
    ''');
  }

  // 3번 최적화: 통합 상태 업데이트 메서드
  void _updatePlayerState({
    double? newCurrentTime,
    double? newDuration,
    bool? newIsPlaying,
    double? newPlaybackRate,
    bool? newIsLooping,
    bool? newIsRangeLooping,
    int? newStartTime,
    int? newEndTime,
  }) {
    setState(() {
      if (newCurrentTime != null) currentTime = newCurrentTime;
      if (newDuration != null) duration = newDuration;
      if (newIsPlaying != null) isPlaying = newIsPlaying;
      if (newPlaybackRate != null) playbackRate = newPlaybackRate;
      if (newIsLooping != null) isLooping = newIsLooping;
      if (newIsRangeLooping != null) isRangeLooping = newIsRangeLooping;
      if (newStartTime != null) startTime = newStartTime;
      if (newEndTime != null) endTime = newEndTime;
    });

    // 상태 변경 알림
    _notifyStateChanged();
  }

  // 진행 시간 업데이트를 위한 이벤트 리스너 설정 (개선된 버전)
  void _setupTimeUpdateListener() {
    // 시간 업데이트 이벤트
    _registerEventListener(
      _EVENT_TIME_UPDATE,
      ((web.Event event) {
        if (event.isA<web.CustomEvent>()) {
          final customEvent = event as web.CustomEvent;
          if (customEvent.detail.isA<JSNumber>()) {
            _updatePlayerState(
              newCurrentTime: (customEvent.detail as JSNumber).toDartDouble,
            );
          }
        }
      }).toJS,
    );

    // 재생 상태 이벤트
    _registerEventListener(
      _EVENT_PLAY,
      ((web.Event _) {
        _updatePlayerState(newIsPlaying: true);
      }).toJS,
    );

    _registerEventListener(
      _EVENT_PAUSE,
      ((web.Event _) {
        _updatePlayerState(newIsPlaying: false);
      }).toJS,
    );

    // 재생 시간 이벤트
    _registerEventListener(
      _EVENT_DURATION,
      ((web.Event event) {
        if (event.isA<web.CustomEvent>()) {
          final customEvent = event as web.CustomEvent;
          if (customEvent.detail.isA<JSNumber>()) {
            _updatePlayerState(
              newDuration: (customEvent.detail as JSNumber).toDartDouble,
            );
          }
        }
      }).toJS,
    );

    // 초기화 이벤트
    _registerEventListener(
      _EVENT_INITIALIZED,
      ((web.Event _) {
        setState(() => _isPlayerInitialized = true);

        // 인터벌 시작 - 초기화 직후 한 번만 설정
        _startGlobalTimeInterval();
      }).toJS,
    );
  }

  // JS 자원 정리 최적화
  void _cleanupJsResources() {
    _executeJs('''
      (function() {
        console.log('Vimeo 플레이어 리소스 정리 시작: $playerId');
        
        // 인터벌 정리
        if (window.vimeoTimeInterval && window.vimeoTimeInterval['$playerId']) {
          clearInterval(window.vimeoTimeInterval['$playerId']);
          delete window.vimeoTimeInterval['$playerId'];
          console.log('인터벌 정리 완료');
        }
        
        // 구간 반복 플래그 정리
        if (window.isVimeoRangeLoopActive) {
          delete window.isVimeoRangeLoopActive['$playerId'];
        }
        
        // 플레이어 정리
        if (window.vimeoPlayers && window.vimeoPlayers['$playerId']) {
          try {
            var player = window.vimeoPlayers['$playerId'];
            // 이벤트 리스너 제거
            player.off('play');
            player.off('pause');
            player.off('timeupdate');
            player.off('loaded');
            console.log('Vimeo 이벤트 리스너 정리 완료');
            
            // 가능하면 플레이어 자원 해제
            if (typeof player.destroy === 'function') {
              player.destroy().catch(function(err) {
                console.warn('플레이어 정리 중 오류:', err);
              });
            }
          } catch(err) {
            console.error('플레이어 정리 중 오류:', err);
          }
          
          // 플레이어 인스턴스 삭제
          delete window.vimeoPlayers['$playerId'];
          console.log('플레이어 인스턴스 정리 완료');
        }
        
        console.log('Vimeo 플레이어 리소스 정리 완료: $playerId');
      })();
    ''');
  }

  @override
  void dispose() {
    // Flutter 이벤트 리스너 정리
    _removeAllEventListeners();

    // JS 리소스 정리
    _cleanupJsResources();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width,
      height: widget.height,
      child: HtmlElementView.fromTagName(
        tagName: 'div',
        onElementCreated: (Object div) {
          div as web.HTMLDivElement;
          div.style
            ..width = '100%'
            ..height = '100%'
            ..position = 'relative';

          // 클릭 이벤트 처리를 위한 사용자 정의 이벤트 핸들러 등록
          if (widget.onClick != null) {
            _registerEventListener(
              'vimeoPlayerClicked',
              ((web.Event _) {
                widget.onClick!(); // Flutter에서 콜백 실행
              }).toJS,
            );
          }

          div.innerHTML = '''
            ${widget.onClick != null ? '''
            <div style="position:absolute;top:0;left:0;width:100%;height:100%;z-index:1;cursor:pointer;"
                 onclick="document.dispatchEvent(new CustomEvent('vimeoPlayerClicked_$playerId'))"></div>
            ''' : widget.hash.isNotEmpty ? '''
            ''' : ''}
            <iframe 
              id="$playerId"
              src="https://player.vimeo.com/video/${widget.videoId}?h=${widget.hash}&badge=0&autopause=0&controls=${widget.showControls ? '1' : '0'}&player_id=$playerId${widget.autoplay ? '&autoplay=1' : ''}}" 
              frameborder="0" 
              allow="autoplay; fullscreen; picture-in-picture; clipboard-write; encrypted-media" 
              style="position:absolute;top:0;left:0;width:100%;height:100%;" 
              title="Vimeo Player"
              onload="document.dispatchEvent(new CustomEvent('vimeoIframeLoaded_$playerId'));"
            >
            </iframe>
          '''
              .toJS;

          // iframe 로드 이벤트 리스너
          _registerEventListener(
            'vimeoIframeLoaded',
            ((web.Event _) {
              setState(() => _isIframeLoaded = true);
              _tryInitPlayer();
            }).toJS,
          );
        },
      ),
    );
  }

  // 이벤트 리스너 등록 메서드
  void _registerEventListener(String eventName, JSFunction callback) {
    final fullEventName = '${eventName}_$playerId';

    // 기존 리스너가 있으면 먼저 제거
    if (_registeredEventListeners.containsKey(fullEventName)) {
      web.document.removeEventListener(
        fullEventName,
        _registeredEventListeners[fullEventName]!,
      );
    }

    // 새 리스너 등록
    web.document.addEventListener(fullEventName, callback);
    _registeredEventListeners[fullEventName] = callback;
  }

  // 모든 이벤트 리스너 제거
  void _removeAllEventListeners() {
    for (final entry in _registeredEventListeners.entries) {
      try {
        web.document.removeEventListener(entry.key, entry.value);
      } catch (e) {
        debugPrint('이벤트 리스너 제거 오류: $e');
      }
    }
    _registeredEventListeners.clear();
  }

  // ===========================================
  // ======= 외부에서 접근 가능한 메서드들 =======
  // ===========================================

  // 재생/일시정지 전환
  void togglePlay() {
    final newPlayingState = !isPlaying;

    _withPlayer('''
      if (${!newPlayingState}) {
        player.pause();
      } else {
        player.play();
      }
    ''');

    _updatePlayerState(newIsPlaying: newPlayingState);

    // 시간 업데이트 로직 개선을 위해 강제로 인터벌 재시작
    _startGlobalTimeInterval();
  }

  // 재생 속도 설정
  void setPlaybackRate(double rate) {
    _withPlayer('''
      player.setPlaybackRate($rate);
    ''');
    _updatePlayerState(newPlaybackRate: rate);
  }

  // 특정 시간으로 이동
  void seekTo(int seconds) {
    _withPlayer('''
      player.setCurrentTime($seconds);
    ''');
  }

  // 슬라이더 값 변경 처리
  void handleSliderChange(double value) {
    seekTo(value.round());
    _updatePlayerState(newCurrentTime: value);
  }

  // 시간 포맷 설정
  String formatDuration(double seconds) {
    final duration = Duration(seconds: seconds.round());
    final minutes = duration.inMinutes;
    final remainingSeconds = duration.inSeconds - minutes * 60;
    return '$minutes:${remainingSeconds.toString().padLeft(2, '0')}';
  }

  // 음소거 설정
  void setMuted(bool muted) {
    _withPlayer('''
      (function() {
        console.log('음소거 명령 실행: ' + ($muted ? '음소거' : '소리 켜기'));
        
        try {
          var player = window.vimeoPlayers['$playerId'];
          if (!player) {
            console.error('플레이어를 찾을 수 없음');
            return;
          }
          
          player.setMuted($muted)
            .then(function() {
              console.log('음소거 상태 변경 성공: ' + ($muted ? '음소거' : '소리 켜기'));
              document.dispatchEvent(new CustomEvent('vimeoMuteChanged_$playerId', { 
                detail: $muted 
              }));
            })
            .catch(function(error) {
              console.error('음소거 설정 오류:', error);
            });
        } catch(err) {
          console.error('음소거 설정 중 오류 발생:', err);
        }
      })();
    ''');

    // 이벤트 리스너가 없는 경우 추가
    if (!_registeredEventListeners.containsKey('vimeoMuteChanged_$playerId')) {
      _registerEventListener(
        'vimeoMuteChanged',
        ((web.Event event) {
          if (event.isA<web.CustomEvent>()) {
            final customEvent = event as web.CustomEvent;
            if (customEvent.detail.isA<JSBoolean>()) {
              print(
                '음소거 상태 이벤트 수신: ${(customEvent.detail as JSBoolean).toDart}',
              );
            }
          }
        }).toJS,
      );
    }
  }

  // 구간 반복 시작
  void startRangeLoop() {
    if (isRangeLooping) return; // 이미 활성화된 경우 무시

    // 상태 변경
    _updatePlayerState(newIsRangeLooping: true);

    // 로그 출력 및 인터벌에 상태 변경 알림
    _withPlayer('''
      (function() {
        console.log('구간 반복 시작: $startTime - $endTime초');
        // 전역 플래그 설정 (인터벌에서 참조 가능)
        window.isVimeoRangeLoopActive = window.isVimeoRangeLoopActive || {};
        window.isVimeoRangeLoopActive['$playerId'] = true;
        
        // 상태 변경 이벤트 발생
        document.dispatchEvent(new CustomEvent('vimeoRangeLoopStatusChanged_$playerId', {
          detail: true
        }));
      })();
    ''');

    // 인터벌 재시작 - 새로운 상태 반영
    _startGlobalTimeInterval();
  }

  // 구간 반복 중지
  void stopRangeLoop() {
    if (!isRangeLooping) return; // 이미 비활성화된 경우 무시

    // 상태 변경
    _updatePlayerState(newIsRangeLooping: false);

    // 로그 출력 및 인터벌에 상태 변경 알림
    _withPlayer('''
      (function() {
        console.log('구간 반복 중지');
        // 전역 플래그 제거
        if (window.isVimeoRangeLoopActive) {
          window.isVimeoRangeLoopActive['$playerId'] = false;
        }
        
        // 상태 변경 이벤트 발생
        document.dispatchEvent(new CustomEvent('vimeoRangeLoopStatusChanged_$playerId', {
          detail: false
        }));
      })();
    ''');

    // 인터벌 재시작 - 새로운 상태 반영
    _startGlobalTimeInterval();
  }

  // 구간 반복 시간 업데이트
  void updateRangeTime(int newStartTime, int newEndTime) {
    // 시간이 변경되었는지 확인
    final timeChanged = newStartTime != startTime || newEndTime != endTime;

    // 시간 업데이트
    _updatePlayerState(newStartTime: newStartTime, newEndTime: newEndTime);

    // 시간이 변경된 경우 인터벌 재시작
    if (timeChanged) {
      _startGlobalTimeInterval();
    }
  }

  // 비디오 정보 콘솔에 출력
  void getVideoInfo() {
    _withPlayer('''
      player.getVideoTitle().then(function(title) {
        console.log('비디오 제목:', title);
      });
      
      player.getDuration().then(function(duration) {
        console.log('비디오 길이:', duration, '초');
      });
    ''');
  }
}
