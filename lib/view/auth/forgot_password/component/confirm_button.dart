import 'package:flutter/material.dart';
import 'package:rent_website/constants/app_const.dart';

import '../../../../constants/app_colors.dart';
import '../../../../core/router/router.dart';
import '../password_confirmed_view.dart';

class ConfirmButton extends StatelessWidget {
  const ConfirmButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: ElevatedButton(
        onPressed: () => MagicRouter.navigateTo(const PasswordConfirmedView()),
        style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.purpleDark, padding: const EdgeInsets.symmetric(vertical: 24)),
        child: const Text('التاكيد'),
      ),
    );
  }
}
