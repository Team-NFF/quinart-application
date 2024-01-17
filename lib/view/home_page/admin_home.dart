import 'package:flutter/material.dart';
import 'package:quinart/component/home_page/drawer/drawer.dart';
import 'package:quinart/component/home_page/header/admin_header.dart';
import 'package:quinart/component/appbar/home_appbar.dart';
import 'package:quinart/component/home_page/main_button/health_check.dart';
import 'package:quinart/component/home_page/main_button/map.dart';
import 'package:quinart/component/home_page/main_button/call.dart';
import 'package:quinart/component/divider/green_divider.dart';
import 'package:quinart/component/footer/admin_footer.dart';

class AdminHomeScreen extends StatelessWidget {
  const AdminHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HomeAppBar(),
      endDrawer: const HomePageDrawer(),
      body: const Stack(
        children: [
          HomePageAdminHeader(),
          MapButton(
            top: 235,
            left: 20,
            right: 240,
          ),
          HealthCheckButton(
            top: 235,
            left: 130,
            right: 130,
          ),
          CallButton(
            top: 235,
            left: 240,
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
      bottomNavigationBar: const HomePageAdminFooter(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFF63a697),
        child: const Icon(
          Icons.home,
          color: Color(0xFFf9faf8),
        ),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
