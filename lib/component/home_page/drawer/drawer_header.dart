import 'package:flutter/material.dart';

class HomePageDrawerHeader extends StatelessWidget {
  const HomePageDrawerHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      decoration: const BoxDecoration(
        color: Color(0xFF53a697),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Icon(
            Icons.account_circle,
            color: Color(0xFFf9faf8),
            size: 60,
          ),
          const SizedBox(height: 8),
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(32),
              border: Border.all(
                color: const Color(0xFFf9faf8),
              ),
              color: const Color(0xFF555656).withOpacity(0.5),
            ),
            child: const Text(
              ' マイページ ',
              style: TextStyle(
                fontSize: 18,
                color: Color(0xFFf9faf8),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
