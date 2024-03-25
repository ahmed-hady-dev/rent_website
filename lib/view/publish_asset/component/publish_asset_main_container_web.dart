import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:rent_website/constants/app_const.dart';
import 'package:rent_website/core/router/router.dart';

import '../../../constants/app_colors.dart';
import '../../free_asset_ad/free_asset_ad_view.dart';

class PublishAssetMainContainerWeb extends StatefulWidget {
  const PublishAssetMainContainerWeb({
    super.key,
  });

  @override
  State<PublishAssetMainContainerWeb> createState() => _PublishAssetMainContainerWebState();
}

class _PublishAssetMainContainerWebState extends State<PublishAssetMainContainerWeb> {
  String _radioValue = '';
  navigateToAssetAd() {
    if (_radioValue == 'free') {
      MagicRouter.navigateTo(const FreeAssetAdView());
    } else if (_radioValue == 'premium') {
      MagicRouter.navigateTo(const FreeAssetAdView());
      // MagicRouter.navigateTo(const PremiumAssetAdView());
    } else {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width * 0.3,
      height: widget.height * 0.52,
      decoration: BoxDecoration(
        color: AppColors.purpleColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsetsDirectional.only(top: widget.height * 0.03, start: widget.width * 0.015),
            child: const Text('اعرض عقارك وقم \nبمتابعة كل شئ اول باول',
                style: TextStyle(
                  fontSize: 28.0,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  overflow: TextOverflow.ellipsis,
                )),
          ),
          Padding(
            padding: EdgeInsetsDirectional.only(
                top: widget.height * 0.03, bottom: widget.height * 0.03, start: widget.width * 0.015),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Radio<String>(
                      value: 'free',
                      groupValue: _radioValue,
                      onChanged: (value) {
                        setState(() {
                          _radioValue = value!;
                        });
                      },
                      activeColor: AppColors.purpleDark,
                      mouseCursor: SystemMouseCursors.click,
                      visualDensity: const VisualDensity(horizontal: -2.0, vertical: -4.0),
                    ),
                    const SizedBox(width: 8.0),
                    const Text(
                      'اعلان مجاني',
                      style: TextStyle(color: Colors.black, fontSize: 18.0),
                    ),
                  ],
                ),
                Gap(widget.height * 0.008),
                Row(
                  children: <Widget>[
                    Radio<String>(
                      value: 'premium',
                      groupValue: _radioValue,
                      onChanged: (value) {
                        setState(() {
                          _radioValue = value!;
                        });
                      },
                      activeColor: AppColors.purpleDark,
                      mouseCursor: SystemMouseCursors.click,
                      visualDensity: const VisualDensity(horizontal: -2.0, vertical: -4.0),
                    ),
                    const SizedBox(width: 8.0),
                    const Text(
                      'اعلان مميز (مدفوع)',
                      style: TextStyle(color: Colors.black, fontSize: 18.0),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.only(start: widget.width * 0.015, end: widget.width * 0.015),
            child: const Text(
              'تنويه: الاعلان المميز ان تقوم بعرض عقارك مقابل خمسين جنيه مصري فقط ومن ثم يتم عرض عقارك في اول صفحه لمستخدم الموقع اي ان كل من سيستخدم الموقع سيرى اعلانك وهذا الاعلان لمدة 4 ايام.',
              maxLines: 6,
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.black,
                overflow: TextOverflow.ellipsis,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Gap(widget.height * 0.01),
          const Divider(color: Colors.black),
          Gap(widget.height * 0.02),
          Padding(
            padding: EdgeInsetsDirectional.only(start: widget.width * 0.015, end: widget.width * 0.015),
            child: SizedBox(
              width: widget.width,
              child: ElevatedButton(
                onPressed: _radioValue == '' ? null : navigateToAssetAd,
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.purpleDark,
                  padding: const EdgeInsets.symmetric(vertical: 24),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                ),
                child: Text('ابدا الان',
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(color: const Color(0xFFFAFAFA)),
                    overflow: TextOverflow.ellipsis),
              ),
            ),
          )
        ],
      ),
    );
  }
}
