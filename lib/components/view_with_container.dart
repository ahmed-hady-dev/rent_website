import 'package:flutter/material.dart';

class ViewWithContainer extends StatefulWidget {
  const ViewWithContainer({super.key, required this.children});
  final List<Widget> children;
  @override
  State<ViewWithContainer> createState() => _ViewWithContainerState();
}

class _ViewWithContainerState extends State<ViewWithContainer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Scrollbar(
          thumbVisibility: true,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const Expanded(flex: 1, child: SizedBox()),
                ...widget.children,
                const Expanded(flex: 1, child: SizedBox()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
