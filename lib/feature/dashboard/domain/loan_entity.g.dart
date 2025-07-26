// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loan_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoanEntityImpl _$$LoanEntityImplFromJson(Map<String, dynamic> json) =>
    _$LoanEntityImpl(
      currentBalance: (json['currentBalance'] as num).toDouble(),
      creditLimit: (json['creditLimit'] as num).toDouble(),
      nextRepaymentAmount: (json['nextRepaymentAmount'] as num).toDouble(),
      nextRepaymentDate: DateTime.parse(json['nextRepaymentDate'] as String),
      interestRate: (json['interestRate'] as num).toDouble(),
      totalDisbursed: (json['totalDisbursed'] as num).toDouble(),
      totalRepaid: (json['totalRepaid'] as num).toDouble(),
    );

Map<String, dynamic> _$$LoanEntityImplToJson(_$LoanEntityImpl instance) =>
    <String, dynamic>{
      'currentBalance': instance.currentBalance,
      'creditLimit': instance.creditLimit,
      'nextRepaymentAmount': instance.nextRepaymentAmount,
      'nextRepaymentDate': instance.nextRepaymentDate.toIso8601String(),
      'interestRate': instance.interestRate,
      'totalDisbursed': instance.totalDisbursed,
      'totalRepaid': instance.totalRepaid,
    };
