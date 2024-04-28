import 'package:flutter/material.dart';
import 'package:flutter_application/pages/FormLogin.dart';
import 'package:flutter_application/pages/PageUser.dart';
import 'package:flutter_application/pages/Shopping.dart';
import 'package:flutter_application/pages/SplashPage.dart';

class Routes {
  Routes._();

  static const String splash = '/splash';
  static const String login = '/formLogin';
  static const String pageUser = '/pageUser';
  static const String animalDetailScreen = '/animalDetail';
  static const String shopping = '/shopping';
}

final Map<String, WidgetBuilder> appRoutes = {
  Routes.splash: (context) => const SplashPage(),
  Routes.login: (context) => FormLogin(user: 'Segunda Pantalla'),
  Routes.pageUser: (context) => PageUser(user: 'user'),
  // Routes.shopping: (context) => Shopping(user: 'shopping'),
};
