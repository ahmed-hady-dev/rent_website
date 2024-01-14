import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../constants/app_colors.dart';

class WebButtonWithArrow extends StatefulWidget {
  const WebButtonWithArrow({Key? key, required this.text, this.onTap, this.fontSize}) : super(key: key);
  final String text;
  final Function()? onTap;
  final double? fontSize;

  @override
  State<WebButtonWithArrow> createState() => _WebButtonWithArrowState();
}

class _WebButtonWithArrowState extends State<WebButtonWithArrow> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      radius: 12,
      borderRadius: BorderRadius.circular(8),
      onTap: widget.onTap,
      onHover: (value) {
        setState(() => isHover = value);
      },
      child: Directionality(
        textDirection: TextDirection.ltr,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              width: isHover ? 6 : 0,
            ),
            const Icon(
              Icons.arrow_back_rounded,
              color: AppColors.purpleDark,
              size: 32.0,
            ),
            AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              width: isHover ? 12 : 8,
            ),
            Text(
              widget.text,
              style: TextStyle(
                fontSize: widget.fontSize,
                color: AppColors.purpleDark,
              ),
            ),
            const Gap(6),
          ],
        ),
      ),
    );
  }
}
