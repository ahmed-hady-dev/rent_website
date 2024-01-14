import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:rent_website/constants/app_const.dart';
import 'package:rent_website/view/ad/component/ad_web/ad_carousel.dart';
import 'package:rent_website/view/ad/component/ad_web/ad_data_card.dart';

import 'ad_description_card.dart';
import 'ad_details_card.dart';

class AdRightColumnDetails extends StatelessWidget {
  const AdRightColumnDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const AdCarousel(),
          Gap(height * 0.04),
          const AdDataCard(),
          Gap(height * 0.04),
          const AdDetailsCard(),
          Gap(height * 0.04),
          const AdDescriptionCard(),
        ],
      ),
    );
  }
}
