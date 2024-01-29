import 'package:flutter/material.dart';
import '../../view/account_page/account_page.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF555656).withOpacity(0.1),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: AppBar(
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
              Icons.person,
              color: Color(0xFF53a697),
              size: 40,
            ),
            onPressed: () {
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const MyPage()),
            );
            },
          ),
          const SizedBox(width: 8),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
