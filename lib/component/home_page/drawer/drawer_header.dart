import 'package:flutter/material.dart';

class HomePageDrawerHeader extends StatelessWidget {
  const HomePageDrawerHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      decoration: const BoxDecoration(
        color: Color(0xFF53a697),
      ),
      child: Stack(
        children: [
          Positioned.fill(
            child: Center(
              child: Container(
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: const Color(0xFF408074),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: const Color(0xFFf9faf8)),
                ),
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.account_circle, color: Colors.white, size: 40),
                    SizedBox(width: 10),
                    Text(
                      'マイページ',
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(0xFFf9faf8),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
