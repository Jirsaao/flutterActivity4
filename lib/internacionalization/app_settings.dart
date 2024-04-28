import 'package:flutter_application/internacionalization/NumberFormatSymbolsExt.dart';
import 'package:intl/number_symbols.dart';
import 'package:intl/number_symbols_data.dart';
import 'dart:ui' as ui;

/// Internationalization
/// Modificad esta variable para asociar la configuración dependiendo de la zona geográfica.
final defaultLocale =
    ui.window.locale.languageCode; //<-- {en_US, es_ES, en, es}
final defaultLanguage = ui.window.locale.countryCode; //<-- {en, es}

String get defaultDeviceLanguage {
  String defLocale = defaultLocale;
  if (defaultLanguage != null) {
    defLocale += '_$defaultLanguage';
  }
  return defLocale;
}

Map<String, String> get internationalizationSettings {
  switch (defaultLocale) {
    case 'es_ES':
      numberFormatSymbols['es_ES'] =
          (numberFormatSymbols['es_ES'] as NumberSymbols).copyWith(
        currencySymbol: '€',
      );
      return internES;
    case 'en_US':
      numberFormatSymbols['en_US'] =
          (numberFormatSymbols['en_US'] as NumberSymbols).copyWith(
        currencySymbol: r'$',
      );
      return internUSA;
    case 'de_DE':
      numberFormatSymbols['de_DE'] =
          (numberFormatSymbols['de_DE'] as NumberSymbols).copyWith(
        currencySymbol: '€',
      );
      return internDE;
    default:
      return internES;
  }
}

/// Internacioanlización España
Map<String, String> get internES => {
      'locale': 'es_ES',
      'currency_symbol': '€',
    };

/// Internacioanlización EEUU
Map<String, String> get internUSA => {
      'locale': 'en_US',
      'currency_symbol': '\$',
    };

Map<String, String> get internDE => {
      'locale': 'de_DE',
      'currency_symbol': '€',
    };
