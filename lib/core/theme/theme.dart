import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rent_website/constants/app_colors.dart';

ThemeData lightTheme(BuildContext context) {
  final textTheme = Theme.of(context).textTheme;
  return ThemeData.light().copyWith(
    primaryColorLight: AppColors.lightIndigo,
    textTheme: GoogleFonts.tajawalTextTheme(textTheme).copyWith(),
    primaryTextTheme: GoogleFonts.tajawalTextTheme(textTheme),
    primaryColor: Colors.black,
    scaffoldBackgroundColor: AppColors.backgroundColor,
    splashColor: Colors.black,
    pageTransitionsTheme: const PageTransitionsTheme(
      builders: <TargetPlatform, PageTransitionsBuilder>{
        TargetPlatform.android: ZoomPageTransitionsBuilder(),
      },
    ),
    brightness: Brightness.light,
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Colors.white,
      contentPadding: const EdgeInsets.all(8),
      border: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.transparent),
        borderRadius: BorderRadius.circular(18),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.transparent),
        borderRadius: BorderRadius.circular(18),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.transparent),
        borderRadius: BorderRadius.circular(18),
      ),
      disabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.transparent),
        borderRadius: BorderRadius.circular(18),
      ),
    ),
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: Colors.indigoAccent,
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(primary: Colors.indigoAccent),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Colors.grey,
    ),
    checkboxTheme: CheckboxThemeData(
      fillColor: MaterialStateProperty.all(Colors.indigoAccent),
    ),
    colorScheme: Theme.of(context).colorScheme.copyWith(primary: Colors.indigoAccent, secondary: Colors.indigoAccent),
  );
}
