// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'episodes_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EpisodesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function() nextPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function()? nextPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function()? nextPage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EpisodesFetch value) fetch,
    required TResult Function(EpisodesNextPage value) nextPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EpisodesFetch value)? fetch,
    TResult Function(EpisodesNextPage value)? nextPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EpisodesFetch value)? fetch,
    TResult Function(EpisodesNextPage value)? nextPage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpisodesEventCopyWith<$Res> {
  factory $EpisodesEventCopyWith(
          EpisodesEvent value, $Res Function(EpisodesEvent) then) =
      _$EpisodesEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$EpisodesEventCopyWithImpl<$Res>
    implements $EpisodesEventCopyWith<$Res> {
  _$EpisodesEventCopyWithImpl(this._value, this._then);

  final EpisodesEvent _value;
  // ignore: unused_field
  final $Res Function(EpisodesEvent) _then;
}

/// @nodoc
abstract class _$$EpisodesFetchCopyWith<$Res> {
  factory _$$EpisodesFetchCopyWith(
          _$EpisodesFetch value, $Res Function(_$EpisodesFetch) then) =
      __$$EpisodesFetchCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EpisodesFetchCopyWithImpl<$Res>
    extends _$EpisodesEventCopyWithImpl<$Res>
    implements _$$EpisodesFetchCopyWith<$Res> {
  __$$EpisodesFetchCopyWithImpl(
      _$EpisodesFetch _value, $Res Function(_$EpisodesFetch) _then)
      : super(_value, (v) => _then(v as _$EpisodesFetch));

  @override
  _$EpisodesFetch get _value => super._value as _$EpisodesFetch;
}

/// @nodoc

class _$EpisodesFetch implements EpisodesFetch {
  const _$EpisodesFetch();

  @override
  String toString() {
    return 'EpisodesEvent.fetch()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EpisodesFetch);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function() nextPage,
  }) {
    return fetch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function()? nextPage,
  }) {
    return fetch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function()? nextPage,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EpisodesFetch value) fetch,
    required TResult Function(EpisodesNextPage value) nextPage,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EpisodesFetch value)? fetch,
    TResult Function(EpisodesNextPage value)? nextPage,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EpisodesFetch value)? fetch,
    TResult Function(EpisodesNextPage value)? nextPage,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class EpisodesFetch implements EpisodesEvent {
  const factory EpisodesFetch() = _$EpisodesFetch;
}

/// @nodoc
abstract class _$$EpisodesNextPageCopyWith<$Res> {
  factory _$$EpisodesNextPageCopyWith(
          _$EpisodesNextPage value, $Res Function(_$EpisodesNextPage) then) =
      __$$EpisodesNextPageCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EpisodesNextPageCopyWithImpl<$Res>
    extends _$EpisodesEventCopyWithImpl<$Res>
    implements _$$EpisodesNextPageCopyWith<$Res> {
  __$$EpisodesNextPageCopyWithImpl(
      _$EpisodesNextPage _value, $Res Function(_$EpisodesNextPage) _then)
      : super(_value, (v) => _then(v as _$EpisodesNextPage));

  @override
  _$EpisodesNextPage get _value => super._value as _$EpisodesNextPage;
}

/// @nodoc

class _$EpisodesNextPage implements EpisodesNextPage {
  const _$EpisodesNextPage();

  @override
  String toString() {
    return 'EpisodesEvent.nextPage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EpisodesNextPage);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function() nextPage,
  }) {
    return nextPage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function()? nextPage,
  }) {
    return nextPage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function()? nextPage,
    required TResult orElse(),
  }) {
    if (nextPage != null) {
      return nextPage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EpisodesFetch value) fetch,
    required TResult Function(EpisodesNextPage value) nextPage,
  }) {
    return nextPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EpisodesFetch value)? fetch,
    TResult Function(EpisodesNextPage value)? nextPage,
  }) {
    return nextPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EpisodesFetch value)? fetch,
    TResult Function(EpisodesNextPage value)? nextPage,
    required TResult orElse(),
  }) {
    if (nextPage != null) {
      return nextPage(this);
    }
    return orElse();
  }
}

abstract class EpisodesNextPage implements EpisodesEvent {
  const factory EpisodesNextPage() = _$EpisodesNextPage;
}

/// @nodoc
mixin _$EpisodesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<EpisodeModel> data, bool isLoading, String? errorMessage)
        data,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<EpisodeModel> data, bool isLoading, String? errorMessage)?
        data,
    TResult Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<EpisodeModel> data, bool isLoading, String? errorMessage)?
        data,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EpisodesInitial value) initial,
    required TResult Function(EpisodesLoading value) loading,
    required TResult Function(EpisodesData value) data,
    required TResult Function(EpisodesError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EpisodesInitial value)? initial,
    TResult Function(EpisodesLoading value)? loading,
    TResult Function(EpisodesData value)? data,
    TResult Function(EpisodesError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EpisodesInitial value)? initial,
    TResult Function(EpisodesLoading value)? loading,
    TResult Function(EpisodesData value)? data,
    TResult Function(EpisodesError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpisodesStateCopyWith<$Res> {
  factory $EpisodesStateCopyWith(
          EpisodesState value, $Res Function(EpisodesState) then) =
      _$EpisodesStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$EpisodesStateCopyWithImpl<$Res>
    implements $EpisodesStateCopyWith<$Res> {
  _$EpisodesStateCopyWithImpl(this._value, this._then);

  final EpisodesState _value;
  // ignore: unused_field
  final $Res Function(EpisodesState) _then;
}

/// @nodoc
abstract class _$$EpisodesInitialCopyWith<$Res> {
  factory _$$EpisodesInitialCopyWith(
          _$EpisodesInitial value, $Res Function(_$EpisodesInitial) then) =
      __$$EpisodesInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EpisodesInitialCopyWithImpl<$Res>
    extends _$EpisodesStateCopyWithImpl<$Res>
    implements _$$EpisodesInitialCopyWith<$Res> {
  __$$EpisodesInitialCopyWithImpl(
      _$EpisodesInitial _value, $Res Function(_$EpisodesInitial) _then)
      : super(_value, (v) => _then(v as _$EpisodesInitial));

  @override
  _$EpisodesInitial get _value => super._value as _$EpisodesInitial;
}

/// @nodoc

class _$EpisodesInitial implements EpisodesInitial {
  const _$EpisodesInitial();

  @override
  String toString() {
    return 'EpisodesState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EpisodesInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<EpisodeModel> data, bool isLoading, String? errorMessage)
        data,
    required TResult Function(String error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<EpisodeModel> data, bool isLoading, String? errorMessage)?
        data,
    TResult Function(String error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<EpisodeModel> data, bool isLoading, String? errorMessage)?
        data,
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
    required TResult Function(EpisodesInitial value) initial,
    required TResult Function(EpisodesLoading value) loading,
    required TResult Function(EpisodesData value) data,
    required TResult Function(EpisodesError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EpisodesInitial value)? initial,
    TResult Function(EpisodesLoading value)? loading,
    TResult Function(EpisodesData value)? data,
    TResult Function(EpisodesError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EpisodesInitial value)? initial,
    TResult Function(EpisodesLoading value)? loading,
    TResult Function(EpisodesData value)? data,
    TResult Function(EpisodesError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class EpisodesInitial implements EpisodesState {
  const factory EpisodesInitial() = _$EpisodesInitial;
}

/// @nodoc
abstract class _$$EpisodesLoadingCopyWith<$Res> {
  factory _$$EpisodesLoadingCopyWith(
          _$EpisodesLoading value, $Res Function(_$EpisodesLoading) then) =
      __$$EpisodesLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EpisodesLoadingCopyWithImpl<$Res>
    extends _$EpisodesStateCopyWithImpl<$Res>
    implements _$$EpisodesLoadingCopyWith<$Res> {
  __$$EpisodesLoadingCopyWithImpl(
      _$EpisodesLoading _value, $Res Function(_$EpisodesLoading) _then)
      : super(_value, (v) => _then(v as _$EpisodesLoading));

  @override
  _$EpisodesLoading get _value => super._value as _$EpisodesLoading;
}

/// @nodoc

class _$EpisodesLoading implements EpisodesLoading {
  const _$EpisodesLoading();

  @override
  String toString() {
    return 'EpisodesState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EpisodesLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<EpisodeModel> data, bool isLoading, String? errorMessage)
        data,
    required TResult Function(String error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<EpisodeModel> data, bool isLoading, String? errorMessage)?
        data,
    TResult Function(String error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<EpisodeModel> data, bool isLoading, String? errorMessage)?
        data,
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
    required TResult Function(EpisodesInitial value) initial,
    required TResult Function(EpisodesLoading value) loading,
    required TResult Function(EpisodesData value) data,
    required TResult Function(EpisodesError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EpisodesInitial value)? initial,
    TResult Function(EpisodesLoading value)? loading,
    TResult Function(EpisodesData value)? data,
    TResult Function(EpisodesError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EpisodesInitial value)? initial,
    TResult Function(EpisodesLoading value)? loading,
    TResult Function(EpisodesData value)? data,
    TResult Function(EpisodesError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class EpisodesLoading implements EpisodesState {
  const factory EpisodesLoading() = _$EpisodesLoading;
}

/// @nodoc
abstract class _$$EpisodesDataCopyWith<$Res> {
  factory _$$EpisodesDataCopyWith(
          _$EpisodesData value, $Res Function(_$EpisodesData) then) =
      __$$EpisodesDataCopyWithImpl<$Res>;
  $Res call({List<EpisodeModel> data, bool isLoading, String? errorMessage});
}

/// @nodoc
class __$$EpisodesDataCopyWithImpl<$Res>
    extends _$EpisodesStateCopyWithImpl<$Res>
    implements _$$EpisodesDataCopyWith<$Res> {
  __$$EpisodesDataCopyWithImpl(
      _$EpisodesData _value, $Res Function(_$EpisodesData) _then)
      : super(_value, (v) => _then(v as _$EpisodesData));

  @override
  _$EpisodesData get _value => super._value as _$EpisodesData;

  @override
  $Res call({
    Object? data = freezed,
    Object? isLoading = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$EpisodesData(
      data: data == freezed
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<EpisodeModel>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$EpisodesData implements EpisodesData {
  const _$EpisodesData(
      {required final List<EpisodeModel> data,
      this.isLoading = false,
      this.errorMessage})
      : _data = data;

  final List<EpisodeModel> _data;
  @override
  List<EpisodeModel> get data {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'EpisodesState.data(data: $data, isLoading: $isLoading, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EpisodesData &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_data),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(errorMessage));

  @JsonKey(ignore: true)
  @override
  _$$EpisodesDataCopyWith<_$EpisodesData> get copyWith =>
      __$$EpisodesDataCopyWithImpl<_$EpisodesData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<EpisodeModel> data, bool isLoading, String? errorMessage)
        data,
    required TResult Function(String error) error,
  }) {
    return data(this.data, isLoading, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<EpisodeModel> data, bool isLoading, String? errorMessage)?
        data,
    TResult Function(String error)? error,
  }) {
    return data?.call(this.data, isLoading, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<EpisodeModel> data, bool isLoading, String? errorMessage)?
        data,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this.data, isLoading, errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EpisodesInitial value) initial,
    required TResult Function(EpisodesLoading value) loading,
    required TResult Function(EpisodesData value) data,
    required TResult Function(EpisodesError value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EpisodesInitial value)? initial,
    TResult Function(EpisodesLoading value)? loading,
    TResult Function(EpisodesData value)? data,
    TResult Function(EpisodesError value)? error,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EpisodesInitial value)? initial,
    TResult Function(EpisodesLoading value)? loading,
    TResult Function(EpisodesData value)? data,
    TResult Function(EpisodesError value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class EpisodesData implements EpisodesState {
  const factory EpisodesData(
      {required final List<EpisodeModel> data,
      final bool isLoading,
      final String? errorMessage}) = _$EpisodesData;

  List<EpisodeModel> get data;
  bool get isLoading;
  String? get errorMessage;
  @JsonKey(ignore: true)
  _$$EpisodesDataCopyWith<_$EpisodesData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EpisodesErrorCopyWith<$Res> {
  factory _$$EpisodesErrorCopyWith(
          _$EpisodesError value, $Res Function(_$EpisodesError) then) =
      __$$EpisodesErrorCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class __$$EpisodesErrorCopyWithImpl<$Res>
    extends _$EpisodesStateCopyWithImpl<$Res>
    implements _$$EpisodesErrorCopyWith<$Res> {
  __$$EpisodesErrorCopyWithImpl(
      _$EpisodesError _value, $Res Function(_$EpisodesError) _then)
      : super(_value, (v) => _then(v as _$EpisodesError));

  @override
  _$EpisodesError get _value => super._value as _$EpisodesError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$EpisodesError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EpisodesError implements EpisodesError {
  const _$EpisodesError(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'EpisodesState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EpisodesError &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$EpisodesErrorCopyWith<_$EpisodesError> get copyWith =>
      __$$EpisodesErrorCopyWithImpl<_$EpisodesError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<EpisodeModel> data, bool isLoading, String? errorMessage)
        data,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<EpisodeModel> data, bool isLoading, String? errorMessage)?
        data,
    TResult Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<EpisodeModel> data, bool isLoading, String? errorMessage)?
        data,
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
    required TResult Function(EpisodesInitial value) initial,
    required TResult Function(EpisodesLoading value) loading,
    required TResult Function(EpisodesData value) data,
    required TResult Function(EpisodesError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EpisodesInitial value)? initial,
    TResult Function(EpisodesLoading value)? loading,
    TResult Function(EpisodesData value)? data,
    TResult Function(EpisodesError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EpisodesInitial value)? initial,
    TResult Function(EpisodesLoading value)? loading,
    TResult Function(EpisodesData value)? data,
    TResult Function(EpisodesError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class EpisodesError implements EpisodesState {
  const factory EpisodesError(final String error) = _$EpisodesError;

  String get error;
  @JsonKey(ignore: true)
  _$$EpisodesErrorCopyWith<_$EpisodesError> get copyWith =>
      throw _privateConstructorUsedError;
}
