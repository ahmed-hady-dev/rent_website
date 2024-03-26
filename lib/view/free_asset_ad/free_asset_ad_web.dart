import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:rent_website/constants/app_const.dart';

import '../../components/asset_desktop_header.dart';
import '../../components/custom_text_field.dart';
import '../../constants/app_colors.dart';
import '../home/component/filter_dropdown_button.dart';

class FreeAssetAdWeb extends StatelessWidget {
  const FreeAssetAdWeb({Key? key}) : super(key: key);

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
                    'عرض الاعلان',
                    style: TextStyle(color: AppColors.purpleDark, fontSize: 36, fontWeight: FontWeight.bold),
                  ),
                  const Gap(24),
                  const Text('اهلا بك',
                      style: TextStyle(color: Colors.black, fontSize: 36, fontWeight: FontWeight.bold)),
                  const CustomTextField(
                    hint: 'اسم الاعلان',
                    vertical: 24,
                    fillColor: Colors.transparent,
                    borderSideColor: Color(0xFFCBD4E6),
                    textStyle: TextStyle(color: Color(0xff7C8DB0), fontWeight: FontWeight.w500),
                    hintStyle: TextStyle(color: Color(0xff7C8DB0), fontWeight: FontWeight.w500),
                  ),
                  const FilterDropdownButton(
                    topLeft: 8,
                    topRight: 8,
                    bottomLeft: 8,
                    bottomRight: 8,
                    hintText: 'المنطقة',
                    hintIcon: SizedBox(),
                    itemsIcon: Icons.place_outlined,
                    items: ['حي أول أكتوبر', 'حي ثاني أكتوبر', 'حي ثالث أكتوبر', 'حي رابع أكتوبر'],
                  ),
                  const Gap(24),
                  const FilterDropdownButton(
                    topLeft: 8,
                    topRight: 8,
                    bottomLeft: 8,
                    bottomRight: 8,
                    hintText: 'حدد نوع السكن',
                    itemsIcon: Icons.person,
                    hintIcon: SizedBox(),
                    items: ['عمال', 'اهالي', 'سكن بنات', 'سكن شباب'],
                  ),
                  const Gap(24),
                  const FilterDropdownButton(
                    topLeft: 8,
                    topRight: 8,
                    bottomLeft: 8,
                    bottomRight: 8,
                    hintText: 'محتوى السكن',
                    itemsIcon: Icons.apartment_rounded,
                    items: ['سرير', 'غرفة', 'شقه'],
                    hintIcon: SizedBox(),
                  ),
                  const Gap(24),
                  const FilterDropdownButton(
                    topLeft: 8,
                    topRight: 8,
                    bottomLeft: 8,
                    bottomRight: 8,
                    hintText: 'الفئه السعر',
                    itemsIcon: Icons.attach_money_rounded,
                    items: ['3000-1000', '5000-3000', '7000-5000', '9000-7000', '9000-∞'],
                    hintIcon: SizedBox(),
                  ),
                  const CustomTextField(
                    hint: 'سعر التامين',
                    vertical: 24,
                    borderSideColor: Color(0xFFCBD4E6),
                    textStyle: TextStyle(color: Color(0xff7C8DB0), fontWeight: FontWeight.w500),
                    hintStyle: TextStyle(color: Color(0xff7C8DB0), fontWeight: FontWeight.w500),
                  ),
                  const CustomTextField(
                    hint: 'الوصف للاعلان',
                    vertical: 0,
                    borderSideColor: Color(0xFFCBD4E6),
                    textStyle: TextStyle(color: Color(0xff7C8DB0), fontWeight: FontWeight.w500),
                    hintStyle: TextStyle(color: Color(0xff7C8DB0), fontWeight: FontWeight.w500),
                  ),
                  const Gap(24),
                  const Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'قم بادراج صور تصل إلى 20 صورة للاعلان ',
                      style: TextStyle(color: Color(0xff7C8DB0), fontSize: 16),
                    ),
                  ),
                  const Gap(24),
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
          const Gap(48),
        ],
      ),
    );
  }
}
