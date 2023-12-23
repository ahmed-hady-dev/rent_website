import 'package:flutter/material.dart';
import 'package:rent_website/constants/app_const.dart';

import '../../../../../components/text_with_padding.dart';
import '../../../../../constants/app_colors.dart';
import '../../../../../core/router/router.dart';
import '../../../login/login_view.dart';

class PasswordConfirmedMobile extends StatelessWidget {
  const PasswordConfirmedMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: width * 0.04),
          child: Container(
            padding: EdgeInsets.symmetric(vertical: height * 0.05, horizontal: width * 0.04),
            decoration:
                BoxDecoration(borderRadius: BorderRadius.circular(8), border: Border.all(color: AppColors.grey)),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.purpleBlue.withOpacity(0.7),
                  ),
                  child: Container(
                    margin: const EdgeInsets.all(16),
                    padding: const EdgeInsets.all(24),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.purpleDark,
                    ),
                    child: const Icon(
                      Icons.check_rounded,
                      color: Colors.white,
                      size: 64,
                    ),
                  ),
                ),
                const TextWithPadding(
                  text: 'تم تاكيد تغير كلمة السر اذهب لتسجيل الدخول الان.....',
                  padding: EdgeInsets.symmetric(vertical: 42),
                  style: TextStyle(fontSize: 18, color: Color(0xFFA1B0CC)),
                ),
                Directionality(
                  textDirection: TextDirection.ltr,
                  child: TextButton.icon(
                    style: TextButton.styleFrom(
                      foregroundColor: AppColors.purpleDark,
                    ),
                    onPressed: () => MagicRouter.navigateAndPopAll(const LoginView()),
                    icon: const Icon(Icons.arrow_back),
                    label: const Text(
                      'اذهب لتسجيل الدخول',
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
