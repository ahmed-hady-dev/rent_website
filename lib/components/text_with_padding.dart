import 'package:flutter/material.dart';

class TextWithPadding extends StatelessWidget {
  final String text;
  final EdgeInsetsGeometry? padding;
  final TextStyle? style;
  final double? vertical;
  final double? horizontal;
  final bool? softWrap;
  final int? maxLines;
  final TextOverflow? overflow;
  const TextWithPadding(
      {Key? key,
      required this.text,
      this.padding,
      this.vertical,
      this.horizontal,
      this.style,
      this.softWrap,
      this.maxLines,
      this.overflow})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.symmetric(vertical: vertical ?? 0, horizontal: horizontal ?? 0),
      child: Text(
        text,
        style: style,
        softWrap: softWrap,
        overflow: overflow ?? TextOverflow.ellipsis,
        maxLines: maxLines ?? 3,
        textAlign: TextAlign.center,
      ),
    );
  }
}
