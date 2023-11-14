import 'package:flutter/material.dart';
import 'package:rent_website/constants/app_colors.dart';

class CustomTextField extends StatefulWidget {
  final TextInputType type;
  final Widget? prefix;
  final Widget? suffix;
  final String hint;
  final Color? fillColor;
  final bool? enabled;
  final FocusNode? focusNode;
  final String? Function(String?)? validator;
  final void Function(String)? onChange;
  final void Function(String)? onFieldSubmitted;
  final TextEditingController? controller;
  final String? initialValue;
  final Function()? onTap;
  final double? height;
  final int? lines;
  final TextStyle? textStyle;
  final TextStyle? hintStyle;
  final bool showBorder;
  final BoxConstraints? prefixIconConstraints;
  final EdgeInsetsGeometry? padding;
  final double? vertical;
  final double? horizontal;
  const CustomTextField({
    Key? key,
    this.type = TextInputType.text,
    this.prefix,
    required this.hint,
    this.suffix,
    this.fillColor,
    this.validator,
    this.initialValue,
    this.onTap,
    this.height,
    this.enabled = true,
    this.showBorder = true,
    this.lines,
    this.onChange,
    this.controller,
    this.onFieldSubmitted,
    this.focusNode,
    this.textStyle,
    this.prefixIconConstraints,
    this.hintStyle,
    this.padding,
    this.vertical,
    this.horizontal,
  }) : super(key: key);

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool _visible = false;
  bool enabled = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          widget.padding ?? EdgeInsets.symmetric(vertical: widget.vertical ?? 0, horizontal: widget.horizontal ?? 0),
      child: SizedBox(
        height: widget.height,
        child: TextFormField(
          enabled: widget.enabled,
          controller: widget.controller,
          keyboardType: widget.type,
          readOnly: widget.onTap != null,
          initialValue: widget.initialValue,
          onTap: widget.onTap,
          validator: widget.validator,
          onChanged: widget.onChange,
          maxLines: widget.type == TextInputType.visiblePassword ? 1 : widget.lines,
          onFieldSubmitted: widget.onFieldSubmitted,
          focusNode: widget.focusNode,
          style: widget.textStyle,
          obscureText: widget.type == TextInputType.visiblePassword && !_visible,
          decoration: InputDecoration(
            hintText: widget.hint,
            hintStyle: widget.hintStyle,
            enabled: widget.enabled ?? true,
            filled: true,
            fillColor: widget.fillColor ?? Colors.white,
            errorStyle: const TextStyle(fontSize: 12, height: .9),
            border: widget.showBorder
                ? const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    borderSide: BorderSide(color: Color(0xFFA1B0CC)))
                : null,
            enabledBorder: widget.showBorder
                ? const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8.0)), borderSide: BorderSide(width: .75))
                : null,
            focusedBorder: widget.showBorder
                ? const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    borderSide: BorderSide(color: Color(0xFFA1B0CC)))
                : null,
            prefixIcon: widget.prefix,
            prefixIconConstraints: widget.prefixIconConstraints,
            suffixIcon: widget.suffix ??
                (widget.type != TextInputType.visiblePassword
                    ? null
                    : GestureDetector(
                        onTap: () => setState(() => _visible = !_visible),
                        child: Icon(_visible ? Icons.visibility_outlined : Icons.visibility_off_outlined,
                            color: AppColors.purpleBlue))),
          ),
        ),
      ),
    );
  }
}
