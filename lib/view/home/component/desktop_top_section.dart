import 'package:flutter/material.dart';

import 'background_image.dart';
import 'desktop_header.dart';
import 'filter_row.dart';
import 'middle_text.dart';

class DesktopTopSection extends StatelessWidget {
  const DesktopTopSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        BackgroundImage(),
        Positioned(
          bottom: 0,
          top: 0,
          left: 0,
          right: 0,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              DesktopHeader(),
              MiddleText(),
              FilterRow(),
            ],
          ),
        ),
      ],
    );
  }
}
