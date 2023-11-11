import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:rent_website/components/custom_text_field.dart';
import 'package:rent_website/constants/app_colors.dart';
import 'package:rent_website/constants/app_const.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: widget.width * 0.5,
          height: widget.height * 0.7,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), border: Border.all(color: AppColors.grey)),
          padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 32),
          child: Column(
            children: <Widget>[
              Text(AppCont.appName,
                  style: Theme.of(context)
                      .textTheme
                      .displaySmall!
                      .copyWith(color: AppColors.indigo, fontWeight: FontWeight.bold)),
              const Gap(24),
              Text('أهلاً بك',
                  style: Theme.of(context)
                      .textTheme
                      .displaySmall!
                      .copyWith(color: Colors.black, fontWeight: FontWeight.bold)),
              const Gap(24),
              Text('سجل الدخول الي الاسم للاستمتاع بالتجربه كامله والعروض الخاصة والمميزة',
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: const Color(0xFF7C8DB0))),
              const Gap(24),
              const CustomTextField(hint: 'ادخل رقم هاتفك'),
              const Gap(24),
              const CustomTextField(hint: 'ادخل كلمة المرور'),
              Align(
                alignment: AlignmentDirectional.centerEnd,
                child: TextButton(
                    onPressed: () {},
                    child: Text('نسيت كلمة المرور',
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: AppColors.darkIndigo))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
