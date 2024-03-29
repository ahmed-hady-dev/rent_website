import 'package:flutter/material.dart';

import '../../../../constants/app_colors.dart';
import '../../../../core/router/router.dart';
import '../../register/register_view.dart';

class CreateAccountButton extends StatelessWidget {
  const CreateAccountButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24),
      child: Align(
        alignment: AlignmentDirectional.centerStart,
        child: Row(
          children: <Widget>[
            const Text('لا تمتلك حساب؟', overflow: TextOverflow.ellipsis),
            TextButton(
                onPressed: () => MagicRouter.navigateTo(const RegisterView()),
                child: const Text('اصنع حساب', style: TextStyle(color: AppColors.purpleDark)))
          ],
        ),
      ),
    );
  }
}
