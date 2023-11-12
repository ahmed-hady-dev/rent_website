import 'package:flutter/material.dart';
import 'package:rent_website/constants/app_const.dart';
import 'package:rent_website/ui_helper.dart';

import '../../constants/app_colors.dart';
import '../login/component/header_text.dart';
import 'component/register_button.dart';
import 'component/register_form.dart';

class RegisterView extends StatelessWidget {
  RegisterView({super.key});
  final verticalController = ScrollController();
  @override
  Widget build(BuildContext context) {
    final screenType = context.screenType();
    return Scaffold(
      body: Center(
        child: Scrollbar(
          controller: verticalController,
          thumbVisibility: true,
          child: SingleChildScrollView(
            controller: verticalController,
            scrollDirection: Axis.vertical,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const Expanded(flex: 1, child: SizedBox()),
                Flexible(
                  flex: screenType == ScreenType.desktop ? 2 : 6,
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: height * 0.08, horizontal: 32),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8), border: Border.all(color: AppColors.grey)),
                    child: const Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        HeaderText(smallText: 'سجل الدخول الي الاسم'),
                        RegisterForm(),
                        RegisterButton(),
                      ],
                    ),
                  ),
                ),
                const Expanded(flex: 1, child: SizedBox()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
