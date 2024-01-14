import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:rent_website/constants/app_const.dart';

import '../../../constants/app_colors.dart';

class RecommendedAdsRow extends StatefulWidget {
  const RecommendedAdsRow({Key? key}) : super(key: key);

  @override
  State<RecommendedAdsRow> createState() => _RecommendedAdsRowState();
}

class _RecommendedAdsRowState extends State<RecommendedAdsRow> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: widget.hPaddingWeb, right: widget.width * 0.07),
      child: Row(
        children: <Widget>[
          const Text('مقترحات', style: TextStyle(color: Color(0xff6E7491), fontSize: 18)),
          const Spacer(),
          Center(
            child: InkWell(
              radius: 12,
              borderRadius: BorderRadius.circular(8),
              onTap: () {},
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
                    const Text(
                      'عرض المزيد',
                      style: TextStyle(
                        fontSize: 18,
                        color: AppColors.purpleDark,
                      ),
                    ),
                    const Gap(6),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
