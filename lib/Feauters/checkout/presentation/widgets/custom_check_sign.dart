
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/utils/assets_manger.dart';

class CustomCheckSign extends StatelessWidget {
  const CustomCheckSign({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 50,
      backgroundColor: const Color(0xFFEDEDED),
      child: CircleAvatar(
          backgroundColor: const Color(0xFF34A853),
          radius: 40,
          child: SvgPicture.asset(AssetsManger.doneSign)),
    );
  }
}
