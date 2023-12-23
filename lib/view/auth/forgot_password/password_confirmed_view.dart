import 'package:flutter/material.dart';
import 'package:rent_website/components/text_with_padding.dart';
import 'package:rent_website/constants/app_const.dart';
import 'package:rent_website/core/router/router.dart';

import '../../../components/view_with_container.dart';
import '../../../constants/app_colors.dart';
import '../login/login_view.dart';

class PasswordConfirmedView extends StatelessWidget {
  const PasswordConfirmedView({super.key});

  @override
  Widget build(BuildContext context) {
    // final screenType = context.screenType();

    return ViewWithContainer(
      children: [
        Flexible(
          // flex: screenType == ScreenType.desktop ? 2 : 6,
          child: Container(
            padding: EdgeInsets.symmetric(vertical: height * 0.08, horizontal: 32),
            decoration:
                BoxDecoration(borderRadius: BorderRadius.circular(8), border: Border.all(color: AppColors.grey)),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.purpleBlue,
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
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ) // HeaderText(
              ],
            ),
          ),
        ),
      ],
    );
  }
}
