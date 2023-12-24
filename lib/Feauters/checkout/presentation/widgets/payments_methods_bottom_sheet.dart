import 'package:flutter/material.dart';

import '../../../../core/widgets/custom_btn.dart';
import 'payments_methods_list_view.dart';

class PaymentsMethodsBottomSheet extends StatelessWidget {
  const PaymentsMethodsBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          PaymentsMethodsListView(),
          SizedBox(
            height: 32,
          ),
          CustomBtn(text: 'Complete'),
        ],
      ),
    );
  }
}
