import 'package:flutter/material.dart';
import 'package:flutter_template/shared/widgets/video/hls_player.dart';
import 'package:flutter_template/shared/widgets/video/m3u8_player_widget.dart';
import 'package:flutter_template/shared/widgets/video/player_config.dart';
import 'package:video_player/video_player.dart';
import 'vimeo_player.dart';

class ThumbnailPlayer extends StatefulWidget {
  final double width;
  final double height;
  final VoidCallback? onClick;

  const ThumbnailPlayer({
    super.key,
    required this.width,
    required this.height,
    this.onClick,
  });

  @override
  State<ThumbnailPlayer> createState() => _ThumbnailPlayerState();
}

class _ThumbnailPlayerState extends State<ThumbnailPlayer> {
  bool _isHovering = false;
  bool _isPlayerVisible = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // 확대 효과를 위한 오버레이 사이즈 계산
    final overlayWidth = widget.width * 1.0;
    final overlayHeight = widget.height * 1.0;
    final offsetX = (overlayWidth - widget.width) / 2;
    final offsetY = (overlayHeight - widget.height) / 2;

    return InkWell(
      onTap: () {
        widget.onClick?.call();
      },
      child: Stack(
        children: [
          // 1. 기본 썸네일 컨테이너
          Container(
            width: widget.width,
            height: widget.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(_getThumbnailUrl()),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            child: !_isPlayerVisible
                ? Center(
                    child: Icon(
                      Icons.play_circle_fill,
                      size: 64,
                      color: Colors.white.withValues(alpha: 0.8),
                    ),
                  )
                : null,
          ),

          // 2. 호버 시 보여줄 플레이어
          if (_isPlayerVisible)
            Positioned(
              left: -offsetX,
              top: -offsetY,
              child: AnimatedOpacity(
                opacity: _isHovering ? 1.0 : 0.0,
                duration: const Duration(milliseconds: 300),
                onEnd: () {
                  if (!_isHovering) {
                    setState(() {
                      _isPlayerVisible = false;
                    });
                  }
                },
                child: Container(
                  width: overlayWidth,
                  height: overlayHeight,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withValues(alpha: 0.3),
                        blurRadius: 10,
                        spreadRadius: 2,
                      ),
                    ],
                  ),
                  clipBehavior: Clip.antiAlias,
                  child: M3u8PlayerWidget(
                    config: PlayerConfig(
                      url:
                          'https://player.vimeo.com/external/1067176093.m3u8?s=a90aadb9be44d29d64419d87cd5bd1c474557f67&logging=false',
                      autoPlay: true,
                    ),
                  ),
                ),
              ),
            ),

          // 3. 호버링 이벤트 처리
          Positioned.fill(
            child: MouseRegion(
              onEnter: (_) => _onHoverStart(),
              onExit: (_) => _onHoverEnd(),
              child: Container(color: Colors.transparent),
            ),
          ),
        ],
      ),
    );
  }

  // 호버 시작 시 호출
  void _onHoverStart() {
    setState(() {
      _isHovering = true;
      _isPlayerVisible = true;
    });
  }

  // 호버 종료 시 호출
  void _onHoverEnd() {
    setState(() {
      _isPlayerVisible = false;
      _isHovering = false;
    });
  }

  // 비메오 썸네일 URL 생성
  String _getThumbnailUrl() {
    return 'https://i.vimeocdn.com/video/1067176093_640.jpg';
  }

  @override
  void dispose() {
    super.dispose();
  }
}
