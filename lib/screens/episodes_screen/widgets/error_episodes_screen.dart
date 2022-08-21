import 'package:accelerator_simplecode/bloc/episodes/episodes_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../generated/l10n.dart';

class ErrorWidget extends StatelessWidget {
  const ErrorWidget(this.message, {Key? key}) : super(key: key);

  final String message;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: Text(message),
            ),
          ],
        ),
        ElevatedButton(
          child: Text(S.of(context).tryAgain),
          onPressed: () {
            BlocProvider.of<EpisodesBloc>(context).add(
              const EpisodesFetch(),
            );
          },
        ),
      ],
    );
  }
}
