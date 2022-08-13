part of 'locations_bloc.dart';

@freezed
class LocationsEvent with _$LocationsEvent {
  const factory LocationsEvent.filterByName({required String name}) =
      LocationsFilterByName;
}
