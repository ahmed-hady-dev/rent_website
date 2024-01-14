import 'package:flutter/material.dart';
import 'package:rent_website/constants/app_const.dart';

import '../../../constants/app_colors.dart';
import 'like_button.dart';

class HorizontalAdCard extends StatelessWidget {
  const HorizontalAdCard({
    Key? key,
    required this.title,
    required this.onTap,
    required this.price,
    required this.address,
    required this.timeAgo,
  }) : super(key: key);

  final String title;
  final double price;
  final String address;
  final String timeAgo;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      shape: const RoundedRectangleBorder(side: BorderSide(color: Color(0xffCBD4E6), width: 1)),
      child: InkWell(
        splashColor: AppColors.purpleDark.withOpacity(0.2),
        onTap: () => onTap,
        child: SizedBox(
          height: height * 0.35,
          child: Row(
            children: [
              SizedBox(
                height: height * 0.35,
                width: width * 0.25,
                child: Image.asset('assets/images/room.png', fit: BoxFit.cover),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.015, vertical: height * 0.0),
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
                                    fontSize: 24, fontWeight: FontWeight.w700, color: AppColors.purpleDark),
                              ),
                              const Text(
                                ' ج.م',
                                style:
                                    TextStyle(fontSize: 24, fontWeight: FontWeight.w700, color: AppColors.purpleDark),
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
                        style: const TextStyle(fontSize: 32, color: Colors.black),
                      ),
                      Row(
                        children: <Widget>[
                          Text(
                            address,
                            softWrap: true,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(fontSize: 18, color: Colors.black),
                          ),
                          Text(
                            timeAgo,
                            softWrap: true,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(fontSize: 18, color: Colors.black),
                          ),
                        ],
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.purpleBlue,
                          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                        ),
                        child: const Text('مكالمة هاتفية',
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
