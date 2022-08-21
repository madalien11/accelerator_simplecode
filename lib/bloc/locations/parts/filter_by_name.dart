part of '../locations_bloc.dart';

extension FilterByName on LocationsBloc {
  Future<void> _filterByName(
    LocationsFilterByName event,
    Emitter<LocationsState> emit,
  ) async {
    emit(const LocationsState.loading());
    final result = await repo.filterByName(event.name, 1);
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
