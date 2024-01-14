import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:rent_website/constants/app_const.dart';

class AdDescriptionCard extends StatelessWidget {
  const AdDescriptionCard({Key? key}) : super(key: key);

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
          const Text(
            'الوصف',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700, color: Color(0xff27273F)),
          ),
          Gap(height * 0.02),
          const Text(
            'الشقه مكونة من ثلاث غرف كل غرفه سريرين تستحمل 6 افراد ومفروشه بالكامل وقريبه من جامعة اكتوبر وعلي قرب من الحصر الشقه موجوده يحي تاني المجاوره الاولى بارخص سعر ',
            style: TextStyle(fontSize: 18, color: Color(0xff27273F)),
          ),
        ],
      ),
    );
  }
}
