import 'package:accelerator_simplecode/config.dart';
import 'package:accelerator_simplecode/generated/l10n.dart';
import 'package:accelerator_simplecode/model/location_model.dart';

import 'api.dart';

class RepoLocations {
  RepoLocations({required this.api});
  final Api api;

  Future<ResultRepoLocations> fetch() => nextPage(1);

  Future<ResultRepoLocations> nextPage(int page) async {
    try {
      final result = await api.dio.get(
        '$baseUrl/location/',
        queryParameters: {"page": page},
      );
      final bool isEndOfData = result.data['info']['next'] == null;

      final List locationsListJson = result.data['results'] ?? [];
      final locationsList = locationsListJson
          .map(
            (e) => LocationModel.fromJson(e),
          )
          .toList();
      return ResultRepoLocations(
        locationsList: locationsList,
        isEndOfData: isEndOfData,
      );
    } catch (e) {
      return ResultRepoLocations(
        errorMessage: S.current.somethingWentWrong,
      );
    }
  }

  Future<ResultRepoLocations> filterByName(String name, int page) async {
    try {
      final result = await api.dio.get(
        '$baseUrl/location/',
        queryParameters: {"name": name, "page": page},
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

  Future<ResultRepoLocations> filterNextPage(String name, int page) async {
    try {
      final result = await api.dio.get(
        '$baseUrl/location/',
        queryParameters: {"name": name, "page": page},
      );
      final bool isEndOfData = result.data['info']['next'] == null;

      final List locationsListJson = result.data['results'] ?? [];
      final locationsList = locationsListJson
          .map(
            (e) => LocationModel.fromJson(e),
          )
          .toList();
      return ResultRepoLocations(
        locationsList: locationsList,
        isEndOfData: isEndOfData,
      );
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
    this.isEndOfData = false,
  });

  final String? errorMessage;
  final List<LocationModel>? locationsList;
  final bool isEndOfData;
}
