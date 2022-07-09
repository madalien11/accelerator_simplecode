part of 'characters_bloc.dart';

@immutable
abstract class CharactersState {}

class CharactersInitial extends CharactersState {}

class CharactersLoading extends CharactersState {}

class CharactersData extends CharactersState {
  CharactersData({required this.data});
  final List<CharacterModel> data;
}

class CharactersError extends CharactersState {
  CharactersError({required this.error});
  final String error;
}
