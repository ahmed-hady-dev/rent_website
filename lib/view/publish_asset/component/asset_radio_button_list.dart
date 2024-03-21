// import 'package:flutter/material.dart';
// import 'package:rent_website/constants/app_colors.dart';
// import 'package:rent_website/constants/app_colors.dart';
//
// class AssetRadioButtonList extends StatefulWidget {
//   const AssetRadioButtonList({
//     super.key,
//   });
//
//   @override
//   State<AssetRadioButtonList> createState() => _AssetRadioButtonListState();
// }
//
// class _AssetRadioButtonListState extends State<AssetRadioButtonList> {
//
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 200,
//       width: 230,
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         mainAxisSize: MainAxisSize.min,
//         children: <Widget>[
//           RadioListTile<String>(
//             title: Text(
//               'اعلان مجاني',
//               style: TextStyle(color: Colors.black),
//             ),
//             value: 'free',
//             groupValue: _radioValue,
//             onChanged: (value) {
//               setState(() {
//                 _radioValue = value!;
//               });
//             },
//             activeColor: AppColors.purpleDark,
//             mouseCursor: SystemMouseCursors.click,
//             contentPadding: EdgeInsets.zero,
//           ),
//           RadioListTile<String>(
//             title: Text(
//               'اعلان مميز (مدفوع)',
//               style: TextStyle(color: Colors.black),
//             ),
//             value: 'premium',
//             groupValue: _radioValue,
//             onChanged: (value) {
//               setState(() {
//                 _radioValue = value!;
//               });
//             },
//             activeColor: AppColors.purpleDark,
//             mouseCursor: SystemMouseCursors.click,
//             contentPadding: EdgeInsets.zero,
//           ),
//         ],
//       ),
//     );
//   }
// }
