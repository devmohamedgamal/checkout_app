import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/utils/assets_manger.dart';
import '../../../../core/utils/styles.dart';

class QrCodeAndStatus extends StatelessWidget {
  const QrCodeAndStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(AssetsManger.qrCode),
        const SizedBox(
          width: 50,
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 29, vertical: 14),
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              side: const BorderSide(width: 1.50, color: Color(0xFF34A853)),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          child: Text(
            'PAID',
            textAlign: TextAlign.center,
            style: Styles.style24.copyWith(
              color: const Color(0xFF34A853),
            ),
          ),
        )
      ],
    );
  }
}
