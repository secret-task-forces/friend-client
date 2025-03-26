import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_template/config/build_env.dart';
import 'package:flutter_template/shared/foundation/app_color.dart';
import 'package:flutter_template/shared/foundation/app_typo.dart';
import 'package:flutter_template/core/routes/app_route.dart';
import 'package:flutter_template/shared/assets/asset_svg.dart';
import 'package:flutter_template/core/utils/permission_handler.dart';

class BottomNavigationScaffold extends ConsumerStatefulWidget {
  const BottomNavigationScaffold({super.key, required this.child});

  final Widget child;

  @override
  ConsumerState<BottomNavigationScaffold> createState() =>
      _BottomNavigationScaffoldState();
}

class _BottomNavigationScaffoldState
    extends ConsumerState<BottomNavigationScaffold> {
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _getCurrentIndex(context);

    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
      ),
      body: widget.child,
    );
  }

  void _getCurrentIndex(BuildContext context) {
    final currentUri = GoRouterState.of(context).uri.toString();

    if (currentUri.startsWith('/home')) {
      _currentIndex = 0;
    } else if (currentUri.startsWith('/my')) {
      _currentIndex = 1;
    } else {
      _currentIndex = 0;
    }
  }
}

class BottomNavigationBar extends StatelessWidget {
  const BottomNavigationBar({
    super.key,
    required this.currentIndex,
  });

  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      height: 60,
      elevation: 0,
      color: AppColors.gray.shade100,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          BottomNavigationItem(
            isSelected: currentIndex == 0,
            svg: Svgs.select_home,
            label: Env.IS_DEV ? 'Home' : '홈',
            routeName: AppRoute.HomePage.name,
          ),
          BottomNavigationItem(
            isSelected: currentIndex == 1,
            svg: Svgs.select_my,
            label: '마이',
            routeName: AppRoute.MyPage.name,
          ),
        ],
      ),
    );
  }
}

class BottomNavigationItem extends StatelessWidget {
  const BottomNavigationItem({
    super.key,
    required this.isSelected,
    required this.svg,
    required this.label,
    required this.routeName,
  });

  final bool isSelected;
  final Svgs svg;
  final String label;
  final String routeName;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () => _onTap(context),
        behavior: HitTestBehavior.translucent,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 12),
              AssetSvg.asset(
                svg,
                size: 24,
                color: isSelected ? null : AppColors.gray.shade600,
              ),
              Text(
                label,
                textAlign: TextAlign.center,
                style: AppTypo.sub.copyWith(
                  color: isSelected ? AppColors.gray : AppColors.gray.shade600,
                ),
              ),
              const SizedBox(height: 4),
            ],
          ),
        ),
      ),
    );
  }

  void _onTap(BuildContext context) {
    context.goNamed(routeName);
  }
}
