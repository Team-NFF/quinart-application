import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xFFf9faf8),
      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image.asset(
          'lib/assets/images/icon/only_rail-clear.png',
          width: 20,
          height: 20,
        ),
      ),
      actions: [
        IconButton(
          icon: const Icon(
            Icons.article,
            color: Color(0xFF53a697),
            size: 35,
          ),
          onPressed: () {
            Scaffold.of(context).openEndDrawer();
          },
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
