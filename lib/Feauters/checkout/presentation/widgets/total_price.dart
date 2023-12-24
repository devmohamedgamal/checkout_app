import 'package:flutter/material.dart';

import '../../../../core/utils/styles.dart';

class TotalPrice extends StatelessWidget {
  const TotalPrice({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
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
    );
  }
}
