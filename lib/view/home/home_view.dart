import 'package:flutter/material.dart';
import 'package:rent_website/core/res/responsive.dart';
import 'package:rent_website/view/home/home_mobile.dart';
import 'package:rent_website/view/home/home_web.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Responsive(mobile: HomeMobile(), web: HomeWeb());
  }
}
