import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rent_website/constants/app_const.dart';

import '../../../constants/app_colors.dart';
import 'filter_dropdown_button.dart';

class MobileFilterContainer extends StatelessWidget {
  const MobileFilterContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 32, horizontal: hPaddingMobile),
      child: Column(
        children: <Widget>[
          FilterDropdownButton(
            topRight: 8,
            topLeft: 8,
            hintText: 'ما هي وجهتك؟',
            itemsIcon: Icons.place_outlined,
            hintIcon: SvgPicture.asset('assets/images/home.svg'),
            items: const ['احياء اكتوبر', 'الشيخ زايد'],
          ),
          const FilterDropdownButton(
            hintText: 'حدد نوع السكن',
            itemsIcon: Icons.person,
            items: ['عمال', 'اهالي', 'سكن بنات', 'سكن شباب'],
            hintIcon: Icon(Icons.hotel_rounded, color: Color(0xFF6E7491)),
          ),
          const FilterDropdownButton(
            hintText: 'محتوى السكن',
            itemsIcon: Icons.apartment_rounded,
            hintIcon: Icon(Icons.hotel_rounded, color: Color(0xFF6E7491)),
            items: ['سرير', 'غرفة', 'شقه'],
          ),
          FilterDropdownButton(
            hintText: 'الفئه السعر',
            itemsIcon: Icons.attach_money_rounded,
            hintIcon: SvgPicture.asset('assets/images/money.svg'),
            items: const ['3000-1000', '5000-3000', '7000-5000', '9000-7000', '9000-∞'],
          ),
          SizedBox(
            width: width,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.purpleBlue,
                padding: const EdgeInsets.symmetric(vertical: 18),
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(8), bottomLeft: Radius.circular(8))),
              ),
              child: Text('بحث',
                  style:
                      Theme.of(context).textTheme.titleMedium!.copyWith(color: const Color(0xFFFAFAFA), fontSize: 18),
                  overflow: TextOverflow.ellipsis),
            ),
          ),
        ],
      ),
    );
  }
}
