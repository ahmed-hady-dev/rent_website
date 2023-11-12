import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';

class ForgotPasswordButton extends StatelessWidget {
  const ForgotPasswordButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional.centerEnd,
      child: TextButton(
          onPressed: () {}, child: const Text('نسيت كلمة المرور', style: TextStyle(color: AppColors.purpleDark))),
    );
  }
}
