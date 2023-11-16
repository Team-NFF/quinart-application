import 'package:flutter/material.dart';

class FooterHomeButton extends StatelessWidget {
  const FooterHomeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: const Color(0xFF63a697),
      child: const Icon(Icons.home),
      onPressed: () {},
    );
  }
}
