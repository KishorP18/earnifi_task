import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/repayment_entity.dart';
import 'repayment_event_state.dart';
import '../../domain/repayment_usecase.dart';

class RepaymentBloc extends Bloc<RepaymentEvent, RepaymentState> {
  final RepaymentUseCase _usecase;
  List<RepaymentEntity> _items = [];
  bool _hasMore = true;
  String _query = '';

  RepaymentBloc(this._usecase) : super(const RepaymentInitial()) {
    on<FetchRepayments>(_onFetch);
  }

  Future<void> _onFetch(FetchRepayments event, Emitter<RepaymentState> emit) async {
    if (event.page == 0) {
      _items.clear();
      _hasMore = true;
      _query = event.query;
      emit(const RepaymentLoading());
    }

    try {
      final results = await _usecase.execute(page: event.page, query: _query);
      _items.addAll(results);
      _hasMore = results.length == 10;
      emit(RepaymentState.loaded(_items, _hasMore));
    } catch (e) {
      emit(RepaymentState.error(e.toString()));
    }
  }
}