import 'dart:ui';

import 'package:get/get.dart';

class LocalizationService extends GetxService {
  static const Locale english = Locale('en');
  static const Locale bangla = Locale('bn');

  static const List<Locale> supportedLocales = [
    english,
    bangla,
  ];

  Locale _currentLocale = english;

  Locale get currentLocale => _currentLocale;

  void changeLanguage(Locale locale) {
    if (!supportedLocales.contains(locale)) {
      return;
    }

    _currentLocale = locale;

    Get.updateLocale(locale);
  }

  void toggleLanguage() {
    final Locale newLocale =
        _currentLocale.languageCode == 'en'
            ? bangla
            : english;

    changeLanguage(newLocale);

    print(_currentLocale);
  }
}