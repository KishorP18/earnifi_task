// lib/features/dashboard/presentation/loan_summary_modal.dart
import 'package:flutter/material.dart';
import '../domain/loan_entity.dart';

class LoanSummaryModal extends StatelessWidget {
  final LoanEntity loan;

  const LoanSummaryModal({super.key, required this.loan});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Wrap(
        runSpacing: 12,
        children: [
          const Text(
            'Loan Summary',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          _infoTile('Interest Rate', '${loan.interestRate}%'),
          _infoTile('Start Date', _formatDate(loan.nextRepaymentDate.subtract(const Duration(days: 30)))),
          _infoTile('Total Disbursed', '₹${loan.totalDisbursed}'),
          _infoTile('Total Repaid', '₹${loan.totalRepaid}'),
        ],
      ),
    );
  }

  Widget _infoTile(String label, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [Text(label), Text(value, style: const TextStyle(fontWeight: FontWeight.bold))],
    );
  }

  String _formatDate(DateTime date) {
    return '${date.day}/${date.month}/${date.year}';
  }
}
