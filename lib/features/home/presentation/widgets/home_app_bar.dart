import 'package:flutter/material.dart';
import 'package:flutter_template/core/constants/app_keys.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeAppBar extends StatefulWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  State<HomeAppBar> createState() => _HomeAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(56);
}

class _HomeAppBarState extends State<HomeAppBar> {
  double opacity = 0.0;
  Duration duration = Duration.zero;

  @override
  void initState() {
    super.initState();
    _initAnimate();
  }

  void _initAnimate() {
    SharedPreferences.getInstance().then((value) {
      final homeAnimate = value.getBool(AppKeys.HOME_ANIMATE) ?? false;

      if (homeAnimate) {
        Future.delayed(Durations.medium2, () {
          setState(() {
            duration = Durations.long4;
            opacity = 1.0;
          });
        });
      } else {
        setState(() {
          opacity = 1.0;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
      child: AppBar(
        leading: AnimatedOpacity(
          opacity: opacity,
          duration: duration,
          child: Text('홈앱바'),
        ),
      ),
    );
  }
}
