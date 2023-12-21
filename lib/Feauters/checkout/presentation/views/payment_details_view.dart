import 'package:checkout_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/utils/assets_manger.dart';
import '../widgets/payment_details_view_body.dart';

class PaymentDetailsView extends StatelessWidget {
  const PaymentDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Center(
          child: SvgPicture.asset(AssetsManger.arrowBack),
        ),
        title: const Text(
          'Payment Details',
          textAlign: TextAlign.center,
          style: Styles.style25,
        ),
      ),
      body: const PaymentDetailsViewBody(),
    );
  }
}
