import 'package:flutter/material.dart';
import 'package:rent_website/constants/app_const.dart';
import 'package:rent_website/core/router/router.dart';

import '../../../../constants/app_colors.dart';
import '../new_password_view.dart';

class SendCodeButton extends StatelessWidget {
  const SendCodeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: ElevatedButton(
        onPressed: () => MagicRouter.navigateTo(const NewPasswordView()),
        style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.purpleDark, padding: const EdgeInsets.symmetric(vertical: 24)),
        child: const Text('ارسال الكود'),
      ),
    );
  }
}
