import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rent_website/constants/app_colors.dart';

class FilterDropdownButton extends StatefulWidget {
  const FilterDropdownButton(
      {super.key,
      required this.items,
      required this.hintIcon,
      required this.hintText,
      required this.itemsIcon,
      this.topLeft,
      this.topRight,
      this.bottomLeft,
      this.bottomRight});
  final List<String> items;
  final Widget hintIcon;
  final String hintText;
  final IconData itemsIcon;
  final double? topLeft;
  final double? topRight;
  final double? bottomLeft;
  final double? bottomRight;
  @override
  State<FilterDropdownButton> createState() => _FilterDropdownButtonState();
}

class _FilterDropdownButtonState extends State<FilterDropdownButton> {
  String? selectedValue;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: DropdownButtonHideUnderline(
        child: DropdownButton2<String>(
          isExpanded: true,
          value: selectedValue,
          isDense: true,
          onChanged: (value) => setState(() => selectedValue = value),
          iconStyleData: const IconStyleData(iconSize: 0),
          menuItemStyleData: const MenuItemStyleData(padding: EdgeInsets.only(left: 8, right: 8)),
          hint: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              widget.hintIcon,
              const SizedBox(width: 4),
              Expanded(
                child: Text(widget.hintText,
                    style: const TextStyle(fontSize: 18, color: Color(0xFF7C8DB0)), overflow: TextOverflow.ellipsis),
              ),
            ],
          ),
          items: widget.items
              .map((String item) => DropdownMenuItem<String>(
                    value: item,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Icon(widget.itemsIcon, color: const Color(0xFF6E7491)),
                        const SizedBox(width: 4),
                        Text(
                          item,
                          style: const TextStyle(color: Color(0xFF6E7491)),
                          overflow: TextOverflow.ellipsis,
                        )
                      ],
                    ),
                  ))
              .toList(),
          buttonStyleData: ButtonStyleData(
            height: 48,
            elevation: 0,
            decoration: BoxDecoration(
              color: AppColors.backgroundColor,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(widget.bottomRight ?? 0),
                topRight: Radius.circular(widget.topRight ?? 0),
                bottomLeft: Radius.circular(widget.bottomLeft ?? 0),
                topLeft: Radius.circular(widget.topLeft ?? 0),
              ),
              border: Border.all(
                color: const Color(0xFFCBD4E6),
              ),
            ),
          ),
          dropdownStyleData: DropdownStyleData(
            elevation: 0,
            useSafeArea: true,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: AppColors.backgroundColor,
              border: Border.all(color: const Color(0xFFCBD4E6)),
            ),
            // offset: const Offset(-20, 0),
            scrollbarTheme: ScrollbarThemeData(
              radius: const Radius.circular(40),
              thickness: MaterialStateProperty.all(6),
              thumbVisibility: MaterialStateProperty.all(true),
            ),
          ),
        ),
      ),
    );
  }
}
