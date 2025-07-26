import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../../core/theme/theme.dart';
import '../../dashboard/domain/loan_entity.dart';

class WithdrawScreen extends StatefulWidget {
  final LoanEntity loan;

  const WithdrawScreen({super.key, required this.loan});

  @override
  State<WithdrawScreen> createState() => _WithdrawScreenState();
}

class _WithdrawScreenState extends State<WithdrawScreen> with TickerProviderStateMixin {
  final TextEditingController _controller = TextEditingController();
  late double _creditLimit;
  late double _currentBalance;

  late AnimationController _animationController;
  late Animation<double> _scaleAnimation;
  late AnimationController _cashController;
  late Animation<Offset> _cashOffset;

  bool _isProcessing = false;
  String? _errorMessage;
  bool _isSuccess = false;
  bool _showCashAnimation = false;

  @override
  void initState() {
    super.initState();
    _creditLimit = widget.loan.creditLimit;
    _currentBalance = widget.loan.currentBalance;

    _animationController = AnimationController(vsync: this, duration: const Duration(milliseconds: 600));
    _scaleAnimation = CurvedAnimation(parent: _animationController, curve: Curves.easeInOutBack);

    _cashController = AnimationController(vsync: this, duration: const Duration(milliseconds: 900));
    _cashOffset = Tween<Offset>(
      begin: const Offset(-1.5, 0),
      end: Offset.zero,
    ).animate(CurvedAnimation(parent: _cashController, curve: Curves.easeInOut));
  }

  void _withdraw() async {
    final amount = double.tryParse(_controller.text);
    setState(() {
      _errorMessage = null;
      _isSuccess = false;
    });

    if (amount == null || amount <= 0) {
      setState(() => _errorMessage = "Enter a valid amount.");
      return;
    }

    if (amount > _creditLimit) {
      setState(() => _errorMessage = "Amount exceeds credit limit (₹$_creditLimit).");
      return;
    }

    setState(() {
      _isProcessing = true;
      _showCashAnimation = false;
    });
    await Future.delayed(const Duration(seconds: 1)); // Simulate network delay
    setState(() {
      _showCashAnimation = true;
      _isProcessing = false;
    });
    _cashController.forward(from: 0);
    await Future.delayed(const Duration(milliseconds: 900));
    setState(() {
      _isSuccess = true;
      _showCashAnimation = false;
      _currentBalance -= amount;
      _creditLimit -= amount;
    });
    _animationController.forward(from: 0);
    await Future.delayed(const Duration(milliseconds: 1200));
    if (mounted) {
      // Return the updated loan entity
      Navigator.of(context).pop(widget.loan.copyWith(currentBalance: _currentBalance, creditLimit: _creditLimit));
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    _animationController.dispose();
    _cashController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Withdraw Funds'), backgroundColor: AppTheme.white, elevation: 1),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16),
            Text('Available Limit', style: TextStyle(color: AppTheme.neutralGray, fontSize: 14)),
            const SizedBox(height: 4),
            Text(
              '₹${_creditLimit.toStringAsFixed(2)}',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: AppTheme.primaryBlue),
            ),
            const SizedBox(height: 24),
            TextField(
              controller: _controller,
              keyboardType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              decoration: InputDecoration(
                labelText: 'Enter Amount',
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                errorText: _errorMessage,
                prefixIcon: const Icon(Icons.currency_rupee),
                filled: true,
                fillColor: AppTheme.lightGray,
              ),
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 24),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: _isProcessing ? null : _withdraw,
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
                child: _isProcessing
                    ? const SizedBox(
                        height: 24,
                        width: 24,
                        child: CircularProgressIndicator(color: Colors.white, strokeWidth: 2),
                      )
                    : const Text('Withdraw'),
              ),
            ),
            const SizedBox(height: 32),
            if (_showCashAnimation)
              Center(
                child: SlideTransition(
                  position: _cashOffset,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.currency_rupee, color: AppTheme.primaryBlue, size: 40),
                      const SizedBox(width: 8),
                      Container(
                        width: 48,
                        height: 48,
                        decoration: BoxDecoration(
                          color: AppTheme.successGreen.withOpacity(0.15),
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(Icons.account_balance, color: AppTheme.successGreen, size: 32),
                      ),
                    ],
                  ),
                ),
              ),
            if (_isSuccess)
              Center(
                child: ScaleTransition(
                  scale: _scaleAnimation,
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: AppTheme.successGreen.withOpacity(0.1),
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(Icons.check_circle, color: AppTheme.successGreen, size: 80),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'Withdrawal Successful!',
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: AppTheme.successGreen),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        'Funds will be credited to your account shortly.',
                        style: TextStyle(fontSize: 14, color: AppTheme.neutralGray),
                      ),
                    ],
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
