import 'package:flutter/material.dart';

import '../../constants/app_styles.dart';
import '../../generated/l10n.dart';
import '../../model/character_model.dart';

class CharacterCardText extends StatelessWidget {
  const CharacterCardText({
    Key? key,
    this.isHorizontal = true,
    required this.character,
  }) : super(key: key);

  final CharacterModel character;
  final bool isHorizontal;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:
          isHorizontal ? CrossAxisAlignment.start : CrossAxisAlignment.center,
      mainAxisAlignment:
          isHorizontal ? MainAxisAlignment.center : MainAxisAlignment.start,
      children: [
        Text(
          character.isAlive
              ? S.of(context).alive.toUpperCase()
              : S.of(context).dead.toUpperCase(),
          style: character.isAlive ? AppTextStyles.alive : AppTextStyles.dead,
        ),
        Text(
          character.name,
          style: AppTextStyles.s16w500,
        ),
        Text(
          character.description,
          style: AppTextStyles.s12w400,
        ),
      ],
    );
  }
}
