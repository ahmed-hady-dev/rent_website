import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:rent_website/constants/app_const.dart';

import '../../../../constants/app_colors.dart';
import '../../../home/component/like_button.dart';

class AdDataCard extends StatelessWidget {
  const AdDataCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      padding: EdgeInsets.symmetric(vertical: height * 0.02, horizontal: width * 0.01),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: const Color(0xffCBD4E6)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              const Row(
                children: <Widget>[
                  Text(
                    '1200',
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700, color: AppColors.purpleDark),
                  ),
                  Text(
                    ' ج.م',
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700, color: AppColors.purpleDark),
                  ),
                ],
              ),
              LikeButton(onPressed: () {}),
            ],
          ),
          Gap(height * 0.02),
          Text(
            'الشقه حي تاني المجاوره الاولى بارخص سعر ' * 3,
            style: const TextStyle(fontSize: 18, color: Color(0xff27273F)),
          ),
          Gap(height * 0.04),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Icon(
                    Icons.place,
                    color: Colors.black,
                  ),
                  Text(
                    'حي تاني, اكتوبر, الجيزة',
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  )
                ],
              ),
              Text('منذ ساعتين', style: TextStyle(fontSize: 12))
            ],
          )
        ],
      ),
    );
  }
}
