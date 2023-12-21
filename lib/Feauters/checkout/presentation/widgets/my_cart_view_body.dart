import 'package:checkout_app/core/utils/app_router.dart';
import 'package:checkout_app/core/utils/assets_manger.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/utils/styles.dart';
import '../../../../core/widgets/custom_btn.dart';
import 'order_info_item.dart';

class MyCartViewBody extends StatelessWidget {
  const MyCartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Expanded(
            child: Image.asset(
              AssetsManger.cartItems,
              // height: MediaQuery.of(context).size.height * 0.6,
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          const OrderInfoItem(title: 'Order Subtotal', subTitle: '\$42.97'),
          const SizedBox(height: 3),
          const OrderInfoItem(title: 'Discount', subTitle: '\$0'),
          const SizedBox(height: 3),
          const OrderInfoItem(title: 'Shipping', subTitle: '\$8'),
          const SizedBox(height: 17),
          const Divider(
            thickness: 3,
            endIndent: 10,
            indent: 10,
            color: Color(0xFFC6C6C6),
          ),
          const SizedBox(height: 16),
          const Row(
            children: [
              Text(
                'Total',
                textAlign: TextAlign.center,
                style: Styles.style24,
              ),
              Spacer(),
              Text(
                '\$50.97',
                textAlign: TextAlign.center,
                style: Styles.style24,
              ),
            ],
          ),
          const SizedBox(height: 16),
          CustomBtn(
            text: 'Complete Payment',
            onTap: () {
              context.push(AppRouter.kPaymentDetailsView);
            },
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
