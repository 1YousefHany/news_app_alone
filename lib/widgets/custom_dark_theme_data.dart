import 'package:flutter/material.dart';

ThemeData customDarkThemeData({required bool isDarkMode}) {
  return ThemeData.dark(useMaterial3: false).copyWith(
    iconTheme:  const IconThemeData(color: Colors.white,),
    progressIndicatorTheme: const ProgressIndicatorThemeData(color: Colors.white),
    primaryColorDark: const Color(0xff344256),
    textTheme: const TextTheme(
      titleLarge: TextStyle(color: Colors.white
      ),
    ),
  );
}
