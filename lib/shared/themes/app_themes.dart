import 'package:flutter/material.dart';
import 'package:keypoints/shared/themes/app_fonts.dart';

class AppThemes {
  static ThemeData light = ThemeData(
    useMaterial3: true,
    fontFamily: AppFont.roboto,
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.blueGrey,
      brightness: Brightness.light,
    ),
  );
  static ThemeData dark = ThemeData(
    useMaterial3: true,
    fontFamily: AppFont.roboto,
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.blueGrey,
      brightness: Brightness.dark,
    ),
  );
}
