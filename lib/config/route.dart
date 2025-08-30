import 'package:flutter/material.dart';

import '../view/home_screen.dart';
import '../view/spalsh_screen.dart';


class AppRoutes {
  // Define route names as constants
  static const String splash = '/';
  static const String home = '/home';

  // Generate routes
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splash:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case home:
        return MaterialPageRoute(builder: (_) => const HomePage());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
