// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:earnifi/core/widgets/loader_screen.dart';
import 'package:earnifi/feature/withdraw/presentation/withdraw_screen.dart';
import 'package:earnifi/feature/dashboard/domain/loan_entity.dart';

void main() {
  testWidgets('LoaderScreen displays message and animation', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: LoaderScreen(message: 'We are setting up for you...')));
    expect(find.text('We are setting up for you...'), findsOneWidget);
    expect(find.byType(CircularProgressIndicator), findsOneWidget);
    expect(find.byIcon(Icons.bubble_chart), findsOneWidget);
  });

  testWidgets('WithdrawScreen validation prevents over-limit withdrawal', (
    WidgetTester tester,
  ) async {
    final loan = LoanEntity(
      currentBalance: 1000,
      creditLimit: 1000,
      nextRepaymentAmount: 100,
      nextRepaymentDate: DateTime.now(),
      interestRate: 10,
      totalDisbursed: 1000,
      totalRepaid: 0,
    );
    await tester.pumpWidget(MaterialApp(home: WithdrawScreen(loan: loan)));
    await tester.enterText(find.byType(TextField), '2000');
    await tester.tap(find.byType(ElevatedButton));
    await tester.pump();
    expect(find.textContaining('exceeds credit limit'), findsOneWidget);
  });
}
