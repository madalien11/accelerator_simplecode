import 'package:accelerator_simplecode/bloc/characters_bloc.dart';
import 'package:accelerator_simplecode/repo/api.dart';
import 'package:accelerator_simplecode/repo/repo_characters.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../repo/repo_settings.dart';

class InitWidget extends StatelessWidget {
  const InitWidget({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (context) => RepoSettings(),
        ),
        RepositoryProvider(
          create: (context) => Api(),
        ),
        RepositoryProvider(
          create: (context) => RepoCharacters(
            api: RepositoryProvider.of<Api>(context),
          ),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: ((context) => CharactersBloc(
                  repo: RepositoryProvider.of(context),
                )..add(
                    CharactersFilterByNameEvent(name: ''),
                  )),
          ),
        ],
        child: child,
      ),
    );
  }
}
