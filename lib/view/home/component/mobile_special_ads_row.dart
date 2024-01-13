import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:rent_website/constants/app_const.dart';

import '../../../constants/app_colors.dart';

class MobileSpecialAdsRow extends StatelessWidget {
  const MobileSpecialAdsRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: width * 0.07, left: width * 0.02),
      child: Row(
        children: <Widget>[
          const Text('اعلانات مميزه', style: TextStyle(color: Color(0xff6E7491), fontSize: 14)),
          Gap(width * 0.005),
          Image.asset('assets/images/fire.png', height: 24, width: 24),
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
