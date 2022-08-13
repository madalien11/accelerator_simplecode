import 'package:accelerator_simplecode/model/location_model.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../constants/app_colors.dart';
import '../../constants/app_text_styles.dart';
import '../../generated/l10n.dart';

class LocationDetailsScreen extends StatelessWidget {
  const LocationDetailsScreen({
    Key? key,
    required this.location,
  }) : super(key: key);

  final LocationModel location;

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
              location.name ?? S.of(context).noData,
              textAlign: TextAlign.center,
              style: AppTextStyles.s20w500,
            ),
          ),
          const SizedBox(height: 10),
          Center(
            child: Text(
              '${location.type ?? S.current.noData} · ${location.dimension ?? S.current.noData}',
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
              '${DateFormat('EEEE dd MMMM yyyy').format(location.created!)}',
              style: AppTextStyles.s16w400,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
