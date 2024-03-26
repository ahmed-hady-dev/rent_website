import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:rent_website/constants/app_const.dart';
import 'package:rent_website/core/router/router.dart';

import '../../components/custom_text_field.dart';
import '../../constants/app_colors.dart';
import '../free_asset_ad/component/free_and_premium_asset_header_mobile.dart';
import '../publish_ad_success/publish_ad_success_view.dart';

class PremiumAssetAdMobile extends StatelessWidget {
  const PremiumAssetAdMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          const FreeAndPremiumAssetHeaderMobile(),
          Gap(height * 0.02),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: hPaddingMobile),
            child: Container(
              padding: EdgeInsets.only(top: height * 0.04, bottom: 24, left: width * 0.04, right: width * 0.04),
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(8), border: Border.all(color: AppColors.grey)),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    'الاعلان المميز',
                    style: TextStyle(color: AppColors.purpleDark, fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const Gap(18),
                  const Text('اهلا بك',
                      style: TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold)),
                  CustomTextField(
                    hint: 'ادخل الاسم بالكامل',
                    vertical: height * 0.02,
                    horizontal: 0,
                    fillColor: Colors.transparent,
                    borderSideColor: const Color(0xFFCBD4E6),
                    hintStyle: const TextStyle(color: Color(0xff7C8DB0), fontSize: 14),
                    textStyle: const TextStyle(color: Color(0xff7C8DB0), fontSize: 14),
                  ),
                  const CustomTextField(
                    hint: 'ادخل رقم هاتف لتواصل',
                    fillColor: Colors.transparent,
                    borderSideColor: Color(0xFFCBD4E6),
                    hintStyle: TextStyle(color: Color(0xff7C8DB0), fontSize: 14),
                    textStyle: TextStyle(color: Color(0xff7C8DB0), fontSize: 14),
                  ),
                  CustomTextField(
                    hint: 'ادخل رقم واتس اب',
                    vertical: height * 0.02,
                    fillColor: Colors.transparent,
                    borderSideColor: const Color(0xFFCBD4E6),
                    hintStyle: const TextStyle(color: Color(0xff7C8DB0), fontSize: 14),
                    textStyle: const TextStyle(color: Color(0xff7C8DB0), fontSize: 14),
                  ),
                  const CustomTextField(
                    hint: 'ادخل رقم التي ستقوم بالتحويل منه',
                    vertical: 0,
                    fillColor: Colors.transparent,
                    borderSideColor: Color(0xFFCBD4E6),
                    hintStyle: TextStyle(color: Color(0xff7C8DB0), fontSize: 14),
                    textStyle: TextStyle(color: Color(0xff7C8DB0), fontSize: 14),
                  ),
                  Gap(height * 0.02),
                  Align(
                      alignment: Alignment.centerRight,
                      child: RichText(
                        text: TextSpan(
                          children: [
                            const TextSpan(
                              text: 'قم بادراج صورة تحويل مبلغ  ',
                              style: TextStyle(color: Color(0xff7C8DB0), fontSize: 16),
                            ),
                            const TextSpan(
                              text: '${AppConst.adPrice} ج.م ',
                              style: TextStyle(color: AppColors.purpleDark, fontSize: 16),
                            ),
                            const TextSpan(
                              text: 'علي رقم ',
                              style: TextStyle(color: Color(0xff7C8DB0), fontSize: 16),
                            ),
                            TextSpan(
                              text: AppConst.contactNumber.toString(),
                              style: const TextStyle(color: AppColors.purpleDark, fontSize: 16),
                            ),
                          ],
                        ),
                      )),
                  Gap(height * 0.02),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8), border: Border.all(color: AppColors.grey)),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.camera_alt),
                        splashColor: Colors.transparent,
                      ),
                    ),
                  ),
                  const Gap(24),
                  Align(
                    alignment: Alignment.centerRight,
                    child: ElevatedButton(
                      onPressed: () => MagicRouter.navigateTo(const PublishAdSuccessView()),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.purpleBlue,
                        padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 18),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                      ),
                      child: Text('تاكيد طلب الاعلان المميز',
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium!
                              .copyWith(color: const Color(0xFFFAFAFA), fontSize: 18),
                          overflow: TextOverflow.ellipsis),
                    ),
                  )
                ],
              ),
            ),
          ),
          Gap(height * 0.02),
        ],
      ),
    );
  }
}
