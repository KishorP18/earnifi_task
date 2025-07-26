import 'package:flutter/material.dart';

import '../../feature/dashboard/presentation/dashboard_screen.dart';
import '../../feature/repayment/presentation/repayment_screen.dart';
import '../../feature/withdraw/presentation/withdraw_screen.dart';

class AppRouter {
  static const String initialRoute = '/';
  static const String withdrawRoute = '/withdraw';
  static const String repaymentsRoute = '/repayments';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case initialRoute:
        return MaterialPageRoute(builder: (_) => const DashboardScreen());
      case withdrawRoute:
        return MaterialPageRoute(builder: (_) => const WithdrawScreen());
      case repaymentsRoute:
        return MaterialPageRoute(builder: (_) => const RepaymentScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(body: Center(child: Text('Route not found'))),
        );
    }
  }
}
