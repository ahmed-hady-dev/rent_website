import 'package:flutter/material.dart';

import '../home/component/mobile_footer.dart';
import '../home/component/mobile_top_section.dart';

class PremiumAssetAdMobile extends StatelessWidget {
  const PremiumAssetAdMobile({Key? key}) : super(key: key);

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
