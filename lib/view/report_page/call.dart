import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart' as url_launcher;
import 'package:quinart/component/appbar/home_appbar.dart';
import 'package:quinart/component/home_page/drawer/drawer.dart';
import 'package:quinart/component/footer/footer.dart';
import 'package:quinart/component/footer/home_button.dart';
import 'package:quinart/component/slider_button/report_slider.dart';

class ReportScreen extends StatefulWidget {
  const ReportScreen({super.key});

  @override
  ReportScreenState createState() => ReportScreenState();
}

class ReportScreenState extends State<ReportScreen>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animationController;
  bool _isButtonExpanded = false;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
    );
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  Future<void> callPhoneNumber(String phoneNumber) async {
    final Uri uri = Uri.parse('tel:$phoneNumber');
    if (await url_launcher.canLaunchUrl(uri)) {
      await url_launcher.launchUrl(uri);
    } else {
      throw '電話をかけることができません: $phoneNumber';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HomeAppBar(),
      endDrawer: const HomePageDrawer(),
      body: Center(
        child: ReportSliderButton(
          isButtonExpanded: _isButtonExpanded,
          animationController: _animationController,
          onPressed: () {
            setState(() {
              _isButtonExpanded = !_isButtonExpanded;
              if (_isButtonExpanded) {
                _animationController.forward();
              } else {
                _animationController.reverse();
              }
            });
            if (_isButtonExpanded) {
              const phoneNumber = "08088750655";
              callPhoneNumber(phoneNumber);
            } else {
              Navigator.of(context).pop();
            }
          },
        ),
      ),
      bottomNavigationBar: const HomePageFooter(),
      floatingActionButton: const FooterHomeButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
