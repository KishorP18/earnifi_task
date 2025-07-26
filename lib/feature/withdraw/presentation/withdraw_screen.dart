import 'package:flutter/material.dart';

class WithdrawScreen extends StatefulWidget {
  const WithdrawScreen({super.key});

  @override
  State<WithdrawScreen> createState() => _WithdrawScreenState();
}

class _WithdrawScreenState extends State<WithdrawScreen> with SingleTickerProviderStateMixin {
  final TextEditingController _controller = TextEditingController();
  final double _creditLimit = 50000.0; // Simulated available limit

  late AnimationController _animationController;
  late Animation<double> _scaleAnimation;

  bool _isProcessing = false;
  String? _errorMessage;
  bool _isSuccess = false;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 600),
    );

    _scaleAnimation = CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOutBack,
    );
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

    setState(() => _isProcessing = true);
    await Future.delayed(const Duration(seconds: 2)); // Simulate network delay
    setState(() {
      _isSuccess = true;
      _isProcessing = false;
    });
    _animationController.forward(from: 0);
  }

  @override
  void dispose() {
    _controller.dispose();
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Withdraw Funds')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const Text('Available Limit: ₹50,000', style: TextStyle(fontSize: 16)),
            const SizedBox(height: 16),
            TextField(
              controller: _controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Enter Amount',
                border: const OutlineInputBorder(),
                errorText: _errorMessage,
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: _isProcessing ? null : _withdraw,
              child: _isProcessing
                  ? const CircularProgressIndicator(color: Colors.white)
                  : const Text('Withdraw'),
            ),
            const SizedBox(height: 32),
            if (_isSuccess)
              ScaleTransition(
                scale: _scaleAnimation,
                child: Column(
                  children: const [
                    Icon(Icons.check_circle, color: Colors.green, size: 80),
                    SizedBox(height: 10),
                    Text('Withdrawal Successful!', style: TextStyle(fontSize: 18)),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
