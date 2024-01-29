import 'package:flutter/material.dart';
import 'package:quinart/component/appbar/home_appbar.dart';
import 'package:quinart/component/footer/admin_footer.dart';
import 'package:quinart/component/footer/home_button.dart';

class RailsBasicInfo extends StatelessWidget {
  const RailsBasicInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HealthCheck1Screen(),
    );
  }
}

class HealthCheck1Screen extends StatelessWidget {
  const HealthCheck1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HomeAppBar(),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: DataTable(
                columns: const [
                  DataColumn(
                    label: Text(
                      '項目',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      '内容',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
                rows: const [
                  DataRow(
                    cells: [
                      DataCell(Text('健康状態')),
                      DataCell(Text('健康')),
                    ],
                  ),
                  DataRow(
                    cells: [
                      DataCell(Text('性別')),
                      DataCell(Text('オス')),
                    ],
                  ),
                  DataRow(
                    cells: [
                      DataCell(Text('総移動距離')),
                      DataCell(Text('約917m')),
                    ],
                  ),
                  DataRow(
                    cells: [
                      DataCell(Text('睡眠時間')),
                      DataCell(Text('5時間')),
                    ],
                  ),
                  DataRow(
                    cells: [
                      DataCell(Text('持病')),
                      DataCell(Text('なし')),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const HomePageAdminFooter(),
      floatingActionButton: const FooterHomeButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
