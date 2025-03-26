// ignore_for_file: constant_identifier_names

enum AppRoute {
  SplashPage(
    absolutePath: '/splash',
    path: '/splash',
    name: 'splash',
  ),
  ForceUpdatePage(
    absolutePath: '/force-update',
    path: '/force-update',
    name: 'force-update',
  ),
  LoginPage(
    absolutePath: '/login',
    path: '/login',
    name: 'login',
  ),
  HomePage(
    absolutePath: '/home',
    path: '/home',
    name: 'home',
  ),
  HomeDetailPage(
    absolutePath: '/home/detail',
    path: 'detail',
    name: 'home-detail',
  ),
  MyPage(
    absolutePath: '/my',
    path: '/my',
    name: 'my',
  ),
  AccountPage(
    absolutePath: '/my/account',
    path: '/my/account',
    name: 'account',
  ),
  WithdrawPage(
    absolutePath: '/my/account/withdraw',
    path: '/my/account/withdraw',
    name: 'withdraw',
  ),
  NoticePage(
    absolutePath: '/my/notice',
    path: 'notice',
    name: 'notice',
  ),
  NotificationSettingPage(
    absolutePath: '/my/notification-setting',
    path: 'notification-setting',
    name: 'notification-setting',
  ),
  PrivacyPage(
    absolutePath: '/my/terms/privacy',
    path: 'terms/privacy',
    name: 'terms/privacy',
  ),
  UseTermPage(
    absolutePath: '/my/terms/use',
    path: 'terms/use',
    name: 'terms/use',
  ),
  ;

  const AppRoute(
      {required this.absolutePath, required this.path, required this.name});

  final String absolutePath;
  final String path;
  final String name;
}
