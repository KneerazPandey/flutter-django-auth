import 'package:flutter/material.dart';

import '../common/widgets.dart';
import 'routing_key.dart';

class AppRouting {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutingKey.splashScreenKey:
        return MaterialPageRoute(
          settings: settings,
          builder: (BuildContext context) => const Scaffold(),
        );
      default:
        return MaterialPageRoute(
          settings: settings,
          builder: (BuildContext context) => const PageNotFoundView(),
        );
    }
  }
}
