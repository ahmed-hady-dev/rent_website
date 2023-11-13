import 'package:flutter/material.dart';

import '../../../../components/custom_text_field.dart';

class NewPasswordForm extends StatelessWidget {
  const NewPasswordForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Form(
      child: Column(
        children: <Widget>[
          CustomTextField(hint: 'ادخل كلمة السر', type: TextInputType.visiblePassword, vertical: 24),
          CustomTextField(hint: 'تاكيد كلمة السر', type: TextInputType.visiblePassword),
        ],
      ),
    );
  }
}
