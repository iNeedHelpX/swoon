import 'package:flutter/material.dart';
import 'package:swoon/containers/item_container.dart';

//this is the home page where items are for sale to buy. e-commerce. We even have a space trip for sale
class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              //this has to be set in order to not get errors  about flex area with firebase! Irritating but took me hours to figure out this was the issue!
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //the catalog of items for sale within the app. This includes the catalog $150,000.00 space trip!
                CatalogProducts()
              ],
            ),
          ],
        ),
      ),
    );
  }
}
