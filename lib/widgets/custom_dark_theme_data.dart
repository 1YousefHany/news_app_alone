import 'package:flutter/material.dart';
import 'package:news_app_alone/helper/constants.dart';

ThemeData customDarkThemeData({required bool isDarkMode}) {
  return ThemeData.dark(useMaterial3: false).copyWith(
    iconTheme: const IconThemeData(
      color: Colors.white,
    ),
    progressIndicatorTheme:
        const ProgressIndicatorThemeData(color: Colors.white),
    primaryColorDark: const Color(0xff344256),
    focusColor: kPrimaryColor,
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        color: Colors.white,
      ),
      bodyLarge: TextStyle(
        color: Colors.white,
      ),
    ),
  );
}
