import 'package:flutter/material.dart';
import 'package:rent_website/components/text_with_padding.dart';
import 'package:rent_website/constants/app_const.dart';
import 'package:rent_website/view/auth/forgot_password/component/confirmed/go_to_login_button.dart';

import '../../../../../components/view_with_container.dart';
import '../../../../../constants/app_colors.dart';

class PasswordConfirmedWeb extends StatelessWidget {
  const PasswordConfirmedWeb({Key? key}) : super(key: key);

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
                TextWithPadding(
                  text: 'تم تاكيد تغير كلمة السر اذهب لتسجيل الدخول الان.....',
                  padding: const EdgeInsets.symmetric(vertical: 42),
                  style: Theme.of(context).textTheme.headlineLarge!.copyWith(color: const Color(0xFFA1B0CC)),
                ),
                const GoToLoginButton(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
