import 'package:flutter/material.dart';
import 'package:quinart/component/home_page/drawer/drawer.dart';
import 'package:quinart/component/home_page/header.dart';
import 'package:quinart/component/appbar/home_appbar.dart';
import 'package:quinart/component/home_page/main_button/health_check.dart';
import 'package:quinart/component/home_page/main_button/map.dart';
import 'package:quinart/component/divider/green_divider.dart';
import 'package:quinart/component/footer/footer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HomeAppBar(),
      endDrawer: const HomePageDrawer(),
      body: const Stack(
        children: [
          HomePageHeader(),
          MapButton(),
          HealthCheckButton(),
          Positioned(
            top: 335,
            left: 0,
            right: 0,
            child: GreenDivider(),
          ),
        ],
      ),
      bottomNavigationBar: const HomePageFooter(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFF63a697),
        child: const Icon(Icons.home),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
