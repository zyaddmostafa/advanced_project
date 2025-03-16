import 'package:flutter/material.dart';
import 'package:flutter_advanced/Feature/home/data/repos/home_repo.dart';
import 'package:flutter_advanced/Feature/home/logic/cubit/home_cubit.dart';
import 'package:flutter_advanced/Feature/home/ui/home_screen.dart';
import 'package:flutter_advanced/Feature/login/logic/cubit/login_cubit.dart';
import 'package:flutter_advanced/Feature/login/ui/login_screen.dart';
import 'package:flutter_advanced/Feature/on_boarding/ui/on_boarding_screen.dart';
import 'package:flutter_advanced/Feature/sign_up/logic/cubit/sign_up_cubit.dart';
import 'package:flutter_advanced/Feature/sign_up/ui/signup_screen.dart';
import 'package:flutter_advanced/core/di/dependency_injection.dart';
import 'package:flutter_advanced/core/routing/routes.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    // this argument is passed in any screen that is navigated to
    final arguments = settings.arguments;
    switch (settings.name) {
      case Routes.onBoardingView:
        return MaterialPageRoute(builder: (_) => const OnBoardingScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => getIt<LoginCubit>(),
                  child: const LoginScreen(),
                ));
      case Routes.homeScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) =>
                      HomeCubit(getIt<HomeRepo>())..getSepcialization(),
                  child: const HomeScreen(),
                ));

      case Routes.signUpScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => getIt<SignupCubit>(),
                  child: const SignupScreen(),
                ));

      default:
        return null;
    }
  }
}
