import 'package:flutter/material.dart';

import '../../../model/character_model.dart';

class CharactersListVModel with ChangeNotifier {
  bool isListView = true;

  void switchView() {
    isListView = !isListView;
    notifyListeners();
  }

  final charactersList = [
    ..._characters,
    ..._characters,
    ..._characters,
    ..._characters,
  ];
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
