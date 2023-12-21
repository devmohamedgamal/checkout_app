import 'package:flutter/material.dart';
import 'custom_credit_card.dart';
import 'payments_methods_list_view.dart';

class PaymentDetailsViewBody extends StatelessWidget {
  const PaymentDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            PaymentsMethodsListView(),
            SizedBox(
              height: 30,
            ),
            CustomCreditCard(),
          ],
        ),
      ),
    );
  }
}
