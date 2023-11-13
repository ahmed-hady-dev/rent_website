import 'package:flutter/material.dart';
import 'package:rent_website/components/view_with_container.dart';
import 'package:rent_website/constants/app_colors.dart';
import 'package:rent_website/constants/app_const.dart';
import 'package:rent_website/ui_helper.dart';

import 'component/create_account_button.dart';
import 'component/forgot_password_button.dart';
import 'component/header_text.dart';
import 'component/login_button.dart';
import 'component/login_form.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    final screenType = context.screenType();

    return ViewWithContainer(children: [
      Flexible(
        flex: screenType == ScreenType.desktop ? 2 : 6,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: widget.height * 0.08, horizontal: 32),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), border: Border.all(color: AppColors.grey)),
          child: const Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              HeaderText(),
              LoginForm(),
              ForgotPasswordButton(),
              CreateAccountButton(),
              LoginButton(),
            ],
          ),
        ),
      ),
    ]);
  }
}
