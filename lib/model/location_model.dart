import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_model.g.dart';
part 'location_model.freezed.dart';

@freezed
class LocationModel with _$LocationModel {
  const factory LocationModel({
    int? id,
    String? name,
    String? type,
    String? dimension,
    List<String>? residents,
    String? url,
    DateTime? created,
  }) = _LocationModel;

  factory LocationModel.fromJson(Map<String, Object?> json) =>
      _$LocationModelFromJson(json);
}
