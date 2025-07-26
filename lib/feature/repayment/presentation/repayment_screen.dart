import 'package:earnifi/feature/repayment/domain/repayment_usecase.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/di/service_locator.dart';
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

  @override
  void initState() {
    _bloc = RepaymentBloc(locator<RepaymentUseCase>());
    _bloc.add(const RepaymentEvent.fetch());
    _controller.addListener(_scrollListener);
    super.initState();
  }

  void _scrollListener() {
    if (_controller.position.pixels >= _controller.position.maxScrollExtent) {
      _bloc.add(RepaymentEvent.fetch(page: ++_page, query: _search.text));
    }
  }

  void _onSearchChanged(String query) {
    _page = 0;
    _bloc.add(RepaymentEvent.fetch(page: 0, query: query));
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _bloc,
      child: Scaffold(
        appBar: AppBar(title: const Text('Repayment History')),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(12),
              child: TextField(
                controller: _search,
                onChanged: _onSearchChanged,
                decoration: const InputDecoration(
                  labelText: 'Search by status',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.search),
                ),
              ),
            ),
            Expanded(
              child: BlocBuilder<RepaymentBloc, RepaymentState>(
                builder: (context, state) {
                  return switch (state) {
                    RepaymentInitial() || RepaymentLoading() => const Center(child: CircularProgressIndicator()),
                    RepaymentLoaded(:final data, :final hasMore) => ListView.builder(
                      controller: _controller,
                      itemCount: data.length,
                      itemBuilder: (_, i) {
                        final item = data[i];
                        return ListTile(
                          title: Text('₹${item.amount.toStringAsFixed(2)}'),
                          subtitle: Text('${item.date.day}/${item.date.month}/${item.date.year}'),
                          trailing: Text(
                            item.status,
                            style: TextStyle(
                              color: item.status == 'Success' ? Colors.green : Colors.red,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        );
                      },
                    ),
                    RepaymentError(:final message) => Center(child: Text('Error: $message')),

                    RepaymentState() =>  Center(child: Text('Something went wrong')),
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
