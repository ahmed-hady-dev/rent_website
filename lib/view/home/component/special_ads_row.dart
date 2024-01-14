import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:rent_website/constants/app_const.dart';
import 'package:rent_website/view/home/controller/home_cubit.dart';

import '../../../constants/app_colors.dart';

class SpecialAdsRow extends StatefulWidget {
  const SpecialAdsRow({Key? key}) : super(key: key);

  @override
  State<SpecialAdsRow> createState() => _SpecialAdsRowState();
}

class _SpecialAdsRowState extends State<SpecialAdsRow> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return Padding(
          padding: EdgeInsets.only(left: widget.width * 0.07, right: widget.width * 0.07, top: widget.height * 0.07),
          child: Row(
            children: <Widget>[
              const Text('اعلانات مميزه', style: TextStyle(color: Color(0xff6E7491), fontSize: 18)),
              Gap(widget.width * 0.005),
              Image.asset('assets/images/fire.png'),
              const Spacer(),
              Center(
                child: InkWell(
                  radius: 12,
                  borderRadius: BorderRadius.circular(8),
                  onTap: () {
                    HomeCubit.get(context).showMoreAds();
                  },
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
      },
    );
  }
}
