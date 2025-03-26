// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

enum Svgs {
  text_logo,
  expand_more,
  home,
  message,
  my,
  select_home,
  select_message,
  select_my,
  close,
  back_arrow,
  email,
  add,
  arrow_down,
  arrow_left,
  arrow_right,
  arrow_up,
  arrow_up_circle,
  bell_ring,
  bell,
  caret_down,
  caret_up,
  check,
  chevron_left,
  chevron_right,
  error,
  gift,
  heart,
  star,
  leaf,
  link,
  more_horizontal,
  radio_fill,
  shop,
  volume_max,
  apple,
  kakao,
  location,
  approval,
  cloud,
  camera,
  download,
  red_error,
  mobile_button,
  menu_duo,
  ticket,
  text_logo_center, calendar,
}

class AssetSvg extends StatelessWidget {
  static const String _baseAssetPath = 'assets/svgs';
  static const String _navigationPath = '$_baseAssetPath/bottom_navigation';

  // 네비게이션 관련 SVG 리스트 정의
  static const List<Svgs> _navigationSvgs = [
    Svgs.home,
    Svgs.message,
    Svgs.my,
    Svgs.select_home,
    Svgs.select_message,
    Svgs.select_my,
  ];

  const AssetSvg({
    required this.svgPath,
    this.color,
    this.size,
    super.key,
  });

  // named constructor를 factory로 변경하여 인스턴스 재사용
  factory AssetSvg.asset(Svgs svg, {Color? color, double? size, Key? key}) {
    return AssetSvg(
      svgPath: _getSvgPath(svg),
      color: color,
      size: size,
      key: key,
    );
  }

  final String svgPath;
  final Color? color;
  final double? size;

  @override
  Widget build(BuildContext context) {
    return _buildSvg(color);
  }

  Widget _buildSvg(Color? color) {
    return SvgPicture.asset(svgPath,
        width: size,
        height: size,
        colorFilter:
            color != null ? ColorFilter.mode(color, BlendMode.srcIn) : null);
  }

  static String _getSvgPath(Svgs svg) {
    // 네비게이션 SVG 체크
    if (_navigationSvgs.contains(svg)) {
      return '$_navigationPath/${svg.name}.svg';
    }

    // 나머지는 기본 경로 사용
    return '$_baseAssetPath/${svg.name}.svg';
  }
}
