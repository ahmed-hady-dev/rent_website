import 'package:flutter/material.dart';
import 'package:rent_website/constants/app_const.dart';
import 'package:rent_website/core/router/router.dart';

import '../../../../constants/app_colors.dart';
import '../../../home/home_view.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: ElevatedButton(
        onPressed: () => MagicRouter.navigateTo(const HomeView()),
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            backgroundColor: AppColors.purpleDark,
            padding: const EdgeInsets.symmetric(vertical: 24)),
        child: const Text('تسجيل الدخول'),
      ),
    );
  }
}
