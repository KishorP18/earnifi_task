import 'package:earnifi/core/widgets/error_view.dart';
import 'package:earnifi/feature/dashboard/domain/loan_usecase.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/di/service_locator.dart';
import '../../../core/router/app_router.dart';
import '../../../core/theme/theme.dart';
import '../domain/loan_entity.dart';
import 'bloc/dashboard_bloc.dart';
import 'bloc/dashboard_event_state.dart';
import 'loan_summary_modal.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:earnifi/feature/withdraw/presentation/withdraw_screen.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) =>
          DashboardBloc(locator<LoanUseCase>())..add(const FetchLoanData()),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Earnifi'),
          backgroundColor: AppTheme.white,
          elevation: 1,
        ),
        body: BlocBuilder<DashboardBloc, DashboardState>(
          builder: (context, state) {
            return switch (state) {
              DashboardInitial() => const Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircularProgressIndicator(color: AppTheme.primaryBlue),
                    SizedBox(height: 16),
                    Text(
                      'Initializing...',
                      style: TextStyle(color: AppTheme.neutralGray),
                    ),
                  ],
                ),
              ),
              DashboardLoading() => const Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircularProgressIndicator(color: AppTheme.primaryBlue),
                    SizedBox(height: 16),
                    Text(
                      'Loading your financial data...',
                      style: TextStyle(color: AppTheme.neutralGray),
                    ),
                  ],
                ),
              ),
              DashboardLoaded(:final loan) => DashboardDetails(loan: loan),
              DashboardError(:final message) => ErrorView(
                message: 'Oops! $message.\nPlease try again',
                onRetry: () {
                  context.read<DashboardBloc>().add(const FetchLoanData());
                },
              ),
              DashboardState() => ErrorView(
                message: 'Oops! Something went wrong.\nPlease try again',
                onRetry: () {
                  context.read<DashboardBloc>().add(const FetchLoanData());
                },
              ),
            };
          },
        ),
      ),
    );
  }
}

class DashboardDetails extends StatelessWidget {
  final LoanEntity loan;

  const DashboardDetails({super.key, required this.loan});

  @override
  Widget build(BuildContext context) {
    final List<_DashboardCardData> cards = [
      _DashboardCardData(
        title: 'Current Balance',
        value: '₹${loan.currentBalance.toStringAsFixed(2)}',
        icon: Icons.account_balance_wallet,
        gradient: AppTheme.primaryGradient,
        iconColor: AppTheme.white,
      ),
      _DashboardCardData(
        title: 'Credit Limit',
        value: '₹${loan.creditLimit.toStringAsFixed(2)}',
        icon: Icons.credit_card,
        gradient: AppTheme.successGradient,
        iconColor: AppTheme.white,
      ),
      _DashboardCardData(
        title: 'Next Repayment',
        value:
            '₹${loan.nextRepaymentAmount.toStringAsFixed(2)} on ${_formatDate(loan.nextRepaymentDate)}',
        icon: Icons.event,
        gradient: const LinearGradient(
          colors: [AppTheme.warningOrange, Color(0xFFF59E0B)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        iconColor: AppTheme.white,
      ),
    ];

    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              gradient: AppTheme.primaryGradient,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Welcome back Kishor!',
                  style: TextStyle(
                    color: AppTheme.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  'Your financial overview',
                  style: TextStyle(
                    color: AppTheme.white.withOpacity(0.9),
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 24),

          // Cards Section
          AnimationLimiter(
            child: Column(
              children: List.generate(cards.length, (index) {
                final card = cards[index];
                return AnimationConfiguration.staggeredList(
                  position: index,
                  duration: const Duration(milliseconds: 1000),
                  child: SlideAnimation(
                    verticalOffset: 50.0,
                    child: FadeInAnimation(child: _DashboardCard(card: card)),
                  ),
                );
              }),
            ),
          ),
          const SizedBox(height: 32),

          // Action Buttons
          const Text(
            'Quick Actions',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: AppTheme.black,
            ),
          ),
          const SizedBox(height: 16),

          _ActionButton(
            title: 'View Loan Summary',
            subtitle: 'See detailed loan information',
            icon: Icons.summarize,
            onTap: () => showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              backgroundColor: Colors.transparent,
              builder: (_) => LoanSummaryModal(loan: loan),
            ),
          ),
          const SizedBox(height: 12),

          _ActionButton(
            title: 'Withdraw Funds',
            subtitle: 'Access your available credit',
            icon: Icons.account_balance_wallet_outlined,
            onTap: () async {
              final updatedLoan = await Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => WithdrawScreen(loan: loan)),
              );
              if (updatedLoan != null && context.mounted) {
                context.read<DashboardBloc>().emit(
                  DashboardState.loaded(updatedLoan),
                );
              }
            },
          ),
          const SizedBox(height: 12),

          _ActionButton(
            title: 'Repayment History',
            subtitle: 'View your payment records',
            icon: Icons.history,
            onTap: () =>
                Navigator.pushNamed(context, AppRouter.repaymentsRoute),
          ),
        ],
      ),
    );
  }

  String _formatDate(DateTime date) {
    return '${date.day}/${date.month}/${date.year}';
  }
}

class _DashboardCardData {
  final String title;
  final String value;
  final IconData icon;
  final LinearGradient gradient;
  final Color iconColor;

  _DashboardCardData({
    required this.title,
    required this.value,
    required this.icon,
    required this.gradient,
    required this.iconColor,
  });
}

class _DashboardCard extends StatelessWidget {
  final _DashboardCardData card;

  const _DashboardCard({required this.card});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        gradient: card.gradient,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: AppTheme.black.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: AppTheme.white.withOpacity(0.2),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(card.icon, color: card.iconColor, size: 24),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    card.title,
                    style: const TextStyle(
                      color: AppTheme.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    card.value,
                    style: const TextStyle(
                      color: AppTheme.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ActionButton extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  final VoidCallback onTap;

  const _ActionButton({
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(12),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: AppTheme.primaryBlue.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Icon(icon, color: AppTheme.primaryBlue, size: 20),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: AppTheme.black,
                        ),
                      ),
                      const SizedBox(height: 2),
                      Text(
                        subtitle,
                        style: const TextStyle(
                          fontSize: 12,
                          color: AppTheme.neutralGray,
                        ),
                      ),
                    ],
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: AppTheme.neutralGray,
                  size: 16,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
