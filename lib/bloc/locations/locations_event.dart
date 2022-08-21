part of 'locations_bloc.dart';

@freezed
class LocationsEvent with _$LocationsEvent {
  const factory LocationsEvent.filterByName({required String name}) =
      LocationsFilterByName;
  const factory LocationsEvent.filterNextPage({required String name}) =
      LocationsFilterNextPage;
  const factory LocationsEvent.fetch() = LocationsFetch;
  const factory LocationsEvent.nextPage() = LocationsNextPage;
}
