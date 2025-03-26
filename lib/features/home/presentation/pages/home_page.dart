import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/features/home/di/home_module.dart';
import 'package:flutter_template/features/home/presentation/widgets/home_app_bar.dart';
import 'package:flutter_template/shared/components/feedback/app_error_widget.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(homeProvider);

    return Scaffold(
      appBar: const HomeAppBar(),
      body: state.when(
        data: (data) {
          return Column(
            children: [
              Text(data.toString()),
              Text('Home'),
            ],
          );
        },
        loading: () => const SizedBox.shrink(),
        error: (error, stack) => AppErrorWidget(
          invalidateProviders: [homeProvider],
          error: error,
          stack: stack,
        ),
      ),
    );
  }
}
