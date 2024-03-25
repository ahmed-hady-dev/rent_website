import 'package:flutter/material.dart';
import 'package:rent_website/view/auth/register/register_mobile.dart';
import 'package:rent_website/view/auth/register/register_web.dart';

import '../../../core/res/responsive.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});
  @override
  Widget build(BuildContext context) {
    return const Responsive(mobile: RegisterMobile(), web: RegisterWeb());
  }
}
