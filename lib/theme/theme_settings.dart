import 'dart:io';

import 'package:arkeofili_mobile/theme/android_theme.dart';
import 'package:arkeofili_mobile/theme/ios_theme.dart';
import 'package:flutter/material.dart';

class ThemeSettings {
  static ThemeData lightTheme() {
    if (Platform.isIOS) {
      return iosTheme;
    }
    if (Platform.isAndroid) {
      return androidLightTheme;
    }
    return iosTheme;
  }
}
