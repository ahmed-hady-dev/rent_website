import 'package:flutter/material.dart';
import 'package:rent_website/constants/app_const.dart';

import '../../../../../components/custom_text_field.dart';
import '../../../../../components/text_with_padding.dart';
import '../../../../../constants/app_colors.dart';
import '../../../../../core/router/router.dart';
import '../new/new_password_view.dart';

class EnterCodeMobile extends StatelessWidget {
  const EnterCodeMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: hPaddingMobile),
          child: Container(
            padding: EdgeInsets.symmetric(vertical: height * 0.05, horizontal: hPaddingMobile),
            decoration:
                BoxDecoration(borderRadius: BorderRadius.circular(8), border: Border.all(color: AppColors.grey)),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                const Column(
                  children: <Widget>[
                    Text(AppConst.appName,
                        style: TextStyle(fontSize: 24, color: AppColors.purpleBlue, fontWeight: FontWeight.w700)),
                    TextWithPadding(
                        text: 'نسيت كلمة السر',
                        vertical: 32,
                        style: TextStyle(fontSize: 32, color: Colors.black, fontWeight: FontWeight.bold)),
                    TextWithPadding(
                      text: 'قم بادخال الكود التي تم ارساله لك لاستعادة كلمة السر',
                      overflow: TextOverflow.ellipsis,
                      softWrap: true,
                      style: TextStyle(color: Color(0xFF7C8DB0), fontSize: 18),
                    ),
                  ],
                ),
                const CustomTextField(hint: 'ادخل الكود', vertical: 24),
                SizedBox(
                  width: width,
                  child: ElevatedButton(
                    onPressed: () => MagicRouter.navigateTo(const NewPasswordView()),
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        backgroundColor: AppColors.purpleDark,
                        padding: const EdgeInsets.symmetric(vertical: 24)),
                    child: const Text('التاكيد'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
