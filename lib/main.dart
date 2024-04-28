import 'package:flutter/material.dart';
import 'package:flutter_application/internacionalization/app_settings.dart';
import 'package:flutter_application/routing/routes.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'dart:ui' as ui;

import 'package:intl/intl.dart';

void main() {
  Intl.defaultLocale = defaultDeviceLanguage;

  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => MainState();
}

class MainState extends State {
  late Locale _locale;
  Locale get locale => _locale;

  final _supportedLocales = const [
    Locale('en'),
    Locale('es'),
    Locale('de'),
    Locale('en_US'),
    Locale('es_ES'),
    Locale('de_DE'),
  ];

  @override
  void initState() {
    super.initState();
    _locale = Locale(defaultLocale, defaultLanguage);
  }

  void changeLanguage(Locale locale) {
    setState(() {
      _locale = locale;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: _supportedLocales,
      locale: _locale,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: appRoutes,
      initialRoute: Routes.login,
    );
  }
}
