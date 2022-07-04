import 'dart:convert';

import 'package:accelerator_simplecode/config.dart';
import 'package:accelerator_simplecode/generated/l10n.dart';
import 'package:accelerator_simplecode/model/character_model.dart';
import 'package:http/http.dart' as http;

class RepoCharacters {
  Future<ResultRepoCharacters> readCharacters() async {
    try {
      final url = Uri.parse('$baseUrl/character');
      final result = await http.get(url);
      final data = jsonDecode(result.body);
      final charactersListJson = data['results'] as List;
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
