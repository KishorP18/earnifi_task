import 'package:freezed_annotation/freezed_annotation.dart';
part 'repayment_entity.freezed.dart';
part 'repayment_entity.g.dart';

@freezed
class RepaymentEntity with _$RepaymentEntity {
  const factory RepaymentEntity({
    required double amount,
    required String status,
    required DateTime date,
  }) = _RepaymentEntity;

  factory RepaymentEntity.fromJson(Map<String, dynamic> json) => _$RepaymentEntityFromJson(json);
}