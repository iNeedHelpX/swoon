import 'package:flutter/material.dart';
import 'package:swoon/colors/colours_list.dart';
import 'package:swoon/colors/greygradient.dart';

class BookingInfo extends StatelessWidget {
  final String text, subtext;

  const BookingInfo({required this.text, required this.subtext});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(15, 10, 15, 0),
      padding: EdgeInsets.fromLTRB(15, 10, 15, 0),
      height: 80,
      width: 400,
      decoration: BoxDecoration(
        gradient: purpleGrey(),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          Text(
            text,
            style: TextStyle(
              color: text2,
              fontSize: 20,
              fontWeight: FontWeight.w900,
            ),
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
