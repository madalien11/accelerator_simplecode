import 'package:accelerator_simplecode/constants/app_colors.dart';
import 'package:flutter/material.dart';

class AppTextStyles {
  static const s10w500 = TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.w500,
    color: AppColors.grey1,
  );

  static const s16w500 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: AppColors.mainText,
  );

  static const s12w400 = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: AppColors.grey1,
  );

  static const s16w400 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: AppColors.textField,
  );

  static const alive = TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.w500,
    color: AppColors.primaryGreen,
  );
  static const dead = TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.w500,
    color: AppColors.primaryRed,
  );
}
