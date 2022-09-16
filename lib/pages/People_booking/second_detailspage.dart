import 'package:flutter/material.dart';
import 'package:flutter_gradients_reborn/flutter_gradients_reborn.dart';
import 'package:get/get.dart';
import 'package:swoon/colors/colours_list.dart';
import 'package:swoon/controllers/people_controller.dart';

class DetailsPeople extends StatelessWidget {
  final PeopleController peopleController = Get.find();
  final String name;
  final int? price;
  final String image;
  final String area;
  DetailsPeople(
      {Key? key,
      required this.name,
      this.price,
      required this.image,
      required this.area})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(children: [
        Container(
          width: size.width,
          height: size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    'https://upload.wikimedia.org/wikipedia/commons/3/3d/Fesoj_-_Papilio_machaon_%28by%29.jpg'),
                fit: BoxFit.cover),
          ),
        ),
        Positioned(
          left: 15,
          top: MediaQuery.of(context).padding.top,
          child: ClipOval(
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(.24),
                  offset: Offset(0, 4),
                  blurRadius: 8,
                )
              ]),
              child: Center(
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.keyboard_backspace, color: tabBar),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Align(
            alignment: Alignment.center,
            child: Container(
              padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
              height: size.height * .5,
              width: size.width,
              child: Text('Hello'),
              decoration: BoxDecoration(
                gradient:
                    FlutterGradients.sunnyMorning(tileMode: TileMode.clamp),
                borderRadius: BorderRadius.circular(25),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      offset: Offset(0, -4),
                      blurRadius: 8),
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
