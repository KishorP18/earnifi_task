// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'repayment_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

RepaymentEntity _$RepaymentEntityFromJson(Map<String, dynamic> json) {
  return _RepaymentEntity.fromJson(json);
}

/// @nodoc
mixin _$RepaymentEntity {
  double get amount => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;

  /// Serializes this RepaymentEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RepaymentEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RepaymentEntityCopyWith<RepaymentEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepaymentEntityCopyWith<$Res> {
  factory $RepaymentEntityCopyWith(
    RepaymentEntity value,
    $Res Function(RepaymentEntity) then,
  ) = _$RepaymentEntityCopyWithImpl<$Res, RepaymentEntity>;
  @useResult
  $Res call({double amount, String status, DateTime date});
}

/// @nodoc
class _$RepaymentEntityCopyWithImpl<$Res, $Val extends RepaymentEntity>
    implements $RepaymentEntityCopyWith<$Res> {
  _$RepaymentEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RepaymentEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? status = null,
    Object? date = null,
  }) {
    return _then(
      _value.copyWith(
            amount: null == amount
                ? _value.amount
                : amount // ignore: cast_nullable_to_non_nullable
                      as double,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String,
            date: null == date
                ? _value.date
                : date // ignore: cast_nullable_to_non_nullable
                      as DateTime,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$RepaymentEntityImplCopyWith<$Res>
    implements $RepaymentEntityCopyWith<$Res> {
  factory _$$RepaymentEntityImplCopyWith(
    _$RepaymentEntityImpl value,
    $Res Function(_$RepaymentEntityImpl) then,
  ) = __$$RepaymentEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double amount, String status, DateTime date});
}

/// @nodoc
class __$$RepaymentEntityImplCopyWithImpl<$Res>
    extends _$RepaymentEntityCopyWithImpl<$Res, _$RepaymentEntityImpl>
    implements _$$RepaymentEntityImplCopyWith<$Res> {
  __$$RepaymentEntityImplCopyWithImpl(
    _$RepaymentEntityImpl _value,
    $Res Function(_$RepaymentEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RepaymentEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? status = null,
    Object? date = null,
  }) {
    return _then(
      _$RepaymentEntityImpl(
        amount: null == amount
            ? _value.amount
            : amount // ignore: cast_nullable_to_non_nullable
                  as double,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String,
        date: null == date
            ? _value.date
            : date // ignore: cast_nullable_to_non_nullable
                  as DateTime,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RepaymentEntityImpl implements _RepaymentEntity {
  const _$RepaymentEntityImpl({
    required this.amount,
    required this.status,
    required this.date,
  });

  factory _$RepaymentEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$RepaymentEntityImplFromJson(json);

  @override
  final double amount;
  @override
  final String status;
  @override
  final DateTime date;

  @override
  String toString() {
    return 'RepaymentEntity(amount: $amount, status: $status, date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RepaymentEntityImpl &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, amount, status, date);

  /// Create a copy of RepaymentEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RepaymentEntityImplCopyWith<_$RepaymentEntityImpl> get copyWith =>
      __$$RepaymentEntityImplCopyWithImpl<_$RepaymentEntityImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$RepaymentEntityImplToJson(this);
  }
}

abstract class _RepaymentEntity implements RepaymentEntity {
  const factory _RepaymentEntity({
    required final double amount,
    required final String status,
    required final DateTime date,
  }) = _$RepaymentEntityImpl;

  factory _RepaymentEntity.fromJson(Map<String, dynamic> json) =
      _$RepaymentEntityImpl.fromJson;

  @override
  double get amount;
  @override
  String get status;
  @override
  DateTime get date;

  /// Create a copy of RepaymentEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RepaymentEntityImplCopyWith<_$RepaymentEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
