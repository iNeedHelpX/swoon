import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swoon/pages/splash_screen.dart';
import 'package:swoon/start/start.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Getting arguments passed in while calling Navigator.pushNamed
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return GetPageRoute(
          //go to home page
          page: () => Start(),
        );

      //go to splash page
      case '/welcome':
        return GetPageRoute(
          page: () => SplashPage(),
        );

      case '/checkout':
        return GetPageRoute(
            // page: () => CheckoutPage(),
            );

      case '/details':
      // return MaterialPageRoute(builder: (_) => );

      default:
        // If there is no such named route in the switch statement, e.g. /third
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        body: Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}
