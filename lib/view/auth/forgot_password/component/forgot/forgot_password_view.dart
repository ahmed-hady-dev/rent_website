import 'package:flutter/material.dart';
import 'package:rent_website/core/res/responsive.dart';
import 'package:rent_website/view/auth/forgot_password/component/forgot/forgot_password_mobile.dart';
import 'package:rent_website/view/auth/forgot_password/component/forgot/forgot_password_web.dart';

class ForgotPasswordView extends StatelessWidget {
  const ForgotPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Responsive(mobile: ForgotPasswordMobile(), web: ForgotPasswordWeb());
  }
}
