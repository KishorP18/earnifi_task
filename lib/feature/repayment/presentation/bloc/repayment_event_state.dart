import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/repayment_entity.dart';
part 'repayment_event_state.freezed.dart';

@freezed
class RepaymentEvent with _$RepaymentEvent {
  const factory RepaymentEvent.fetch({@Default(0) int page, @Default('') String query}) = FetchRepayments;
}

@freezed
class RepaymentState with _$RepaymentState {
  const factory RepaymentState.initial() = RepaymentInitial;
  const factory RepaymentState.loading() = RepaymentLoading;
  const factory RepaymentState.loaded(List<RepaymentEntity> data, bool hasMore) = RepaymentLoaded;
  const factory RepaymentState.error(String message) = RepaymentError;
}