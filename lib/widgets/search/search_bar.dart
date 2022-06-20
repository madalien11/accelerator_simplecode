import 'package:flutter/material.dart';

import '../../constants/app_colors.dart';
import '../../constants/app_styles.dart';
import '../../generated/l10n.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
    required this.searchQueryContoller,
  }) : super(key: key);

  final TextEditingController searchQueryContoller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: searchQueryContoller,
      decoration: InputDecoration(
        hintText: S.of(context).charactersSearch,
        hintStyle: AppTextStyles.s16w400,
        filled: true,
        fillColor: AppColors.textFieldBackground,
        prefixIcon: const Icon(
          Icons.search,
          color: AppColors.iconGrey,
        ),
        suffixIcon: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              color: AppColors.iconGrey,
              width: 1,
              height: IconTheme.of(context).size,
            ),
            const SizedBox(width: 5),
            const Icon(
              Icons.filter_list_alt,
              color: AppColors.iconGrey,
            ),
          ],
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
