import 'package:flutter/material.dart';
import 'package:portfolio/utils/colors/custom_colors.dart';
import 'package:portfolio/utils/theme/custom_text_theme.dart';

class CustomTheme {
  CustomTheme._();
  static ThemeData customThemeData = ThemeData(
    useMaterial3: true,
    applyElevationOverlayColor: true,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: CustomColors.scaffoldColor,
    colorSchemeSeed: CustomColors.accentColor,
    textTheme: CustomTextTheme.customTextTheme,
    
  );
}
