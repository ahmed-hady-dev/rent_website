import 'package:flutter/material.dart';

import '../../core/res/responsive.dart';
import 'premium_asset_ad_mobile.dart';
import 'premium_asset_ad_web.dart';

class PremiumAssetAdView extends StatelessWidget {
  const PremiumAssetAdView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Responsive(mobile: PremiumAssetAdMobile(), web: PremiumAssetAdWeb());
  }
}
