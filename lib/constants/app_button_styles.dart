import 'package:accelerator_simplecode/constants/app_colors.dart';
import 'package:flutter/material.dart';

import 'app_text_styles.dart';

class AppButtonStyles {
  static final elevated = ElevatedButton.styleFrom(
    primary: AppColors.primary,
    elevation: 0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
    ),
    padding: const EdgeInsets.symmetric(vertical: 12),
  );

  static final greenText = TextButton.styleFrom(
    primary: AppColors.primaryGreen,
    textStyle: AppTextStyles.s14w400,
  );

  static final outline = OutlinedButton.styleFrom(
    elevation: 0,
    textStyle: AppTextStyles.s16w400.copyWith(
      color: AppColors.primary,
    ),
    side: const BorderSide(
      color: AppColors.primary,
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12.0),
    ),
    padding: const EdgeInsets.symmetric(vertical: 10),
  );
}
