import 'package:arkeofili_mobile/model/enum/category_enum.dart';
import 'package:arkeofili_mobile/route/router_generator.dart';
import 'package:arkeofili_mobile/theme/theme_settings.dart';
import 'package:flutter/material.dart';

void main() {
  // postları uygulama ilk çalıştığında bir kez kagetorilerine göre listelere ayırıyor
  initializeCategories();
  
  runApp(MaterialApp(
    theme: ThemeSettings.lightTheme(),
    themeMode: ThemeMode.system,
    initialRoute: "/main",
    onGenerateRoute: (settings) => RouterGenerator.routePath(settings),
  ));
}
