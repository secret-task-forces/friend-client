import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

// Conditionally import the web-specific implementation
import 'iframe_widget_web.dart' if (kIsWeb) 'iframe_widget_web.dart';

class IframeWidget extends StatelessWidget {
  final String url;
  final double? width;
  final double? height;

  const IframeWidget({
    super.key,
    required this.url,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    if (!kIsWeb) {
      return const Center(
        child: Text('Web에서만 지원되는 위젯입니다.'),
      );
    }

    // Use the web-specific implementation if available
    if (kIsWeb) {
      return IframeWidgetWeb(url: url, width: width, height: height);
    }

    // Fallback for non-web platforms (should not happen if kIsWeb check is correct)
    return Container();
  }
}
