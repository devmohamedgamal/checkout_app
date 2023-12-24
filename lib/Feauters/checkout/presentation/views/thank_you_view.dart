import 'package:checkout_app/core/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

import '../widgets/thank_you_view_body.dart';

class ThankYouView extends StatelessWidget {
  const ThankYouView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: "Thank You"),
      body: const ThankYouViewBody(),
    );
  }
}
