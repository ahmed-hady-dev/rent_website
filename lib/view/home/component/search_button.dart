import 'package:flutter/material.dart';
import 'package:rent_website/constants/app_colors.dart';
import 'package:rent_website/constants/app_const.dart';

class SearchButton extends StatelessWidget {
  const SearchButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Transform(
        alignment: Alignment.center,
        transform: Matrix4.identity()..scale(1.2, 1.0),
        child: SizedBox(
          height: height,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.purpleBlue,
              padding: const EdgeInsets.symmetric(vertical: 12),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            ),
            child: Text('بحث',
                style: Theme.of(context).textTheme.titleMedium!.copyWith(color: const Color(0xFFFAFAFA)),
                overflow: TextOverflow.ellipsis),
          ),
        ),
      ),
    );
  }
}
