import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:rent_website/components/view_with_container.dart';
import 'package:rent_website/constants/app_const.dart';

import '../../../../../constants/app_colors.dart';
import '../../../login/component/header_text.dart';
import '../confirm_button.dart';
import '../new_password_form.dart';

class NewPasswordWeb extends StatelessWidget {
  const NewPasswordWeb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewWithContainer(children: [
      Flexible(
        flex: 2,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: height * 0.08, horizontal: 32),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), border: Border.all(color: AppColors.grey)),
          child: const Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              HeaderText(secondText: 'ادخل كلمة سر جديده', thirdText: 'قم بادخال كلمة سر جديدة حتى تقوم بتسجيل الدخول'),
              NewPasswordForm(),
              Gap(24),
              ConfirmButton(),
            ],
          ),
        ),
      )
    ]);
  }
}
