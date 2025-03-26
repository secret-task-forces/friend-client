import 'package:flutter/material.dart';
import 'package:flutter_template/shared/components/base/base_page_layout.dart';
import 'package:flutter_template/shared/widgets/video/vimeo_player_with_controls.dart';

class HomeDetailPage extends StatefulWidget {
  const HomeDetailPage({
    super.key,
    required this.videoId,
    required this.hash,
  });

  final String videoId;
  final String hash;

  @override
  State<HomeDetailPage> createState() => _HomeDetailPageState();
}

class _HomeDetailPageState extends State<HomeDetailPage> {
  @override
  Widget build(BuildContext context) {
    return BasePageLayout(
      showBackArrow: true,
      title: '상세',
      child: Center(
        child: VimeoPlayerWithControls(
          videoId: widget.videoId,
          hash: widget.hash,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.5,
        ),
      ),
    );
  }
}
