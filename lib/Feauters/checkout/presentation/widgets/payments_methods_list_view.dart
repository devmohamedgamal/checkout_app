import 'package:flutter/material.dart';

import '../../../../core/utils/assets_manger.dart';
import 'custom_payments_container.dart';

class PaymentsMethodsListView extends StatefulWidget {
  const PaymentsMethodsListView({super.key});

  @override
  State<PaymentsMethodsListView> createState() =>
      _PaymentsMethodsListViewState();
}

class _PaymentsMethodsListViewState extends State<PaymentsMethodsListView> {
  final List<String> paymentsMethodsList = const [
    AssetsManger.card,
    AssetsManger.paypal,
    AssetsManger.applePay,
  ];

  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ListView.builder(
        itemCount: paymentsMethodsList.length,
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, i) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: GestureDetector(
              onTap: () {
                activeIndex = i;
                setState(() {});
              },
              child: CustomPaymentsContainer(
                image: paymentsMethodsList[i],
                isActive: activeIndex == i ? true : false,
              ),
            ),
          );
        },
      ),
    );
  }
}
