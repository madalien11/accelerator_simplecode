part of '../locations_bloc.dart';

extension NextPage on LocationsBloc {
  Future<void> _nextPage(
    LocationsNextPage event,
    Emitter<LocationsState> emit,
  ) async {
    if (_isEndOfData) return;
    if (_isInProgress) return;
    _isInProgress = true;
    final currentData = state.maybeMap(
      data: (value) => value.data,
      orElse: () => <LocationModel>[],
    );
    emit(
      LocationsState.data(
        data: currentData,
        isLoading: true,
      ),
    );
    final result = await repo.nextPage(_currentPage + 1);
    if (result.errorMessage != null) {
      emit(
        LocationsState.data(
          data: currentData,
          errorMessage: result.errorMessage,
        ),
      );
      return;
    }
    emit(
      LocationsState.data(
        data: [...currentData, ...result.locationsList!],
      ),
    );
    _currentPage++;
    _isEndOfData = result.isEndOfData;
    _isInProgress = false;
  }
}
