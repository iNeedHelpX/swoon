import 'package:flutter/material.dart';
import 'package:flutter_gradients_reborn/flutter_gradients_reborn.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:swoon/colors/colours_list.dart';
import 'package:swoon/containers/neuromorphicwarn.dart';

class ProductDetails extends StatelessWidget {
  // final itemsController = Get.put(ItemController());
  final String? name;
  final int price;
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
                      FlutterGradients.skyGlider(tileMode: TileMode.clamp),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          top: MediaQuery.of(context).size.width / 0.85,
          child: Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: size.height / 12,
                  width: size.width / 1.2,
                  decoration: BoxDecoration(
                      gradient: FlutterGradients.nega(tileMode: TileMode.clamp),
                      borderRadius: BorderRadius.circular(21),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 127, 114, 123),
                          offset: Offset(-12.0, -12.0),
                          blurRadius: 35,
                          spreadRadius: 0.0,
                        ),
                        BoxShadow(
                          color: Color.fromARGB(255, 45, 43, 53),
                          offset: Offset(12.0, 12.0),
                          blurRadius: 34,
                          spreadRadius: 0.0,
                        ),
                      ]),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          name!,
                          style: GoogleFonts.quicksand(
                            fontSize: 25,
                            fontWeight: FontWeight.w900,
                            color: textgreyblue,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 12, right: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ClipOval(
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration:
                              BoxDecoration(color: textblue2, boxShadow: [
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
                              icon: Icon(Icons.emoji_emotions, color: gold2),
                            ),
                          ),
                        ),
                      ),
                      ClipOval(
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(color: bg, boxShadow: [
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
                              icon: Icon(Icons.shopping_bag_rounded,
                                  color: brightpink),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
