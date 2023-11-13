import 'package:flutter/material.dart';
import 'package:rent_website/constants/app_const.dart';

import '../../../../constants/app_colors.dart';
import '../../../../core/router/router.dart';
import '../../../home/home_view.dart';

class RegisterButton extends StatelessWidget {
  const RegisterButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: ElevatedButton(
        onPressed: () => MagicRouter.navigateTo(const HomeView()),
        style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.purpleDark, padding: const EdgeInsets.symmetric(vertical: 24)),
        child: const Text('تاكيد تسجيل الدخول'),
      ),
    );
  }
}
