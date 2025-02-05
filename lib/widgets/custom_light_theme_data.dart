import 'package:flutter/material.dart';

ThemeData customLightThemeData() {
  return ThemeData.light(useMaterial3: false).copyWith(
      primaryColorLight: const Color(0xff664B00),
      iconTheme: const IconThemeData(color: Colors.white),
    textTheme: const TextTheme(
      titleLarge: TextStyle(color: Colors.black),
    ),
  );
}
