import 'package:accelerator_simplecode/bloc/characters_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:accelerator_simplecode/constants/app_colors.dart';
import 'package:accelerator_simplecode/constants/app_text_styles.dart';

import '../../bloc/characters_state.dart';
import '../../generated/l10n.dart';
import '../../widgets/nav_bar/nav_bar.dart';
import 'widgets/character_card/character_card.dart';
import 'widgets/search_bar.dart';

class CharactersScreen extends StatelessWidget {
  const CharactersScreen({Key? key}) : super(key: key);

  static final isListView = ValueNotifier(true);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: const NavBar(current: 0),
        backgroundColor: AppColors.background,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
            child: Column(
              children: [
                SearchBar(
                  onChanged: (val) {
                    BlocProvider.of<CharactersBloc>(context)
                        .add(CharactersFilterByNameEvent(name: val));
                  },
                ),
                const SizedBox(height: 20),
                BlocBuilder<CharactersBloc, CharactersState>(
                  builder: (context, state) {
                    var charactersTotal = 0;
                    if (state is CharactersData) {
                      charactersTotal = state.data.length;
                    }
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '${S.of(context).numberOfCharacters.toUpperCase()}: $charactersTotal',
                          style: AppTextStyles.s10w500,
                        ),
                        IconButton(
                          onPressed: () {
                            isListView.value = !isListView.value;
                          },
                          icon: Icon(
                            isListView.value ? Icons.grid_view : Icons.list,
                            color: AppColors.iconGrey,
                          ),
                        ),
                      ],
                    );
                  },
                ),
                const SizedBox(height: 10),
                Expanded(
                  child: BlocBuilder<CharactersBloc, CharactersState>(
                    builder: ((context, state) {
                      return state.when(
                        initial: () => const SizedBox.shrink(),
                        loading: () {
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [CircularProgressIndicator()],
                          );
                        },
                        data: (data) {
                          if (data.isEmpty) {
                            return Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Flexible(
                                  child: Text(
                                    S.of(context).charactersListIsEmpty,
                                  ),
                                ),
                              ],
                            );
                          } else {
                            return ValueListenableBuilder<bool>(
                              valueListenable: isListView,
                              builder: (context, isListViewMode, _) {
                                return GridView.count(
                                  crossAxisCount: isListViewMode ? 1 : 2,
                                  mainAxisSpacing: 24,
                                  crossAxisSpacing: 16,
                                  childAspectRatio: isListViewMode ? 4 : 1,
                                  children: data
                                      .map(
                                        (e) => CharacterCard(
                                          isHorizontal: isListViewMode,
                                          character: e,
                                        ),
                                      )
                                      .toList(),
                                );
                              },
                            );
                          }
                        },
                        error: (error) {
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Flexible(child: Text(error)),
                            ],
                          );
                        },
                      );
                    }),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
