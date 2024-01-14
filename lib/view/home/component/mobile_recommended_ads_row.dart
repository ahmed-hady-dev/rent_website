import 'package:flutter/material.dart';
import 'package:rent_website/constants/app_const.dart';

import '../../../constants/app_colors.dart';

class MobileRecommendedAdsRow extends StatelessWidget {
  const MobileRecommendedAdsRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: hPaddingWeb, left: width * 0.02),
      child: Row(
        children: <Widget>[
          const Text('مقترحات', style: TextStyle(color: Color(0xff6E7491), fontSize: 14)),
          const Spacer(),
          Directionality(
            textDirection: TextDirection.ltr,
            child: TextButton.icon(
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_back_rounded,
                color: AppColors.purpleDark,
                size: 32.0,
              ),
              label: const Text(
                'عرض المزيد',
                style: TextStyle(
                  color: AppColors.purpleDark,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
