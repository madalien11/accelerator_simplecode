class AppAssets {
  static const images = _Images();
  static const svg = _Svg();
}

class _Images {
  const _Images();
  final String noAvatar = 'assets/images/bitmap/no_avatar.png';
  final String logo = 'assets/images/bitmap/logo.png';
  final String splashBackground = 'assets/images/bitmap/splash_background.png';
  final String splashRick = 'assets/images/bitmap/rick_splash.png';
  final String splashMorty = 'assets/images/bitmap/morty_splash.png';
  final String splashRickMorty = 'assets/images/bitmap/rickmorty_splash.png';
}

class _Svg {
  const _Svg();

  final String loginIcon = 'assets/images/svg/login_icon.svg';
  final String passwordIcon = 'assets/images/svg/password_icon.svg';
  final String charactersIcon = 'assets/images/svg/characters_icon.svg';
  final String locationsIcon = 'assets/images/svg/locations_icon.svg';
}
