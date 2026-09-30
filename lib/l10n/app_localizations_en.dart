// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get profile => 'Tap here to view and update your profile.';

  @override
  String get notification => 'Tap here to see your notifications.';

  @override
  String get account => 'Tap here to access your account settings.';

  @override
  String get filter => 'Use this option to filter tenders.';

  @override
  String get preference => 'Set your tender preferences here.';

  @override
  String get date => 'Select a date to find tenders.';

  @override
  String get sort => 'Sort tenders according to your preference.';

  @override
  String get apply => 'Tap Apply to see the selected results.';

  @override
  String get back => 'Back';

  @override
  String get next => 'Next';

  @override
  String get skipTour => 'Skip Tour';
}
