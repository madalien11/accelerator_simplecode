import 'package:freezed_annotation/freezed_annotation.dart';
import 'location_model.dart';

part 'character_model.g.dart';
part 'character_model.freezed.dart';

@freezed
class CharacterModel with _$CharacterModel {
  const factory CharacterModel({
    int? id,
    String? name,
    String? status,
    String? species,
    String? type,
    String? gender,
    LocationModel? origin,
    LocationModel? location,
    String? image,
    List<String>? episode,
    String? url,
    DateTime? created,
  }) = _CharacterModel;

  // @JsonKey(name: 'order_id')

  factory CharacterModel.fromJson(Map<String, Object?> json) =>
      _$CharacterModelFromJson(json);
}
