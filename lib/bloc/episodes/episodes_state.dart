part of 'episodes_bloc.dart';

@freezed
class EpisodesState with _$EpisodesState {
  const factory EpisodesState.initial() = EpisodesInitial;
  const factory EpisodesState.loading() = EpisodesLoading;
  const factory EpisodesState.data({
    required List<EpisodeModel> data,
    @Default(false) bool isLoading,
    String? errorMessage,
  }) = EpisodesData;
  const factory EpisodesState.error(String error) = EpisodesError;
}
