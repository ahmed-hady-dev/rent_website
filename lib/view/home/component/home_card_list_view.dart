import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:rent_website/constants/app_const.dart';

import 'horizontal_ad_card.dart';

class HomeCardListView extends StatelessWidget {
  const HomeCardListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 6,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      separatorBuilder: (context, index) => const Gap(32),
      padding: EdgeInsets.symmetric(horizontal: width * 0.07, vertical: height * 0.04),
      itemBuilder: (context, index) {
        return HorizontalAdCard(
          onTap: () {},
          price: 1200,
          timeAgo: 'منذ ساعتين',
          address: 'الحي الثاني, اكتوبر',
          title: 'شقه للايجار متاحه من الان علي المفتاح في الحي الثاني اكتوبر',
        );
      },
    );
  }
}
