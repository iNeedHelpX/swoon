import 'package:bottom_bar/bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:swoon/appbar/bottomicons.dart';
import 'package:swoon/appbar/purple_appbar.dart';
import 'package:swoon/pages/account_page/accountpage.dart';
import 'package:swoon/pages/cart_page/cartpage.dart';
import 'package:swoon/pages/homepage.dart';
import 'package:swoon/pages/People_booking/peoplepage.dart';
import '../colors/colours_list.dart';

//The basic setup and frame for the app. This here sets the backdrop, BottomNav bar etc.
class AppSetup extends StatefulWidget {
  AppSetup({Key? key}) : super(key: key);

  @override
  State<AppSetup> createState() => _AppSetupState();
}

class _AppSetupState extends State<AppSetup> {
  int selectedpage = 1;
  final _pageOptions = [
    //shop for stuff
    HomePage(),
    //book person to wait in lines
    PeoplePage(),

    //shopping cart
    CartPage(),
    //wallet/acc
    Account(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg2,
      drawerEnableOpenDragGesture: false,
      appBar: myRadialBar(context),
      body: _pageOptions[selectedpage],
      bottomNavigationBar: BottomBar(
        backgroundColor: barback,
        height: 90,
        textStyle: TextStyle(fontWeight: FontWeight.bold),
        selectedIndex: selectedpage,
        onTap: (index) {
          setState(() {
            selectedpage =
                index; // changing selected page as per bar index selected by the user
          });
        },
        items: bottomBarIcons,
      ),
    );
  }
}
