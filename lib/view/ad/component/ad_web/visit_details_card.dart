import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:rent_website/constants/app_const.dart';

class VisitDetailsCard extends StatelessWidget {
  const VisitDetailsCard({
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
        children: <Widget>[
          const Text('طلب الزيارة هو:', style: TextStyle(fontSize: 18, color: Color(0xff27273F))),
          Gap(height * 0.01),
          const Text(
              'مسولين من الموقع يقومون بزيارة العقار مقابل 100ج.م وارسال لك صولر العقار علي الواتس اب وارسال كل التفاصيل لك حتى تتاكد من كل شى في العقار',
              style: TextStyle(fontSize: 18, color: Colors.black)),
        ],
      ),
    );
  }
}
