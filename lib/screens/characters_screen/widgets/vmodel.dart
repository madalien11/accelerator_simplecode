import 'package:flutter/material.dart';

import '../../../model/character_model.dart';

class CharactersListVModel with ChangeNotifier {
  bool isListView = true;
  late List<CharacterModel> filteredList = charactersList;

  final charactersList = [
    ..._characters,
    ..._characters,
    ..._characters,
    ..._characters,
  ];

  void filter(String query) {
    filteredList = charactersList
        .where((e) => (e.name.toLowerCase().contains(query)))
        .toList();
    notifyListeners();
  }

  void switchView() {
    isListView = !isListView;
    notifyListeners();
  }
}

List<CharacterModel> _characters = [
  CharacterModel(
    name: 'Рик Cанчез',
    isAlive: true,
    description: 'Человек, Мужской',
  ),
  CharacterModel(
    name: 'Директор Агентства',
    isAlive: true,
    description: 'Человек, Мужской',
  ),
  CharacterModel(
    name: 'Морти Смит',
    isAlive: true,
    description: 'Человек, Мужской',
  ),
  CharacterModel(
    name: 'Саммер Смит',
    isAlive: true,
    description: 'Человек, Женский',
  ),
  CharacterModel(
    name: 'Альберт Эйнштейн',
    isAlive: false,
    description: 'Человек, Мужской',
  ),
  CharacterModel(
    name: 'Алан Райлс',
    isAlive: false,
    description: 'Человек, Мужской',
  ),
  CharacterModel(
    name: 'Мак Миллер',
    isAlive: false,
    description: 'Человек, Мужской',
  ),
];
