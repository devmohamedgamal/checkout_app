import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomPaymentsContainer extends StatelessWidget {
  const CustomPaymentsContainer(
      {super.key, required this.image, this.isActive = false});
  final String image;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      width: 103,
      height: 62,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: BorderSide(
              width: 1.50,
              color: isActive ? const Color(0xFF34A853) : Colors.grey),
          borderRadius: BorderRadius.circular(15),
        ),
        shadows: [
          BoxShadow(
            color: isActive ? const Color(0xFF34A853) : Colors.white,
            blurRadius: 4,
            offset: const Offset(0, 0),
            spreadRadius: 0,
          ),
        ],
      ),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15), color: Colors.white),
        child: Center(
          child: SvgPicture.asset(
            image,
            width: 60,
          ),
        ),
      ),
    );
  }
}
