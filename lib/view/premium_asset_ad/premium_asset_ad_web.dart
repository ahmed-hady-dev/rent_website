import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:rent_website/constants/app_const.dart';

import '../../components/asset_desktop_header.dart';
import '../../components/custom_text_field.dart';
import '../../constants/app_colors.dart';
import '../../core/router/router.dart';
import '../publish_ad_success/publish_ad_success_view.dart';

class PremiumAssetAdWeb extends StatelessWidget {
  const PremiumAssetAdWeb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const AssetDesktopHeader(),
          const Gap(48),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: hPaddingWeb * 3),
            child: Container(
              padding: EdgeInsets.only(top: height * 0.08, bottom: 24, left: 32, right: 32),
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(8), border: Border.all(color: AppColors.grey)),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    'الاعلان المميز',
                    style: TextStyle(color: AppColors.purpleDark, fontSize: 36, fontWeight: FontWeight.bold),
                  ),
                  const Gap(24),
                  const Text('اهلا بك',
                      style: TextStyle(color: Colors.black, fontSize: 36, fontWeight: FontWeight.bold)),
                  const CustomTextField(
                    hint: 'ادخل الاسم بالكامل',
                    vertical: 24,
                    fillColor: Colors.transparent,
                    borderSideColor: Color(0xFFCBD4E6),
                    textStyle: TextStyle(color: Color(0xff7C8DB0), fontWeight: FontWeight.w500),
                    hintStyle: TextStyle(color: Color(0xff7C8DB0), fontWeight: FontWeight.w500),
                  ),
                  const CustomTextField(
                    hint: 'ادخل رقم هاتف لتواصل',
                    vertical: 0,
                    borderSideColor: Color(0xFFCBD4E6),
                    textStyle: TextStyle(color: Color(0xff7C8DB0), fontWeight: FontWeight.w500),
                    hintStyle: TextStyle(color: Color(0xff7C8DB0), fontWeight: FontWeight.w500),
                  ),
                  const CustomTextField(
                    hint: 'ادخل رقم واتس اب',
                    vertical: 24,
                    borderSideColor: Color(0xFFCBD4E6),
                    textStyle: TextStyle(color: Color(0xff7C8DB0), fontWeight: FontWeight.w500),
                    hintStyle: TextStyle(color: Color(0xff7C8DB0), fontWeight: FontWeight.w500),
                  ),
                  const CustomTextField(
                    hint: 'ادخل رقم التي ستقوم بالتحويل منه',
                    vertical: 0,
                    borderSideColor: Color(0xFFCBD4E6),
                    textStyle: TextStyle(color: Color(0xff7C8DB0), fontWeight: FontWeight.w500),
                    hintStyle: TextStyle(color: Color(0xff7C8DB0), fontWeight: FontWeight.w500),
                  ),
                  const Gap(24),
                  Align(
                      alignment: Alignment.centerRight,
                      child: RichText(
                        text: TextSpan(
                          style: const TextStyle(fontSize: 16),
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
                  const Gap(24),
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
          const Gap(48),
        ],
      ),
    );
  }
}
