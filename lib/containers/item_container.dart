import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:swoon/colors/colours_list.dart';
import 'package:swoon/controllers/item_controller.dart';

class CatalogProducts extends StatelessWidget {
  CatalogProducts({Key? key}) : super(key: key);

  final itemsController = Get.put(ItemController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Flexible(
        child: ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: itemsController.products.length,
            itemBuilder: (BuildContext context, int index) {
              return ItemContainer(index: index);
            }),
      ),
    );
  }
}

class ItemContainer extends StatelessWidget {
  ItemContainer({Key? key, required this.index}) : super(key: key);

  final int index;
  final ItemController itemController = Get.find();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Get.toNamed("/details", arguments: widget.imgurl);
        //nav over to the details page.
      },
      child: Container(
        margin: EdgeInsets.fromLTRB(15, 5, 15, 20),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Material(
            borderRadius: BorderRadius.circular(10),
            color: containerback,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Image(
                        height: 250,
                        width: 400,
                        image:
                            NetworkImage(itemController.products[index].image),
                        fit: BoxFit.cover),
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
                            itemController.products[index].price,
                            style: GoogleFonts.lilitaOne(
                                fontSize: 23, color: lightgoldbg),
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
                        "Y " + itemController.products[index].name + " Z",
                        style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.w500,
                            color: lightgoldbg,
                            fontFamily: "hearts"),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        "${itemController.products[index].info}",
                        style: GoogleFonts.coveredByYourGrace(
                            fontSize: 22, color: Colors.white),
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
