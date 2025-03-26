import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/shared/components/feedback/app_error_widget.dart';

import 'base_scaffold.dart';

class BaseErrorScaffold extends StatelessWidget {
  const BaseErrorScaffold({
    super.key,
    required this.invalidateProviders,
    this.title,
    this.state,
    this.onRefresh,
  });

  final String? title;
  final List<ProviderOrFamily> invalidateProviders;
  final AsyncValue<dynamic>? state;
  final void Function()? onRefresh;

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      showBackArrow: true,
      title: title,
      child: AppErrorWidget(
        invalidateProviders: invalidateProviders,
        onRefresh: onRefresh,
        error: state?.error,
        stack: state?.stackTrace,
      ),
    );
  }
}
