import 'package:flutter/material.dart';
import 'package:swoon/containers/infobox.dart';

class CartPage extends StatefulWidget {
  CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        //info

        InfoBox(
          boomtitle: "cart items",
          subtext: "Cart items will be listed here",
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
