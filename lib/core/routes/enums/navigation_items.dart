// ignore_for_file: constant_identifier_names

import 'package:flutter_template/shared/assets/asset_png.dart';

enum NavigationItems {
  Member(
    png: Pngs.google,
    label: '회원 관리',
    routeName: 'member',
    requiredRoles: ['ROOT', 'STAFF'],
  ),
  Ticket(
    png: Pngs.google,
    label: '티켓 예매 내역',
    routeName: 'ticket',
    requiredRoles: ['ROOT', 'STAFF'],
  ),
  Payment(
    png: Pngs.google,
    label: '결제 내역',
    routeName: 'payment',
    requiredRoles: ['ROOT'],
  ),
  ;

  const NavigationItems({
    required this.png,
    required this.label,
    required this.routeName,
    required this.requiredRoles,
  });

  final Pngs png;
  final String label;
  final String routeName;
  final List<String> requiredRoles;

  bool hasPermission(List<String>? userRoles) {
    if (userRoles == null || userRoles.isEmpty) {
      return false;
    }

    // 'ADMIN' 역할은 모든 메뉴에 접근 가능
    if (userRoles.contains('ROOT')) {
      return true;
    }

    // 사용자 역할과 필요 역할 중 하나라도 일치하면 접근 가능
    return userRoles.any((role) => requiredRoles.contains(role));
  }
}
