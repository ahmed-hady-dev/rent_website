import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../../constants/app_colors.dart';
import '../../../../../core/router/router.dart';
import '../../../login/login_view.dart';

class GoToLoginButton extends StatefulWidget {
  const GoToLoginButton({
    super.key,
  });

  @override
  State<GoToLoginButton> createState() => _GoToLoginButtonState();
}

class _GoToLoginButtonState extends State<GoToLoginButton> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: () => MagicRouter.navigateAndPopAll(const LoginView()),
        onHover: (value) {
          setState(() => isHover = value);
        },
        child: Directionality(
          textDirection: TextDirection.ltr,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Icon(
                Icons.arrow_back,
                color: AppColors.purpleDark,
                size: 32.0,
              ),
              const Gap(8),
              AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                width: isHover ? 12 : 0,
              ),
              const Text('اذهب لتسجيل الدخول',
                  style: TextStyle(
                    fontSize: 18,
                    color: AppColors.purpleDark,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
