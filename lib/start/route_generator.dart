import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:swoon/colors/colours_list.dart';
import 'package:swoon/pages/homepage.dart';
import 'package:swoon/pages/product_detail.dart';
import 'package:swoon/pages/splash_screen.dart';
import 'package:swoon/start/start.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Getting arguments passed in while calling Navigator.pushNamed. this allows me to get the arguments as dynamic data. Esssentially pass in the arguments
    final args = settings.arguments;
    final arg = settings.arguments;

    // final index = settings.arguments as int;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => HomePage());
      case '/details':
        // Validation of correct data type. I can add different data types here
        if (args is String && arg is int) {
          return MaterialPageRoute(
              builder: (_) => ProductDetails(
                    image: args,
                    price: arg,
                  ));
        }
        // If args is not of the correct type, return an error page.
        // I can also throw an exception while in development.
        return _errorRoute();
      default:
        // If there is no such named route in the switch statement, e.g. /third
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        backgroundColor: containerback,
        body: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.network(
                'https://assets4.lottiefiles.com/packages/lf20_sii02z44.json'),
            SizedBox(height: 30),
            Text('This is the error page'),
          ],
        ),
      );
    });
  }
}
