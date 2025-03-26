import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter_template/shared/components/base/base_toast.dart';
import 'package:flutter_template/shared/assets/asset_svg.dart';

abstract class ToastUtils {
  static void showToast(
      {required BuildContext context,
      required FToast fToast,
      required Svgs svg,
      required String text,
      Color? svgColor}) {
    Widget toast = BaseToast(
      svg: svg,
      svgColor: svgColor,
      text: text,
    );

    fToast.removeCustomToast();

    if (context.mounted) {
      fToast.showToast(
        gravity: ToastGravity.TOP,
        toastDuration: const Duration(seconds: 3),
        positionedToastBuilder: (context, child, position) {
          return Positioned(
            bottom: kIsWeb ? 64.0 : (Platform.isIOS ? 102.0 : 64.0),
            left: 20.0,
            right: 20.0,
            child: child,
          );
        },
        child: toast,
      );
    }
  }
}
