import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_template/config/build_env.dart';
import 'package:flutter_template/core/network/interceptor/app_auth_interceptor.dart';
import 'package:flutter_template/core/network/interceptor/app_api_interceptor.dart';
import 'package:flutter_template/core/network/interceptor/app_log_interceptor.dart';
import 'package:flutter_template/core/network/app_client.dart';
import 'package:flutter_template/core/routes/app_route_config.dart';
import 'package:flutter_template/core/sdk/sns_login_sdk.dart';
import 'package:flutter_template/di/app_module.dart';
import 'package:flutter_template/features/account/di/account_module.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/shared/components/feedback/app_loading_widget.dart';
import 'package:flutter_template/shared/foundation/app_color.dart';
// import 'package:flutter_web_plugins/flutter_web_plugins.dart'
//     if (kIsWeb) 'package:flutter_web_plugins/flutter_web_plugins.dart';

import 'package:firebase_core/firebase_core.dart';
import 'config/firebase_options_dev.dart' as dev;
import 'config/firebase_options_prod.dart' as prod;

@pragma('vm:entry-point')
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await initFirebase();
}

void main() {
  initApp();

  runApp(
    ProviderScope(
      overrides: [
        tokenProvider,
        routerProvider,
        authProvider,
        userProvider,
      ],
      child: MyApp(),
    ),
  );
}

Future<void> initFirebase() async {
  await Firebase.initializeApp(
      options: Env.IS_DEV
          ? dev.DefaultFirebaseOptions.currentPlatform
          : prod.DefaultFirebaseOptions.currentPlatform);
}

Future<void> initApp() async {
  if (kIsWeb) {
    // usePathUrlStrategy();
  }

  WidgetsFlutterBinding.ensureInitialized();

  await Env.init();

  // await initFirebase();

  await SnsLoginSdk.initSnsLogin();

  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
}

class MyApp extends ConsumerStatefulWidget {
  const MyApp({super.key});

  @override
  ConsumerState<MyApp> createState() => _MyAppState();
}

class _MyAppState extends ConsumerState<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _initDio();
  }

  void _initDio() {
    AppClient.initialize();

    final dio = AppClient.client;

    dio.interceptors.addAll([
      AppAuthInterceptor(ref.read(accountRepositoryProvider), ref: ref),
      AppLogInterceptor(),
      AppApiInterceptor(),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      if (kIsWeb) {
        return Container(
          color: AppColors.gray.shade200,
          child: Center(
            child: Container(
              constraints: const BoxConstraints(maxWidth: 600),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.1),
                    blurRadius: 10,
                    offset: const Offset(0, 0),
                  ),
                ],
              ),
              child: App(ref: ref),
            ),
          ),
        );
      }

      return App(ref: ref);
    });
  }
}

class App extends StatelessWidget {
  const App({
    super.key,
    required this.ref,
  });

  final WidgetRef ref;

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: ref.read(routerProvider),
      title: 'Flutter Template',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('ko'),
      ],
      builder: (context, child) {
        final isLoading = ref.watch(appLoadingProvider);
        return Stack(
          children: [
            child!,
            if (isLoading)
              Container(
                color: Colors.black.withValues(alpha: 0.5),
                child: const AppLoadingWidget(),
              ),
          ],
        );
      },
    );
  }
}
