// ignore_for_file: prefer_final_fields

import 'package:accelerator_simplecode/model/location_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../repo/repo_locations.dart';

part 'locations_event.dart';
part 'locations_state.dart';
part 'locations_bloc.freezed.dart';
part 'parts/fetch.dart';
part 'parts/next_page.dart';
part 'parts/filter_next_page.dart';
part 'parts/filter_by_name.dart';

class LocationsBloc extends Bloc<LocationsEvent, LocationsState> {
  LocationsBloc({required this.repo}) : super(const LocationsState.initial()) {
    on<LocationsFetch>(_fetch);
    on<LocationsNextPage>(_nextPage);

    on<LocationsFilterByName>(_filterByName);
    on<LocationsFilterNextPage>(_filterNextPage);
  }

  final RepoLocations repo;
  int _currentPage = 1;
  bool _isEndOfData = false;
  bool _isInProgress = false;
}
