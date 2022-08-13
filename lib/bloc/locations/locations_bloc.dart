import 'package:accelerator_simplecode/model/location_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../repo/repo_locations.dart';

part 'locations_event.dart';
part 'locations_state.dart';
part 'locations_bloc.freezed.dart';

class LocationsBloc extends Bloc<LocationsEvent, LocationsState> {
  LocationsBloc({required this.repo}) : super(const LocationsState.initial()) {
    on<LocationsFilterByName>((event, emit) async {
      emit(const LocationsState.loading());
      final result = await repo.filterByName(event.name);
      if (result.errorMessage != null) {
        emit(LocationsState.error(result.errorMessage!));
        return;
      }
      emit(LocationsState.data(data: result.locationsList!));
    });
  }

  final RepoLocations repo;
}
