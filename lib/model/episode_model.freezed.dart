// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'episode_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EpisodeModel _$EpisodeModelFromJson(Map<String, dynamic> json) {
  return _EpisodeModel.fromJson(json);
}

/// @nodoc
mixin _$EpisodeModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get air_date => throw _privateConstructorUsedError;
  String? get episode => throw _privateConstructorUsedError;
  List<String>? get characters => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  DateTime? get created => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EpisodeModelCopyWith<EpisodeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpisodeModelCopyWith<$Res> {
  factory $EpisodeModelCopyWith(
          EpisodeModel value, $Res Function(EpisodeModel) then) =
      _$EpisodeModelCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String? name,
      String? air_date,
      String? episode,
      List<String>? characters,
      String? url,
      DateTime? created});
}

/// @nodoc
class _$EpisodeModelCopyWithImpl<$Res> implements $EpisodeModelCopyWith<$Res> {
  _$EpisodeModelCopyWithImpl(this._value, this._then);

  final EpisodeModel _value;
  // ignore: unused_field
  final $Res Function(EpisodeModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? air_date = freezed,
    Object? episode = freezed,
    Object? characters = freezed,
    Object? url = freezed,
    Object? created = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      air_date: air_date == freezed
          ? _value.air_date
          : air_date // ignore: cast_nullable_to_non_nullable
              as String?,
      episode: episode == freezed
          ? _value.episode
          : episode // ignore: cast_nullable_to_non_nullable
              as String?,
      characters: characters == freezed
          ? _value.characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      created: created == freezed
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$$_EpisodeModelCopyWith<$Res>
    implements $EpisodeModelCopyWith<$Res> {
  factory _$$_EpisodeModelCopyWith(
          _$_EpisodeModel value, $Res Function(_$_EpisodeModel) then) =
      __$$_EpisodeModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      String? name,
      String? air_date,
      String? episode,
      List<String>? characters,
      String? url,
      DateTime? created});
}

/// @nodoc
class __$$_EpisodeModelCopyWithImpl<$Res>
    extends _$EpisodeModelCopyWithImpl<$Res>
    implements _$$_EpisodeModelCopyWith<$Res> {
  __$$_EpisodeModelCopyWithImpl(
      _$_EpisodeModel _value, $Res Function(_$_EpisodeModel) _then)
      : super(_value, (v) => _then(v as _$_EpisodeModel));

  @override
  _$_EpisodeModel get _value => super._value as _$_EpisodeModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? air_date = freezed,
    Object? episode = freezed,
    Object? characters = freezed,
    Object? url = freezed,
    Object? created = freezed,
  }) {
    return _then(_$_EpisodeModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      air_date: air_date == freezed
          ? _value.air_date
          : air_date // ignore: cast_nullable_to_non_nullable
              as String?,
      episode: episode == freezed
          ? _value.episode
          : episode // ignore: cast_nullable_to_non_nullable
              as String?,
      characters: characters == freezed
          ? _value._characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      created: created == freezed
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EpisodeModel implements _EpisodeModel {
  const _$_EpisodeModel(
      {this.id,
      this.name,
      this.air_date,
      this.episode,
      final List<String>? characters,
      this.url,
      this.created})
      : _characters = characters;

  factory _$_EpisodeModel.fromJson(Map<String, dynamic> json) =>
      _$$_EpisodeModelFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? air_date;
  @override
  final String? episode;
  final List<String>? _characters;
  @override
  List<String>? get characters {
    final value = _characters;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? url;
  @override
  final DateTime? created;

  @override
  String toString() {
    return 'EpisodeModel(id: $id, name: $name, air_date: $air_date, episode: $episode, characters: $characters, url: $url, created: $created)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EpisodeModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.air_date, air_date) &&
            const DeepCollectionEquality().equals(other.episode, episode) &&
            const DeepCollectionEquality()
                .equals(other._characters, _characters) &&
            const DeepCollectionEquality().equals(other.url, url) &&
            const DeepCollectionEquality().equals(other.created, created));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(air_date),
      const DeepCollectionEquality().hash(episode),
      const DeepCollectionEquality().hash(_characters),
      const DeepCollectionEquality().hash(url),
      const DeepCollectionEquality().hash(created));

  @JsonKey(ignore: true)
  @override
  _$$_EpisodeModelCopyWith<_$_EpisodeModel> get copyWith =>
      __$$_EpisodeModelCopyWithImpl<_$_EpisodeModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EpisodeModelToJson(
      this,
    );
  }
}

abstract class _EpisodeModel implements EpisodeModel {
  const factory _EpisodeModel(
      {final int? id,
      final String? name,
      final String? air_date,
      final String? episode,
      final List<String>? characters,
      final String? url,
      final DateTime? created}) = _$_EpisodeModel;

  factory _EpisodeModel.fromJson(Map<String, dynamic> json) =
      _$_EpisodeModel.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get air_date;
  @override
  String? get episode;
  @override
  List<String>? get characters;
  @override
  String? get url;
  @override
  DateTime? get created;
  @override
  @JsonKey(ignore: true)
  _$$_EpisodeModelCopyWith<_$_EpisodeModel> get copyWith =>
      throw _privateConstructorUsedError;
}
