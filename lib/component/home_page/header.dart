import 'package:flutter/material.dart';

class HomePageHeader extends StatelessWidget {
  const HomePageHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: Image.asset(
        'lib/assets/images/background/yanbaru_nature.JPG',
        fit: BoxFit.fitWidth,
      ),
    );
  }
}
