import 'package:doctoc/core/di/dependency_injection.dart';
import 'package:doctoc/core/routing/routes.dart';
import 'package:doctoc/features/home/ui/home_screen.dart';
import 'package:doctoc/features/login/logic/cubit/login_cubit.dart';
import 'package:doctoc/features/login/ui/login_screen.dart';
import 'package:doctoc/features/onboarding/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    final arguments = settings.arguments;
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeScreen());

      case Routes.loginScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => getIt<LoginCubit>(),
                  child: const LoginScreen(),
                ));
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No Route defined for ${settings.name} '),
            ),
          ),
        );
    }
  }
}
