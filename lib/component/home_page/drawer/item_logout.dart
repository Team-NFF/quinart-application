import 'package:flutter/material.dart';

class LogoutDrawerItem extends StatelessWidget {
  const LogoutDrawerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.logout, color: Color(0xFFf9faf8)),
      title: const Text(
        'ログアウト',
        style: TextStyle(
          fontSize: 18,
          color: Color(0xFFf9faf8),
        ),
      ),
      onTap: () {},
    );
  }
}
