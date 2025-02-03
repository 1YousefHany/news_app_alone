import 'package:flutter/material.dart';

ThemeData customLightThemeData() {
  return ThemeData.light().copyWith(
      primaryColorLight: const Color(0xff664B00),
      iconTheme: const IconThemeData(color: Colors.white)
  );
}
