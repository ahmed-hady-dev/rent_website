import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_const.dart';

class MobileFooter extends StatelessWidget {
  const MobileFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width * 0.04, vertical: height * 0.04),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(
                AppConst.appName,
                style: TextStyle(
                  fontSize: 36,
                  color: AppColors.purpleDark,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Gap(height * 0.03),
              const Row(
                children: <Widget>[
                  Text(
                    'تلفون للتواصل معانا: ',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xff7C8DB0),
                    ),
                  ),
                  Text(
                    '01282917123',
                    style: TextStyle(
                      fontSize: 14,
                      color: AppColors.purpleDark,
                    ),
                  ),
                ],
              ),
              const Gap(12),
              const Text(
                'nelbadwy03@gmail.com',
                style: TextStyle(fontSize: 14, color: AppColors.purpleDark),
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const Text(
                'مناطق',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Gap(height * 0.03),
              const Text(
                'اكتوبر',
                style: TextStyle(fontSize: 18, color: Color(0xff7C8DB0)),
              ),
              Gap(height * 0.03),
              const Text(
                'الشيخ زايد',
                style: TextStyle(fontSize: 18, color: Color(0xff7C8DB0)),
              )
            ],
          ),
        ],
      ),
    );
  }
}
