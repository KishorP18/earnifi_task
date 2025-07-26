import 'package:flutter_bloc/flutter_bloc.dart';
import 'dashboard_event_state.dart';
import '../../domain/loan_usecase.dart';

class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  final LoanUseCase _loanUseCase;

  DashboardBloc(this._loanUseCase) : super(const DashboardInitial()) {
    on<FetchLoanData>(_onFetchLoanData);
  }

  Future<void> _onFetchLoanData(FetchLoanData event, Emitter<DashboardState> emit) async {
    emit(const DashboardLoading());
    try {
      final loan = await _loanUseCase.execute();
      emit(DashboardState.loaded(loan));
    } catch (e) {
      emit(DashboardState.error(e.toString()));
    }
  }
}
