import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rent_website/constants/app_const.dart';
import 'package:rent_website/view/home/component/filter_dropdown_button.dart';
import 'package:rent_website/view/home/component/search_button.dart';

class FilterRow extends StatelessWidget {
  const FilterRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width * 0.07),
      child: SizedBox(
        height: 48,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
              flex: 4,
              child: FilterDropdownButton(
                topRight: 8,
                bottomRight: 8,
                hintText: 'ما هي وجهتك؟',
                itemsIcon: Icons.place_outlined,
                hintIcon: SvgPicture.asset('assets/images/home.svg'),
                items: const ['احياء اكتوبر', 'الشيخ زايد'],
              ),
            ),
            const Expanded(
              flex: 4,
              child: FilterDropdownButton(
                hintText: 'حدد نوع السكن',
                itemsIcon: Icons.person,
                hintIcon: Icon(Icons.hotel_rounded, color: Color(0xFF6E7491)),
                items: ['عمال', 'اهالي', 'سكن بنات', 'سكن شباب'],
              ),
            ),
            const Expanded(
              flex: 4,
              child: FilterDropdownButton(
                hintText: 'محتوى السكن',
                itemsIcon: Icons.apartment_rounded,
                hintIcon: Icon(Icons.hotel_rounded, color: Color(0xFF6E7491)),
                items: ['سرير', 'غرفة', 'شقه'],
              ),
            ),
            Expanded(
              flex: 4,
              child: FilterDropdownButton(
                hintText: 'الفئه السعر',
                itemsIcon: Icons.attach_money_rounded,
                hintIcon: SvgPicture.asset('assets/images/money.svg'),
                items: const ['3000-1000', '5000-3000', '7000-5000', '9000-7000', '9000-∞'],
              ),
            ),
            const SearchButton(),
          ],
        ),
      ),
    );
  }
}
