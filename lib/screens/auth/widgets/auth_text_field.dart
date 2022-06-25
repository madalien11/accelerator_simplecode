import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_text_styles.dart';

class AuthTextField extends StatelessWidget {
  const AuthTextField({
    Key? key,
    required this.controller,
    required this.maxLength,
    required this.hintText,
    required this.icon,
    required this.obscureText,
    required this.validator,
  }) : super(key: key);

  final TextEditingController controller;
  final int maxLength;
  final String hintText;
  final String icon;
  final bool obscureText;
  final Function(String?) validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      maxLength: maxLength,
      style: AppTextStyles.s16w400.copyWith(
        color: AppColors.mainText,
      ),
      obscureText: obscureText,
      obscuringCharacter: '・',
      validator: (val) => validator(val),
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColors.textFieldBackground,
        counterText: '',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: BorderSide.none,
        ),
        hintText: hintText,
        hintStyle: AppTextStyles.s16w400.copyWith(
          color: AppColors.neutral2,
        ),
        contentPadding: const EdgeInsets.symmetric(vertical: 12),
        prefixIcon: Padding(
          padding: const EdgeInsets.only(left: 21, right: 25),
          child: SvgPicture.asset(
            icon,
            color: AppColors.neutral2,
            width: 16,
          ),
        ),
      ),
    );
  }
}
