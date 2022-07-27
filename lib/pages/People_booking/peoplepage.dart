import 'package:flutter/material.dart';
import 'package:swoon/containers/infobox2.dart';
import 'package:swoon/containers/people_container.dart';

//available people for event booking
class PeoplePage extends StatefulWidget {
  PeoplePage({Key? key}) : super(key: key);

  @override
  State<PeoplePage> createState() => _PeoplePageState();
}

class _PeoplePageState extends State<PeoplePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Stack(
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InfoBox2(
                  boomtitle: "Need someone to wait in a line for you?",
                  subtext:
                      'Whether it be the passport office or an event, we are here to wait in line ups for you. Min 5 hour booking for passport office requests. Min 1 hour booking for all other line up requests.',
                ),
                SizedBox(
                  height: 20,
                ),
                PeopleList()
              ],
            ),
          ],
        ),
      ),
    );
  }
}
