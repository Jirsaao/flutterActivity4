import 'package:flutter/material.dart';
import 'package:flutter_application/pages/FormLogin.dart';
import 'package:flutter_application/pages/Shopping.dart';
import 'package:flutter_application/pages/SplashPage.dart';
import 'package:flutter_application/routing/routes.dart';

class app_routes {
  Map<String, Widget Function(BuildContext)> get appRoutes {
    return {
      Routes.splash: (context) => const SplashPage(),
      Routes.login: (context) {
        final user = ModalRoute.of(context)!.settings.arguments as String;
        return FormLogin(user: 'Segunda Pantalla');
      },
      // Routes.shopping: (context) => Shopping(
      //       user: 'shopping',
      //     ),
    };
  }
}
