import 'dart:async';

import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_text_styles.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
    this.onChanged,
    required this.title,
  }) : super(key: key);

  final ValueChanged<String>? onChanged;
  final String title;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: (string) {
        Debouncer(milliseconds: 500).run(() {
          onChanged!(string);
        });
      },
      decoration: InputDecoration(
        hintText: title,
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

class Debouncer {
  final int milliseconds;
  VoidCallback? action;
  Timer? _timer;

  Debouncer({required this.milliseconds});

  run(VoidCallback action) {
    if (_timer != null) {
      _timer!.cancel();
    }
    _timer = Timer(Duration(milliseconds: milliseconds), action);
  }
}
