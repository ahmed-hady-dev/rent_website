import 'package:flutter/material.dart';
import 'package:rent_website/constants/app_const.dart';

import '../../../constants/app_colors.dart';

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Stack(
          children: [
            Image.asset(
              'assets/images/home_header.png',
              height: 512,
              width: width,
              fit: BoxFit.cover,
            ),
            Opacity(
              opacity: 0.5,
              child: Container(
                color: Colors.black,
                width: width,
                height: 512,
              ),
            ),
          ],
        ),
        Container(height: 24, width: width, color: AppColors.backgroundColor)
      ],
    );
  }
}
