import 'dart:math';

import 'package:accelerator_simplecode/constants/app_assets.dart';
import 'package:accelerator_simplecode/repo/repo_settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import '../generated/l10n.dart';
import 'auth/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  var rng = Random();
  late int rand;

  @override
  void initState() {
    super.initState();
    final repoSettings = Provider.of<RepoSettings>(context, listen: false);
    repoSettings.init().whenComplete(() async {
      var defaultLocale = const Locale('ru', 'RU');
      final locale = await repoSettings.readLocale();
      if (locale == 'en') {
        defaultLocale = const Locale('en');
      }
      S.load(defaultLocale).whenComplete(() {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => const LoginScreen(),
          ),
        );
      });
    });

    rand = rng.nextInt(100);
  }

  @override
  void dispose() {
    super.dispose();
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.grey[50],
        statusBarIconBrightness: Brightness.dark,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                AppAssets.images.splashBackground,
                fit: BoxFit.cover,
              ),
            ),
            Positioned.fill(
              child: Column(
                children: [
                  Expanded(
                    flex: 2,
                    child: Image.asset(
                      AppAssets.images.logo,
                    ),
                  ),
                  rand % 2 == 0
                      ? Expanded(
                          child: Image.asset(AppAssets.images.splashMorty),
                        )
                      : Expanded(
                          flex: 2,
                          child: Image.asset(AppAssets.images.splashRickMorty),
                        ),
                  if (rand % 2 == 0)
                    Expanded(
                      child: Image.asset(AppAssets.images.splashRick),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
