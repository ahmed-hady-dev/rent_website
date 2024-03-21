import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:rent_website/view/ad/component/ad_mobile/mobile_ad_carousel.dart';
import 'package:rent_website/view/ad/component/ad_mobile/mobile_visit_details_card.dart';

import '../home/component/mobile_filter_container.dart';
import '../home/component/mobile_footer.dart';
import '../home/component/mobile_top_section.dart';

class PublishAssetMobile extends StatelessWidget {
  const PublishAssetMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            MobileTopSection(),
            // MobileFilterContainer(),
            // MobileAdCarousel(),
            // Gap(12),
            // MobileUserDataCard(),
            // MobileVisitDetailsCard(),
            // MobileAdDataCard(),
            // MobileAdDetailsCard(),
            // MobileAdDescriptionCard(),
            MobileFooter(),
          ],
        ),
      ),
    );
  }
}
