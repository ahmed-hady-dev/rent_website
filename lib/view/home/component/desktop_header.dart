import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:rent_website/constants/app_colors.dart';
import 'package:rent_website/constants/app_const.dart';

import '../../../components/animated_icon_button.dart';
import '../../../components/text_with_padding.dart';

class DesktopHeader extends StatefulWidget {
  const DesktopHeader({Key? key}) : super(key: key);

  @override
  State<DesktopHeader> createState() => _DesktopHeaderState();
}

class _DesktopHeaderState extends State<DesktopHeader> {
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
            style: Theme.of(context).textTheme.headlineMedium!.copyWith(color: Colors.white),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              AnimatedIconButton(
                icon: Icons.info_outline_rounded,
                onTap: () {},
              ),
              Gap(widget.width * 0.02),
              AnimatedIconButton(
                onTap: () {},
                icon: null,
                margin: 0,
                child: SvgPicture.asset('assets/images/notification.svg', width: 24),
              ),
              Gap(widget.width * 0.02),
              AnimatedIconButton(
                  onTap: () {},
                  icon: null,
                  radius: 8,
                  child: const Text(
                    'اعرض عقارك هنا',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  )),
              Gap(widget.width * 0.02),
              AnimatedIconButton(
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
