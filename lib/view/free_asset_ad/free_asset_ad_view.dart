import 'package:flutter/material.dart';

import '../../core/res/responsive.dart';
import 'free_asset_ad_mobile.dart';
import 'free_asset_ad_web.dart';

class FreeAssetAdView extends StatelessWidget {
  const FreeAssetAdView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Responsive(mobile: FreeAssetAdMobile(), web: FreeAssetAdWeb());
  }
}
