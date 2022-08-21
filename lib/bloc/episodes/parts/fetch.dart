part of '../episodes_bloc.dart';

extension Fetch on EpisodesBloc {
  Future<void> _fetch(
    EpisodesFetch event,
    Emitter<EpisodesState> emit,
  ) async {
    emit(const EpisodesState.loading());
    final result = await repo.fetch();
    if (result.errorMessage != null) {
      emit(
        EpisodesState.error(result.errorMessage!),
      );
      return;
    }
    emit(
      EpisodesState.data(data: result.episodesList!),
    );
    _currentPage = 1;
    _isEndOfData = false;
  }
}
