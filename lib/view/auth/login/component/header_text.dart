import 'package:flutter/material.dart';

import '../../../../components/text_with_padding.dart';
import '../../../../constants/app_colors.dart';
import '../../../../constants/app_const.dart';

class HeaderText extends StatelessWidget {
  const HeaderText({Key? key, this.secondText, this.thirdText}) : super(key: key);
  final String? secondText;
  final String? thirdText;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(AppConst.appName,
            style: Theme.of(context)
                .textTheme
                .displaySmall!
                .copyWith(color: AppColors.purpleBlue, fontWeight: FontWeight.bold)),
        TextWithPadding(
            text: secondText ?? 'أهلاً بك',
            vertical: 24,
            style:
                Theme.of(context).textTheme.displaySmall!.copyWith(color: Colors.black, fontWeight: FontWeight.bold)),
        TextWithPadding(
            text: thirdText ?? 'سجل الدخول الي الاسم للاستمتاع بالتجربه كامله والعروض الخاصة والمميزة',
            style: Theme.of(context).textTheme.titleLarge!.copyWith(color: const Color(0xFF7C8DB0))),
      ],
    );
  }
}
