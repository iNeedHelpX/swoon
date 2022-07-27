import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:swoon/colors/colours_list.dart';
import 'package:swoon/controllers/splashscreen_controller.dart';

//The splash page. this will load the lottie animation like this: Lottie.network('https://assets9.lottiefiles.com/private_files/lf30_ux98admv.json')

//alternative assets to use is other areas: space https://assets9.lottiefiles.com/packages/lf20_l3qxn9jy.json, bike ride https://assets9.lottiefiles.com/packages/lf20_g0gttpkl.json,
class SplashPage extends StatefulWidget {
  SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

late SplashController splashController;

class _SplashPageState extends State<SplashPage> {
  int? duration = 0;
  String? goToPage;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //a pink backdrop
      backgroundColor: containerback,
      body: Center(
        child: Lottie.network(
            "https://assets9.lottiefiles.com/private_files/lf30_ux98admv.json"),
      ),
    );
  }
}
