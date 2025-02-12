import 'package:flutter/material.dart';
import 'package:flutter_advanced/Feature/login/ui/login_screen.dart';
import 'package:flutter_advanced/Feature/on_boarding/ui/on_boarding_screen.dart';
import 'package:flutter_advanced/core/routing/routes.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    // this argument is passed in any screen that is navigated to
    final arguments = settings.arguments;
    switch (settings.name) {
      case Routes.onBoardingView:
        return MaterialPageRoute(builder: (_) => const OnBoardingScreen());
      case Routes.loginView:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      default:
        return MaterialPageRoute(
            builder: (_) => Center(
                  child: Text('No Route defined for ${settings.name}'),
                ));
    }
  }
}
