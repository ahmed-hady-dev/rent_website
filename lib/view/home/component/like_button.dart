import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';

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
