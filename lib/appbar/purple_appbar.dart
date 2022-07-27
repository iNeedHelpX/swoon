import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:swoon/colors/bluepurple_gradient.dart';
import 'package:swoon/colors/colours_list.dart';

AppBar myRadialBar(BuildContext context) {
  return AppBar(
    shadowColor: textgreyblue,

    flexibleSpace: ClipRRect(
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(24),
        bottomRight: Radius.circular(24),
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: bluePurpleGrad(),
        ),
      ),
    ),
    elevation: 16,

    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(24),
        bottomRight: Radius.circular(24),
      ),
    ),
    //set size of appbar. This is sort of big
    bottom: PreferredSize(
      preferredSize: Size.fromHeight(70),
      child: Stack(
        children: [
          Text(
            "Swoon!",
            style: GoogleFonts.damion(
              color: lightgoldbg,
              fontWeight: FontWeight.w800,
              fontSize: 65,
              shadows: [
                Shadow(
                  offset: Offset(8, 8.0),
                  blurRadius: 17.0,
                  color: fill2.withOpacity(0.6),
                )
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
