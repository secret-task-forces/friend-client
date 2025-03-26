// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';

enum Pngs {
  google,
}

class AssetPng extends StatelessWidget {
  static const String _baseAssetPath = 'assets/pngs';

  const AssetPng({
    required this.pngPath,
    this.color,
    this.width,
    this.height,
    super.key,
  });

  final String pngPath;
  final Color? color;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return _buildPng(color);
  }

  Widget _buildPng(Color? color) {
    return Image.asset(
      pngPath,
      width: width,
      height: height,
      color: color,
    );
  }

  factory AssetPng.asset(Pngs png,
      {Color? color, double? width, double? height, Key? key}) {
    return AssetPng(
      pngPath: _getpngPath(png),
      color: color,
      width: width,
      height: height,
      key: key,
    );
  }

  static String _getpngPath(Pngs png) {
    return '$_baseAssetPath/${png.name}.png';
  }
}
