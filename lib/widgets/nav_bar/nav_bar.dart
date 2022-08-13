import 'package:accelerator_simplecode/screens/characters_screen/characters_screen.dart';
import 'package:accelerator_simplecode/screens/locations_screen/locations_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants/app_assets.dart';
import '../../constants/app_colors.dart';
import '../../generated/l10n.dart';
import '../../screens/settings_screen/settings_screen.dart';

class NavBar extends StatelessWidget {
  const NavBar({
    Key? key,
    required this.current,
  }) : super(key: key);

  final int current;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: current,
      selectedItemColor: AppColors.primary,
      unselectedItemColor: AppColors.textField,
      selectedFontSize: 14.0,
      unselectedFontSize: 14.0,
      items: [
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            AppAssets.svg.charactersIcon,
            color: current == 0 ? AppColors.primary : AppColors.textField,
          ),
          label: S.of(context).characters,
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            AppAssets.svg.locationsIcon,
            color: current == 1 ? AppColors.primary : AppColors.textField,
          ),
          label: S.of(context).locations,
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.settings_outlined),
          label: S.of(context).settings,
        ),
      ],
      onTap: (index) {
        if (index == current) return;
        switch (index) {
          case 0:
            Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(builder: (context) => const CharactersScreen()),
              (route) => false,
            );
            break;
          case 1:
            Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(builder: (context) => const LocationsScreen()),
              (route) => false,
            );
            break;
          case 2:
            Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(builder: (context) => const SettingsScreen()),
              (route) => false,
            );
            break;
          default:
            Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(builder: (context) => const CharactersScreen()),
              (route) => false,
            );
            break;
        }
      },
    );
  }
}
