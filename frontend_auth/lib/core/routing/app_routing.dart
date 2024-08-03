import 'package:flutter/material.dart';

import '../../features/change_password/presentation/screens/change_password_screen.dart';
import '../../features/forget_password/presentation/screens/forget_password_screen.dart';
import '../../features/on_boarding/presentation/screens/on_boarding_screen.dart';
import '../../features/sign_in/presentation/screens/sign_in_screen.dart';
import '../../features/sign_up/presentation/screens/sign_up_screen.dart';
import '../../features/splash/presentation/screens/splash_screen.dart';
import '../common/widgets.dart';
import 'routing_key.dart';

class AppRouting {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutingKey.splashScreenKey:
        return MaterialPageRoute(
          settings: settings,
          builder: (BuildContext context) => const SplashScreen(),
        );
      case RoutingKey.onBoardingScreenKey:
        return MaterialPageRoute(
          settings: settings,
          builder: (BuildContext context) => const OnBoardingScreen(),
        );
      case RoutingKey.signUpScreenKey:
        return MaterialPageRoute(
          settings: settings,
          builder: (BuildContext context) => const SignUpScreen(),
        );
      case RoutingKey.signInScreenKey:
        return MaterialPageRoute(
          settings: settings,
          builder: (BuildContext context) => const SignInScreen(),
        );
      case RoutingKey.changePasswordScreenKey:
        return MaterialPageRoute(
          settings: settings,
          builder: (BuildContext context) => const ChangePasswordScreen(),
        );
      case RoutingKey.forgetPasswordScreenKey:
        return MaterialPageRoute(
          settings: settings,
          builder: (BuildContext context) => const ForgetPasswordScreen(),
        );

      default:
        return MaterialPageRoute(
          settings: settings,
          builder: (BuildContext context) => const PageNotFoundView(),
        );
    }
  }
}
