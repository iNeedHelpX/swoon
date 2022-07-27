import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:swoon/colors/colours_list.dart';
import 'package:swoon/controllers/people_controller.dart';

//Get a list of all people in firebase db and present it in a decorated container. This is how you get the list
class PeopleList extends StatelessWidget {
  final peopleController = Get.put(PeopleController());

  PeopleList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Flexible(
        child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: peopleController.products.length,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (BuildContext context, int index) {
              return PeopleContainer(index: index);
            }),
      ),
    );
  }
}

//the decorated container to view the people available for booking
class PeopleContainer extends StatelessWidget {
  final PeopleController productController = Get.find();
  final int index;
  PeopleContainer({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        //nav over to the details page.
        //Navigator.of(context).pushNamed('/details', arguments: widget.imgurl);
      },
      child: Container(
        margin: EdgeInsets.fromLTRB(15, 5, 15, 15),
        child: ClipRRect(
          clipBehavior: Clip.antiAlias,
          borderRadius: BorderRadius.circular(10),
          child: Material(
            borderRadius: BorderRadius.circular(10),
            color: textblue,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Image(
                      height: 250,
                      width: 400,
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        productController.products[index].image,
                      ),
                    ),
                    Positioned(
                      left: 0,
                      top: 10,
                      child: ClipRRect(
                        clipBehavior: Clip.hardEdge,
                        child: Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 255, 0, 161),
                              borderRadius: BorderRadius.circular(8)),
                          child: Text(
                            "\$${productController.products[index].price} an hr",
                            style: GoogleFonts.lilitaOne(
                                fontSize: 23, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.all(5.0),
                  child: Column(
                    children: <Widget>[
                      Text(
                        productController.products[index].name,
                        style:
                            GoogleFonts.lemon(fontSize: 34, color: lightgoldbg),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        "${productController.products[index].area}",
                        style: GoogleFonts.karla(
                            fontSize: 16, color: Colors.white),
                      ),
                      SizedBox(
                        height: 4.0,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
