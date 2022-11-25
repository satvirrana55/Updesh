import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/colors.dart';
import '../utils/text_styles.dart';
import '../widgets/common_widgets.dart';

ThemeData lightTheme({required context}) {
  return ThemeData(
    scaffoldBackgroundColor: AppColors.white,
    dividerColor: AppColors.borderColor,
    appBarTheme: AppBarTheme(
      elevation: 2.0,
      backgroundColor: AppColors.white,
      titleTextStyle: AppTextStyles.size18WithW500,
    ),
    inputDecorationTheme: InputDecorationTheme(
      isDense: true,
      filled: true,
      disabledBorder: commonInputDecoration(),
      focusedBorder: commonInputDecoration(),
      border: commonInputDecoration(),
      enabledBorder: commonInputDecoration(),
      errorBorder: commonInputDecoration(),
      fillColor: AppColors.white,
      errorStyle: GoogleFonts.poppins(
        fontSize: 16.0,
        color: Colors.red[700],
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        primary: AppColors.borderColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            20.0,
          ),
        ),
      ),
    ),
    primarySwatch: Colors.orange,
    textTheme: GoogleFonts.poppinsTextTheme(
      Theme.of(context).textTheme,
    ),
  );
}
