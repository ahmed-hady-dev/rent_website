import 'package:flutter/material.dart';
import 'package:rent_website/core/res/responsive.dart';
import 'package:rent_website/view/auth/forgot_password/component/confirmed/password_confirmed_mobile.dart';
import 'package:rent_website/view/auth/forgot_password/component/confirmed/password_confirmed_web.dart';

class PasswordConfirmedView extends StatelessWidget {
  const PasswordConfirmedView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Responsive(mobile: PasswordConfirmedMobile(), web: PasswordConfirmedWeb());
  }
}
