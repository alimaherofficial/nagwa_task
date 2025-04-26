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
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name =
        (locale.countryCode?.isEmpty ?? false)
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
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Try Again`
  String get tryAgain {
    return Intl.message(
      'Try Again',
      name: 'tryAgain',
      desc: 'Text for try again button',
      args: [],
    );
  }

  /// `No Internet Connection`
  String get noInternetConnection {
    return Intl.message(
      'No Internet Connection',
      name: 'noInternetConnection',
      desc: 'Message when no internet connection is available',
      args: [],
    );
  }

  /// `Connection timeout with ApiServer`
  String get connectionTimeoutWithApiserver {
    return Intl.message(
      'Connection timeout with ApiServer',
      name: 'connectionTimeoutWithApiserver',
      desc: 'Message when connection timeout with ApiServer is available',
      args: [],
    );
  }

  /// `Send timeout with ApiServer`
  String get sendTimeoutWithApiserver {
    return Intl.message(
      'Send timeout with ApiServer',
      name: 'sendTimeoutWithApiserver',
      desc: 'Message when send timeout with ApiServer is available',
      args: [],
    );
  }

  /// `Receive timeout with ApiServer`
  String get receiveTimeoutWithApiserver {
    return Intl.message(
      'Receive timeout with ApiServer',
      name: 'receiveTimeoutWithApiserver',
      desc: 'Message when receive timeout with ApiServer is available',
      args: [],
    );
  }

  /// `Bad certificate with ApiServer`
  String get badCertificateWithApiserver {
    return Intl.message(
      'Bad certificate with ApiServer',
      name: 'badCertificateWithApiserver',
      desc: 'Message when bad certificate with ApiServer is available',
      args: [],
    );
  }

  /// `Bad response from ApiServer`
  String get badResponseFromApiserver {
    return Intl.message(
      'Bad response from ApiServer',
      name: 'badResponseFromApiserver',
      desc: 'Message when bad response from ApiServer is available',
      args: [],
    );
  }

  /// `Request to ApiServer was canceled`
  String get requestToApiserverWasCanceled {
    return Intl.message(
      'Request to ApiServer was canceled',
      name: 'requestToApiserverWasCanceled',
      desc: 'Message when request to ApiServer was canceled',
      args: [],
    );
  }

  /// `Unexpected error, please try again`
  String get unexpectedErrorPleaseTryAgain {
    return Intl.message(
      'Unexpected error, please try again',
      name: 'unexpectedErrorPleaseTryAgain',
      desc: 'Message when unexpected error is available',
      args: [],
    );
  }

  /// `Unknown error with ApiServer`
  String get unknownErrorWithApiserver {
    return Intl.message(
      'Unknown error with ApiServer',
      name: 'unknownErrorWithApiserver',
      desc: 'Message when unknown error with ApiServer is available',
      args: [],
    );
  }

  /// `Oops, there was an error. Please login again.`
  String get oppsThereWasAnErrorPleaseLoginAgain {
    return Intl.message(
      'Oops, there was an error. Please login again.',
      name: 'oppsThereWasAnErrorPleaseLoginAgain',
      desc:
          'Message when oops there was an error please login again is available',
      args: [],
    );
  }

  /// `Internal server error, please try later.`
  String get internalServerErrorPleaseTryLater {
    return Intl.message(
      'Internal server error, please try later.',
      name: 'internalServerErrorPleaseTryLater',
      desc: 'Message when internal server error please try later is available',
      args: [],
    );
  }

  /// `Oops, there was an error. Please try again.`
  String get oppsThereWasAnErrorPleaseTryAgain {
    return Intl.message(
      'Oops, there was an error. Please try again.',
      name: 'oppsThereWasAnErrorPleaseTryAgain',
      desc:
          'Message when oops there was an error please try again is available',
      args: [],
    );
  }

  /// `Show Less`
  String get showLess {
    return Intl.message('Show Less', name: 'showLess', desc: '', args: []);
  }

  /// `See More`
  String get seeMore {
    return Intl.message('See More', name: 'seeMore', desc: '', args: []);
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[Locale.fromSubtags(languageCode: 'en')];
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
