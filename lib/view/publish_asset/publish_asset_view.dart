import 'package:flutter/material.dart';

import '../../core/res/responsive.dart';
import 'publish_asset_mobile.dart';
import 'publish_asset_web.dart';

class PublishAssetView extends StatelessWidget {
  const PublishAssetView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      web: PublishAssetWeb(),
      mobile: PublishAssetMobile(),
    );
  }
}
