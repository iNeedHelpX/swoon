import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swoon/auth/google_auth.dart';
import 'package:swoon/start/route_generator.dart';

class Start extends StatefulWidget {
  Start({Key? key}) : super(key: key);

  @override
  State<Start> createState() => _StartState();
}

class _StartState extends State<Start> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },

        //replace this with a call to a switch statement to check for login state
        child: AuthService().handleAuthState(),
      ),

      //genrates the routes for the app
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
