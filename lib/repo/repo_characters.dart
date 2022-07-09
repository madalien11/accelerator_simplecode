import 'package:accelerator_simplecode/config.dart';
import 'package:accelerator_simplecode/generated/l10n.dart';
import 'package:accelerator_simplecode/model/character_model.dart';

import 'api.dart';

class RepoCharacters {
  RepoCharacters({required this.api});
  final Api api;

  Future<ResultRepoCharacters> filterByName(String name) async {
    try {
      final result = await api.dio.get(
        '$baseUrl/character/',
        queryParameters: {"name": name},
      );
      final List charactersListJson = result.data['results'] ?? [];
      final charactersList = charactersListJson
          .map(
            (e) => CharacterModel.fromJson(e),
          )
          .toList();
      return ResultRepoCharacters(charactersList: charactersList);
    } catch (e) {
      // print('!!! Error: $e');
      return ResultRepoCharacters(
        errorMessage: S.current.somethingWentWrong,
      );
    }
  }
}

class ResultRepoCharacters {
  ResultRepoCharacters({
    this.charactersList,
    this.errorMessage,
  });

  final String? errorMessage;
  final List<CharacterModel>? charactersList;
}
