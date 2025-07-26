import 'package:flutter/material.dart';

import '../../feature/dashboard/presentation/dashboard_screen.dart';
import '../../feature/repayment/presentation/repayment_screen.dart';
import '../../feature/withdraw/presentation/withdraw_screen.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const DashboardScreen());
      case '/withdraw':
        return MaterialPageRoute(builder: (_) => const WithdrawScreen());
      case '/repayments':
        return MaterialPageRoute(builder: (_) => const RepaymentScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(body: Center(child: Text('Route not found'))),
        );
    }
  }
}
