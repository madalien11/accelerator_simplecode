import 'package:flutter/material.dart';

import '../../../../constants/app_text_styles.dart';
import '../../../../model/character_model.dart';

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
          character.status?.toUpperCase() ?? '',
          style: character.status == 'Alive'
              ? AppTextStyles.alive
              : AppTextStyles.dead,
        ),
        Text(
          character.name!,
          style: AppTextStyles.s16w500,
        ),
        Text(
          '${character.species!} ${character.gender!}',
          style: AppTextStyles.s12w400,
        ),
      ],
    );
  }
}
