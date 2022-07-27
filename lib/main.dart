import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:swoon/start/start.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  //this is ok for apps but not for web!
  await Firebase.initializeApp();

//runs the app
  runApp(Start());
}
