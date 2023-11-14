import 'package:flutter/material.dart';
import 'package:rent_website/constants/app_const.dart';

class MiddleText extends StatelessWidget {
  const MiddleText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width * 0.07),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('ما هي وجهتك المقبله',
              style: Theme.of(context)
                  .textTheme
                  .headlineLarge!
                  .copyWith(color: Colors.white, fontWeight: FontWeight.bold)),
          Text(' ابحث عن اهم العروض المميزه.......',
              style:
                  Theme.of(context).textTheme.headlineLarge!.copyWith(color: Colors.white, fontWeight: FontWeight.bold))
        ],
      ),
    );
  }
}
