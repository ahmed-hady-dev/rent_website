import 'package:flutter/material.dart';

import 'component/mobile_top_section.dart';

class HomeMobile extends StatelessWidget {
  const HomeMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            MobileTopSection(),
          ],
        ),
      ),
    );
  }
}
