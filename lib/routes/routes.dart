import 'package:flutter/material.dart';
import 'package:foodude/pages/home.dart';
import 'package:foodude/pages/main.dart';
import 'package:foodude/pages/orders.dart';
import 'package:foodude/pages/profile.dart';
import 'package:foodude/pages/saved.dart';
import 'package:foodude/pages/sign_in.dart';
import 'package:foodude/pages/sign_up.dart';
import 'package:foodude/routes/route_name.dart';

class Routes {
  static Route buildRoutes(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.signInPage:
        return buildRoute(settings, SignInPage());
      case RouteName.signUpPage:
        return buildRoute(settings, SignUpPage());
      case RouteName.homePage:
        return buildRoute(settings, HomePage());
      case RouteName.ordersPage:
        return buildRoute(settings, OrdersPage());
      case RouteName.savedPage:
        return buildRoute(settings, SavedPage());
      case RouteName.profilePage:
        return buildRoute(settings, ProfilePage());
      case RouteName.mainPage:
        return buildRoute(settings, MainPage());
      default:
        //If there is no such named route in the switch statement
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Coming soon'),
        ),
        body: const Center(
          child: Text('Page not found'),
        ),
      );
    });
  }

  static MaterialPageRoute buildRoute(RouteSettings settings, Widget builder) {
    return MaterialPageRoute(
      settings: settings,
      builder: (BuildContext context) => builder,
    );
  }

  static MaterialPageRoute buildRouteDialog(
      RouteSettings settings, Widget builder) {
    return MaterialPageRoute(
      settings: settings,
      fullscreenDialog: true,
      builder: (BuildContext context) => builder,
    );
  }
}
