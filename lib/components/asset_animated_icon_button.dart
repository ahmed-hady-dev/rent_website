// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class AssetAnimatedIconButton extends StatefulWidget {
  AssetAnimatedIconButton(
      {super.key,
      required this.icon,
      this.color,
      this.onTap,
      this.padding,
      this.margin,
      this.iconColor,
      this.iconSize,
      this.radius,
      this.child});
  final IconData? icon;
  final Widget? child;
  final double? padding;
  final double? margin;
  final double? radius;
  final double? iconSize;
  final void Function()? onTap;
  final Color? iconColor;
  final Color? color;
  @override
  State<AssetAnimatedIconButton> createState() => _AssetAnimatedIconButtonState();
}

class _AssetAnimatedIconButtonState extends State<AssetAnimatedIconButton> {
  bool onIt = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (value) {
        setState(() {
          onIt = true;
        });
      },
      onExit: (value) {
        setState(() {
          onIt = false;
        });
      },
      child: InkWell(
        onTap: widget.onTap,
        hoverColor: Colors.transparent,
        splashColor: Colors.transparent,
        child: AnimatedContainer(
          padding: EdgeInsets.all(widget.padding ?? 8),
          margin: EdgeInsets.all(widget.margin ?? 8),
          duration: const Duration(milliseconds: 100),
          decoration: BoxDecoration(
            color: onIt ? (widget.color ?? AppColors.purpleBlue.withOpacity(0.7)) : Colors.transparent,
            borderRadius: BorderRadius.circular(widget.radius ?? 50.0),
          ),
          child: widget.child ??
              Icon(
                widget.icon,
                size: widget.iconSize,
                color: widget.iconColor ?? AppColors.purpleBlue,
              ),
        ),
      ),
    );
  }
}
