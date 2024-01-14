import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:rent_website/constants/app_const.dart';

class AdDetailsCard extends StatelessWidget {
  const AdDetailsCard({Key? key}) : super(key: key);

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
            'التفاصيل',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700, color: Color(0xff27273F)),
          ),
          Gap(height * 0.02),
          Row(
            children: <Widget>[
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('المكان', style: TextStyle(fontSize: 16, color: Color(0xff27273F))),
                  Gap(12),
                  Text('نوع السكن', style: TextStyle(fontSize: 16, color: Color(0xff27273F))),
                  Gap(12),
                  Text('محتوى السكن', style: TextStyle(fontSize: 16, color: Color(0xff27273F))),
                  Gap(12),
                  Text('السعر', style: TextStyle(fontSize: 16, color: Color(0xff27273F))),
                ],
              ),
              Gap(width * 0.04),
              const Column(
                children: <Widget>[
                  Text('احياء اكتوبر', style: TextStyle(fontSize: 16, color: Color(0xff27273F))),
                  Gap(12),
                  Text('سكن شباب', style: TextStyle(fontSize: 16, color: Color(0xff27273F))),
                  Gap(12),
                  Text('شقه ', style: TextStyle(fontSize: 16, color: Color(0xff27273F))),
                  Gap(12),
                  Text('3000-1000', style: TextStyle(fontSize: 16, color: Color(0xff27273F))),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
