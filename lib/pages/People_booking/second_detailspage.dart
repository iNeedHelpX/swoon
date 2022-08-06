import 'package:flutter/material.dart';

class PeopleDetail extends StatefulWidget {
  final String name;
  final int price;
  final String image;
  final String area;

  PeopleDetail(
      {Key? key,
      required this.name,
      required this.price,
      required this.image,
      required this.area})
      : super(key: key);

  @override
  State<PeopleDetail> createState() => _DetailstwoState();
}

class _DetailstwoState extends State<PeopleDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
