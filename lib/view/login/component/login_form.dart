import 'package:flutter/material.dart';

import '../../../components/custom_text_field.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: <Widget>[
        CustomTextField(hint: 'ادخل رقم هاتفك', vertical: 24),
        CustomTextField(hint: 'ادخل كلمة المرور', type: TextInputType.visiblePassword),
      ],
    );
  }
}
