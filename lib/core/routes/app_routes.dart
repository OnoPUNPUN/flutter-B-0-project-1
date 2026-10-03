import 'package:flutter/material.dart';
import 'package:go_green/pages/onborading/onborading_one_page.dart';
import 'package:go_green/pages/onborading/onborading_two_page.dart';
import 'package:go_green/pages/onborading/welcome_page.dart';
import 'package:go_green/pages/splash/splash_page.dart';

class AppRoutes {
  const AppRoutes._();

  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();

  static const String initialRoute = SplashPage.name;

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case SplashPage.name:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const SplashPage(),
        );

      case WelcomPage.name:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => WelcomPage(),
        );
      case OnboradingOnePage.name:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => OnboradingOnePage(),
        );
      case OnboradingTwoPage.name:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => OnboradingTwoPage(),
        );
      default:
        return _errorRoute(settings);
    }
  }

  static Route<dynamic> _errorRoute(RouteSettings settings) {
    return MaterialPageRoute(
      settings: settings,
      builder: (_) => Scaffold(
        appBar: AppBar(title: const Text("Page not Found")),
        body: Center(child: Text("NO route defined for ${settings.name}")),
      ),
    );
  }
}
