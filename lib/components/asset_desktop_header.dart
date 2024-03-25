import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:rent_website/constants/app_colors.dart';
import 'package:rent_website/constants/app_const.dart';

import 'asset_animated_icon_button.dart';
import 'text_with_padding.dart';

class AssetDesktopHeader extends StatefulWidget {
  const AssetDesktopHeader({Key? key}) : super(key: key);

  @override
  State<AssetDesktopHeader> createState() => _AssetDesktopHeaderState();
}

class _AssetDesktopHeaderState extends State<AssetDesktopHeader> {
  bool isInfoHover = false;
  bool isNotificationHover = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: widget.hPaddingWeb, right: widget.width * 0.07, top: widget.height * 0.07),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          TextWithPadding(
            text: AppConst.appName,
            style: Theme.of(context).textTheme.headlineMedium!.copyWith(color: AppColors.purpleDark),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              AssetAnimatedIconButton(
                icon: Icons.info_outline_rounded,
                onTap: () {},
              ),
              Gap(widget.width * 0.02),
              AssetAnimatedIconButton(
                onTap: () {},
                icon: null,
                margin: 0,
                child: SvgPicture.asset('assets/images/notification.svg', width: 24, color: AppColors.purpleDark),
              ),
              Gap(widget.width * 0.02),
              AssetAnimatedIconButton(
                icon: Icons.account_circle_outlined,
                color: AppColors.purpleBlue.withOpacity(0.7),
                onTap: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
