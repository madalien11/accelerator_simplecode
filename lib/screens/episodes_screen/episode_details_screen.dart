import 'package:flutter/material.dart';

import '../../constants/app_colors.dart';
import '../../constants/app_text_styles.dart';
import '../../generated/l10n.dart';
import '../../model/episode_model.dart';

class EpisodeDetailsScreen extends StatelessWidget {
  const EpisodeDetailsScreen({Key? key, required this.episode})
      : super(key: key);

  final EpisodeModel episode;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.background,
        leading: InkWell(
          onTap: () => Navigator.of(context).pop(),
          child: const Icon(
            Icons.chevron_left_rounded,
            color: Colors.black,
            size: 34,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              episode.name ?? S.of(context).noData,
              textAlign: TextAlign.center,
              style: AppTextStyles.s20w500,
            ),
          ),
          const SizedBox(height: 10),
          Center(
            child: Text(
              episode.episode ?? S.current.noData,
              textAlign: TextAlign.center,
              style: AppTextStyles.s16w400.copyWith(
                color: AppColors.neutral2,
              ),
            ),
          ),
          const SizedBox(height: 20),
          Center(
            child: Text(
              '${S.of(context).aired}: '
              '${episode.air_date ?? S.of(context).noData}',
              // '${DateFormat('EEEE dd MMMM yyyy').format(episode.created!)}',
              style: AppTextStyles.s16w400,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
