import 'package:accelerator_simplecode/config.dart';
import 'package:accelerator_simplecode/generated/l10n.dart';
import 'package:accelerator_simplecode/model/location_model.dart';

import 'api.dart';

class RepoLocations {
  RepoLocations({required this.api});
  final Api api;

  Future<ResultRepoLocations> filterByName(String name) async {
    try {
      final result = await api.dio.get(
        '$baseUrl/location/',
        queryParameters: {"name": name},
      );
      final List locationsListJson = result.data['results'] ?? [];
      final locationsList = locationsListJson
          .map(
            (e) => LocationModel.fromJson(e),
          )
          .toList();
      return ResultRepoLocations(locationsList: locationsList);
    } catch (e) {
      return ResultRepoLocations(
        errorMessage: S.current.somethingWentWrong,
      );
    }
  }
}

class ResultRepoLocations {
  ResultRepoLocations({
    this.locationsList,
    this.errorMessage,
  });

  final String? errorMessage;
  final List<LocationModel>? locationsList;
}
