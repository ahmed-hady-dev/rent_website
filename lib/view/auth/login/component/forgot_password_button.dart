import 'package:flutter/material.dart';
import 'package:rent_website/core/router/router.dart';

import '../../../../constants/app_colors.dart';
import '../../forgot_password/forgot_password_view.dart';

class ForgotPasswordButton extends StatelessWidget {
  const ForgotPasswordButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional.centerEnd,
      child: TextButton(
          onPressed: () => MagicRouter.navigateTo(ForgotPasswordView()),
          child: const Text('نسيت كلمة المرور', style: TextStyle(color: AppColors.purpleDark))),
    );
  }
}
