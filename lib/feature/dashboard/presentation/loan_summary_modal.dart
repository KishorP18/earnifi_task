// lib/features/dashboard/presentation/loan_summary_modal.dart
import 'package:flutter/material.dart';
import '../../../core/theme/theme.dart';
import '../domain/loan_entity.dart';

class LoanSummaryModal extends StatelessWidget {
  final LoanEntity loan;

  const LoanSummaryModal({super.key, required this.loan});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppTheme.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Handle bar
          Container(
            margin: const EdgeInsets.only(top: 12),
            width: 40,
            height: 4,
            decoration: BoxDecoration(
              color: AppTheme.neutralGray.withOpacity(0.3),
              borderRadius: BorderRadius.circular(2),
            ),
          ),

          // Header
          Padding(
            padding: const EdgeInsets.all(24),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    gradient: AppTheme.primaryGradient,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Icon(
                    Icons.summarize,
                    color: AppTheme.white,
                    size: 24,
                  ),
                ),
                const SizedBox(width: 16),
                const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Loan Summary',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: AppTheme.black,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Complete loan overview',
                        style: TextStyle(
                          fontSize: 14,
                          color: AppTheme.neutralGray,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // Content
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                _SummaryCard(
                  title: 'Current Balance',
                  value: '₹${loan.currentBalance.toStringAsFixed(2)}',
                  icon: Icons.account_balance_wallet,
                  color: AppTheme.primaryBlue,
                ),
                const SizedBox(height: 16),

                _SummaryCard(
                  title: 'Credit Limit',
                  value: '₹${loan.creditLimit.toStringAsFixed(2)}',
                  icon: Icons.credit_card,
                  color: AppTheme.successGreen,
                ),
                const SizedBox(height: 16),

                _SummaryCard(
                  title: 'Interest Rate',
                  value: '${loan.interestRate}%',
                  icon: Icons.percent,
                  color: AppTheme.warningOrange,
                ),
                const SizedBox(height: 24),

                // Detailed information
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: AppTheme.lightGray,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    children: [
                      _InfoRow(
                        label: 'Start Date',
                        value: _formatDate(
                          loan.nextRepaymentDate.subtract(
                            const Duration(days: 30),
                          ),
                        ),
                        icon: Icons.calendar_today,
                      ),
                      const SizedBox(height: 16),
                      _InfoRow(
                        label: 'Total Disbursed',
                        value: '₹${loan.totalDisbursed.toStringAsFixed(2)}',
                        icon: Icons.trending_up,
                      ),
                      const SizedBox(height: 16),
                      _InfoRow(
                        label: 'Total Repaid',
                        value: '₹${loan.totalRepaid.toStringAsFixed(2)}',
                        icon: Icons.payment,
                      ),
                      const SizedBox(height: 16),
                      _InfoRow(
                        label: 'Next Repayment',
                        value:
                            '₹${loan.nextRepaymentAmount.toStringAsFixed(2)} on ${_formatDate(loan.nextRepaymentDate)}',
                        icon: Icons.schedule,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 24),
              ],
            ),
          ),
        ],
      ),
    );
  }

  String _formatDate(DateTime date) {
    return '${date.day}/${date.month}/${date.year}';
  }
}

class _SummaryCard extends StatelessWidget {
  final String title;
  final String value;
  final IconData icon;
  final Color color;

  const _SummaryCard({
    required this.title,
    required this.value,
    required this.icon,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppTheme.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppTheme.lightGray),
        boxShadow: [
          BoxShadow(
            color: AppTheme.black.withOpacity(0.05),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: color.withOpacity(0.1),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(icon, color: color, size: 24),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 14,
                    color: AppTheme.neutralGray,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  value,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: AppTheme.black,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _InfoRow extends StatelessWidget {
  final String label;
  final String value;
  final IconData icon;

  const _InfoRow({
    required this.label,
    required this.value,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, size: 16, color: AppTheme.neutralGray),
        const SizedBox(width: 12),
        Expanded(
          child: Text(
            label,
            style: const TextStyle(fontSize: 14, color: AppTheme.neutralGray),
          ),
        ),
        Text(
          value,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: AppTheme.black,
          ),
        ),
      ],
    );
  }
}
