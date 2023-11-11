import 'package:flutter/material.dart';

class WhiteDivider extends StatelessWidget {
  const WhiteDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      height: 1,
      color: const Color(0xFFf9faf8),
    );
  }
}
