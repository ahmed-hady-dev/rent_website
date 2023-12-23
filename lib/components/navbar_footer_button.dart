import 'package:flutter/material.dart';

import '../core/animations/entrance_fader.dart';
import '../core/res/responsive.dart';

class NavBarFooterButton extends StatefulWidget {
  final String label;
  final int index;
  const NavBarFooterButton({
    Key? key,
    required this.label,
    required this.index,
  }) : super(key: key);

  @override
  State<NavBarFooterButton> createState() => _NavBarFooterButtonState();
}

class _NavBarFooterButtonState extends State<NavBarFooterButton> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return EntranceFader(
      offset: const Offset(0, -10),
      delay: const Duration(milliseconds: 1000),
      duration: const Duration(milliseconds: 250),
      child: InkWell(
        onHover: (value) {
          setState(() => isHover = value);
        },
        onTap: () {},
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: !Responsive.isWeb(context) ? 10 : 20, vertical: 10),
          child: Text(
            widget.label,
            style: TextStyle(
                color: isHover ? Colors.orange : Colors.white,
                fontFamily: 'josefinsans',
                fontWeight: FontWeight.w300,
                fontSize: !Responsive.isWeb(context) ? 14 : 25),
          ),
        ),
      ),
    );
  }
}
