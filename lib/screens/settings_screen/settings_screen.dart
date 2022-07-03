import 'package:accelerator_simplecode/constants/app_colors.dart';
import 'package:accelerator_simplecode/constants/app_text_styles.dart';
import 'package:accelerator_simplecode/repo/repo_settings.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../generated/l10n.dart';
import '../../widgets/nav_bar/nav_bar.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          S.of(context).settings,
          style: AppTextStyles.s20w500,
        ),
        elevation: 0,
        backgroundColor: AppColors.background,
      ),
      bottomNavigationBar: const NavBar(current: 1),
      backgroundColor: AppColors.background,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('${S.of(context).language}: '),
              DropdownButton(
                value: Intl.getCurrentLocale(),
                items: [
                  DropdownMenuItem(
                    value: 'en',
                    child: Text(
                      S.of(context).english,
                    ),
                  ),
                  DropdownMenuItem(
                    value: 'ru_RU',
                    child: Text(
                      S.of(context).russian,
                    ),
                  ),
                ],
                onChanged: (val) async {
                  if (val == null) return;
                  if (val == 'ru_RU') {
                    await S.load(const Locale('ru', 'RU'));
                    setState(() {});
                  } else if (val == 'en') {
                    await S.load(const Locale('en'));
                    setState(() {});
                  }
                  RepoSettings().saveLocale(val.toString());
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
