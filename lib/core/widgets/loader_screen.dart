import 'package:flutter/material.dart';
import '../theme/theme.dart';

class LoaderScreen extends StatelessWidget {
  final String message;

  const LoaderScreen({super.key, this.message = 'We are setting up for you...'});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Animated loader
            SizedBox(
              width: 64,
              height: 64,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CircularProgressIndicator(strokeWidth: 6, valueColor: AlwaysStoppedAnimation(AppTheme.primaryBlue)),
                  Positioned(child: Icon(Icons.bubble_chart, color: AppTheme.secondaryBlue, size: 32)),
                ],
              ),
            ),
            const SizedBox(height: 32),
            Text(
              message,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: AppTheme.primaryBlue),
            ),
          ],
        ),
      ),
    );
  }
}
