import 'package:flutter/material.dart';
import 'package:rent_website/constants/app_const.dart';

import '../../../constants/app_colors.dart';
import 'like_button.dart';

class MobileHorizontalAdCard extends StatelessWidget {
  const MobileHorizontalAdCard({
    Key? key,
    required this.title,
    required this.onTap,
    required this.price,
    required this.address,
  }) : super(key: key);

  final String title;
  final double price;
  final String address;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      shadowColor: Colors.transparent,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8), side: const BorderSide(color: Color(0xffCBD4E6), width: 1)),
      child: InkWell(
        splashColor: AppColors.purpleDark.withOpacity(0.2),
        onTap: () => onTap,
        child: SizedBox(
          height: height * 0.21,
          child: Row(
            children: [
              Container(
                height: height * 0.21,
                width: width * 0.3,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/room.png'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.only(topRight: Radius.circular(8), bottomRight: Radius.circular(8)),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.01),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Text(
                                price.toString(),
                                style: const TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w700, color: AppColors.purpleDark),
                              ),
                              const Text(
                                ' ج.م',
                                style:
                                    TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: AppColors.purpleDark),
                              ),
                            ],
                          ),
                          LikeButton(onPressed: () {}),
                        ],
                      ),
                      Text(
                        title,
                        maxLines: 2,
                        softWrap: true,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(fontSize: 14, color: Colors.black),
                      ),
                      Row(
                        children: <Widget>[
                          Text(
                            address,
                            softWrap: true,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(fontSize: 12, color: Colors.black),
                          ),
                        ],
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.purpleBlue,
                          padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 20),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                        ),
                        child: const Text('اظهار رقم الهاتف',
                            style: TextStyle(color: Color(0xFFFAFAFA), fontSize: 14), overflow: TextOverflow.ellipsis),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
