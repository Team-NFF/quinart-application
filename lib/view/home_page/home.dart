import 'package:flutter/material.dart';
import 'package:quinart/component/home_page/drawer/drawer.dart';
import 'package:quinart/component/home_page/header.dart';
import 'package:quinart/component/appbar/home_appbar.dart';
import 'package:quinart/component/home_page/main_button/health_check.dart';
import 'package:quinart/component/divider/green_divider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: HomeAppBar(),
      endDrawer: HomePageDrawer(),
      body: Stack(
        children: [
          HomePageHeader(),
          HealthCheckButton(),
          Positioned(
            top: 330,
            left: 0,
            right: 0,
            child: GreenDivider(),
          ),
        ],
      ),
    );
  }
}
