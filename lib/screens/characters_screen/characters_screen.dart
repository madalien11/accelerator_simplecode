import 'package:accelerator_simplecode/constants/app_colors.dart';
import 'package:accelerator_simplecode/constants/app_text_styles.dart';
import 'package:accelerator_simplecode/model/character_model.dart';
import 'package:flutter/material.dart';

import '../../generated/l10n.dart';
import '../../widgets/character_card/character_card.dart';
import '../../widgets/nav_bar/nav_bar.dart';
import '../../widgets/search/search_bar.dart';

class CharactersScreen extends StatefulWidget {
  const CharactersScreen({Key? key}) : super(key: key);

  @override
  State<CharactersScreen> createState() => _CharactersScreenState();
}

class _CharactersScreenState extends State<CharactersScreen> {
  var searchQueryContoller = TextEditingController();
  bool _isGrid = false;

  List<CharacterModel> characters = [
    CharacterModel(
      name: 'Рик Cанчез',
      isAlive: true,
      description: 'Человек, Мужской',
    ),
    CharacterModel(
      name: 'Директор Агентства',
      isAlive: true,
      description: 'Человек, Мужской',
    ),
    CharacterModel(
      name: 'Морти Смит',
      isAlive: true,
      description: 'Человек, Мужской',
    ),
    CharacterModel(
      name: 'Саммер Смит',
      isAlive: true,
      description: 'Человек, Женский',
    ),
    CharacterModel(
      name: 'Альберт Эйнштейн',
      isAlive: false,
      description: 'Человек, Мужской',
    ),
    CharacterModel(
      name: 'Алан Райлс',
      isAlive: false,
      description: 'Человек, Мужской',
    ),
    CharacterModel(
      name: 'Мак Миллер',
      isAlive: false,
      description: 'Человек, Мужской',
    ),
  ];

  @override
  void dispose() {
    super.dispose();
    searchQueryContoller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const NavBar(current: 0),
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
          child: Column(
            children: [
              SearchBar(searchQueryContoller: searchQueryContoller),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '${S.of(context).numberOfCharacters.toUpperCase()}: ${characters.length}',
                    style: AppTextStyles.s10w500,
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() => _isGrid = !_isGrid);
                    },
                    icon: Icon(
                      _isGrid ? Icons.grid_view : Icons.list,
                      color: AppColors.iconGrey,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Expanded(
                child: GridView.count(
                  crossAxisCount: _isGrid ? 2 : 1,
                  mainAxisSpacing: 24,
                  crossAxisSpacing: 16,
                  childAspectRatio: _isGrid ? 1 : 4,
                  children: characters
                      .map(
                        (e) => CharacterCard(
                          isHorizontal: !_isGrid,
                          character: e,
                        ),
                      )
                      .toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
