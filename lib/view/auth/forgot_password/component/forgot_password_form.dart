import 'package:flutter/material.dart';

import '../../../../components/custom_text_field.dart';

class ForgotPasswordForm extends StatelessWidget {
  const ForgotPasswordForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Form(
      child: Column(
        children: <Widget>[
          CustomTextField(hint: 'ادخل رقم هاتفك', vertical: 24),
        ],
      ),
    );
  }
}
