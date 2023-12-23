import 'package:flutter/material.dart';
import 'package:rent_website/core/res/responsive.dart';
import 'package:rent_website/view/auth/forgot_password/component/enter_code/enter_code_mobile.dart';
import 'package:rent_website/view/auth/forgot_password/component/enter_code/enter_code_web.dart';

class EnterCodeView extends StatelessWidget {
  const EnterCodeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Responsive(mobile: EnterCodeMobile(), web: EnterCodeWeb());
  }
}
