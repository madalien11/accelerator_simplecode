// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

part 'episode_model.g.dart';
part 'episode_model.freezed.dart';

@freezed
class EpisodeModel with _$EpisodeModel {
  const factory EpisodeModel({
    int? id,
    String? name,
    String? air_date,
    String? episode,
    List<String>? characters,
    String? url,
    DateTime? created,
  }) = _EpisodeModel;

  factory EpisodeModel.fromJson(Map<String, Object?> json) =>
      _$EpisodeModelFromJson(json);
}
