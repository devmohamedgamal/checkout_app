
import 'package:flutter/material.dart';

class CustomDashedLine extends StatelessWidget {
  const CustomDashedLine({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
          20,
          (index) => Expanded(
                child: Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 4),
                  color: const Color(0xFFB7B7B7),
                  height: 2,
                ),
              )),
    );
  }
}
