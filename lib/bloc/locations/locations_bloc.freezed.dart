// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'locations_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LocationsEvent {
  String get name => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) filterByName,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String name)? filterByName,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? filterByName,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocationsFilterByName value) filterByName,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LocationsFilterByName value)? filterByName,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationsFilterByName value)? filterByName,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LocationsEventCopyWith<LocationsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationsEventCopyWith<$Res> {
  factory $LocationsEventCopyWith(
          LocationsEvent value, $Res Function(LocationsEvent) then) =
      _$LocationsEventCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class _$LocationsEventCopyWithImpl<$Res>
    implements $LocationsEventCopyWith<$Res> {
  _$LocationsEventCopyWithImpl(this._value, this._then);

  final LocationsEvent _value;
  // ignore: unused_field
  final $Res Function(LocationsEvent) _then;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$LocationsFilterByNameCopyWith<$Res>
    implements $LocationsEventCopyWith<$Res> {
  factory _$$LocationsFilterByNameCopyWith(_$LocationsFilterByName value,
          $Res Function(_$LocationsFilterByName) then) =
      __$$LocationsFilterByNameCopyWithImpl<$Res>;
  @override
  $Res call({String name});
}

/// @nodoc
class __$$LocationsFilterByNameCopyWithImpl<$Res>
    extends _$LocationsEventCopyWithImpl<$Res>
    implements _$$LocationsFilterByNameCopyWith<$Res> {
  __$$LocationsFilterByNameCopyWithImpl(_$LocationsFilterByName _value,
      $Res Function(_$LocationsFilterByName) _then)
      : super(_value, (v) => _then(v as _$LocationsFilterByName));

  @override
  _$LocationsFilterByName get _value => super._value as _$LocationsFilterByName;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_$LocationsFilterByName(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LocationsFilterByName implements LocationsFilterByName {
  const _$LocationsFilterByName({required this.name});

  @override
  final String name;

  @override
  String toString() {
    return 'LocationsEvent.filterByName(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationsFilterByName &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$$LocationsFilterByNameCopyWith<_$LocationsFilterByName> get copyWith =>
      __$$LocationsFilterByNameCopyWithImpl<_$LocationsFilterByName>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) filterByName,
  }) {
    return filterByName(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String name)? filterByName,
  }) {
    return filterByName?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? filterByName,
    required TResult orElse(),
  }) {
    if (filterByName != null) {
      return filterByName(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocationsFilterByName value) filterByName,
  }) {
    return filterByName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LocationsFilterByName value)? filterByName,
  }) {
    return filterByName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationsFilterByName value)? filterByName,
    required TResult orElse(),
  }) {
    if (filterByName != null) {
      return filterByName(this);
    }
    return orElse();
  }
}

abstract class LocationsFilterByName implements LocationsEvent {
  const factory LocationsFilterByName({required final String name}) =
      _$LocationsFilterByName;

  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$LocationsFilterByNameCopyWith<_$LocationsFilterByName> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LocationsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<LocationModel> data) data,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<LocationModel> data)? data,
    TResult Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<LocationModel> data)? data,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocationsInitial value) initial,
    required TResult Function(LocationsLoading value) loading,
    required TResult Function(LocationsData value) data,
    required TResult Function(LocationsError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LocationsInitial value)? initial,
    TResult Function(LocationsLoading value)? loading,
    TResult Function(LocationsData value)? data,
    TResult Function(LocationsError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationsInitial value)? initial,
    TResult Function(LocationsLoading value)? loading,
    TResult Function(LocationsData value)? data,
    TResult Function(LocationsError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationsStateCopyWith<$Res> {
  factory $LocationsStateCopyWith(
          LocationsState value, $Res Function(LocationsState) then) =
      _$LocationsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LocationsStateCopyWithImpl<$Res>
    implements $LocationsStateCopyWith<$Res> {
  _$LocationsStateCopyWithImpl(this._value, this._then);

  final LocationsState _value;
  // ignore: unused_field
  final $Res Function(LocationsState) _then;
}

/// @nodoc
abstract class _$$LocationsInitialCopyWith<$Res> {
  factory _$$LocationsInitialCopyWith(
          _$LocationsInitial value, $Res Function(_$LocationsInitial) then) =
      __$$LocationsInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LocationsInitialCopyWithImpl<$Res>
    extends _$LocationsStateCopyWithImpl<$Res>
    implements _$$LocationsInitialCopyWith<$Res> {
  __$$LocationsInitialCopyWithImpl(
      _$LocationsInitial _value, $Res Function(_$LocationsInitial) _then)
      : super(_value, (v) => _then(v as _$LocationsInitial));

  @override
  _$LocationsInitial get _value => super._value as _$LocationsInitial;
}

/// @nodoc

class _$LocationsInitial implements LocationsInitial {
  const _$LocationsInitial();

  @override
  String toString() {
    return 'LocationsState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LocationsInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<LocationModel> data) data,
    required TResult Function(String error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<LocationModel> data)? data,
    TResult Function(String error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<LocationModel> data)? data,
    TResult Function(String error)? error,
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
    required TResult Function(LocationsInitial value) initial,
    required TResult Function(LocationsLoading value) loading,
    required TResult Function(LocationsData value) data,
    required TResult Function(LocationsError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LocationsInitial value)? initial,
    TResult Function(LocationsLoading value)? loading,
    TResult Function(LocationsData value)? data,
    TResult Function(LocationsError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationsInitial value)? initial,
    TResult Function(LocationsLoading value)? loading,
    TResult Function(LocationsData value)? data,
    TResult Function(LocationsError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class LocationsInitial implements LocationsState {
  const factory LocationsInitial() = _$LocationsInitial;
}

/// @nodoc
abstract class _$$LocationsLoadingCopyWith<$Res> {
  factory _$$LocationsLoadingCopyWith(
          _$LocationsLoading value, $Res Function(_$LocationsLoading) then) =
      __$$LocationsLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LocationsLoadingCopyWithImpl<$Res>
    extends _$LocationsStateCopyWithImpl<$Res>
    implements _$$LocationsLoadingCopyWith<$Res> {
  __$$LocationsLoadingCopyWithImpl(
      _$LocationsLoading _value, $Res Function(_$LocationsLoading) _then)
      : super(_value, (v) => _then(v as _$LocationsLoading));

  @override
  _$LocationsLoading get _value => super._value as _$LocationsLoading;
}

/// @nodoc

class _$LocationsLoading implements LocationsLoading {
  const _$LocationsLoading();

  @override
  String toString() {
    return 'LocationsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LocationsLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<LocationModel> data) data,
    required TResult Function(String error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<LocationModel> data)? data,
    TResult Function(String error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<LocationModel> data)? data,
    TResult Function(String error)? error,
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
    required TResult Function(LocationsInitial value) initial,
    required TResult Function(LocationsLoading value) loading,
    required TResult Function(LocationsData value) data,
    required TResult Function(LocationsError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LocationsInitial value)? initial,
    TResult Function(LocationsLoading value)? loading,
    TResult Function(LocationsData value)? data,
    TResult Function(LocationsError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationsInitial value)? initial,
    TResult Function(LocationsLoading value)? loading,
    TResult Function(LocationsData value)? data,
    TResult Function(LocationsError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LocationsLoading implements LocationsState {
  const factory LocationsLoading() = _$LocationsLoading;
}

/// @nodoc
abstract class _$$LocationsDataCopyWith<$Res> {
  factory _$$LocationsDataCopyWith(
          _$LocationsData value, $Res Function(_$LocationsData) then) =
      __$$LocationsDataCopyWithImpl<$Res>;
  $Res call({List<LocationModel> data});
}

/// @nodoc
class __$$LocationsDataCopyWithImpl<$Res>
    extends _$LocationsStateCopyWithImpl<$Res>
    implements _$$LocationsDataCopyWith<$Res> {
  __$$LocationsDataCopyWithImpl(
      _$LocationsData _value, $Res Function(_$LocationsData) _then)
      : super(_value, (v) => _then(v as _$LocationsData));

  @override
  _$LocationsData get _value => super._value as _$LocationsData;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$LocationsData(
      data: data == freezed
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<LocationModel>,
    ));
  }
}

/// @nodoc

class _$LocationsData implements LocationsData {
  const _$LocationsData({required final List<LocationModel> data})
      : _data = data;

  final List<LocationModel> _data;
  @override
  List<LocationModel> get data {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'LocationsState.data(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationsData &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  _$$LocationsDataCopyWith<_$LocationsData> get copyWith =>
      __$$LocationsDataCopyWithImpl<_$LocationsData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<LocationModel> data) data,
    required TResult Function(String error) error,
  }) {
    return data(this.data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<LocationModel> data)? data,
    TResult Function(String error)? error,
  }) {
    return data?.call(this.data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<LocationModel> data)? data,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this.data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocationsInitial value) initial,
    required TResult Function(LocationsLoading value) loading,
    required TResult Function(LocationsData value) data,
    required TResult Function(LocationsError value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LocationsInitial value)? initial,
    TResult Function(LocationsLoading value)? loading,
    TResult Function(LocationsData value)? data,
    TResult Function(LocationsError value)? error,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationsInitial value)? initial,
    TResult Function(LocationsLoading value)? loading,
    TResult Function(LocationsData value)? data,
    TResult Function(LocationsError value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class LocationsData implements LocationsState {
  const factory LocationsData({required final List<LocationModel> data}) =
      _$LocationsData;

  List<LocationModel> get data;
  @JsonKey(ignore: true)
  _$$LocationsDataCopyWith<_$LocationsData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LocationsErrorCopyWith<$Res> {
  factory _$$LocationsErrorCopyWith(
          _$LocationsError value, $Res Function(_$LocationsError) then) =
      __$$LocationsErrorCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class __$$LocationsErrorCopyWithImpl<$Res>
    extends _$LocationsStateCopyWithImpl<$Res>
    implements _$$LocationsErrorCopyWith<$Res> {
  __$$LocationsErrorCopyWithImpl(
      _$LocationsError _value, $Res Function(_$LocationsError) _then)
      : super(_value, (v) => _then(v as _$LocationsError));

  @override
  _$LocationsError get _value => super._value as _$LocationsError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$LocationsError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LocationsError implements LocationsError {
  const _$LocationsError(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'LocationsState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationsError &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$LocationsErrorCopyWith<_$LocationsError> get copyWith =>
      __$$LocationsErrorCopyWithImpl<_$LocationsError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<LocationModel> data) data,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<LocationModel> data)? data,
    TResult Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<LocationModel> data)? data,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocationsInitial value) initial,
    required TResult Function(LocationsLoading value) loading,
    required TResult Function(LocationsData value) data,
    required TResult Function(LocationsError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LocationsInitial value)? initial,
    TResult Function(LocationsLoading value)? loading,
    TResult Function(LocationsData value)? data,
    TResult Function(LocationsError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationsInitial value)? initial,
    TResult Function(LocationsLoading value)? loading,
    TResult Function(LocationsData value)? data,
    TResult Function(LocationsError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class LocationsError implements LocationsState {
  const factory LocationsError(final String error) = _$LocationsError;

  String get error;
  @JsonKey(ignore: true)
  _$$LocationsErrorCopyWith<_$LocationsError> get copyWith =>
      throw _privateConstructorUsedError;
}
