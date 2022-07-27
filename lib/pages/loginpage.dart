import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:swoon/auth/google_auth.dart';
import 'package:swoon/colors/colours_list.dart';
import 'package:swoon/colors/greygradient.dart';

//this is a very simple login page. I don't wish to over complicate things so its just  sign in with google. No passwords/usernames needed! KISS!
class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    // LoginService loginService =
    //     Provider.of<LoginService>(context, listen: false);

    return Scaffold(
      backgroundColor: bg,
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
                child: Container(
                  padding: EdgeInsets.fromLTRB(15, 20, 15, 5),
                  decoration: BoxDecoration(
                    gradient: purpleGrey(),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Column(
                    children: [
                      Text(
                        "No need to register. Just sign in with Google!",
                        //style info next
                        style: GoogleFonts.fjallaOne(
                          color: brighty,
                          fontSize: 30,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      //buffer space
                      SizedBox(
                        height: 20,
                      ),
                      SignInButton(Buttons.Google, onPressed: () async {
                        AuthService().signInWithGoogle();
                        //handle signin logic here. This will sign the user in with google
                      })
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
