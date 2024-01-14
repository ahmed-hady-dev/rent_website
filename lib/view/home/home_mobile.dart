import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'component/mobile_ads_grid_view.dart';
import 'component/mobile_filter_container.dart';
import 'component/mobile_footer.dart';
import 'component/mobile_recommended_ads_row.dart';
import 'component/mobile_top_section.dart';
import 'component/mobile_special_ads_row.dart';
import 'controller/home_cubit.dart';
import 'mobile_card_list_view.dart';

class HomeMobile extends StatelessWidget {
  const HomeMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> mobileHomeList = [
      const MobileAdsGridView(),
      const MobileRecommendedAdsRow(),
      const MobileAdsGridView(),
    ];
    return Scaffold(
      body: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          return SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                const MobileTopSection(),
                const MobileFilterContainer(),
                const MobileSpecialAdsRow(),
                if (!HomeCubit.get(context).showMoreClicked) const MobileCardListView() else ...mobileHomeList,
                const MobileFooter(),
              ],
            ),
          );
        },
      ),
    );
  }
}
