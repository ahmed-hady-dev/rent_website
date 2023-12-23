import 'package:flutter/material.dart';
import 'package:rent_website/constants/app_const.dart';

import '../../../components/view_with_container.dart';
import '../../../constants/app_colors.dart';
import 'component/create_account_button.dart';
import 'component/forgot_password_button.dart';
import 'component/header_text.dart';
import 'component/login_button.dart';
import 'component/login_form.dart';

class LoginWeb extends StatelessWidget {
  const LoginWeb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewWithContainer(children: [
      Flexible(
        flex: 2,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: height * 0.08, horizontal: 32),
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
