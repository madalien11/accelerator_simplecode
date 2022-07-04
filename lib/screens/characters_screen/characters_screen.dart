import 'package:accelerator_simplecode/constants/app_colors.dart';
import 'package:accelerator_simplecode/constants/app_text_styles.dart';
import 'package:accelerator_simplecode/repo/repo_characters.dart';
import 'package:accelerator_simplecode/screens/characters_screen/widgets/vmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../generated/l10n.dart';
import 'widgets/character_card/character_card.dart';
import '../../widgets/nav_bar/nav_bar.dart';
import 'widgets/search_bar.dart';

class CharactersScreen extends StatelessWidget {
  const CharactersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const NavBar(current: 0),
      backgroundColor: AppColors.background,
      body: ChangeNotifierProvider(
        create: (context) => CharactersListVModel(
          repo: Provider.of<RepoCharacters>(context, listen: false),
        ),
        builder: (context, _) {
          final charactersTotal =
              context.watch<CharactersListVModel>().filteredList.length;
          return SafeArea(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
              child: Column(
                children: [
                  SearchBar(
                    onChanged: (val) {
                      Provider.of<CharactersListVModel>(context, listen: false)
                          .filter(val.toLowerCase());
                    },
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '${S.of(context).numberOfCharacters.toUpperCase()}: $charactersTotal',
                        style: AppTextStyles.s10w500,
                      ),
                      IconButton(
                        onPressed: () {
                          Provider.of<CharactersListVModel>(
                            context,
                            listen: false,
                          ).switchView();
                        },
                        icon: Icon(
                          Provider.of<CharactersListVModel>(context,
                                      listen: false)
                                  .isListView
                              ? Icons.grid_view
                              : Icons.list,
                          color: AppColors.iconGrey,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Expanded(
                    child: Consumer<CharactersListVModel>(
                      builder: ((context, value, child) {
                        if (value.isLoading) {
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [CircularProgressIndicator()],
                          );
                        }

                        if (value.errorMessage != null) {
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Flexible(child: Text(value.errorMessage!)),
                            ],
                          );
                        }

                        if (value.filteredList.isEmpty) {
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
                        }

                        return GridView.count(
                          crossAxisCount: value.isListView ? 1 : 2,
                          mainAxisSpacing: 24,
                          crossAxisSpacing: 16,
                          childAspectRatio: value.isListView ? 4 : 1,
                          children: value.filteredList
                              .map(
                                (e) => CharacterCard(
                                  isHorizontal: value.isListView,
                                  character: e,
                                ),
                              )
                              .toList(),
                        );
                      }),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
