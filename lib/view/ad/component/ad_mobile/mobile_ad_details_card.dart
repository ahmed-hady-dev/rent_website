import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:rent_website/constants/app_const.dart';

class MobileAdDetailsCard extends StatelessWidget {
  const MobileAdDetailsCard({Key? key}) : super(key: key);

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
        children: [
          const Text(
            'التفاصيل',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700, color: Color(0xff27273F)),
          ),
          Gap(height * 0.02),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
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
              Column(
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
