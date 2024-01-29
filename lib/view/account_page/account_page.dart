import 'package:flutter/material.dart';

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'マイページ',
          style: TextStyle(color: Color(0xFF555656)),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            Row(
              children: [
                const SizedBox(width: 18),
                IconButton(
                  onPressed: (){},
                  icon: const Icon(Icons.person)
                ),
              ],
            ),
            const Text(
              'クイナート 管理者',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            const Text('A-00000917'),
            const SizedBox(height: 12),
            Row(
              children: [
                Expanded(
                  child: Row(
                    children:[
                      Expanded(
                        child: OutlinedButton(
                          onPressed: (){},
                          style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            )
                          ),
                          child: const Text(
                            'プロフィール編集',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            )
                          ),
                        ),
                      ),
                      const SizedBox(width: 4),
                      Expanded(
                        child: OutlinedButton(
                          onPressed: (){},
                          style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            )
                          ),
                          child: const Text(
                            'メッセージ',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            )
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 4),
                OutlinedButton(
                  onPressed: (){},
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    )
                  ),
                  child: const Icon(
                    Icons.keyboard_arrow_down,
                    color: Color(0xFF555656),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}