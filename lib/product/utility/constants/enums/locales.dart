import 'package:flutter/material.dart';

/// Enum representing supported locales in the application
enum Locales {
  tr(Locale('tr')), // Turkish
  en(Locale('en')); // English

  /// The locale associated with the enum value
  final Locale locale;

  /// Constructor to initialize the locale
  const Locales(this.locale);

  /// List of all supported locales
  static final List<Locale> supportedLocales = [
    for (var locale in Locales.values) locale.locale,
  ];
}
