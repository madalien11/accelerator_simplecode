part of 'locations_bloc.dart';

@freezed
class LocationsState with _$LocationsState {
  const factory LocationsState.initial() = LocationsInitial;
  const factory LocationsState.loading() = LocationsLoading;
  const factory LocationsState.data({required List<LocationModel> data}) =
      LocationsData;
  const factory LocationsState.error(String error) = LocationsError;
}
