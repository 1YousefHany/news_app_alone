import 'package:flutter/material.dart';

ThemeData customDarkThemeData() {
  return ThemeData.dark(useMaterial3: false).copyWith(
    progressIndicatorTheme: const ProgressIndicatorThemeData(color: Colors.white),
    textTheme: const TextTheme(
      titleLarge: TextStyle(color: Colors.white
      ),
    ),
  );
}
