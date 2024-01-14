import 'package:flutter/material.dart';

import '../home/component/mobile_filter_container.dart';
import '../home/component/mobile_footer.dart';
import '../home/component/mobile_top_section.dart';

class AdMobile extends StatelessWidget {
  const AdMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const MobileTopSection(),
            const MobileFilterContainer(),
            Text('ad mobile', style: const TextStyle()),
            const MobileFooter(),
          ],
        ),
      ),
    );
  }
}
