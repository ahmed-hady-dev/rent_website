import 'package:flutter/material.dart';
import 'package:rent_website/components/view_with_container.dart';
import 'package:rent_website/constants/app_const.dart';
import 'package:rent_website/ui_helper.dart';

import '../../../constants/app_colors.dart';
import '../login/component/header_text.dart';
import 'component/forgot_password_form.dart';
import 'component/send_code_button.dart';

class ForgotPasswordView extends StatelessWidget {
  ForgotPasswordView({super.key});
  final verticalController = ScrollController();

  @override
  Widget build(BuildContext context) {
    final screenType = context.screenType();
    return ViewWithContainer(
      children: [
        Flexible(
          flex: screenType == ScreenType.desktop ? 2 : 6,
          child: Container(
            padding: EdgeInsets.symmetric(vertical: height * 0.08, horizontal: 32),
            decoration:
                BoxDecoration(borderRadius: BorderRadius.circular(8), border: Border.all(color: AppColors.grey)),
            child: const Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                HeaderText(
                    secondText: 'نسيت كلمة السر',
                    thirdText: 'قم بادخال رقم الهاتف الي قمت التسجيل به لارسال الكود لك لاستعادة كلمة السر'),
                ForgotPasswordForm(),
                SendCodeButton(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
