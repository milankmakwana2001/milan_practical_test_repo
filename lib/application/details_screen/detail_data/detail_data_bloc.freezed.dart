// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_data_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DetailDataEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) started,
    required TResult Function() emitInitial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? started,
    TResult? Function()? emitInitial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? started,
    TResult Function()? emitInitial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_EmitInitial value) emitInitial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_EmitInitial value)? emitInitial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_EmitInitial value)? emitInitial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailDataEventCopyWith<$Res> {
  factory $DetailDataEventCopyWith(
          DetailDataEvent value, $Res Function(DetailDataEvent) then) =
      _$DetailDataEventCopyWithImpl<$Res, DetailDataEvent>;
}

/// @nodoc
class _$DetailDataEventCopyWithImpl<$Res, $Val extends DetailDataEvent>
    implements $DetailDataEventCopyWith<$Res> {
  _$DetailDataEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$DetailDataEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_Started(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'DetailDataEvent.started(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Started &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StartedCopyWith<_$_Started> get copyWith =>
      __$$_StartedCopyWithImpl<_$_Started>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) started,
    required TResult Function() emitInitial,
  }) {
    return started(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? started,
    TResult? Function()? emitInitial,
  }) {
    return started?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? started,
    TResult Function()? emitInitial,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_EmitInitial value) emitInitial,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_EmitInitial value)? emitInitial,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_EmitInitial value)? emitInitial,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements DetailDataEvent {
  const factory _Started({required final int id}) = _$_Started;

  int get id;
  @JsonKey(ignore: true)
  _$$_StartedCopyWith<_$_Started> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EmitInitialCopyWith<$Res> {
  factory _$$_EmitInitialCopyWith(
          _$_EmitInitial value, $Res Function(_$_EmitInitial) then) =
      __$$_EmitInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_EmitInitialCopyWithImpl<$Res>
    extends _$DetailDataEventCopyWithImpl<$Res, _$_EmitInitial>
    implements _$$_EmitInitialCopyWith<$Res> {
  __$$_EmitInitialCopyWithImpl(
      _$_EmitInitial _value, $Res Function(_$_EmitInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_EmitInitial implements _EmitInitial {
  const _$_EmitInitial();

  @override
  String toString() {
    return 'DetailDataEvent.emitInitial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_EmitInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) started,
    required TResult Function() emitInitial,
  }) {
    return emitInitial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? started,
    TResult? Function()? emitInitial,
  }) {
    return emitInitial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? started,
    TResult Function()? emitInitial,
    required TResult orElse(),
  }) {
    if (emitInitial != null) {
      return emitInitial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_EmitInitial value) emitInitial,
  }) {
    return emitInitial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_EmitInitial value)? emitInitial,
  }) {
    return emitInitial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_EmitInitial value)? emitInitial,
    required TResult orElse(),
  }) {
    if (emitInitial != null) {
      return emitInitial(this);
    }
    return orElse();
  }
}

abstract class _EmitInitial implements DetailDataEvent {
  const factory _EmitInitial() = _$_EmitInitial;
}

/// @nodoc
mixin _$DetailDataState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  DetailResponse? get detailData => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool isLoading, bool isError, DetailResponse? detailData)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading, bool isError, DetailResponse? detailData)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading, bool isError, DetailResponse? detailData)?
        initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DetailDataStateCopyWith<DetailDataState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailDataStateCopyWith<$Res> {
  factory $DetailDataStateCopyWith(
          DetailDataState value, $Res Function(DetailDataState) then) =
      _$DetailDataStateCopyWithImpl<$Res, DetailDataState>;
  @useResult
  $Res call({bool isLoading, bool isError, DetailResponse? detailData});
}

/// @nodoc
class _$DetailDataStateCopyWithImpl<$Res, $Val extends DetailDataState>
    implements $DetailDataStateCopyWith<$Res> {
  _$DetailDataStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? detailData = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      detailData: freezed == detailData
          ? _value.detailData
          : detailData // ignore: cast_nullable_to_non_nullable
              as DetailResponse?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $DetailDataStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, bool isError, DetailResponse? detailData});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$DetailDataStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? detailData = freezed,
  }) {
    return _then(_$_Initial(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      detailData: freezed == detailData
          ? _value.detailData
          : detailData // ignore: cast_nullable_to_non_nullable
              as DetailResponse?,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {required this.isLoading,
      required this.isError,
      required this.detailData});

  @override
  final bool isLoading;
  @override
  final bool isError;
  @override
  final DetailResponse? detailData;

  @override
  String toString() {
    return 'DetailDataState.initial(isLoading: $isLoading, isError: $isError, detailData: $detailData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.detailData, detailData) ||
                other.detailData == detailData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, isError, detailData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool isLoading, bool isError, DetailResponse? detailData)
        initial,
  }) {
    return initial(isLoading, isError, detailData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading, bool isError, DetailResponse? detailData)?
        initial,
  }) {
    return initial?.call(isLoading, isError, detailData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading, bool isError, DetailResponse? detailData)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(isLoading, isError, detailData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements DetailDataState {
  const factory _Initial(
      {required final bool isLoading,
      required final bool isError,
      required final DetailResponse? detailData}) = _$_Initial;

  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  DetailResponse? get detailData;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
