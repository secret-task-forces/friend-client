import 'package:flutter/material.dart';
import 'dart:ui_web' as ui_web;
import 'package:web/web.dart' as web;

class IframeWidgetWeb extends StatelessWidget {
  final String url;
  final double? width;
  final double? height;

  const IframeWidgetWeb({
    super.key,
    required this.url,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    // Create a unique id for the iframe element
    final String iframeId = 'iframe-${DateTime.now().millisecondsSinceEpoch}';

    // Use `web.document` instead of `html.document`
    final web.HTMLIFrameElement element =
        web.document.createElement('iframe') as web.HTMLIFrameElement;
    element.src = url;
    element.style.border = 'none';

    if (width != null) {
      element.style.width = '${width}px';
    }

    if (height != null) {
      element.style.height = '${height}px';
    }

    // Use `dart:ui_web` for platformViewRegistry
    // ignore: undefined_prefixed_name
    ui_web.platformViewRegistry.registerViewFactory(
      iframeId,
      (int viewId) => element,
    );

    return HtmlElementView(viewType: iframeId);
  }
}
