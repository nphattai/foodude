import 'package:flutter/material.dart';
import 'package:foodude/pages/landing.dart';
import 'package:foodude/routes/routes.dart';
import 'package:foodude/themes/app_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: kLightTheme,
      home: LandingPage(),
      onGenerateRoute: Routes.buildRoutes,
    );
  }
}
