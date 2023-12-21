import 'package:flutter/material.dart';

import '../utils/styles.dart';

class CustomBtn extends StatelessWidget {
  const CustomBtn({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 73,
      decoration: ShapeDecoration(
        color: const Color(0xFF34A853),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      child: Center(
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: Styles.style22,
        ),
      ),
    );
  }
}
