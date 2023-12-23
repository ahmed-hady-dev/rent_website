import 'package:flutter/material.dart';
import 'package:rent_website/core/res/responsive.dart';
import 'package:rent_website/view/auth/login/login_mobile.dart';
import 'package:rent_website/view/auth/login/login_web.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return const Responsive(mobile: LoginMobile(), web: LoginWeb());
  }
}
