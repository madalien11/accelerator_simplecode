import 'package:accelerator_simplecode/model/episode_model.dart';
import 'package:accelerator_simplecode/screens/episodes_screen/widgets/episode_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../bloc/episodes/episodes_bloc.dart';
import '../../../generated/l10n.dart';

class Body extends StatelessWidget {
  const Body({Key? key, required this.data}) : super(key: key);

  final List<EpisodeModel> data;

  @override
  Widget build(BuildContext context) {
    if (data.isEmpty) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            child: Text(
              S.of(context).episodesListIsEmpty,
            ),
          ),
        ],
      );
    } else {
      return RefreshIndicator(
        onRefresh: () async {
          BlocProvider.of<EpisodesBloc>(context).add(
            const EpisodesFetch(),
          );
        },
        child: NotificationListener(
          onNotification: (notification) {
            if (notification is ScrollNotification) {
              if (notification.metrics.extentAfter == 0) {
                BlocProvider.of<EpisodesBloc>(context).add(
                  const EpisodesNextPage(),
                );
              }
            }
            return false;
          },
          child: ListView.separated(
            padding: const EdgeInsets.fromLTRB(12, 12, 12, 0),
            itemCount: data.length,
            itemBuilder: (context, i) => EpisodeCard(episode: data[i]),
            separatorBuilder: (context, _) => const SizedBox(height: 10),
          ),
        ),
      );
    }
  }
}
