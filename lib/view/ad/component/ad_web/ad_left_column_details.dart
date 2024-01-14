import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:rent_website/constants/app_const.dart';
import 'package:rent_website/view/ad/component/ad_web/user_data_card.dart';
import 'package:rent_website/view/ad/component/ad_web/visit_details_card.dart';

class AdLeftColumnDetails extends StatelessWidget {
  const AdLeftColumnDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Column(
        children: <Widget>[
          const UserDataCard(),
          Gap(height * 0.04),
          const VisitDetailsCard(),
        ],
      ),
    );
  }
}
