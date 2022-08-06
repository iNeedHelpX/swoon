import 'package:flutter/material.dart';
import 'package:flutter_gradients_reborn/flutter_gradients_reborn.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:swoon/colors/colours_list.dart';

class NeuromorphicWarning extends StatefulWidget {
  final String boomtitle;
  final String subtext;
  const NeuromorphicWarning(
      {Key? key, required this.boomtitle, required this.subtext})
      : super(key: key);

  @override
  State<NeuromorphicWarning> createState() => _NeuromorphicWarningState();
}

class _NeuromorphicWarningState extends State<NeuromorphicWarning> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          //pads the box from the side of the screen
          padding: EdgeInsets.fromLTRB(15, 20, 15, 0),
          child: Container(
            //sets size of box
            width: size.width,

            padding: EdgeInsets.fromLTRB(10, 20, 10, 10),
            child: Column(children: [
              _title(),
              _subtext(),
            ]),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 254, 171, 240),
              borderRadius: BorderRadius.circular(31),
              gradient: FlutterGradients.bigMango(),
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(255, 251, 234, 245),
                  offset: Offset(-12.0, -12.0),
                  blurRadius: 35,
                  spreadRadius: 0.0,
                ),
                BoxShadow(
                  color: Color.fromARGB(255, 40, 34, 63),
                  offset: Offset(12.0, 12.0),
                  blurRadius: 34,
                  spreadRadius: 0.0,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  //description
  Align _subtext() {
    return Align(
      alignment: Alignment.center,
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          children: [
            TextSpan(
              text: widget.subtext,
              style: GoogleFonts.cherryCreamSoda(
                color: lightblue,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }

  //title
  Align _title() {
    return Align(
      alignment: Alignment.topCenter,
      child: Text(
        widget.boomtitle,
        style: GoogleFonts.gochiHand(
          fontSize: 35,
          fontWeight: FontWeight.w500,
          color: textblue2,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
