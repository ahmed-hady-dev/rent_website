import 'package:flutter/material.dart';
import 'package:rent_website/constants/app_const.dart';

import '../../../../../components/custom_text_field.dart';
import '../../../../../components/view_with_container.dart';
import '../../../../../constants/app_colors.dart';
import '../../../../../core/router/router.dart';
import '../../../login/component/header_text.dart';
import '../new/new_password_view.dart';

class EnterCodeWeb extends StatelessWidget {
  const EnterCodeWeb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewWithContainer(
      children: [
        Flexible(
          flex: 2,
          child: Container(
            padding: EdgeInsets.symmetric(vertical: height * 0.08, horizontal: 32),
            decoration:
                BoxDecoration(borderRadius: BorderRadius.circular(8), border: Border.all(color: AppColors.grey)),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                const HeaderText(
                    secondText: 'نسيت كلمة السر', thirdText: 'قم بادخال الكود الذي ارسل اليك لاستعادة كلمة السر'),
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
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
