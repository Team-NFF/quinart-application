import 'package:flutter/material.dart';

class HomePageAdminHeader extends StatelessWidget {
  const HomePageAdminHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: Image.asset(
            'lib/assets/images/background/yanbaru_nature.JPG',
            fit: BoxFit.fitWidth,
          ),
        ),
        Positioned(
          top: 140,
          left: 10,
          right: 150,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.5),
              borderRadius: BorderRadius.circular(8),
            ),
            padding: const EdgeInsets.all(8),
            child: const Column(
              children: [
                Text(
                  "クイナート 管理者" " 様",
                  style: TextStyle(
                    color: Color(0xFFf9faf8),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "ユーザID: A-00000917",
                  style: TextStyle(
                    color: Color(0xFFf9faf8),
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
