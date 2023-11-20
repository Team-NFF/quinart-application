import 'package:flutter/material.dart';
import 'package:quinart/component/home_page/drawer/drawer_header.dart';
import 'package:quinart/component/home_page/drawer/item_home.dart';
import 'package:quinart/component/home_page/drawer/item_logout.dart';
// import 'package:quinart/component/home_page/drawer/item_login.dart';
import 'package:quinart/component/divider/white_divider.dart';

class HomePageDrawer extends StatelessWidget {
  const HomePageDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: const Color(0xFF53a697),
        child: ListView(
          children: const <Widget>[
            HomePageDrawerHeader(),
            HomeDrawerItem(),
            WhiteDivider(),
            // LoginDrawerItem(),
            LogoutDrawerItem(),
          ],
        ),
      ),
    );
  }
}
