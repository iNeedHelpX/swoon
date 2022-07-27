import 'package:bottom_bar/bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:swoon/colors/colours_list.dart';

List<BottomBarItem> get bottomBarIcons {
  return <BottomBarItem>[
    BottomBarItem(
      icon: Icon(Icons.shopping_bag_rounded),
      title: Text('Shop'),
      activeColor: medpink,
      inactiveColor: Colors.white,
    ),
    BottomBarItem(
      icon: Icon(FontAwesomeIcons.peopleArrows),
      title: Text('Lineups'),
      activeColor: brightgreen,
      inactiveColor: Colors.white,
    ),
    BottomBarItem(
      icon: Icon(Icons.shopping_basket_rounded),
      title: Text('Cart'),
      activeColor: gold,
      inactiveColor: Colors.white,
    ),
    BottomBarItem(
      icon: Icon(Icons.account_box_rounded),
      title: Text('Account'),
      activeColor: textturq2,
      inactiveColor: Colors.white,
    ),
  ];
}
