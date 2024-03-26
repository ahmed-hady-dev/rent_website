import 'package:flutter/material.dart';

import '../core/router/router.dart';

class AppConst {
  static const appName = "بيتك";
  static const adPrice = 50;
  static const contactNumber = 01282917123;
}

extension Height on Widget {
  double get height => MediaQuery.of(MagicRouter.currentContext!).size.height;
}

extension Width on Widget {
  double get width => MediaQuery.of(MagicRouter.currentContext!).size.width;
}

extension HorizontalPaddingWeb on Widget {
  double get hPaddingWeb => MediaQuery.of(MagicRouter.currentContext!).size.width * 0.07;
}

extension HorizontalPaddingMobile on Widget {
  double get hPaddingMobile => MediaQuery.of(MagicRouter.currentContext!).size.width * 0.04;
}

extension StringExtension on String {
  String get capitalize => isNotEmpty ? this[0].toUpperCase() + substring(1) : this;
}

extension HexString on String {
  int toHex() => int.parse(replaceAll('#', '0xff'));
}

extension DurationExtensions on Duration {
  String toHoursMinutes() {
    String twoDigitMinutes = _toTwoDigits(inMinutes.remainder(60));
    return "${_toTwoDigits(inHours)}:$twoDigitMinutes";
  }

  String toHoursMinutesSeconds() {
    String twoDigitMinutes = _toTwoDigits(inMinutes.remainder(60));
    String twoDigitSeconds = _toTwoDigits(inSeconds.remainder(60));
    return "${_toTwoDigits(inHours)}:$twoDigitMinutes:$twoDigitSeconds";
  }

  String _toTwoDigits(int n) {
    if (n >= 10) return "$n";
    return "0$n";
  }
}
