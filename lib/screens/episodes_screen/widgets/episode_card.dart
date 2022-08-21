import 'package:accelerator_simplecode/constants/app_colors.dart';
import 'package:flutter/material.dart';

import '../../../model/episode_model.dart';
import '../episode_details_screen.dart';
import 'episode_card_text.dart';

class EpisodeCard extends StatelessWidget {
  const EpisodeCard({
    Key? key,
    required this.episode,
  }) : super(key: key);

  final EpisodeModel episode;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => EpisodeDetailsScreen(
              episode: episode,
            ),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.primary,
          borderRadius: BorderRadius.circular(6),
          gradient: const LinearGradient(
            colors: [
              AppColors.iconGrey,
              AppColors.primary,
            ],
          ),
          boxShadow: const [
            BoxShadow(
              color: AppColors.iconGrey,
              spreadRadius: 1,
              blurRadius: 3,
              offset: Offset(1, 1),
            ),
          ],
        ),
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
        margin: const EdgeInsets.fromLTRB(16, 0, 16, 0),
        child: Row(
          children: [
            Expanded(
              child: EpisodeCardText(episode: episode),
            ),
            const Icon(
              Icons.chevron_right_rounded,
              color: AppColors.lightText,
            ),
          ],
        ),
      ),
    );
  }
}
