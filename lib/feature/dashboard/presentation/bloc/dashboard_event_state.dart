import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/loan_entity.dart';

part 'dashboard_event_state.freezed.dart';

@freezed
class DashboardEvent with _$DashboardEvent {
  const factory DashboardEvent.fetchLoanData() = FetchLoanData;
}

@freezed
class DashboardState with _$DashboardState {
  const factory DashboardState.initial() = DashboardInitial;
  const factory DashboardState.loading() = DashboardLoading;
  const factory DashboardState.loaded(LoanEntity loan) = DashboardLoaded;
  const factory DashboardState.error(String message) = DashboardError;
}
