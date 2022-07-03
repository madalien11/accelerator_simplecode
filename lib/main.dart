import 'package:accelerator_simplecode/constants/app_colors.dart';
import 'package:accelerator_simplecode/repo/repo_settings.dart';
import 'package:accelerator_simplecode/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'generated/l10n.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: AppColors.splashBackground,
      statusBarIconBrightness: Brightness.light,
    ),
  );

  final repoSettings = RepoSettings();
  await repoSettings.init();
  var defaultLocale = const Locale('ru', 'RU');
  final locale = await repoSettings.readLocale();
  if (locale == 'en') {
    defaultLocale = const Locale('en');
  }

  runApp(MyApp(locale: defaultLocale));
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
    required this.locale,
  }) : super(key: key);
  final Locale locale;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Accelerator SimpleCode',
      theme: ThemeData(
        colorSchemeSeed: AppColors.primary,
      ),
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      locale: locale,
      home: const SplashScreen(),
    );
  }
}
