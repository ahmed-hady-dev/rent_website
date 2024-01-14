import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rent_website/core/res/responsive.dart';
import 'package:rent_website/view/home/home_mobile.dart';
import 'package:rent_website/view/home/home_web.dart';

import 'controller/home_cubit.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeCubit>(
      create: (context) => HomeCubit(),
      child: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) => const Responsive(mobile: HomeMobile(), web: HomeWeb()),
      ),
    );
  }
}
