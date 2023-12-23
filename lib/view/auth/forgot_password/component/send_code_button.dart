import 'package:flutter/material.dart';
import 'package:rent_website/constants/app_const.dart';
import 'package:rent_website/core/router/router.dart';
import 'package:rent_website/view/auth/forgot_password/component/enter_code/enter_code_view.dart';

import '../../../../constants/app_colors.dart';

class SendCodeButton extends StatelessWidget {
  const SendCodeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: ElevatedButton(
        onPressed: () => MagicRouter.navigateTo(const EnterCodeView()),
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            backgroundColor: AppColors.purpleDark,
            padding: const EdgeInsets.symmetric(vertical: 24)),
        child: const Text('ارسال الكود'),
      ),
    );
  }
}
