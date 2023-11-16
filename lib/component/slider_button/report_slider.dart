import 'package:flutter/material.dart';
import 'package:slider_button/slider_button.dart';

class ReportSliderButton extends StatelessWidget {
  final bool isButtonExpanded;
  final AnimationController animationController;
  final Function onPressed;

  const ReportSliderButton({
    Key? key,
    required this.isButtonExpanded,
    required this.animationController,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliderButton(
      action: onPressed,
      buttonColor: Colors.red,
      label: const Text(
        "スライドで緊急連絡",
        style: TextStyle(
          color: Color(0xff555656),
          fontWeight: FontWeight.w500,
          fontSize: 17,
        ),
      ),
      icon: const Text(
        "→",
        style: TextStyle(
          color: Color(0xFFf9faf8),
          fontWeight: FontWeight.bold,
          fontSize: 24,
        ),
      ),
    );
  }
}
