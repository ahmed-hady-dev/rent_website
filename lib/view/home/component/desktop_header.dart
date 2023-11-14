import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:rent_website/constants/app_const.dart';

import '../../../components/text_with_padding.dart';

class DesktopHeader extends StatelessWidget {
  const DesktopHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: width * 0.07, right: width * 0.07, top: height * 0.07),
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
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.info_outline_rounded,
                    color: Colors.white,
                  )),
              const Gap(62),
              IconButton(onPressed: () {}, icon: SvgPicture.asset('assets/images/notification.svg')),
              const Gap(62),
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    'اعرض عقارك هنا',
                    style: TextStyle(color: Colors.white),
                  )),
              const Gap(62),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.account_circle_outlined,
                    color: Colors.white,
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
