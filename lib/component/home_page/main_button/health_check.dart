import 'package:flutter/material.dart';

class HealthCheckButton extends StatelessWidget {
  const HealthCheckButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 220,
      left: 20,
      right: 20,
      child: Center(
        child: InkWell(
          onTap: () {},
          child: Container(
            width: 100,
            height: 100,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: const Color(0xFFf9faf8),
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
                    Icons.health_and_safety,
                    color: Color(0xFF004d00),
                    size: 48,
                  ),
                  Text(
                    '健康状態',
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
