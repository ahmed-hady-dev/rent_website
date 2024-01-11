import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:rent_website/constants/app_const.dart';

import '../../../components/text_with_padding.dart';

class MobileTopSection extends StatelessWidget {
  const MobileTopSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Stack(
          children: [
            Image.asset(
              'assets/images/home_header_mobile.png',
              height: height * 0.25,
              width: width,
              fit: BoxFit.cover,
            ),
            Opacity(
              opacity: 0.5,
              child: Container(
                color: Colors.black,
                width: width,
                height: height * 0.25,
              ),
            ),
          ],
        ),
        Positioned(
          bottom: 0,
          top: 0,
          left: 0,
          right: 0,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: width * 0.04, right: width * 0.04, top: height * 0.02),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    TextWithPadding(
                      text: AppConst.appName,
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium!
                          .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            'اعرض عقارك هنا',
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                        ),
                        Gap(width * 0.005),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.account_circle_outlined,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 0,
          top: 0,
          left: 0,
          right: 0,
          child: Padding(
            padding: EdgeInsets.only(left: width * 0.04, right: width * 0.04, top: height * 0.02),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('ما هي وجهتك المقبله',
                    style: TextStyle(fontSize: 24, color: Colors.white, fontWeight: FontWeight.w700)),
                Text(' ابحث عن اهم العروض المميزه.......',
                    style: TextStyle(fontSize: 24, color: Colors.white, fontWeight: FontWeight.w700))
              ],
            ),
          ),
        ),
      ],
    );
  }
}
