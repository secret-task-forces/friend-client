import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/core/routes/app_route.dart';
import 'package:flutter_template/features/home/di/home_module.dart';
import 'package:flutter_template/features/home/presentation/widgets/home_app_bar.dart';
import 'package:flutter_template/shared/components/base/base_page_layout.dart';
import 'package:flutter_template/shared/components/feedback/app_error_widget.dart';
import 'package:flutter_template/shared/widgets/video/m3u8_player_widget.dart';
import 'package:flutter_template/shared/widgets/video/player_config.dart';
import 'package:flutter_template/shared/widgets/video/vimeo_thumbnail_player.dart';
import 'package:go_router/go_router.dart';
import 'package:video_player/video_player.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
// 비메오 비디오 샘플 목록
    final List<Map<String, String>> videos = List.generate(100, (index) {
      return {
        'id': '1067176093',
        'hash': '594472a515',
        'title': '샘플 비디오 $index',
      };
    });

    return BasePageLayout(
      title: '홈',
      child: Column(
        children: [
          // M3u8PlayerWidget(
          //   config: PlayerConfig(
          //     url:
          //         'https://player.vimeo.com/external/1067176093.m3u8?s=a90aadb9be44d29d64419d87cd5bd1c474557f67&logging=false',
          //     autoPlay: true,
          //   ),
          // ),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              childAspectRatio: 413 / 260,
            ),
            itemCount: videos.length,
            itemBuilder: (context, index) {
              final video = videos[index];

              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ThumbnailPlayer(
                    width: 413,
                    height: 232,
                    onClick: () {
                      context.goNamed(AppRoute.HomeDetailPage.name,
                          queryParameters: {
                            'videoId': video['id']!,
                            'hash': video['hash']!,
                          });
                    },
                  ),
                  const SizedBox(height: 8),
                  Text(
                    video['title']!,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
