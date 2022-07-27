import 'package:flutter/material.dart';
import 'package:swoon/containers/infobox.dart';

class Account extends StatefulWidget {
  Account({Key? key}) : super(key: key);

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InfoBox(
          boomtitle: "Account",
          subtext: "This is the acc page",
        )
      ],
    );
  }
}
