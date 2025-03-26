import 'dart:async';
import 'dart:collection';

import 'package:flutter/material.dart';

class GlobalToastManager {
  static final GlobalToastManager _instance = GlobalToastManager._internal();
  static OverlayState? _overlayState;
  static OverlayEntry? _currentToast;
  static Timer? _timer;
  static Timer? _fadeTimer;

  // 토스트 큐 추가
  static final Queue<_ToastRequest> _toastQueue = Queue<_ToastRequest>();
  static bool _isShowingToast = false;

  factory GlobalToastManager() {
    return _instance;
  }

  GlobalToastManager._internal();

  static void init(BuildContext context) {
    debugPrint('GlobalToastManager 초기화');
    _overlayState = Overlay.of(context);
    debugPrint('OverlayState 설정됨: ${_overlayState != null}');
  }

  static void showToast({
    required Widget child,
    Duration duration = const Duration(seconds: 2),
    Duration fadeDuration = const Duration(milliseconds: 350),
    bool isDismissible = false,
    double topMargin = 67.0,
  }) {
    debugPrint('showToast 호출됨');

    if (_overlayState == null) {
      debugPrint('OverlayState가 null임');
      return;
    }

    // 현재 상태 체크 및 초기화
    if (_currentToast == null) {
      _isShowingToast = false;
    }

    debugPrint(
        '현재 토스트 상태: showing=$_isShowingToast, current=${_currentToast != null}');

    _toastQueue.add(_ToastRequest(
      child: child,
      duration: duration,
      fadeDuration: fadeDuration,
      isDismissible: isDismissible,
      topMargin: topMargin,
    ));
    debugPrint('토스트 큐에 추가: ${_toastQueue.length}개');

    if (!_isShowingToast) {
      debugPrint('토스트 표시 시작');
      _processNextToast();
    } else {
      debugPrint('이미 토스트가 표시 중');
    }
  }

  static void _processNextToast() {
    if (_toastQueue.isEmpty) {
      debugPrint('토스트 큐가 비어있음');
      _isShowingToast = false;
      return;
    }

    _isShowingToast = true;
    final request = _toastQueue.removeFirst();
    debugPrint('다음 토스트 처리 중');

    removeToast();

    try {
      final toastKey = GlobalKey<_ToastWidgetState>();
      final toastContent = _ToastWidget(
        key: toastKey,
        duration: request.fadeDuration,
        onDismiss: request.isDismissible ? removeToast : null,
        child: request.child,
      );

      _currentToast = OverlayEntry(
        builder: (context) => Positioned(
          top: request.topMargin,
          left: 20.0,
          right: 20.0,
          child: Material(
            color: Colors.transparent,
            child: toastContent,
          ),
        ),
      );

      _overlayState!.insert(_currentToast!);
      debugPrint('토스트 삽입 완료');

      _timer = Timer(request.duration, () {
        debugPrint('토스트 숨기기 타이머 시작');
        toastKey.currentState?.hide();
        _fadeTimer = Timer(request.fadeDuration, () {
          debugPrint('토스트 제거 타이머 시작');
          removeToast();
          _processNextToast();
        });
      });
    } catch (e) {
      debugPrint('토스트 처리 중 오류: $e');
      _isShowingToast = false;
    }
  }

  static void removeToast() {
    debugPrint('토스트 제거 시도');
    _timer?.cancel();
    _fadeTimer?.cancel();
    _currentToast?.remove();
    _currentToast = null;
    _isShowingToast = false;
    debugPrint('토스트 제거 완료 (showing: $_isShowingToast)');
  }
}

// 토스트 요청을 저장할 클래스
class _ToastRequest {
  final Widget child;
  final Duration duration;
  final Duration fadeDuration;
  final bool isDismissible;
  final double topMargin;

  _ToastRequest({
    required this.child,
    required this.duration,
    required this.fadeDuration,
    required this.isDismissible,
    required this.topMargin,
  });
}

class _ToastWidget extends StatefulWidget {
  final Widget child;
  final Duration duration;
  final VoidCallback? onDismiss;

  const _ToastWidget({
    super.key,
    required this.child,
    required this.duration,
    this.onDismiss,
  });

  @override
  _ToastWidgetState createState() => _ToastWidgetState();
}

class _ToastWidgetState extends State<_ToastWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: widget.duration,
    );
    _fadeAnimation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeIn,
      reverseCurve: Curves.easeOut,
    );
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void hide() {
    _controller.reverse();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onDismiss != null
          ? () {
              hide();
              Future.delayed(widget.duration, widget.onDismiss!);
            }
          : null,
      child: FadeTransition(
        opacity: _fadeAnimation,
        child: widget.child,
      ),
    );
  }
}
