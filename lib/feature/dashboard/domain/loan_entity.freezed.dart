// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'loan_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

LoanEntity _$LoanEntityFromJson(Map<String, dynamic> json) {
  return _LoanEntity.fromJson(json);
}

/// @nodoc
mixin _$LoanEntity {
  double get currentBalance => throw _privateConstructorUsedError;
  double get creditLimit => throw _privateConstructorUsedError;
  double get nextRepaymentAmount => throw _privateConstructorUsedError;
  DateTime get nextRepaymentDate => throw _privateConstructorUsedError;
  double get interestRate => throw _privateConstructorUsedError;
  double get totalDisbursed => throw _privateConstructorUsedError;
  double get totalRepaid => throw _privateConstructorUsedError;

  /// Serializes this LoanEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LoanEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoanEntityCopyWith<LoanEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoanEntityCopyWith<$Res> {
  factory $LoanEntityCopyWith(
    LoanEntity value,
    $Res Function(LoanEntity) then,
  ) = _$LoanEntityCopyWithImpl<$Res, LoanEntity>;
  @useResult
  $Res call({
    double currentBalance,
    double creditLimit,
    double nextRepaymentAmount,
    DateTime nextRepaymentDate,
    double interestRate,
    double totalDisbursed,
    double totalRepaid,
  });
}

/// @nodoc
class _$LoanEntityCopyWithImpl<$Res, $Val extends LoanEntity>
    implements $LoanEntityCopyWith<$Res> {
  _$LoanEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoanEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentBalance = null,
    Object? creditLimit = null,
    Object? nextRepaymentAmount = null,
    Object? nextRepaymentDate = null,
    Object? interestRate = null,
    Object? totalDisbursed = null,
    Object? totalRepaid = null,
  }) {
    return _then(
      _value.copyWith(
            currentBalance: null == currentBalance
                ? _value.currentBalance
                : currentBalance // ignore: cast_nullable_to_non_nullable
                      as double,
            creditLimit: null == creditLimit
                ? _value.creditLimit
                : creditLimit // ignore: cast_nullable_to_non_nullable
                      as double,
            nextRepaymentAmount: null == nextRepaymentAmount
                ? _value.nextRepaymentAmount
                : nextRepaymentAmount // ignore: cast_nullable_to_non_nullable
                      as double,
            nextRepaymentDate: null == nextRepaymentDate
                ? _value.nextRepaymentDate
                : nextRepaymentDate // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            interestRate: null == interestRate
                ? _value.interestRate
                : interestRate // ignore: cast_nullable_to_non_nullable
                      as double,
            totalDisbursed: null == totalDisbursed
                ? _value.totalDisbursed
                : totalDisbursed // ignore: cast_nullable_to_non_nullable
                      as double,
            totalRepaid: null == totalRepaid
                ? _value.totalRepaid
                : totalRepaid // ignore: cast_nullable_to_non_nullable
                      as double,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$LoanEntityImplCopyWith<$Res>
    implements $LoanEntityCopyWith<$Res> {
  factory _$$LoanEntityImplCopyWith(
    _$LoanEntityImpl value,
    $Res Function(_$LoanEntityImpl) then,
  ) = __$$LoanEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    double currentBalance,
    double creditLimit,
    double nextRepaymentAmount,
    DateTime nextRepaymentDate,
    double interestRate,
    double totalDisbursed,
    double totalRepaid,
  });
}

/// @nodoc
class __$$LoanEntityImplCopyWithImpl<$Res>
    extends _$LoanEntityCopyWithImpl<$Res, _$LoanEntityImpl>
    implements _$$LoanEntityImplCopyWith<$Res> {
  __$$LoanEntityImplCopyWithImpl(
    _$LoanEntityImpl _value,
    $Res Function(_$LoanEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LoanEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentBalance = null,
    Object? creditLimit = null,
    Object? nextRepaymentAmount = null,
    Object? nextRepaymentDate = null,
    Object? interestRate = null,
    Object? totalDisbursed = null,
    Object? totalRepaid = null,
  }) {
    return _then(
      _$LoanEntityImpl(
        currentBalance: null == currentBalance
            ? _value.currentBalance
            : currentBalance // ignore: cast_nullable_to_non_nullable
                  as double,
        creditLimit: null == creditLimit
            ? _value.creditLimit
            : creditLimit // ignore: cast_nullable_to_non_nullable
                  as double,
        nextRepaymentAmount: null == nextRepaymentAmount
            ? _value.nextRepaymentAmount
            : nextRepaymentAmount // ignore: cast_nullable_to_non_nullable
                  as double,
        nextRepaymentDate: null == nextRepaymentDate
            ? _value.nextRepaymentDate
            : nextRepaymentDate // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        interestRate: null == interestRate
            ? _value.interestRate
            : interestRate // ignore: cast_nullable_to_non_nullable
                  as double,
        totalDisbursed: null == totalDisbursed
            ? _value.totalDisbursed
            : totalDisbursed // ignore: cast_nullable_to_non_nullable
                  as double,
        totalRepaid: null == totalRepaid
            ? _value.totalRepaid
            : totalRepaid // ignore: cast_nullable_to_non_nullable
                  as double,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$LoanEntityImpl implements _LoanEntity {
  const _$LoanEntityImpl({
    required this.currentBalance,
    required this.creditLimit,
    required this.nextRepaymentAmount,
    required this.nextRepaymentDate,
    required this.interestRate,
    required this.totalDisbursed,
    required this.totalRepaid,
  });

  factory _$LoanEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoanEntityImplFromJson(json);

  @override
  final double currentBalance;
  @override
  final double creditLimit;
  @override
  final double nextRepaymentAmount;
  @override
  final DateTime nextRepaymentDate;
  @override
  final double interestRate;
  @override
  final double totalDisbursed;
  @override
  final double totalRepaid;

  @override
  String toString() {
    return 'LoanEntity(currentBalance: $currentBalance, creditLimit: $creditLimit, nextRepaymentAmount: $nextRepaymentAmount, nextRepaymentDate: $nextRepaymentDate, interestRate: $interestRate, totalDisbursed: $totalDisbursed, totalRepaid: $totalRepaid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoanEntityImpl &&
            (identical(other.currentBalance, currentBalance) ||
                other.currentBalance == currentBalance) &&
            (identical(other.creditLimit, creditLimit) ||
                other.creditLimit == creditLimit) &&
            (identical(other.nextRepaymentAmount, nextRepaymentAmount) ||
                other.nextRepaymentAmount == nextRepaymentAmount) &&
            (identical(other.nextRepaymentDate, nextRepaymentDate) ||
                other.nextRepaymentDate == nextRepaymentDate) &&
            (identical(other.interestRate, interestRate) ||
                other.interestRate == interestRate) &&
            (identical(other.totalDisbursed, totalDisbursed) ||
                other.totalDisbursed == totalDisbursed) &&
            (identical(other.totalRepaid, totalRepaid) ||
                other.totalRepaid == totalRepaid));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    currentBalance,
    creditLimit,
    nextRepaymentAmount,
    nextRepaymentDate,
    interestRate,
    totalDisbursed,
    totalRepaid,
  );

  /// Create a copy of LoanEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoanEntityImplCopyWith<_$LoanEntityImpl> get copyWith =>
      __$$LoanEntityImplCopyWithImpl<_$LoanEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoanEntityImplToJson(this);
  }
}

abstract class _LoanEntity implements LoanEntity {
  const factory _LoanEntity({
    required final double currentBalance,
    required final double creditLimit,
    required final double nextRepaymentAmount,
    required final DateTime nextRepaymentDate,
    required final double interestRate,
    required final double totalDisbursed,
    required final double totalRepaid,
  }) = _$LoanEntityImpl;

  factory _LoanEntity.fromJson(Map<String, dynamic> json) =
      _$LoanEntityImpl.fromJson;

  @override
  double get currentBalance;
  @override
  double get creditLimit;
  @override
  double get nextRepaymentAmount;
  @override
  DateTime get nextRepaymentDate;
  @override
  double get interestRate;
  @override
  double get totalDisbursed;
  @override
  double get totalRepaid;

  /// Create a copy of LoanEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoanEntityImplCopyWith<_$LoanEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
