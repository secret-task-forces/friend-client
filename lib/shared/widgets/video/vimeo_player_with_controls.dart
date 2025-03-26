import 'package:flutter/material.dart';
import 'package:flutter_template/shared/widgets/video/vimeo_player.dart';
import 'package:flutter_template/shared/widgets/video/vimeo_player_controller.dart';

class VimeoPlayerWithControls extends StatefulWidget {
  final String videoId;
  final String hash;
  final double? width;
  final double? height;

  const VimeoPlayerWithControls({
    super.key,
    required this.videoId,
    required this.hash,
    this.width,
    this.height,
  });

  @override
  State<VimeoPlayerWithControls> createState() =>
      _VimeoPlayerWithControlsState();
}

class _VimeoPlayerWithControlsState extends State<VimeoPlayerWithControls> {
  final _playerKey = GlobalKey<VimeoPlayerState>();
  bool _isPlayerReady = false;

  // UI 업데이트를 강제로 트리거하기 위한 변수 추가
  bool _updateTrigger = false;

  @override
  void initState() {
    super.initState();
    // 초기화 시간을 늘리고 상태 확인 로직 개선
    Future.delayed(const Duration(milliseconds: 1000), () {
      if (mounted) {
        _checkPlayerReady();
      }
    });
  }

  void _checkPlayerReady() {
    if (_playerKey.currentState != null) {
      setState(() {
        _isPlayerReady = true;
      });

      // 플레이어가 준비되면 상태 변경 리스너 설정
      _playerKey.currentState!.addStateChangedListener(_onPlayerStateChanged);
    } else {
      // 아직 준비되지 않았다면 다시 확인
      Future.delayed(const Duration(milliseconds: 500), () {
        if (mounted) {
          _checkPlayerReady();
        }
      });
    }
  }

  // 플레이어 상태 변경 리스너
  void _onPlayerStateChanged() {
    if (mounted) {
      setState(() {
        // 강제로 업데이트 트리거 토글
        _updateTrigger = !_updateTrigger;
      });
    }
  }

  @override
  void dispose() {
    // 위젯이 소멸될 때 리스너 제거
    if (_playerKey.currentState != null) {
      _playerKey.currentState!
          .removeStateChangedListener(_onPlayerStateChanged);
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        VimeoPlayer(
          key: _playerKey,
          videoId: widget.videoId,
          hash: widget.hash,
          width: widget.width,
          height: widget.height,
          autoplay: true,
          onStateChanged: _onPlayerStateChanged, // 상태 변경 콜백 전달
        ),
        if (_isPlayerReady && _playerKey.currentState != null)
          VimeoPlayerController(
            playerState: _playerKey.currentState!,
            showPlaybackControls: true,
            showRangeControls: true,
            showProgressBar: true,
          )
        else
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: CircularProgressIndicator(),
          ),
      ],
    );
  }
}
