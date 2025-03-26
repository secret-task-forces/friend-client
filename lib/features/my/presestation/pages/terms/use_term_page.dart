import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/config/build_env.dart';
import 'package:flutter_template/shared/components/feedback/app_loading_widget.dart';
import 'package:flutter_template/shared/components/base/base_error_scaffold.dart';
import 'package:flutter_template/shared/components/base/base_scaffold.dart';
import 'package:webview_flutter/webview_flutter.dart';

// ignore: constant_identifier_names
const String TERMS_SERVICE = '/terms/service';

class UseTermPage extends ConsumerStatefulWidget {
  const UseTermPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _UseTermPageState();
}

class _UseTermPageState extends ConsumerState<UseTermPage> {
  bool isLoading = true;
  bool hasError = false;
  final _webViewController = WebViewController();

  @override
  void initState() {
    super.initState();

    _webViewController
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {},
          onPageStarted: (String url) {},
          onPageFinished: (String url) {
            setState(() {
              isLoading = false;
            });
          },
          onHttpError: (HttpResponseError error) {
            setState(() {
              hasError = true;
            });
          },
          onWebResourceError: (WebResourceError error) {
            setState(() {
              hasError = true;
            });
          },
          onNavigationRequest: (NavigationRequest request) {
            return NavigationDecision.navigate;
          },
        ),
      )
      ..loadRequest(Uri.parse('${Env.BASE_URL_TERMS}$TERMS_SERVICE'));
  }

  @override
  Widget build(BuildContext context) {
    if (hasError) {
      return BaseErrorScaffold(
        title: '이용약관',
        invalidateProviders: [],
        onRefresh: () {
          setState(() {
            isLoading = true;
            hasError = false;
          });
          _webViewController.reload();
        },
      );
    }

    return BaseScaffold(
      showBackArrow: true,
      title: '이용약관',
      child: isLoading
          ? const AppLoadingWidget()
          : WebViewWidget(
              controller: _webViewController,
            ),
    );
  }
}
