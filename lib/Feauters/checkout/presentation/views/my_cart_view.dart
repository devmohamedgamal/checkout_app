import 'package:checkout_app/Feauters/checkout/presentation/widgets/my_cart_view_body.dart';
import 'package:checkout_app/core/utils/assets_manger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/utils/styles.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Center(
          child: SvgPicture.asset(AssetsManger.arrowBack),
        ),
        title: const Text(
          'My Cart',
          style: Styles.style25,
        ),
        centerTitle: true,
      ),
      body: const MyCartViewBody(),
    );
  }
}
