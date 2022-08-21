part of '../episodes_bloc.dart';

extension NextPage on EpisodesBloc {
  Future<void> _nextPage(
    EpisodesNextPage event,
    Emitter<EpisodesState> emit,
  ) async {
    if (_isEndOfData) return;
    if (_isInProgress) return;
    _isInProgress = true;
    final currentData = state.maybeMap(
      data: (value) => value.data,
      orElse: () => <EpisodeModel>[],
    );
    emit(
      EpisodesState.data(
        data: currentData,
        isLoading: true,
      ),
    );
    final result = await repo.nextPage(_currentPage + 1);
    if (result.errorMessage != null) {
      emit(
        EpisodesState.data(
          data: currentData,
          errorMessage: result.errorMessage,
        ),
      );
      return;
    }
    emit(
      EpisodesState.data(
        data: [...currentData, ...result.episodesList!],
      ),
    );
    _currentPage++;
    _isEndOfData = result.isEndOfData;
    _isInProgress = false;
  }
}
