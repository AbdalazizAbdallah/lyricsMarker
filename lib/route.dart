import 'package:flutter/material.dart';
import 'package:lyrics_marker/routes/start_page.dart';

class RouteGenerator {
  static const String startPage = '/';

  static Route<dynamic> generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case startPage:
        return MaterialPageRoute(
          builder: (context) => const StartPage(),
        );
      default:
        throw const FormatException('Page not Found');
    }
  }
}
