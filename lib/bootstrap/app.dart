import 'package:flutter/material.dart';
import 'package:go_green/core/routes/app_routes.dart';
import 'package:go_green/core/theme/app_theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Go Green",
      theme: AppTheme.light,
      navigatorKey: AppRoutes.navigatorKey,
      initialRoute: AppRoutes.initialRoute,
      onGenerateRoute: AppRoutes.onGenerateRoute,
    );
  }
}
