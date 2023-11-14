import 'package:flutter/material.dart';

import 'component/desktop_top_section.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final verticalController = ScrollController();
    return Scaffold(
      body: Scrollbar(
        controller: verticalController,
        thumbVisibility: true,
        child: SingleChildScrollView(
          controller: verticalController,
          scrollDirection: Axis.vertical,
          child: const DesktopTopSection(),
        ),
      ),
    );
  }
}
