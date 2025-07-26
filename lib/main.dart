import 'dart:async';

import 'package:flutter/material.dart';

import 'core/di/service_locator.dart';
import 'core/router/app_router.dart';
import 'core/theme/theme.dart';

Future<void> main() async {
  FlutterError.onError = (FlutterErrorDetails details) {
    debugPrint('Caught an error: $details');
  };

  runZonedGuarded<Future<void>>(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      setupLocator();
      runApp(const EarnifiApp());
    },
    (error, stackTrace) {
      debugPrint('Caught an error: $error');
      debugPrint('Stack trace: $stackTrace');
    },
  );
}

class EarnifiApp extends StatelessWidget {
  const EarnifiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Earnifi',
      theme: AppTheme.light,
      debugShowCheckedModeBanner: false,
      onGenerateRoute: AppRouter.generateRoute,
      initialRoute: '/',
    );
  }
}
