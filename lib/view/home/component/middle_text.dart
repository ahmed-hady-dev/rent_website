import 'package:flutter/material.dart';
import 'package:rent_website/constants/app_const.dart';

class MiddleText extends StatelessWidget {
  const MiddleText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width * 0.07),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('ما هي وجهتك المقبله', style: TextStyle(fontSize: 40, color: Colors.white, fontWeight: FontWeight.w700)),
          Text(' ابحث عن اهم العروض المميزه.......',
              style: TextStyle(fontSize: 40, color: Colors.white, fontWeight: FontWeight.w700))
        ],
      ),
    );
  }
}
