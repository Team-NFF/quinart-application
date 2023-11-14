import 'package:flutter/material.dart';

class HomePageAdminFooter extends StatelessWidget {
  const HomePageAdminFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return const BottomAppBar(
      child: SizedBox(
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(
                    Icons.map,
                    color: Color(0xFF979999),
                  ),
                  onPressed: null,
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(
                    Icons.health_and_safety,
                    color: Color(0xFF979999),
                  ),
                  onPressed: null,
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(
                    Icons.call,
                    color: Colors.white,
                  ),
                  onPressed: null,
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(
                    Icons.home,
                    color: Color(0xFF979999),
                  ),
                  onPressed: null,
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(
                    Icons.assignment_turned_in,
                    color: Color(0xFF979999),
                  ),
                  onPressed: null,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
