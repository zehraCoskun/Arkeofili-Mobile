import 'package:arkeofili_mobile/route/router_generator.dart';
import 'package:arkeofili_mobile/theme/theme_settings.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeSettings.lightTheme(),
    themeMode: ThemeMode.system,
    initialRoute: "/home",
    onGenerateRoute: (settings) => RouterGenerator.routePath(settings),
  ));
}
