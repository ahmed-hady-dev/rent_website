import 'package:flutter/material.dart';

import 'component/mobile_ads_grid_view.dart';
import 'component/mobile_filter_container.dart';
import 'component/mobile_footer.dart';
import 'component/mobile_recommended_ads_row.dart';
import 'component/mobile_top_section.dart';
import 'component/mobile_special_ads_row.dart';

class HomeMobile extends StatelessWidget {
  const HomeMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            MobileTopSection(),
            MobileFilterContainer(),
            MobileSpecialAdsRow(),
            MobileAdsGridView(),
            MobileRecommendedAdsRow(),
            MobileAdsGridView(),
            MobileFooter(),
          ],
        ),
      ),
    );
  }
}
