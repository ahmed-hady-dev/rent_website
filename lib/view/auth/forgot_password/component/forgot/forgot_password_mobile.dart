import 'package:flutter/material.dart';
import 'package:rent_website/constants/app_const.dart';

import '../../../../../components/text_with_padding.dart';
import '../../../../../constants/app_colors.dart';
import '../forgot_password_form.dart';
import '../send_code_button.dart';

class ForgotPasswordMobile extends StatelessWidget {
  const ForgotPasswordMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: width * 0.04),
          child: Container(
            padding: EdgeInsets.symmetric(vertical: height * 0.05, horizontal: width * 0.04),
            decoration:
                BoxDecoration(borderRadius: BorderRadius.circular(8), border: Border.all(color: AppColors.grey)),
            child: const Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Text(AppConst.appName,
                        style: TextStyle(fontSize: 24, color: AppColors.purpleBlue, fontWeight: FontWeight.w700)),
                    TextWithPadding(
                        text: 'نسيت كلمة السر',
                        vertical: 24,
                        style: TextStyle(fontSize: 32, color: Colors.black, fontWeight: FontWeight.bold)),
                    TextWithPadding(
                      text: 'قم بادخال رقم الهاتف الي قمت التسجيل به لارسال الكود لك لاستعادة كلمة السر',
                      overflow: TextOverflow.ellipsis,
                      softWrap: true,
                      style: TextStyle(color: Color(0xFF7C8DB0), fontSize: 18),
                    ),
                  ],
                ),
                ForgotPasswordForm(),
                SendCodeButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
