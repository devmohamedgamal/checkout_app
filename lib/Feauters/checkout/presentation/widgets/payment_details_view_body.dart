import 'dart:developer';

import 'package:checkout_app/core/utils/app_router.dart';
import 'package:checkout_app/core/widgets/custom_btn.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'custom_credit_card.dart';
import 'payments_methods_list_view.dart';

class PaymentDetailsViewBody extends StatefulWidget {
  const PaymentDetailsViewBody({super.key});

  @override
  State<PaymentDetailsViewBody> createState() => _PaymentDetailsViewBodyState();
}

class _PaymentDetailsViewBodyState extends State<PaymentDetailsViewBody> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode? autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 30),
              child: PaymentsMethodsListView(),
            ),
          ),
          SliverToBoxAdapter(
            child: CustomCreditCard(
              formKey: formKey,
              autovalidateMode: autovalidateMode,
            ),
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: CustomBtn(
                  text: 'Pay',
                  onTap: () {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                      log("payment done");
                    } else {
                      autovalidateMode = AutovalidateMode.always;
                      setState(() {});
                      context.push(AppRouter.kThankYouView);
                    }
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
