import 'package:freezed_annotation/freezed_annotation.dart';

part 'loan_entity.freezed.dart';
part 'loan_entity.g.dart';

@freezed
class LoanEntity with _$LoanEntity {
  const factory LoanEntity({
    required double currentBalance,
    required double creditLimit,
    required double nextRepaymentAmount,
    required DateTime nextRepaymentDate,
    required double interestRate,
    required double totalDisbursed,
    required double totalRepaid,
  }) = _LoanEntity;

  factory LoanEntity.fromJson(Map<String, dynamic> json) => _$LoanEntityFromJson(json);
}
