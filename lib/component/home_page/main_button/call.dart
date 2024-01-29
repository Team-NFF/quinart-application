import 'package:flutter/material.dart';
import 'package:quinart/view/report_page/call.dart';

class CallButton extends StatelessWidget {
  final double top;
  final double left;
  final double right;

  const CallButton({
    super.key,
    required this.top,
    required this.left,
    required this.right,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: left,
      right: right,
      child: Center(
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ReportScreen()),
            );
          },
          child: Container(
            width: 100,
            height: 100,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 3,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: const SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.call,
                    color: Color(0xFF004d00),
                    size: 48,
                  ),
                  Text(
                    '緊急通報',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
