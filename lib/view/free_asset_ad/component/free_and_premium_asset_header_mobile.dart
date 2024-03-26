import 'package:flutter/material.dart';
import 'package:rent_website/constants/app_const.dart';

import '../../../components/text_with_padding.dart';
import '../../../constants/app_colors.dart';

class FreeAndPremiumAssetHeaderMobile extends StatelessWidget {
  const FreeAndPremiumAssetHeaderMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left: hPaddingMobile, right: width * 0.04, top: height * 0.02),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              TextWithPadding(
                text: AppConst.appName,
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(color: AppColors.purpleDark, fontWeight: FontWeight.bold),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.account_circle_outlined,
                      color: AppColors.purpleDark,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
