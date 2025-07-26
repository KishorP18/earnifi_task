// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repayment_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RepaymentEntityImpl _$$RepaymentEntityImplFromJson(
  Map<String, dynamic> json,
) => _$RepaymentEntityImpl(
  amount: (json['amount'] as num).toDouble(),
  status: json['status'] as String,
  date: DateTime.parse(json['date'] as String),
);

Map<String, dynamic> _$$RepaymentEntityImplToJson(
  _$RepaymentEntityImpl instance,
) => <String, dynamic>{
  'amount': instance.amount,
  'status': instance.status,
  'date': instance.date.toIso8601String(),
};
