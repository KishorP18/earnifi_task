import 'package:earnifi/feature/dashboard/domain/loan_repository.dart';
import 'package:earnifi/feature/dashboard/domain/loan_usecase.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/di/service_locator.dart';
import '../domain/loan_entity.dart';
import 'bloc/dashboard_bloc.dart';
import 'bloc/dashboard_event_state.dart';
import 'loan_summary_modal.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => DashboardBloc(locator<LoanUseCase>())..add(const FetchLoanData()),
      child: Scaffold(
        appBar: AppBar(title: const Text('Earnifi Dashboard')),
        body: BlocBuilder<DashboardBloc, DashboardState>(
          builder: (context, state) {
            return switch (state) {
              DashboardInitial() => const Center(child: Text('Initializing...')),
              DashboardLoading() => const Center(child: CircularProgressIndicator()),
              DashboardLoaded(:final loan) => _buildDashboard(context, loan),
              DashboardError(:final message) => Center(child: Text('Error: $message')),

              DashboardState() => Center(child: Text('Something went wrong! Please try again later.')),
            };
          },
        ),
      ),
    );
  }

  Widget _buildDashboard(BuildContext context, LoanEntity loan) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _dashboardTile('Current Balance', '₹${loan.currentBalance.toStringAsFixed(2)}'),
          _dashboardTile('Credit Limit', '₹${loan.creditLimit.toStringAsFixed(2)}'),
          _dashboardTile(
            'Next Repayment',
            '₹${loan.nextRepaymentAmount.toStringAsFixed(2)} on ${_formatDate(loan.nextRepaymentDate)}',
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () => showModalBottomSheet(
              context: context,
              builder: (_) => LoanSummaryModal(loan: loan),
            ),
            child: const Text('View Loan Summary'),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () => Navigator.pushNamed(context, '/withdraw'),
            child: const Text('Withdraw Funds'),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () => Navigator.pushNamed(context, '/repayments'),
            child: const Text('Repayment History'),
          ),
        ],
      ),
    );
  }

  Widget _dashboardTile(String title, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(height: 4),
          Text(value, style: const TextStyle(fontSize: 16)),
        ],
      ),
    );
  }

  String _formatDate(DateTime date) {
    return '${date.day}/${date.month}/${date.year}';
  }
}
