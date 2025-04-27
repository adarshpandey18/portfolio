import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/utils/colors/custom_colors.dart';

class CustomTextTheme {
  CustomTextTheme._();
  static TextTheme customTextTheme = TextTheme(
    displayLarge: TextStyle(
      fontSize: 55,
      fontWeight: FontWeight.bold,
      color: CustomColors.textColor,
      fontFamily: GoogleFonts.poppins().fontFamily,
    ),
    bodyLarge: TextStyle(
      fontSize: 30,
      color: CustomColors.textColor,
      fontFamily: GoogleFonts.poppins().fontFamily,
    ),
    bodyMedium: TextStyle(
      fontSize: 25,
      color: CustomColors.labelTextColor,
      fontFamily: GoogleFonts.poppins().fontFamily,
    ),
    bodySmall: TextStyle(
      fontSize: 20,
      color: CustomColors.textColor,
      fontFamily: GoogleFonts.poppins().fontFamily,
    ),
    labelLarge: TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.w100,
      color: CustomColors.labelTextColor,
      fontFamily: GoogleFonts.poppins().fontFamily,
    ),
    labelMedium: TextStyle(
      fontSize: 10,
      color: CustomColors.labelTextColor,
      fontFamily: GoogleFonts.poppins().fontFamily,
    ),
    labelSmall: TextStyle(
      fontSize: 5,
      color: CustomColors.labelTextColor,
      fontFamily: GoogleFonts.poppins().fontFamily,
    ),
  );
}
