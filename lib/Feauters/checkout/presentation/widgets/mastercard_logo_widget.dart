import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/utils/assets_manger.dart';
import '../../../../core/utils/styles.dart';

class MasterCardLogoWidget extends StatelessWidget {
  const MasterCardLogoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 23, vertical: 16),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      child: Row(
        children: [
          SvgPicture.asset(AssetsManger.masterCardLogo),
          const SizedBox(width: 24),
          Text.rich(
            TextSpan(
              children: [
                const TextSpan(
                  text: 'Credit Card ',
                  style: Styles.style18,
                ),
                TextSpan(
                  text: 'Mastercard **78 ',
                  style: Styles.style16,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
