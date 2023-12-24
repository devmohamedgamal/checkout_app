import 'package:flutter/material.dart';
import 'custom_check_sign.dart';
import 'custom_dashed_line.dart';
import 'thank_you_card.dart';

class ThankYouViewBody extends StatelessWidget {
  const ThankYouViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              const ThankYouCard(),
              const Positioned(
                top: -50,
                left: 0,
                right: 0,
                child: CustomCheckSign(),
              ),
              Positioned(
                bottom: MediaQuery.of(context).size.height * 0.15,
                left: -20,
                child: const CircleAvatar(
                  backgroundColor: Colors.white,
                ),
              ),
              Positioned(
                bottom: MediaQuery.of(context).size.height * 0.15,
                right: -20,
                child: const CircleAvatar(
                  backgroundColor: Colors.white,
                ),
              ),
              Positioned(
                  bottom: MediaQuery.of(context).size.height * 0.15 + 20,
                  left: 22,
                  right: 22,
                  child: const CustomDashedLine()),
            ],
          ),
        ),
      ],
    );
  }
}
