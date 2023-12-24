import 'package:checkout_app/Feauters/checkout/presentation/widgets/order_info_item.dart';
import 'package:checkout_app/Feauters/checkout/presentation/widgets/total_price.dart';
import 'package:checkout_app/core/utils/assets_manger.dart';
import 'package:checkout_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'mastercard_logo_widget.dart';
import 'qr_code_and_status.dart';

class ThankYouCard extends StatelessWidget {
  const ThankYouCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 370,
      height: 740,
      decoration: ShapeDecoration(
        color: const Color(0xFFEDEDED),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22),
        child: Column(
          children: [
            const SizedBox(
              height: 66,
            ),
            const Text(
              'Thank you!',
              textAlign: TextAlign.center,
              style: Styles.style25,
            ),
            const SizedBox(
              height: 3,
            ),
            Text(
              'Your transaction was successful',
              textAlign: TextAlign.center,
              style: Styles.style20,
            ),
            const SizedBox(
              height: 42,
            ),
            const OrderInfoItem(title: 'Date', subTitle: '01/24/2023'),
            const SizedBox(height: 20),
            const OrderInfoItem(title: 'Time', subTitle: '10:15 AM'),
            const SizedBox(height: 20),
            const OrderInfoItem(title: 'To', subTitle: 'Sam Louis'),
            const SizedBox(height: 30),
            const Divider(
              thickness: 3,
              endIndent: 10,
              indent: 10,
              color: Color(0xFFC6C6C6),
            ),
            const SizedBox(height: 24),
            const TotalPrice(),
            const SizedBox(height: 30),
            const MasterCardLogoWidget(),
            SizedBox(height: MediaQuery.of(context).size.height * 0.15 + 50),
            const QrCodeAndStatus(),
          ],
        ),
      ),
    );
  }
}
