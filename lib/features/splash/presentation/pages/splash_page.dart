import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_template/di/app_module.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_template/shared/foundation/app_color.dart';
import 'package:flutter_template/core/routes/app_route.dart';
import 'package:flutter_template/shared/assets/asset_svg.dart';

const preloadPngList = [];

const preloadSvgList = [];

class SplashPage extends ConsumerStatefulWidget {
  const SplashPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SplashPageState();
}

class _SplashPageState extends ConsumerState<SplashPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _checkVersionAndPreload();
    });
  }

  Future<void> _checkVersionAndPreload() async {
    try {
      final appVersion = await ref.read(appVersionProvider.future);
      final currentVersion = ref.read(appInfoProvider);

      if (!mounted) return;

      // 강제 업데이트 체크
      if (appVersion.minVersion.isNotEmpty &&
          _compareVersions(currentVersion, appVersion.minVersion) < 0) {
        context.goNamed(AppRoute.ForceUpdatePage.name);
        return;
      }

      if (mounted) {
        await _preloadAssets(context);
      }

      if (mounted) {
        context.goNamed(AppRoute.LoginPage.name);
      }
    } catch (e) {
      if (mounted) {
        await _preloadAssets(context);
      }
      if (mounted) {
        context.goNamed(AppRoute.LoginPage.name);
      }
    }
  }

  int _compareVersions(String version1, String version2) {
    final v1Parts = version1.split('.').map(int.parse).toList();
    final v2Parts = version2.split('.').map(int.parse).toList();

    for (var i = 0; i < 3; i++) {
      final v1 = v1Parts.length > i ? v1Parts[i] : 0;
      final v2 = v2Parts.length > i ? v2Parts[i] : 0;

      if (v1 != v2) {
        return v1.compareTo(v2);
      }
    }
    return 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.tint,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AssetSvg.asset(
                Svgs.text_logo,
                size: 50,
                color: AppColors.white,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Future<void> _preloadAssets(BuildContext context) async {
    // PNG 이미지 미리 로딩
    for (var pngPath in preloadPngList) {
      await precacheImage(AssetImage(pngPath), context);
    }

    for (var svgPath in preloadSvgList) {
      final loader = SvgAssetLoader(svgPath);
      await svg.cache
          .putIfAbsent(loader.cacheKey(null), () => loader.loadBytes(null));
    }
  }
}
