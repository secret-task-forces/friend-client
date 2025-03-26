import 'package:flutter/material.dart';
import 'vimeo_player.dart';

class VimeoPlayerController extends StatefulWidget {
  final VimeoPlayerState playerState;
  final bool showPlaybackControls;
  final bool showRangeControls;
  final bool showProgressBar;

  const VimeoPlayerController({
    super.key,
    required this.playerState,
    this.showPlaybackControls = true,
    this.showRangeControls = true,
    this.showProgressBar = true,
  });

  @override
  State<VimeoPlayerController> createState() => _VimeoPlayerControllerState();
}

class _VimeoPlayerControllerState extends State<VimeoPlayerController> {
  // 시간 입력을 위한 컨트롤러
  late final TextEditingController _startTimeController;
  late final TextEditingController _endTimeController;

  @override
  void initState() {
    super.initState();
    _startTimeController = TextEditingController(
      text: widget.playerState.startTime.toString(),
    );
    _endTimeController = TextEditingController(
      text: widget.playerState.endTime.toString(),
    );
  }

  @override
  void dispose() {
    _startTimeController.dispose();
    _endTimeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // 재생 컨트롤
        if (widget.showPlaybackControls)
          VimeoPlaybackControls(
            isPlaying: widget.playerState.isPlaying,
            playbackRate: widget.playerState.playbackRate,
            onTogglePlay: widget.playerState.togglePlay,
            onSetPlaybackRate: widget.playerState.setPlaybackRate,
            onSeekTo: widget.playerState.seekTo,
            onGetVideoInfo: widget.playerState.getVideoInfo,
          ),

        if (widget.showPlaybackControls &&
            (widget.showRangeControls || widget.showProgressBar))
          const SizedBox(height: 16),

        // 구간 반복 컨트롤
        if (widget.showRangeControls)
          VimeoRangeSelector(
            startTimeController: _startTimeController,
            endTimeController: _endTimeController,
            onUpdateRangeTime: () {
              widget.playerState.updateRangeTime(
                int.parse(_startTimeController.text),
                int.parse(_endTimeController.text),
              );
            },
            isRangeLooping: widget.playerState.isRangeLooping,
            onToggleRangeLoop: () {
              if (widget.playerState.isRangeLooping) {
                widget.playerState.stopRangeLoop();
              } else {
                widget.playerState.startRangeLoop();
              }
            },
            startTime: widget.playerState.startTime,
            endTime: widget.playerState.endTime,
          ),

        if (widget.showRangeControls && widget.showProgressBar)
          const SizedBox(height: 16),

        // 진행 상태 표시
        if (widget.showProgressBar)
          VimeoProgressBar(
            currentTime: widget.playerState.currentTime,
            duration: widget.playerState.duration,
            onSliderChange: widget.playerState.handleSliderChange,
            formatDuration: widget.playerState.formatDuration,
          ),
      ],
    );
  }
}

// 1. 재생 컨트롤 버튼 위젯
class VimeoPlaybackControls extends StatelessWidget {
  final bool isPlaying;
  final double playbackRate;
  final VoidCallback onTogglePlay;
  final Function(double) onSetPlaybackRate;
  final Function(int) onSeekTo;
  final VoidCallback onGetVideoInfo;

  const VimeoPlaybackControls({
    super.key,
    required this.isPlaying,
    required this.playbackRate,
    required this.onTogglePlay,
    required this.onSetPlaybackRate,
    required this.onSeekTo,
    required this.onGetVideoInfo,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          icon: Icon(isPlaying ? Icons.pause : Icons.play_arrow),
          onPressed: onTogglePlay,
        ),
        // const 사용으로 리빌드 방지
        const SizedBox(width: 8),
        ElevatedButton(
          onPressed: () => onSetPlaybackRate(0.5),
          child: const Text('0.5x'),
        ),
        const SizedBox(width: 8),
        ElevatedButton(
          onPressed: () => onSetPlaybackRate(1.0),
          child: const Text('1.0x'),
        ),
        const SizedBox(width: 8),
        ElevatedButton(
          onPressed: () => onSetPlaybackRate(1.5),
          child: const Text('1.5x'),
        ),
        const SizedBox(width: 16),
        ElevatedButton(onPressed: () => onSeekTo(0), child: const Text('처음으로')),
        const SizedBox(width: 8),
        ElevatedButton(
          onPressed: () => onSeekTo(30),
          child: const Text('30초로'),
        ),
        const SizedBox(width: 16),
        ElevatedButton(
          onPressed: onGetVideoInfo,
          child: const Text('비디오 정보 가져오기'),
        ),
      ],
    );
  }
}

// 2. 시간 범위 설정 컴포넌트
class VimeoRangeSelector extends StatelessWidget {
  final TextEditingController startTimeController;
  final TextEditingController endTimeController;
  final VoidCallback onUpdateRangeTime;
  final bool isRangeLooping;
  final VoidCallback onToggleRangeLoop;
  final int startTime;
  final int endTime;

  const VimeoRangeSelector({
    super.key,
    required this.startTimeController,
    required this.endTimeController,
    required this.onUpdateRangeTime,
    required this.isRangeLooping,
    required this.onToggleRangeLoop,
    required this.startTime,
    required this.endTime,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // 시간 입력 필드
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 50,
              child: TextField(
                controller: startTimeController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: '시작',
                  contentPadding: EdgeInsets.all(8),
                ),
              ),
            ),
            const Text(' ~ '),
            SizedBox(
              width: 50,
              child: TextField(
                controller: endTimeController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: '종료',
                  contentPadding: EdgeInsets.all(8),
                ),
              ),
            ),
            const SizedBox(width: 8),
            ElevatedButton(
              onPressed: onUpdateRangeTime,
              child: const Text('시간 설정'),
            ),
          ],
        ),
        // 구간 반복 버튼
        ElevatedButton(
          onPressed: onToggleRangeLoop,
          child: Text(
            isRangeLooping ? '구간 반복 끄기' : '$startTime-$endTime초 구간 반복',
          ),
        ),
      ],
    );
  }
}

// 3. 진행 시간 및 슬라이더 컴포넌트
class VimeoProgressBar extends StatelessWidget {
  final double currentTime;
  final double duration;
  final Function(double) onSliderChange;
  final String Function(double) formatDuration;

  const VimeoProgressBar({
    super.key,
    required this.currentTime,
    required this.duration,
    required this.onSliderChange,
    required this.formatDuration,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(formatDuration(currentTime)),
        Expanded(
          child: Slider(
            value: currentTime.clamp(0, duration > 0 ? duration : 1),
            max: duration > 0 ? duration : 1,
            onChanged: onSliderChange,
          ),
        ),
        Text(formatDuration(duration)),
      ],
    );
  }
}
