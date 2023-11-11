import 'package:flutter/material.dart';

class HomePageDrawerHeader extends StatelessWidget {
  const HomePageDrawerHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      decoration: const BoxDecoration(
        color: Color(0xFF53a697),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: InkWell(
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                color: const Color(0xFF408074),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: const Color(0xFFf9faf8)),
              ),
              child: const Text(
                'マイページ',
                style: TextStyle(
                  fontSize: 18,
                  color: Color(0xFFf9faf8),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
