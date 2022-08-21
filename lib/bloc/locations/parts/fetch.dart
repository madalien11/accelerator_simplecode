part of '../locations_bloc.dart';

extension Fetch on LocationsBloc {
  Future<void> _fetch(
    LocationsFetch event,
    Emitter<LocationsState> emit,
  ) async {
    emit(const LocationsState.loading());
    final result = await repo.fetch();
    if (result.errorMessage != null) {
      emit(
        LocationsState.error(result.errorMessage!),
      );
      return;
    }
    emit(
      LocationsState.data(data: result.locationsList!),
    );
    _currentPage = 1;
    _isEndOfData = false;
  }
}
