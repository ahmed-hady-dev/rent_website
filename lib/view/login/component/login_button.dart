import 'package:flutter/material.dart';
import 'package:rent_website/constants/app_const.dart';

import '../../../constants/app_colors.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.purpleDark, padding: const EdgeInsets.symmetric(vertical: 24)),
        child: const Text('تسجيل الدخول'),
      ),
    );
  }
}
