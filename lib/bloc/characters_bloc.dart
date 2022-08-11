import 'package:accelerator_simplecode/repo/repo_characters.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'characters_state.dart';

part 'characters_event.dart';

class CharactersBloc extends Bloc<CharactersEvent, CharactersState> {
  CharactersBloc({required this.repo})
      : super(const CharactersState.initial()) {
    on<CharactersFilterByNameEvent>((event, emit) async {
      emit(const CharactersState.loading());
      final result = await repo.filterByName(event.name);
      if (result.errorMessage != null) {
        emit(CharactersState.error(result.errorMessage!));
        return;
      }
      emit(CharactersState.data(data: result.charactersList!));
    });
  }
  final RepoCharacters repo;
}
