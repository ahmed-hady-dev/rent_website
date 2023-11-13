import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../components/custom_text_field.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Form(
      child: Column(
        children: <Widget>[
          CustomTextField(hint: 'ادخل رقم هاتفك', vertical: 24),
          CustomTextField(hint: 'ادخل الاسم التعريفي (usearname)'),
          CustomTextField(hint: 'ادخل كلمة المرور', type: TextInputType.visiblePassword, vertical: 24),
          CustomTextField(hint: 'تاكيد كلمة المرور', type: TextInputType.visiblePassword),
          Gap(24),
        ],
      ),
    );
  }
}
