import 'package:flutter/material.dart';
import 'package:rent_website/view/home/component/recommended_ads_row.dart';
import 'package:rent_website/view/home/component/special_ads_row.dart';

import 'component/ads_grid_view.dart';
import 'component/desktop_top_section.dart';
import 'component/footer.dart';

class HomeWeb extends StatelessWidget {
  const HomeWeb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final verticalController = ScrollController();
    return Scaffold(
      body: Scrollbar(
        controller: verticalController,
        thumbVisibility: true,
        child: SingleChildScrollView(
          controller: verticalController,
          scrollDirection: Axis.vertical,
          child: const Column(
            children: [
              DesktopTopSection(),
              SpecialAdsRow(),
              AdsGridView(),
              RecommendedAdsRow(),
              AdsGridView(),
              Footer(),
            ],
          ),
        ),
      ),
    );
  }
}
