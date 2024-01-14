import 'package:flutter/material.dart';
import 'package:rent_website/constants/app_const.dart';

import '../../../core/router/router.dart';
import '../../ad/ad_view.dart';
import 'mobile_ad_card.dart';

class MobileAdsGridView extends StatelessWidget {
  const MobileAdsGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisExtent: height <= 670 ? height * 0.4 : height * 0.3,
        mainAxisSpacing: width * 0.045,
        crossAxisSpacing: height * 0.015,
      ),
      padding: EdgeInsets.symmetric(horizontal: hPaddingMobile, vertical: height * 0.04),
      itemCount: 6,
      itemBuilder: (context, index) {
        return MobileAdCard(
          onTap: () => MagicRouter.navigateTo(const AdView()),
          price: 1200,
          timeAgo: 'منذ ساعتين',
          address: 'الحي الثاني, اكتوبر',
          title: 'شقه للايجار متاحه من الان علي المفتاح في الحي الثاني اكتوبر',
        );
      },
    );
  }
}
