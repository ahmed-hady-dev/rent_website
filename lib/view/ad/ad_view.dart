import 'package:flutter/material.dart';
import 'package:rent_website/view/ad/ad_mobile.dart';
import 'package:rent_website/view/ad/ad_web.dart';

import '../../core/res/responsive.dart';

class AdView extends StatelessWidget {
  const AdView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Responsive(mobile: AdMobile(), web: AdWeb());
  }
}
