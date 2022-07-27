import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:swoon/colors/colours_list.dart';

class InfoBox2 extends StatefulWidget {
  final String boomtitle;
  final String subtext;

  InfoBox2({
    Key? key,
    required this.boomtitle,
    required this.subtext,
  }) : super(key: key);

  @override
  _InfoBox2State createState() => _InfoBox2State();
}

class _InfoBox2State extends State<InfoBox2> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Padding(
          //This is the padding around the box
          padding: const EdgeInsets.fromLTRB(15, 2, 15, 0),
          child: Container(
            padding: EdgeInsets.only(
                //This is the padding around the text!
                left: 15,
                top: 10,
                right: 15,
                bottom: 5),
            width: 400,
            margin: EdgeInsets.only(top: 10),
            decoration: _decor(),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                _boomTitle(),
                _textTitle(),
              ],
            ),
          ),
        ),
      ],
    );
  }

//the box color and design
  BoxDecoration _decor() {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: textgreyblue,
      boxShadow: [
        BoxShadow(
          color: textblue2,
          offset: Offset(11, 10),
          blurRadius: 75,
        ),
      ],
    );
  }

  Align _boomTitle() {
    return Align(
      alignment: Alignment.topCenter,
      child: Text(
        widget.boomtitle,
        style: GoogleFonts.lemon(
          fontSize: 24,
          color: lightpur,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }

  Align _textTitle() {
    return Align(
      alignment: Alignment.center,
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          children: [
            TextSpan(
              text: widget.subtext,
              style: GoogleFonts.cherryCreamSoda(
                color: Colors.white,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
