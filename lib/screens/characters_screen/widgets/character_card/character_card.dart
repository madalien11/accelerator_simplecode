import 'package:flutter/material.dart';

import '../../../../model/character_model.dart';
import 'character_card_text.dart';
import 'avatar_widget.dart';

class CharacterCard extends StatelessWidget {
  const CharacterCard({
    Key? key,
    this.isHorizontal = true,
    required this.character,
  }) : super(key: key);

  final bool isHorizontal;
  final CharacterModel character;

  @override
  Widget build(BuildContext context) {
    return isHorizontal
        ? Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(child: AvatarWidget(url: character.image)),
              const SizedBox(width: 18),
              Expanded(
                flex: 3,
                child: CharacterCardText(
                  character: character,
                ),
              ),
            ],
          )
        : Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(child: AvatarWidget(url: character.image)),
              const SizedBox(height: 18),
              CharacterCardText(
                character: character,
                isHorizontal: false,
              ),
            ],
          );
  }
}
