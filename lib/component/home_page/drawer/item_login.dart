import 'package:flutter/material.dart';
import 'package:quinart/view/login_page/login.dart';

class LoginDrawerItem extends StatelessWidget {
  const LoginDrawerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.login, color: Color(0xFFf9faf8)),
      title: const Text(
        'ログイン',
        style: TextStyle(
          fontSize: 18,
          color: Color(0xFFf9faf8),
        ),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const LoginPage()),
        );
      },
    );
  }
}
