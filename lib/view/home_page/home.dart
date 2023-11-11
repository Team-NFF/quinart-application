import 'package:flutter/material.dart';
import 'package:quinart/component/home_page/drawer/drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFf9faf8),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            'lib/assets/images/icon/only_rail-clear.png',
            width: 20,
            height: 20,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.menu,
              color: Color(0xFF53a697),
            ),
            onPressed: () {
              Scaffold.of(context).openEndDrawer();
            },
          ),
        ],
      ),
      endDrawer: const HomePageDrawer(),
    );
  }
}
