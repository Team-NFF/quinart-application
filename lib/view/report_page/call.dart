import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart' as url_launcher;
import 'package:slider_button/slider_button.dart';
import 'package:quinart/component/appbar/home_appbar.dart';
import 'package:quinart/component/footer/footer.dart';

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
      body: Center(
        child: SliderButton(
          action: () {
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
          buttonColor: Colors.red,
          label: const Text(
            "スライドで緊急連絡",
            style: TextStyle(
              color: Color(0xff4a4a4a),
              fontWeight: FontWeight.w500,
              fontSize: 17,
            ),
          ),
          icon: const Text(
            "SOS",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w400,
              fontSize: 24,
            ),
          ),
        ),
      ),
      bottomNavigationBar: const HomePageFooter(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFF63a697),
        child: const Icon(Icons.home),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
