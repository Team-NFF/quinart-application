import 'package:flutter/material.dart';

class GreenDivider extends StatelessWidget {
  const GreenDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      color: const Color(0xFF63a697),
      height: 3,
    );
  }
}
