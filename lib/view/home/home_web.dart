import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rent_website/view/home/component/recommended_ads_row.dart';
import 'package:rent_website/view/home/component/special_ads_row.dart';
import 'package:rent_website/view/home/controller/home_cubit.dart';

import 'component/ads_grid_view.dart';
import 'component/desktop_top_section.dart';
import 'component/footer.dart';
import 'component/home_card_list_view.dart';

class HomeWeb extends StatelessWidget {
  const HomeWeb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> webHomeList = [
      const AdsGridView(),
      const RecommendedAdsRow(),
      const AdsGridView(),
    ];
    final verticalController = ScrollController();
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return Scaffold(
          body: Scrollbar(
            controller: verticalController,
            thumbVisibility: true,
            child: SingleChildScrollView(
              controller: verticalController,
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  const DesktopTopSection(),
                  const SpecialAdsRow(),
                  if (HomeCubit.get(context).showMoreClicked) const HomeCardListView() else ...webHomeList,
                  const Footer(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
