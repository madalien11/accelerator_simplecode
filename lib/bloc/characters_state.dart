// part of 'characters_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../model/character_model.dart';
part 'characters_state.freezed.dart';

@freezed
class CharactersState with _$CharactersState {
  const factory CharactersState.initial() = CharactersInitial;
  const factory CharactersState.loading() = CharactersLoading;
  const factory CharactersState.data({required List<CharacterModel> data}) =
      CharactersData;
  const factory CharactersState.error(String error) = CharactersError;
}
