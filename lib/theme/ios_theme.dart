import 'package:flutter/material.dart';

class ArkeofiliColors {
  static Color mainColor = const Color(0xFF96D9D9);
  static Color lightGreen = const Color(0xFFB4D5D9);
  static Color darkGreen = const Color(0xFF3E8C84);
  static Color grey = Colors.grey;
  static Color white = Colors.white;
  static Color darkBlack = const Color(0xFF141414);
  static Color lightBlack = const Color(0xFF3D5A5A);
  static Color red = Colors.red.shade900;
}

final iosTheme = ThemeData(
  //ColorScheme Ayarlari
  colorScheme: ColorScheme(
    brightness: Brightness.light,
    primary: ArkeofiliColors.mainColor,
    error: ArkeofiliColors.red,
    onError: ArkeofiliColors.white,
    onBackground: ArkeofiliColors.darkBlack,
    secondary: ArkeofiliColors.red,
    surface: ArkeofiliColors.darkBlack,
    background: ArkeofiliColors.darkBlack,
    onPrimary: ArkeofiliColors.darkBlack,
    onSecondary: ArkeofiliColors.red,
    onSurface: ArkeofiliColors.darkBlack,
  ),

  //AppBar Ayarları
  appBarTheme: AppBarTheme(
    color: ArkeofiliColors.mainColor,
    iconTheme: IconThemeData(color: ArkeofiliColors.mainColor),
  ),
  //Icon Button Ayarları
  iconButtonTheme: IconButtonThemeData(
    style: ButtonStyle(
        iconColor: MaterialStatePropertyAll(
      ArkeofiliColors.darkBlack,
    )),
  ),
  //Drawer Ayarları
  drawerTheme: DrawerThemeData(
    backgroundColor: ArkeofiliColors.grey,
  ),
  //Icon Ayarları
  iconTheme: IconThemeData(color: ArkeofiliColors.darkGreen),
//!
  //TextTheme Ayarları
  textTheme: TextTheme(
    displayLarge: TextStyle(fontSize: 96, fontWeight: FontWeight.w300, color: ArkeofiliColors.white),
    displayMedium: TextStyle(fontSize: 60, fontWeight: FontWeight.w400, color: ArkeofiliColors.darkBlack),
    displaySmall: TextStyle(fontSize: 48, fontWeight: FontWeight.w400, color: ArkeofiliColors.darkBlack),
    headlineMedium: TextStyle(fontSize: 34, fontWeight: FontWeight.w400, color: ArkeofiliColors.darkBlack),
    headlineSmall: TextStyle(fontSize: 24, fontWeight: FontWeight.w400, color: ArkeofiliColors.darkBlack),
    titleLarge: TextStyle(
      //başlıklar
      fontSize: 20,
      fontWeight: FontWeight.w500,
      color: ArkeofiliColors.white,
    ),
    bodyLarge: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: ArkeofiliColors.darkBlack),
    bodyMedium: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: ArkeofiliColors.lightBlack),
    bodySmall: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: ArkeofiliColors.lightBlack),
    labelLarge: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: ArkeofiliColors.lightBlack),
  ),

  //BottomAppBar Theme Ayarları
  bottomAppBarTheme: BottomAppBarTheme(
    color: ArkeofiliColors.grey,
    surfaceTintColor: ArkeofiliColors.mainColor,
  ),
  cardColor: ArkeofiliColors.grey,

  //InputDecoration Ayarlari
  inputDecorationTheme: InputDecorationTheme(
    prefixIconColor: ArkeofiliColors.darkBlack,
    iconColor: ArkeofiliColors.darkBlack,
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(
        color: ArkeofiliColors.darkBlack,
        width: 2,
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(color: ArkeofiliColors.lightBlack, width: 1.5),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(color: ArkeofiliColors.red, width: 2),
    ),
  ),
);
