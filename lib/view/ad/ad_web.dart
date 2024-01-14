import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:rent_website/constants/app_const.dart';

import '../home/component/desktop_top_section.dart';
import '../home/component/footer.dart';
import 'component/ad_web/ad_left_column_details.dart';
import 'component/ad_web/ad_right_column_details.dart';

class AdWeb extends StatelessWidget {
  const AdWeb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            const DesktopTopSection(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: hPaddingWeb, vertical: height * 0.06),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const AdRightColumnDetails(),
                  Gap(width * 0.021),
                  const AdLeftColumnDetails(),
                ],
              ),
            ),
            const Footer(),
          ],
        ),
      ),
    );
  }
}
