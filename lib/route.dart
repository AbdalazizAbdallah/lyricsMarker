import 'package:flutter/material.dart';
import 'package:lyrics_marker/routes/login_page.dart';
import 'package:lyrics_marker/routes/start_page.dart';

class RouteGenerator {
  static const String startPage = '/';
  static const String loginPage = '/loginPage';

  static Route<dynamic> generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case startPage:
        return MaterialPageRoute(
          builder: (context) => const StartPage(),
        );
      case loginPage:
        return MaterialPageRoute(
          builder: (context) => const LoginPage(),
        );
      default:
        throw const FormatException('Page not Found');
    }
  }
}
