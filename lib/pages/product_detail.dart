import 'package:flutter/material.dart';
import 'package:flutter_gradients_reborn/flutter_gradients_reborn.dart';
import 'package:swoon/colors/colours_list.dart';
import 'package:swoon/containers/neuromorphicwarn.dart';

class ProductDetails extends StatelessWidget {
  // final itemsController = Get.put(ItemController());
  final String? name;
  final String price;
  final String image;
  final String? info;

  ProductDetails({
    Key? key,
    this.name,
    required this.price,
    required this.image,
    this.info,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(children: [
        Positioned(
          left: 0,
          right: 0,
          child: Container(
            width: size.width,
            height: size.height * 0.6,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(image), fit: BoxFit.cover),
            ),
          ),
        ),
        Positioned(
          left: 15,
          top: MediaQuery.of(context).padding.top,
          child: ClipOval(
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(color: tabicon, boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(.05),
                  offset: Offset(2, -7),
                  blurRadius: 8,
                )
              ]),
              child: Center(
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.keyboard_backspace, color: Colors.black),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          top: MediaQuery.of(context).size.height * .55,
          child: Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.5,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient:
                        FlutterGradients.skyGlider(tileMode: TileMode.clamp)),
                child: Column(children: [
                  Text(name!),
                  SizedBox(
                    height: 39,
                  ),
                  NeuromorphicWarning(boomtitle: name!, subtext: info!),
                  Text(price),
                ]),
              ),
            ],
          ),
        )
      ]),
    );
  }
}
