import 'package:flutter/material.dart';
import 'package:flutter_gradients_reborn/flutter_gradients_reborn.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:swoon/colors/colours_list.dart';
import 'package:swoon/controllers/people_controller.dart';

//this will be the page that shows the details of booking a person to wait in line up for you

class PeopleDetails extends StatelessWidget {
  // final String imgUrl;
  final PeopleController peopleController = Get.find();
  // final int rank;
  final String name;
  final int? price;
  final String image;
  final String? area;

  PeopleDetails({
    Key? key,
    required this.name,
    this.price,
    required this.image,
    this.area,

    // required this.rank,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(children: [
        Container(
          width: size.width,
          height: size.height * 0.6,
          decoration: BoxDecoration(
            image:
                DecorationImage(image: NetworkImage(image), fit: BoxFit.cover),
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
                  icon: Icon(
                    Icons.keyboard_backspace,
                    color: Color.fromARGB(255, 247, 0, 97),
                  ),
                ),
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: MediaQuery.of(context).size.height * 0.5,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              gradient: FlutterGradients.gentleCare(tileMode: TileMode.clamp),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    offset: Offset(0, -4),
                    blurRadius: 8),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 30, right: 30),
                  child: Row(
                    children: [BookingTitle(name: name), HeartButton()],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20, left: 30, right: 30),
                  child: Row(
                    children: [
                      Text(
                        "IDR 25,000.00",
                        style: GoogleFonts.mako(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: bg,
                        ),
                      ),
                      Text(
                        "/ 1kg",
                        style: GoogleFonts.mako(fontSize: 14),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10, left: 30, right: 30),
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: textblue,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Text(
                      "Shipped to the door",
                      style: GoogleFonts.mali(
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                        color: lightblue,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 49,
                          width: 49,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 172, 172, 172),
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                            child: Text(
                              "-",
                              style: GoogleFonts.ptSans(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Container(
                          height: 49,
                          width: 100,
                          child: Center(
                            child: Text(
                              "1",
                              style: GoogleFonts.ptSans(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Container(
                          height: 49,
                          width: 49,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 172, 172, 172),
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                            child: Text(
                              "+",
                              style: GoogleFonts.ptSans(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                        )
                      ]),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                  decoration: BoxDecoration(
                    gradient:
                        FlutterGradients.happyUnicorn(tileMode: TileMode.clamp),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.07),
                        offset: Offset(0, -3),
                        blurRadius: 12,
                      )
                    ],
                  ),
                  child: Row(children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Total",
                            style: GoogleFonts.mako(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: bg,
                            ),
                          ),
                          Text(
                            "IDR 25,000.00",
                            style: GoogleFonts.mako(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: bg,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Material(
                      color: textblue2,
                      borderRadius: BorderRadius.circular(10),
                      child: InkWell(
                        onTap: () {
                          print("clicked");
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 20),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10)),
                          child: Text(
                            "add to cart",
                            style: GoogleFonts.caveat(
                              fontSize: 28,
                              fontWeight: FontWeight.w700,
                              color: gold,
                            ),
                          ),
                        ),
                      ),
                    )
                  ]),
                )
              ],
            ),
          ),
        ),
      ]),
    );
  }
}

class BookingTitle extends StatelessWidget {
  const BookingTitle({
    Key? key,
    required this.name,
  }) : super(key: key);

  final String name;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Text(
        "${name} is available to wait in line for you",
        style: GoogleFonts.caveat(
          fontSize: 30,
          fontWeight: FontWeight.w700,
          color: textgreyblue,
        ),
      ),
    );
  }
}

class HeartButton extends StatelessWidget {
  const HeartButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      child: ClipOval(
        child: Material(
          shadowColor: bg,
          elevation: 21,
          color: textblue,
          child: InkWell(
            onTap: () {
              print("heel");
            },
            child: Icon(
              MdiIcons.plusOutline,
              color: textturq3,
            ),
          ),
        ),
      ),
    );
  }
}
