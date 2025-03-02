import 'package:flutter/material.dart';

import '../helper/constants.dart';

ThemeData customLightThemeData() {
  return ThemeData.light(useMaterial3: false).copyWith(
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: kPrimaryColor
    ),
      focusColor: Colors.black,
      primaryColorLight: const Color(0xff664B00),
      iconTheme: const IconThemeData(color: Colors.black),
    primaryIconTheme: const IconThemeData(color: kPrimaryColor),
    textTheme: const TextTheme(
      titleLarge: TextStyle(color: Colors.black),
    ),
  );
}
