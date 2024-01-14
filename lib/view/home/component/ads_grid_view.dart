import 'package:flutter/material.dart';
import 'package:rent_website/constants/app_const.dart';
import 'package:rent_website/view/home/component/ad_card.dart';

import '../../../core/router/router.dart';
import '../../ad/ad_view.dart';

class AdsGridView extends StatelessWidget {
  const AdsGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisExtent: height * 0.4,
        mainAxisSpacing: width * 0.045,
        crossAxisSpacing: height * 0.052,
      ),
      padding: EdgeInsets.symmetric(horizontal: hPaddingWeb, vertical: height * 0.04),
      itemCount: 6,
      itemBuilder: (context, index) {
        return AdCard(
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
