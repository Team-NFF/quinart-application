import 'package:flutter/material.dart';
import 'package:quinart/view/home_page/home.dart';
import 'package:quinart/component/home_page/drawer/drawer_header.dart';

class HomePageDrawer extends StatelessWidget {
  const HomePageDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: const Color(0xFF53a697),
        child: ListView(
          children: <Widget>[
            const HomePageDrawerHeader(),
            ListTile(
              leading: const Icon(Icons.home, color: Color(0xFFf9faf8)),
              title: const Text(
                'ホーム',
                style: TextStyle(
                  fontSize: 18,
                  color: Color(0xFFf9faf8),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()),
                );
              },
            ),
            ListTile(
              title: const Text(
                'Item 2',
                style: TextStyle(
                  fontSize: 18,
                  color: Color(0xFFf9faf8),
                ),
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
