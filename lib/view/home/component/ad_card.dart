import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:rent_website/components/text_with_padding.dart';
import 'package:rent_website/constants/app_colors.dart';
import 'package:rent_website/constants/app_const.dart';

class AdCard extends StatelessWidget {
  const AdCard({
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
    return Ink(
      color: Colors.white,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: const Color(0xffCBD4E6), width: 1),
          borderRadius: BorderRadius.circular(4),
        ),
        child: InkWell(
          onTap: onTap,
          splashColor: AppColors.purpleDark.withOpacity(0.2),
          hoverColor: Colors.white,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: height * 0.17,
                decoration: const BoxDecoration(
                  // color: AppColors.purpleDark,
                  image: DecorationImage(image: AssetImage('assets/images/room.png')),
                  borderRadius: BorderRadius.all(Radius.circular(4)),
                ),
              ),
              const Gap(12),
              Row(
                children: <Widget>[
                  const Gap(12),
                  Text(
                    price.toString(),
                    style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w400, color: AppColors.purpleDark),
                  ),
                  const Text(
                    ' ج.م',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400, color: AppColors.purpleDark),
                  ),
                  const Spacer(),
                  LikeButton(onPressed: () {}),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  title,
                  softWrap: true,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontSize: 16, color: Colors.black),
                ),
              ),
              const Spacer(),
              TextWithPadding(text: address, style: const TextStyle(fontSize: 14, color: Colors.black), horizontal: 8),
              TextWithPadding(
                  text: timeAgo, style: const TextStyle(fontSize: 14, color: Colors.black), horizontal: 8, vertical: 8),
            ],
          ),
        ),
      ),
    );
  }
}

class LikeButton extends StatefulWidget {
  const LikeButton({Key? key, required this.onPressed, this.color = Colors.black12}) : super(key: key);
  final Function onPressed;
  final Color color;
  @override
  _LikeButtonState createState() => _LikeButtonState();
}

class _LikeButtonState extends State<LikeButton> {
  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isLiked ? Icons.favorite : Icons.favorite_border,
        color: AppColors.purpleDark,
      ),
      splashRadius: 16,
      splashColor: AppColors.purpleDark.withOpacity(0.6),
      onPressed: () {
        setState(() {
          isLiked = !isLiked;
        });
        widget.onPressed();
      },
    );
  }
}
