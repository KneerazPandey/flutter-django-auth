import 'package:flutter/material.dart';

import '../../features/on_boarding/presentation/screens/on_boarding_screen.dart';
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
      default:
        return MaterialPageRoute(
          settings: settings,
          builder: (BuildContext context) => const PageNotFoundView(),
        );
    }
  }
}
