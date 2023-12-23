import 'package:flutter/material.dart';

import '../core/animations/entrance_fader.dart';

class NavBarActionButton extends StatefulWidget {
  final String label;
  final int index;
  const NavBarActionButton({
    Key? key,
    required this.label,
    required this.index,
  }) : super(key: key);

  @override
  State<NavBarActionButton> createState() => _NavBarActionButtonState();
}

class _NavBarActionButtonState extends State<NavBarActionButton> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    // theme
    // var theme = Theme.of(context);
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
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Text(
            widget.label,
            style: TextStyle(
                color: isHover ? Colors.orange : Colors.black,
                fontFamily: 'josefinsans',
                fontWeight: FontWeight.w300,
                fontSize: screenWidth < 1200 ? 20 : 25),
          ),
        ),
      ),
    );
  }
}
