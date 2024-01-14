import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:rent_website/constants/app_const.dart';
import 'package:rent_website/core/router/router.dart';
import 'package:rent_website/view/ad/ad_view.dart';

import 'component/mobile_horizontal_ad_card.dart';

class MobileCardListView extends StatelessWidget {
  const MobileCardListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 6,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      separatorBuilder: (context, index) => Gap(height * 0.02),
      padding: EdgeInsets.symmetric(horizontal: hPaddingMobile, vertical: height * 0.02),
      itemBuilder: (context, index) {
        return MobileHorizontalAdCard(
          onTap: () => MagicRouter.navigateTo(const AdView()),
          price: 1200,
          address: 'الحي الثاني, اكتوبر',
          title: 'شقه للايجار متاحه من الان علي المفتاح في الحي الثاني اكتوبر',
        );
      },
    );
  }
}
