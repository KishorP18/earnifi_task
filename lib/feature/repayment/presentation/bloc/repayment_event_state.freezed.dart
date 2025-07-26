// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'repayment_event_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$RepaymentEvent {
  int get page => throw _privateConstructorUsedError;
  String get query => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page, String query) fetch,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int page, String query)? fetch,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page, String query)? fetch,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchRepayments value) fetch,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchRepayments value)? fetch,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchRepayments value)? fetch,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;

  /// Create a copy of RepaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RepaymentEventCopyWith<RepaymentEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepaymentEventCopyWith<$Res> {
  factory $RepaymentEventCopyWith(
    RepaymentEvent value,
    $Res Function(RepaymentEvent) then,
  ) = _$RepaymentEventCopyWithImpl<$Res, RepaymentEvent>;
  @useResult
  $Res call({int page, String query});
}

/// @nodoc
class _$RepaymentEventCopyWithImpl<$Res, $Val extends RepaymentEvent>
    implements $RepaymentEventCopyWith<$Res> {
  _$RepaymentEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RepaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? page = null, Object? query = null}) {
    return _then(
      _value.copyWith(
            page: null == page
                ? _value.page
                : page // ignore: cast_nullable_to_non_nullable
                      as int,
            query: null == query
                ? _value.query
                : query // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$FetchRepaymentsImplCopyWith<$Res>
    implements $RepaymentEventCopyWith<$Res> {
  factory _$$FetchRepaymentsImplCopyWith(
    _$FetchRepaymentsImpl value,
    $Res Function(_$FetchRepaymentsImpl) then,
  ) = __$$FetchRepaymentsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int page, String query});
}

/// @nodoc
class __$$FetchRepaymentsImplCopyWithImpl<$Res>
    extends _$RepaymentEventCopyWithImpl<$Res, _$FetchRepaymentsImpl>
    implements _$$FetchRepaymentsImplCopyWith<$Res> {
  __$$FetchRepaymentsImplCopyWithImpl(
    _$FetchRepaymentsImpl _value,
    $Res Function(_$FetchRepaymentsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RepaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? page = null, Object? query = null}) {
    return _then(
      _$FetchRepaymentsImpl(
        page: null == page
            ? _value.page
            : page // ignore: cast_nullable_to_non_nullable
                  as int,
        query: null == query
            ? _value.query
            : query // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$FetchRepaymentsImpl implements FetchRepayments {
  const _$FetchRepaymentsImpl({this.page = 0, this.query = ''});

  @override
  @JsonKey()
  final int page;
  @override
  @JsonKey()
  final String query;

  @override
  String toString() {
    return 'RepaymentEvent.fetch(page: $page, query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchRepaymentsImpl &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, page, query);

  /// Create a copy of RepaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchRepaymentsImplCopyWith<_$FetchRepaymentsImpl> get copyWith =>
      __$$FetchRepaymentsImplCopyWithImpl<_$FetchRepaymentsImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page, String query) fetch,
  }) {
    return fetch(page, query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int page, String query)? fetch,
  }) {
    return fetch?.call(page, query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page, String query)? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(page, query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchRepayments value) fetch,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchRepayments value)? fetch,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchRepayments value)? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class FetchRepayments implements RepaymentEvent {
  const factory FetchRepayments({final int page, final String query}) =
      _$FetchRepaymentsImpl;

  @override
  int get page;
  @override
  String get query;

  /// Create a copy of RepaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchRepaymentsImplCopyWith<_$FetchRepaymentsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RepaymentState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<RepaymentEntity> data, bool hasMore) loaded,
    required TResult Function(String message) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<RepaymentEntity> data, bool hasMore)? loaded,
    TResult? Function(String message)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<RepaymentEntity> data, bool hasMore)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RepaymentInitial value) initial,
    required TResult Function(RepaymentLoading value) loading,
    required TResult Function(RepaymentLoaded value) loaded,
    required TResult Function(RepaymentError value) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RepaymentInitial value)? initial,
    TResult? Function(RepaymentLoading value)? loading,
    TResult? Function(RepaymentLoaded value)? loaded,
    TResult? Function(RepaymentError value)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RepaymentInitial value)? initial,
    TResult Function(RepaymentLoading value)? loading,
    TResult Function(RepaymentLoaded value)? loaded,
    TResult Function(RepaymentError value)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepaymentStateCopyWith<$Res> {
  factory $RepaymentStateCopyWith(
    RepaymentState value,
    $Res Function(RepaymentState) then,
  ) = _$RepaymentStateCopyWithImpl<$Res, RepaymentState>;
}

/// @nodoc
class _$RepaymentStateCopyWithImpl<$Res, $Val extends RepaymentState>
    implements $RepaymentStateCopyWith<$Res> {
  _$RepaymentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RepaymentState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$RepaymentInitialImplCopyWith<$Res> {
  factory _$$RepaymentInitialImplCopyWith(
    _$RepaymentInitialImpl value,
    $Res Function(_$RepaymentInitialImpl) then,
  ) = __$$RepaymentInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RepaymentInitialImplCopyWithImpl<$Res>
    extends _$RepaymentStateCopyWithImpl<$Res, _$RepaymentInitialImpl>
    implements _$$RepaymentInitialImplCopyWith<$Res> {
  __$$RepaymentInitialImplCopyWithImpl(
    _$RepaymentInitialImpl _value,
    $Res Function(_$RepaymentInitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RepaymentState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RepaymentInitialImpl implements RepaymentInitial {
  const _$RepaymentInitialImpl();

  @override
  String toString() {
    return 'RepaymentState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RepaymentInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<RepaymentEntity> data, bool hasMore) loaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<RepaymentEntity> data, bool hasMore)? loaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<RepaymentEntity> data, bool hasMore)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RepaymentInitial value) initial,
    required TResult Function(RepaymentLoading value) loading,
    required TResult Function(RepaymentLoaded value) loaded,
    required TResult Function(RepaymentError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RepaymentInitial value)? initial,
    TResult? Function(RepaymentLoading value)? loading,
    TResult? Function(RepaymentLoaded value)? loaded,
    TResult? Function(RepaymentError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RepaymentInitial value)? initial,
    TResult Function(RepaymentLoading value)? loading,
    TResult Function(RepaymentLoaded value)? loaded,
    TResult Function(RepaymentError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class RepaymentInitial implements RepaymentState {
  const factory RepaymentInitial() = _$RepaymentInitialImpl;
}

/// @nodoc
abstract class _$$RepaymentLoadingImplCopyWith<$Res> {
  factory _$$RepaymentLoadingImplCopyWith(
    _$RepaymentLoadingImpl value,
    $Res Function(_$RepaymentLoadingImpl) then,
  ) = __$$RepaymentLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RepaymentLoadingImplCopyWithImpl<$Res>
    extends _$RepaymentStateCopyWithImpl<$Res, _$RepaymentLoadingImpl>
    implements _$$RepaymentLoadingImplCopyWith<$Res> {
  __$$RepaymentLoadingImplCopyWithImpl(
    _$RepaymentLoadingImpl _value,
    $Res Function(_$RepaymentLoadingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RepaymentState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RepaymentLoadingImpl implements RepaymentLoading {
  const _$RepaymentLoadingImpl();

  @override
  String toString() {
    return 'RepaymentState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RepaymentLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<RepaymentEntity> data, bool hasMore) loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<RepaymentEntity> data, bool hasMore)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<RepaymentEntity> data, bool hasMore)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RepaymentInitial value) initial,
    required TResult Function(RepaymentLoading value) loading,
    required TResult Function(RepaymentLoaded value) loaded,
    required TResult Function(RepaymentError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RepaymentInitial value)? initial,
    TResult? Function(RepaymentLoading value)? loading,
    TResult? Function(RepaymentLoaded value)? loaded,
    TResult? Function(RepaymentError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RepaymentInitial value)? initial,
    TResult Function(RepaymentLoading value)? loading,
    TResult Function(RepaymentLoaded value)? loaded,
    TResult Function(RepaymentError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class RepaymentLoading implements RepaymentState {
  const factory RepaymentLoading() = _$RepaymentLoadingImpl;
}

/// @nodoc
abstract class _$$RepaymentLoadedImplCopyWith<$Res> {
  factory _$$RepaymentLoadedImplCopyWith(
    _$RepaymentLoadedImpl value,
    $Res Function(_$RepaymentLoadedImpl) then,
  ) = __$$RepaymentLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<RepaymentEntity> data, bool hasMore});
}

/// @nodoc
class __$$RepaymentLoadedImplCopyWithImpl<$Res>
    extends _$RepaymentStateCopyWithImpl<$Res, _$RepaymentLoadedImpl>
    implements _$$RepaymentLoadedImplCopyWith<$Res> {
  __$$RepaymentLoadedImplCopyWithImpl(
    _$RepaymentLoadedImpl _value,
    $Res Function(_$RepaymentLoadedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RepaymentState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? data = null, Object? hasMore = null}) {
    return _then(
      _$RepaymentLoadedImpl(
        null == data
            ? _value._data
            : data // ignore: cast_nullable_to_non_nullable
                  as List<RepaymentEntity>,
        null == hasMore
            ? _value.hasMore
            : hasMore // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc

class _$RepaymentLoadedImpl implements RepaymentLoaded {
  const _$RepaymentLoadedImpl(final List<RepaymentEntity> data, this.hasMore)
    : _data = data;

  final List<RepaymentEntity> _data;
  @override
  List<RepaymentEntity> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final bool hasMore;

  @override
  String toString() {
    return 'RepaymentState.loaded(data: $data, hasMore: $hasMore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RepaymentLoadedImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.hasMore, hasMore) || other.hasMore == hasMore));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_data),
    hasMore,
  );

  /// Create a copy of RepaymentState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RepaymentLoadedImplCopyWith<_$RepaymentLoadedImpl> get copyWith =>
      __$$RepaymentLoadedImplCopyWithImpl<_$RepaymentLoadedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<RepaymentEntity> data, bool hasMore) loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(data, hasMore);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<RepaymentEntity> data, bool hasMore)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(data, hasMore);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<RepaymentEntity> data, bool hasMore)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(data, hasMore);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RepaymentInitial value) initial,
    required TResult Function(RepaymentLoading value) loading,
    required TResult Function(RepaymentLoaded value) loaded,
    required TResult Function(RepaymentError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RepaymentInitial value)? initial,
    TResult? Function(RepaymentLoading value)? loading,
    TResult? Function(RepaymentLoaded value)? loaded,
    TResult? Function(RepaymentError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RepaymentInitial value)? initial,
    TResult Function(RepaymentLoading value)? loading,
    TResult Function(RepaymentLoaded value)? loaded,
    TResult Function(RepaymentError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class RepaymentLoaded implements RepaymentState {
  const factory RepaymentLoaded(
    final List<RepaymentEntity> data,
    final bool hasMore,
  ) = _$RepaymentLoadedImpl;

  List<RepaymentEntity> get data;
  bool get hasMore;

  /// Create a copy of RepaymentState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RepaymentLoadedImplCopyWith<_$RepaymentLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RepaymentErrorImplCopyWith<$Res> {
  factory _$$RepaymentErrorImplCopyWith(
    _$RepaymentErrorImpl value,
    $Res Function(_$RepaymentErrorImpl) then,
  ) = __$$RepaymentErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$RepaymentErrorImplCopyWithImpl<$Res>
    extends _$RepaymentStateCopyWithImpl<$Res, _$RepaymentErrorImpl>
    implements _$$RepaymentErrorImplCopyWith<$Res> {
  __$$RepaymentErrorImplCopyWithImpl(
    _$RepaymentErrorImpl _value,
    $Res Function(_$RepaymentErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RepaymentState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$RepaymentErrorImpl(
        null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$RepaymentErrorImpl implements RepaymentError {
  const _$RepaymentErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'RepaymentState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RepaymentErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of RepaymentState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RepaymentErrorImplCopyWith<_$RepaymentErrorImpl> get copyWith =>
      __$$RepaymentErrorImplCopyWithImpl<_$RepaymentErrorImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<RepaymentEntity> data, bool hasMore) loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<RepaymentEntity> data, bool hasMore)? loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<RepaymentEntity> data, bool hasMore)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RepaymentInitial value) initial,
    required TResult Function(RepaymentLoading value) loading,
    required TResult Function(RepaymentLoaded value) loaded,
    required TResult Function(RepaymentError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RepaymentInitial value)? initial,
    TResult? Function(RepaymentLoading value)? loading,
    TResult? Function(RepaymentLoaded value)? loaded,
    TResult? Function(RepaymentError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RepaymentInitial value)? initial,
    TResult Function(RepaymentLoading value)? loading,
    TResult Function(RepaymentLoaded value)? loaded,
    TResult Function(RepaymentError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class RepaymentError implements RepaymentState {
  const factory RepaymentError(final String message) = _$RepaymentErrorImpl;

  String get message;

  /// Create a copy of RepaymentState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RepaymentErrorImplCopyWith<_$RepaymentErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
