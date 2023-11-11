import 'package:flutter/material.dart';
import 'package:quinart/view/home_page/home.dart';

class HomeDrawerItem extends StatelessWidget {
  const HomeDrawerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
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
    );
  }
}
