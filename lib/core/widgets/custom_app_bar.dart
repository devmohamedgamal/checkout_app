import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utils/assets_manger.dart';
import '../utils/styles.dart';

AppBar buildAppBar({required String title}) {
    return AppBar(
      leading: Center(
        child: SvgPicture.asset(AssetsManger.arrowBack),
      ),
      title: Text(
        title,
        style: Styles.style25,
      ),
      centerTitle: true,
    );
  }