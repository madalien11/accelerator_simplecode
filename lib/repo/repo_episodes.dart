import 'package:accelerator_simplecode/config.dart';
import 'package:accelerator_simplecode/generated/l10n.dart';

import '../model/episode_model.dart';
import 'api.dart';

class RepoEpisodes {
  RepoEpisodes({required this.api});
  final Api api;

  Future<ResultRepoEpisodes> fetch() => nextPage(1);

  Future<ResultRepoEpisodes> nextPage(int page) async {
    try {
      final result = await api.dio.get(
        '$baseUrl/episode/',
        queryParameters: {"page": page},
      );

      final bool isEndOfData = result.data['info']['next'] == null;

      final List episodesListJson = result.data['results'] ?? [];
      final episodesList = episodesListJson
          .map(
            (e) => EpisodeModel.fromJson(e),
          )
          .toList();
      return ResultRepoEpisodes(
        episodesList: episodesList,
        isEndOfData: isEndOfData,
      );
    } catch (e) {
      return ResultRepoEpisodes(
        errorMessage: S.current.somethingWentWrong,
      );
    }
  }
}

class ResultRepoEpisodes {
  ResultRepoEpisodes({
    this.episodesList,
    this.errorMessage,
    this.isEndOfData = false,
  });

  final String? errorMessage;
  final List<EpisodeModel>? episodesList;
  final bool isEndOfData;
}
