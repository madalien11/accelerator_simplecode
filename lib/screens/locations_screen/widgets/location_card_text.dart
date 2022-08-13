import 'package:accelerator_simplecode/generated/l10n.dart';
import 'package:accelerator_simplecode/model/location_model.dart';
import 'package:flutter/material.dart';

import '../../../../constants/app_text_styles.dart';
import '../../../constants/app_colors.dart';

class LocationCardText extends StatelessWidget {
  const LocationCardText({
    Key? key,
    required this.location,
  }) : super(key: key);

  final LocationModel location;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          location.type ?? S.of(context).noData,
          style: AppTextStyles.s16w500.copyWith(
            color: AppColors.textField,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          location.name ?? S.of(context).noData,
          style: AppTextStyles.s16w500,
        ),
        const SizedBox(height: 4),
        Text(
          location.dimension ?? S.of(context).noData,
          style: AppTextStyles.s14w400,
        ),
      ],
    );
  }
}
