part of 'episodes_bloc.dart';

@freezed
class EpisodesEvent with _$EpisodesEvent {
  const factory EpisodesEvent.fetch() = EpisodesFetch;
  const factory EpisodesEvent.nextPage() = EpisodesNextPage;
}
