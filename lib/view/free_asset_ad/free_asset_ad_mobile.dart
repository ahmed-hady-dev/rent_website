import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:rent_website/constants/app_const.dart';

import '../../components/custom_text_field.dart';
import '../../constants/app_colors.dart';
import '../home/component/filter_dropdown_button.dart';
import 'component/free_asset_header_mobile.dart';

class FreeAssetAdMobile extends StatelessWidget {
  const FreeAssetAdMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          const FreeAssetHeaderMobile(),
          Gap(height * 0.02),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: hPaddingMobile),
            child: Container(
              padding: EdgeInsets.only(top: height * 0.04, bottom: 24, left: 32, right: 32),
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(8), border: Border.all(color: AppColors.grey)),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    'عرض الاعلان',
                    style: TextStyle(color: AppColors.purpleDark, fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const Gap(18),
                  const Text('اهلا بك',
                      style: TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold)),
                  CustomTextField(
                    hint: 'اسم الاعلان',
                    vertical: height * 0.02,
                    fillColor: Colors.transparent,
                    borderSideColor: const Color(0xFFCBD4E6),
                    textStyle: const TextStyle(color: Color(0xffC8DB0), fontSize: 14),
                  ),
                  const FilterDropdownButton(
                    topLeft: 8,
                    topRight: 8,
                    bottomLeft: 8,
                    bottomRight: 8,
                    hintText: 'المنطقة',
                    itemsIcon: Icons.place_outlined,
                    hintIcon: SizedBox(),
                    fillColor: Colors.transparent,
                    itemsTextStyle: TextStyle(color: Color(0xff7C8DB0), fontSize: 14),
                    hintTextStyle: TextStyle(color: Color(0xff7C8DB0), fontSize: 14),
                    items: ['حي أول أكتوبر', 'حي ثاني أكتوبر', 'حي ثالث أكتوبر', 'حي رابع أكتوبر'],
                  ),
                  Gap(height * 0.02),
                  const FilterDropdownButton(
                    topLeft: 8,
                    topRight: 8,
                    bottomLeft: 8,
                    bottomRight: 8,
                    hintText: 'حدد نوع السكن',
                    itemsIcon: Icons.person,
                    hintIcon: SizedBox(),
                    fillColor: Colors.transparent,
                    itemsTextStyle: TextStyle(color: Color(0xff7C8DB0), fontSize: 14),
                    hintTextStyle: TextStyle(color: Color(0xff7C8DB0), fontSize: 14),
                    items: ['عمال', 'اهالي', 'سكن بنات', 'سكن شباب'],
                  ),
                  Gap(height * 0.02),
                  const FilterDropdownButton(
                    topLeft: 8,
                    topRight: 8,
                    bottomLeft: 8,
                    bottomRight: 8,
                    hintText: 'محتوى السكن',
                    itemsIcon: Icons.apartment_rounded,
                    items: ['سرير', 'غرفة', 'شقه'],
                    hintIcon: SizedBox(),
                    fillColor: Colors.transparent,
                    itemsTextStyle: TextStyle(color: Color(0xff7C8DB0), fontSize: 14),
                    hintTextStyle: TextStyle(color: Color(0xff7C8DB0), fontSize: 14),
                  ),
                  Gap(height * 0.02),
                  const FilterDropdownButton(
                    topLeft: 8,
                    topRight: 8,
                    bottomLeft: 8,
                    bottomRight: 8,
                    hintText: 'الفئه السعر',
                    itemsIcon: Icons.attach_money_rounded,
                    items: ['3000-1000', '5000-3000', '7000-5000', '9000-7000', '9000-∞'],
                    hintIcon: SizedBox(),
                    fillColor: Colors.transparent,
                    hintTextStyle: TextStyle(color: Color(0xff7C8DB0), fontSize: 14),
                    itemsTextStyle: TextStyle(color: Color(0xff7C8DB0), fontSize: 14),
                  ),
                  CustomTextField(
                    hint: 'سعر التامين',
                    vertical: height * 0.02,
                    fillColor: Colors.transparent,
                    borderSideColor: Color(0xFFCBD4E6),
                    textStyle: TextStyle(color: Color(0xff7C8DB0), fontSize: 14),
                  ),
                  const CustomTextField(
                    hint: 'الوصف للاعلان',
                    vertical: 0,
                    fillColor: Colors.transparent,
                    borderSideColor: Color(0xFFCBD4E6),
                    textStyle: TextStyle(color: Color(0xffC8DB0), fontSize: 14),
                  ),
                  Gap(height * 0.02),
                  const Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'قم بادراج صور تصل إلى 20 صورة للاعلان ',
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                    ),
                  ),
                  Gap(height * 0.02),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(4),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8), border: Border.all(color: AppColors.grey)),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.camera_alt),
                          splashColor: Colors.transparent,
                        ),
                      ),
                      const Gap(8),
                      Container(
                        padding: const EdgeInsets.all(4),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8), border: Border.all(color: AppColors.grey)),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.camera_alt),
                          splashColor: Colors.transparent,
                        ),
                      ),
                      const Gap(8),
                      Container(
                        padding: const EdgeInsets.all(4),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8), border: Border.all(color: AppColors.grey)),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.camera_alt),
                          splashColor: Colors.transparent,
                        ),
                      ),
                    ],
                  ),
                  const Gap(24),
                  Align(
                    alignment: Alignment.centerRight,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.purpleBlue,
                        padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 18),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                      ),
                      child: Text('انشر الان',
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
