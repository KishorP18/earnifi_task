import 'package:earnifi/core/widgets/error_view.dart';
import 'package:earnifi/feature/repayment/domain/repayment_usecase.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/di/service_locator.dart';
import '../../../core/theme/theme.dart';
import 'bloc/repayment_bloc.dart';
import 'bloc/repayment_event_state.dart';

class RepaymentScreen extends StatefulWidget {
  const RepaymentScreen({super.key});

  @override
  State<RepaymentScreen> createState() => _RepaymentScreenState();
}

class _RepaymentScreenState extends State<RepaymentScreen> {
  final ScrollController _controller = ScrollController();
  final TextEditingController _search = TextEditingController();
  late RepaymentBloc _bloc;
  int _page = 0;
  String _statusFilter = 'All';

  @override
  void initState() {
    _bloc = RepaymentBloc(locator<RepaymentUseCase>());
    _bloc.add(const RepaymentEvent.fetch());
    _controller.addListener(_scrollListener);
    super.initState();
  }

  void _scrollListener() {
    if (_controller.position.pixels >= _controller.position.maxScrollExtent) {
      _bloc.add(RepaymentEvent.fetch(page: ++_page, query: _search.text, status: _statusFilter));
    }
  }

  void _onSearchChanged(String query) {
    _page = 0;
    _bloc.add(RepaymentEvent.fetch(page: 0, query: query, status: _statusFilter));
  }

  void _onStatusChanged(String? status) {
    if (status == null) return;
    setState(() => _statusFilter = status);
    _page = 0;
    _bloc.add(RepaymentEvent.fetch(page: 0, query: _search.text, status: status));
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _bloc,
      child: Scaffold(
        appBar: AppBar(title: const Text('Repayment History'), backgroundColor: AppTheme.white, elevation: 1),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _search,
                      onChanged: _onSearchChanged,
                      decoration: InputDecoration(
                        labelText: 'Search by status or amount',
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                        prefixIcon: const Icon(Icons.search),
                        filled: true,
                        fillColor: AppTheme.lightGray,
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  DropdownButton<String>(
                    value: _statusFilter,
                    items: const [
                      DropdownMenuItem(value: 'All', child: Text('All')),
                      DropdownMenuItem(value: 'Success', child: Text('Success')),
                      DropdownMenuItem(value: 'Failed', child: Text('Failed')),
                    ],
                    onChanged: _onStatusChanged,
                    underline: Container(),
                    style: const TextStyle(fontSize: 14, color: AppTheme.black),
                    dropdownColor: AppTheme.white,
                  ),
                ],
              ),
            ),
            Expanded(
              child: BlocBuilder<RepaymentBloc, RepaymentState>(
                builder: (context, state) {
                  return switch (state) {
                    RepaymentInitial() || RepaymentLoading() => const _LoadingList(),
                    RepaymentLoaded(:final data, :final hasMore) =>
                      data.isEmpty
                          ? const _EmptyState()
                          : ListView.builder(
                              controller: _controller,
                              itemCount: data.length + (hasMore ? 1 : 0),
                              itemBuilder: (_, i) {
                                if (i == data.length && hasMore) {
                                  return const Padding(
                                    padding: EdgeInsets.symmetric(vertical: 16),
                                    child: Center(child: CircularProgressIndicator(color: AppTheme.primaryBlue)),
                                  );
                                }
                                final item = data[i];
                                // Filter by status and search locally as well (for demo, since backend is simulated)
                                if ((_statusFilter != 'All' && item.status != _statusFilter) ||
                                    (_search.text.isNotEmpty &&
                                        !item.status.toLowerCase().contains(_search.text.toLowerCase()) &&
                                        !item.amount.toString().contains(_search.text))) {
                                  return const SizedBox.shrink();
                                }
                                return Card(
                                  margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                                  child: ListTile(
                                    leading: CircleAvatar(
                                      backgroundColor: item.status == 'Success'
                                          ? AppTheme.successGreen.withOpacity(0.1)
                                          : AppTheme.errorRed.withOpacity(0.1),
                                      child: Icon(
                                        item.status == 'Success' ? Icons.check : Icons.close,
                                        color: item.status == 'Success' ? AppTheme.successGreen : AppTheme.errorRed,
                                      ),
                                    ),
                                    title: Text(
                                      '₹${item.amount.toStringAsFixed(2)}',
                                      style: const TextStyle(fontWeight: FontWeight.bold),
                                    ),
                                    subtitle: Text('${item.date.day}/${item.date.month}/${item.date.year}'),
                                    trailing: Text(
                                      item.status,
                                      style: TextStyle(
                                        color: item.status == 'Success' ? AppTheme.successGreen : AppTheme.errorRed,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                    RepaymentError(:final message) => ErrorView(
                      message: message,
                      onRetry: () {
                        _page = 0;
                        _bloc.add(RepaymentEvent.fetch(page: 0, query: _search.text, status: _statusFilter));
                      },
                    ),
                    RepaymentState() => ErrorView(
                      message: 'Something went wrong please try again later.',
                      onRetry: () {
                        _page = 0;
                        _bloc.add(RepaymentEvent.fetch(page: 0, query: _search.text, status: _statusFilter));
                      },
                    ),
                  };
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    _search.dispose();
    super.dispose();
  }
}

class _LoadingList extends StatelessWidget {
  const _LoadingList();

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      itemCount: 6,
      separatorBuilder: (_, __) => const SizedBox(height: 12),
      itemBuilder: (_, __) => Container(
        height: 64,
        decoration: BoxDecoration(color: AppTheme.lightGray, borderRadius: BorderRadius.circular(12)),
      ),
    );
  }
}

class _EmptyState extends StatelessWidget {
  const _EmptyState();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.receipt_long, size: 64, color: AppTheme.neutralGray.withOpacity(0.3)),
          const SizedBox(height: 16),
          const Text('No repayments found', style: TextStyle(fontSize: 18, color: AppTheme.neutralGray)),
          const SizedBox(height: 8),
          const Text(
            'Try a different search or check back later.',
            style: TextStyle(fontSize: 14, color: AppTheme.neutralGray),
          ),
        ],
      ),
    );
  }
}
