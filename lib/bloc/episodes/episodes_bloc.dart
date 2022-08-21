// ignore_for_file: prefer_final_fields

import 'package:accelerator_simplecode/model/episode_model.dart';
import 'package:accelerator_simplecode/repo/repo_episodes.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'episodes_event.dart';
part 'episodes_state.dart';
part 'episodes_bloc.freezed.dart';
part 'parts/fetch.dart';
part 'parts/next_page.dart';

class EpisodesBloc extends Bloc<EpisodesEvent, EpisodesState> {
  EpisodesBloc({required this.repo}) : super(const EpisodesState.initial()) {
    on<EpisodesFetch>(_fetch);
    on<EpisodesNextPage>(_nextPage);
  }
  final RepoEpisodes repo;
  int _currentPage = 1;
  bool _isEndOfData = false;
  bool _isInProgress = false;
}
