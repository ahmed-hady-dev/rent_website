import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:rent_website/constants/app_const.dart';

import '../../../../constants/app_colors.dart';

class MobileUserDataCard extends StatelessWidget {
  const MobileUserDataCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      margin: EdgeInsets.symmetric(horizontal: hPaddingMobile, vertical: height * 0.015),
      padding: EdgeInsets.symmetric(vertical: height * 0.02, horizontal: width * 0.02),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: const Color(0xffCBD4E6)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text('noor elden', style: TextStyle(fontSize: 18, color: Color(0xff27273F))),
          Gap(height * 0.02),
          const Text('عضو منذ شهرين', style: TextStyle(fontSize: 14, color: Color(0xff6E7491))),
          Gap(height * 0.02),
          Directionality(
            textDirection: TextDirection.ltr,
            child: TextButton.icon(
              style: TextButton.styleFrom(
                foregroundColor: AppColors.purpleDark,
              ),
              onPressed: () {},
              icon: const Icon(Icons.arrow_back_rounded),
              label: const Text(
                'عرض المزيد',
                style: TextStyle(fontSize: 14),
              ),
            ),
          ),
          Gap(height * 0.02),
          Row(
            children: <Widget>[
              Gap(width * 0.01),
              Expanded(
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        backgroundColor: AppColors.purpleBlue,
                        padding: const EdgeInsets.symmetric(vertical: 24)),
                    child: const Text(
                      'عرض رقم الهاتف',
                      style: TextStyle(fontSize: 18),
                    )),
              ),
              Gap(width * 0.03),
              Expanded(
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        backgroundColor: AppColors.purpleBlue,
                        padding: const EdgeInsets.symmetric(vertical: 24)),
                    child: const Text(
                      'طلب زيارة',
                      style: TextStyle(fontSize: 18),
                    )),
              ),
              Gap(width * 0.01),
            ],
          ),
        ],
      ),
    );
  }
}
