import 'package:flutter/material.dart';
import 'package:quinart/component/home_page/header/header.dart';
import 'package:quinart/component/appbar/home_appbar.dart';
import 'package:quinart/component/home_page/main_button/map.dart';
import 'package:quinart/component/home_page/main_button/call.dart';
import 'package:quinart/component/divider/green_divider.dart';
import 'package:quinart/component/footer/footer.dart';
import 'package:quinart/component/footer/home_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: HomeAppBar(),
      body: Stack(
        children: [
          HomePageHeader(),
          MapButton(
            top: 235,
            left: 20,
            right: 170,
          ),
          CallButton(
            top: 235,
            left: 170,
            right: 20,
          ),
          Positioned(
            top: 345,
            left: 0,
            right: 0,
            child: GreenDivider(),
          ),
        ],
      ),
      bottomNavigationBar: HomePageFooter(),
      floatingActionButton: FooterHomeButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
