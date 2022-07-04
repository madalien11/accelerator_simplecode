import 'package:accelerator_simplecode/repo/repo_characters.dart';
import 'package:flutter/material.dart';

import '../../../model/character_model.dart';

class CharactersListVModel with ChangeNotifier {
  CharactersListVModel({required this.repo}) {
    _init();
  }

  String? errorMessage;
  List<CharacterModel> filteredList = <CharacterModel>[];
  bool isListView = true;
  var isLoading = true;
  final RepoCharacters repo;

  var _charactersList = <CharacterModel>[];

  void _init() {
    repo.readCharacters().then((result) {
      errorMessage = result.errorMessage;
      _charactersList = result.charactersList ?? <CharacterModel>[];
      filteredList = _charactersList;
      isLoading = false;
      notifyListeners();
    });
  }

  void filter(String query) {
    filteredList = _charactersList
        .where((e) => e.name?.toLowerCase().contains(query) ?? false)
        .toList();
    notifyListeners();
  }

  void switchView() {
    isListView = !isListView;
    notifyListeners();
  }
}
