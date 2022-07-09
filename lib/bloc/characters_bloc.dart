import 'package:accelerator_simplecode/model/character_model.dart';
import 'package:accelerator_simplecode/repo/repo_characters.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'characters_event.dart';
part 'characters_state.dart';

class CharactersBloc extends Bloc<CharactersEvent, CharactersState> {
  CharactersBloc({required this.repo}) : super(CharactersInitial()) {
    on<CharactersFilterByNameEvent>((event, emit) async {
      emit(CharactersLoading());
      final result = await repo.filterByName(event.name);
      if (result.errorMessage != null) {
        emit(CharactersError(error: result.errorMessage!));
        return;
      }
      emit(CharactersData(data: result.charactersList!));
    });
  }
  final RepoCharacters repo;
}
