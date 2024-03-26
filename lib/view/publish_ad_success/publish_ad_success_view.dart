import 'package:flutter/material.dart';

import '../../core/res/responsive.dart';
import 'publish_ad_success_mobile.dart';
import 'publish_ad_success_web.dart';

class PublishAdSuccessView extends StatelessWidget {
  const PublishAdSuccessView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Responsive(mobile: PublishAdSuccessMobile(), web: PublishAdSuccessWeb());
  }
}
