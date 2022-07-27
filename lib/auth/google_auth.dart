import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:swoon/pages/loginpage.dart';
import 'package:swoon/pages/splash_screen.dart';
import 'package:swoon/start/app_setup.dart';

//google auth services code. AuthService
class AuthService {
  //this function handles the auth state of the app. oh just a quick note 'or' is demarked like this ||. and is demarked like  this &&
  handleAuthState() {
    return StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (BuildContext context, snapshot) {
          if (snapshot.hasData) {
            return AppSetup();
          } else {
            return LoginPage();
          }
        });
  }

  signInWithGoogle() async {
    //google login

    final GoogleSignInAccount? user =
        await GoogleSignIn(scopes: <String>["email"]).signIn();
    final GoogleSignInAuthentication googleAuth = await user!.authentication;

    final cred = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken, idToken: googleAuth.idToken);

    return await FirebaseAuth.instance.signInWithCredential(cred);
  }

  signOutGoogle() {
    FirebaseAuth.instance.signOut();
  }
}
