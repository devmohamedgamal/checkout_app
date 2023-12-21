import 'package:flutter/material.dart';
import 'payments_methods_list_view.dart';

class PaymentDetailsViewBody extends StatelessWidget {
  const PaymentDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          PaymentsMethodsListView(),
        ],
      ),
    );
  }
}
