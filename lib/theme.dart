import 'package:flutter/material.dart';
import 'app_colors.dart';

ThemeData getTheme(BuildContext context, String fontFamily) {
  return ThemeData(
    fontFamily: fontFamily,
    disabledColor: AppColors.disabledColor,
    appBarTheme: AppBarTheme(
      color: AppColors.primary,
      iconTheme: IconThemeData(
        color: AppColors.secundary,
      ),
      brightness: Brightness.dark,
    ),
    iconTheme: IconThemeData(
      size: 18.0,
      color: AppColors.iconsColor,
    ),
    accentIconTheme: IconThemeData(
      color: AppColors.attentionColor,
    ),
    hintColor: AppColors.hintColor,
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: AppColors.primary,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        unselectedItemColor: AppColors.menuIconsColor,
        selectedItemColor: AppColors.secundary,
        backgroundColor: AppColors.menuColor),
    primaryColor: AppColors.primary,
    backgroundColor: AppColors.secundary,
    textTheme: TextTheme(
      headline5: TextStyle(color: AppColors.iconsColor),
    ),
    inputDecorationTheme: InputDecorationTheme(
      border: UnderlineInputBorder(
        borderSide: BorderSide(
          color: AppColors.primary,
          width: 1.5,
        ),
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: AppColors.primary,
          width: 1.5,
        ),
      ),
      errorBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: AppColors.primary,
          width: 1.5,
        ),
      ),
    ),
  );
}
