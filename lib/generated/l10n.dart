// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Counter value:`
  String get counterValue {
    return Intl.message(
      'Counter value:',
      name: 'counterValue',
      desc: '',
      args: [],
    );
  }

  /// `Authorization`
  String get auth {
    return Intl.message(
      'Authorization',
      name: 'auth',
      desc: '',
      args: [],
    );
  }

  /// `Input login and password`
  String get inputLoginAndPassword {
    return Intl.message(
      'Input login and password',
      name: 'inputLoginAndPassword',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login {
    return Intl.message(
      'Login',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Wrong login`
  String get inputErrorCheckLogin {
    return Intl.message(
      'Wrong login',
      name: 'inputErrorCheckLogin',
      desc: '',
      args: [],
    );
  }

  /// `Wrong password`
  String get inputErrorCheckPassword {
    return Intl.message(
      'Wrong password',
      name: 'inputErrorCheckPassword',
      desc: '',
      args: [],
    );
  }

  /// `Wrong login or password is entered`
  String get inputErrorCheckLoginPassword {
    return Intl.message(
      'Wrong login or password is entered',
      name: 'inputErrorCheckLoginPassword',
      desc: '',
      args: [],
    );
  }

  /// `Login must contain at least 3 characters`
  String get lengthErrorCheckLogin {
    return Intl.message(
      'Login must contain at least 3 characters',
      name: 'lengthErrorCheckLogin',
      desc: '',
      args: [],
    );
  }

  /// `Password must contain at least 8 characters`
  String get lengthErrorCheckPassword {
    return Intl.message(
      'Password must contain at least 8 characters',
      name: 'lengthErrorCheckPassword',
      desc: '',
      args: [],
    );
  }

  /// `Main screen`
  String get mainScreen {
    return Intl.message(
      'Main screen',
      name: 'mainScreen',
      desc: '',
      args: [],
    );
  }

  /// `Try again`
  String get tryAgain {
    return Intl.message(
      'Try again',
      name: 'tryAgain',
      desc: '',
      args: [],
    );
  }

  /// `Error`
  String get error {
    return Intl.message(
      'Error',
      name: 'error',
      desc: '',
      args: [],
    );
  }

  /// `No data`
  String get noData {
    return Intl.message(
      'No data',
      name: 'noData',
      desc: '',
      args: [],
    );
  }

  /// `Close`
  String get close {
    return Intl.message(
      'Close',
      name: 'close',
      desc: '',
      args: [],
    );
  }

  /// `Ok`
  String get ok {
    return Intl.message(
      'Ok',
      name: 'ok',
      desc: '',
      args: [],
    );
  }

  /// `Sign in`
  String get signIn {
    return Intl.message(
      'Sign in',
      name: 'signIn',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get language {
    return Intl.message(
      'Language',
      name: 'language',
      desc: '',
      args: [],
    );
  }

  /// `English`
  String get english {
    return Intl.message(
      'English',
      name: 'english',
      desc: '',
      args: [],
    );
  }

  /// `Russian`
  String get russian {
    return Intl.message(
      'Russian',
      name: 'russian',
      desc: '',
      args: [],
    );
  }

  /// `Search characters`
  String get charactersSearch {
    return Intl.message(
      'Search characters',
      name: 'charactersSearch',
      desc: '',
      args: [],
    );
  }

  /// `Search locations`
  String get locationsSearch {
    return Intl.message(
      'Search locations',
      name: 'locationsSearch',
      desc: '',
      args: [],
    );
  }

  /// `Total number of characters`
  String get numberOfCharacters {
    return Intl.message(
      'Total number of characters',
      name: 'numberOfCharacters',
      desc: '',
      args: [],
    );
  }

  /// `Total number of locations`
  String get numberOfLocations {
    return Intl.message(
      'Total number of locations',
      name: 'numberOfLocations',
      desc: '',
      args: [],
    );
  }

  /// `Alive`
  String get alive {
    return Intl.message(
      'Alive',
      name: 'alive',
      desc: '',
      args: [],
    );
  }

  /// `Dead`
  String get dead {
    return Intl.message(
      'Dead',
      name: 'dead',
      desc: '',
      args: [],
    );
  }

  /// `Aired`
  String get aired {
    return Intl.message(
      'Aired',
      name: 'aired',
      desc: '',
      args: [],
    );
  }

  /// `Don't have an account yet`
  String get dontHaveAnAccount {
    return Intl.message(
      'Don\'t have an account yet',
      name: 'dontHaveAnAccount',
      desc: '',
      args: [],
    );
  }

  /// `Create`
  String get create {
    return Intl.message(
      'Create',
      name: 'create',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get settings {
    return Intl.message(
      'Settings',
      name: 'settings',
      desc: '',
      args: [],
    );
  }

  /// `Characters`
  String get characters {
    return Intl.message(
      'Characters',
      name: 'characters',
      desc: '',
      args: [],
    );
  }

  /// `Locations`
  String get locations {
    return Intl.message(
      'Locations',
      name: 'locations',
      desc: '',
      args: [],
    );
  }

  /// `Episodes`
  String get episodes {
    return Intl.message(
      'Episodes',
      name: 'episodes',
      desc: '',
      args: [],
    );
  }

  /// `Characters were not found`
  String get charactersListIsEmpty {
    return Intl.message(
      'Characters were not found',
      name: 'charactersListIsEmpty',
      desc: '',
      args: [],
    );
  }

  /// `Episodes were not found`
  String get episodesListIsEmpty {
    return Intl.message(
      'Episodes were not found',
      name: 'episodesListIsEmpty',
      desc: '',
      args: [],
    );
  }

  /// `Locations were not found`
  String get locationsListIsEmpty {
    return Intl.message(
      'Locations were not found',
      name: 'locationsListIsEmpty',
      desc: '',
      args: [],
    );
  }

  /// `Something went wrong :-(`
  String get somethingWentWrong {
    return Intl.message(
      'Something went wrong :-(',
      name: 'somethingWentWrong',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ru', countryCode: 'RU'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
