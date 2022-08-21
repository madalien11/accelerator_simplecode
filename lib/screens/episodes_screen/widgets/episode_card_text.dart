import 'package:accelerator_simplecode/generated/l10n.dart';
import 'package:accelerator_simplecode/model/episode_model.dart';
import 'package:flutter/material.dart';

import '../../../../constants/app_text_styles.dart';
import '../../../constants/app_colors.dart';

class EpisodeCardText extends StatelessWidget {
  const EpisodeCardText({
    Key? key,
    required this.episode,
  }) : super(key: key);

  final EpisodeModel episode;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          episode.episode ?? S.of(context).noData,
          style: AppTextStyles.s16w500.copyWith(
            color: AppColors.textField,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          episode.name ?? S.of(context).noData,
          style: AppTextStyles.s16w500.copyWith(
            color: AppColors.lightText,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          episode.air_date ?? S.of(context).noData,
          style: AppTextStyles.s14w400.copyWith(
            color: AppColors.lightText,
          ),
        ),
      ],
    );
  }
}
