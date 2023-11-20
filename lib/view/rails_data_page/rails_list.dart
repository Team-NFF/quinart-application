import 'package:flutter/material.dart';
import 'package:quinart/component/appbar/home_appbar.dart';
import 'package:quinart/component/home_page/drawer/drawer.dart';
import 'package:quinart/component/footer/admin_footer.dart';
import 'package:quinart/component/footer/home_button.dart';
import 'basic_info.dart';

class RailsList extends StatelessWidget {
  const RailsList({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HealthCheckScreen(),
    );
  }
}

class HealthCheckScreen extends StatelessWidget {
  HealthCheckScreen({super.key});

  final List<String> kuinaPageTitles = [
    'クイナ1',
    'クイナ2',
    'クイナ3',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HomeAppBar(),
      endDrawer: const HomePageDrawer(),
      body: ListView.builder(
        itemCount: kuinaPageTitles.length,
        itemBuilder: (context, index) {
          final kuinaPageTitle = kuinaPageTitles[index];
          return ListTile(
            title: Text(kuinaPageTitle),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => _getKuinaPage(index + 1),
                ),
              );
            },
          );
        },
      ),
      bottomNavigationBar: const HomePageAdminFooter(),
      floatingActionButton: const FooterHomeButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  Widget _getKuinaPage(int pageNumber) {
    switch (pageNumber) {
      case 1:
        return const RailsBasicInfo();
      default:
        return Container();
    }
  }
}
