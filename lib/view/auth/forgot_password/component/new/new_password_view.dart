import 'package:flutter/material.dart';
import 'package:rent_website/core/res/responsive.dart';
import 'package:rent_website/view/auth/forgot_password/component/new/new_password_mobile.dart';
import 'package:rent_website/view/auth/forgot_password/component/new/new_password_web.dart';

class NewPasswordView extends StatelessWidget {
  const NewPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Responsive(mobile: NewPasswordMobile(), web: NewPasswordWeb());
  }
}
