import 'package:flutter/material.dart';
import 'package:rent_website/constants/app_const.dart';

import '../../../../constants/app_colors.dart';

class MobileAdCarousel extends StatelessWidget {
  const MobileAdCarousel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height * 0.25,
      decoration: BoxDecoration(
          color: Colors.black, borderRadius: BorderRadius.circular(16), border: Border.all(color: AppColors.grey)),
    );
  }
}
