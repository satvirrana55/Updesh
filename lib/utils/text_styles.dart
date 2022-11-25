// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:google_fonts/google_fonts.dart';
//
// import 'colors.dart';
//
import 'dart:ui';

import 'package:flutter/src/painting/text_style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';

class AppTextStyles {
  static TextStyle size12WithW400 = GoogleFonts.poppins(
    color: AppColors.textColor,
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
  );
  static TextStyle size12WithW500darkBlack = GoogleFonts.poppins(
    color: AppColors.textColorBlack,
    fontSize: 12.sp,
    fontWeight: FontWeight.w500,
  );
  static TextStyle size14WithW400 = GoogleFonts.poppins(
    color: AppColors.textColor,
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
  );
  static TextStyle size14WithW400darkBlack = GoogleFonts.poppins(
    color: AppColors.textColorBlack,
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
  );
  static TextStyle size14WithW400353535 = GoogleFonts.poppins(
    color: Color(0xff353535),
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
  );

  static TextStyle size14WithW500 = GoogleFonts.poppins(
    color: const Color(0xFF111115),
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
  );
  static TextStyle size14WithW500darkblack = GoogleFonts.poppins(
    color: const Color(0xFF111115),
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
  );
  static TextStyle size14WithW400darkblack = GoogleFonts.poppins(
    color: const Color(0xFF111115),
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
  );

  static TextStyle size16WithW400 = GoogleFonts.poppins(
    color: AppColors.textColor,
    fontSize: 16.sp,
    fontWeight: FontWeight.w400,
  );
  static TextStyle size16WithW400k = GoogleFonts.poppins(
    color: const Color(0xFF111115),
    fontSize: 16.sp,
    fontWeight: FontWeight.w400,
  );
  static TextStyle size16WithW600kblack = GoogleFonts.poppins(
    color: const Color(0xFF111115),
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
  );
  static TextStyle size16WithW500 = GoogleFonts.poppins(
    color: const Color(0xFF111115),
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
  );
  static TextStyle size16WithW400darkColor = GoogleFonts.poppins(
    color: const Color(0xFF111115),
    fontSize: 16.sp,
    fontWeight: FontWeight.w400,
  );
  static TextStyle size16WithW600darkblack = GoogleFonts.poppins(
    color: const Color(0xFF000000),
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
  );

  static TextStyle size18WithW600 = GoogleFonts.poppins(
    color: const Color(0xFF111115),
    fontSize: 18.sp,
    fontWeight: FontWeight.w600,
  );
  static TextStyle size18WithW500 = GoogleFonts.poppins(
    color: const Color(0xFF111115),
    fontSize: 18.sp,
    fontWeight: FontWeight.w500,
  );
  static TextStyle size20WithW500 = GoogleFonts.poppins(
    color: const Color(0xFF111115),
    fontSize: 20.sp,
    fontWeight: FontWeight.w500,
  );
  static TextStyle size24WithW500 = GoogleFonts.poppins(
    color: const Color(0xFF111115),
    fontSize: 24.sp,
    fontWeight: FontWeight.w500,
  );

  static TextStyle size24WithW400 = GoogleFonts.poppins(
    color: const Color(0xFF111115),
    fontSize: 24.sp,
    fontWeight: FontWeight.w400,
  );

  static TextStyle commonButtonTextWhite = GoogleFonts.poppins(
    color: const Color(0xFFFFFFFF),
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
  );
}
//   static TextStyle textSize24With500WeightBlack = GoogleFonts.poppins(
//     color: AppColors.black,
//     fontSize: 24.0,
//     fontWeight: FontWeight.w500,
//   );
//   static TextStyle textSize18With500WeightBlack = GoogleFonts.poppins(
//     color: AppColors.black,
//     fontSize: 18.0,
//     fontWeight: FontWeight.w500,
//   );
//   static TextStyle textSize18With500WeightBlackMainColor = GoogleFonts.poppins(
//     color: AppColors.blackMainColor,
//     fontSize: 18.0,
//     fontWeight: FontWeight.w500,
//   );
//   static TextStyle textSize18With500WeightWhite = GoogleFonts.poppins(
//     color: AppColors.white,
//     fontSize: 18.0,
//     fontWeight: FontWeight.w500,
//   );
//   static TextStyle textSize18With500WeightprimaryColor = GoogleFonts.poppins(
//     color: AppColors.primaryColor,
//     fontSize: 18.0,
//     fontWeight: FontWeight.w500,
//   );
//   static TextStyle textSize18With600WeightprimaryColor = GoogleFonts.poppins(
//     color: AppColors.primaryColor,
//     fontSize: 18.0,
//     fontWeight: FontWeight.w600,
//   );
//   static TextStyle textSize18With500WeightSecondaryBlack = GoogleFonts.poppins(
//     color: AppColors.secondaryBlack,
//     fontSize: 18.0,
//     fontWeight: FontWeight.w500,
//   );
//
//   static TextStyle textSize16With400WeightGray = GoogleFonts.poppins(
//     color: AppColors.gray,
//     fontSize: 16.0,
//     fontWeight: FontWeight.w400,
//   );
//   static TextStyle textSize16With400WeightprimaryColor = GoogleFonts.poppins(
//     color: AppColors.primaryColor,
//     fontSize: 16.0,
//     fontWeight: FontWeight.w400,
//   );
//   static TextStyle textSize16With500WeightBlack = GoogleFonts.poppins(
//     color: AppColors.black,
//     fontSize: 16.0,
//     fontWeight: FontWeight.w500,
//   );
//   static TextStyle textSize16With500WeightBlackMainColor = GoogleFonts.poppins(
//     color: AppColors.blackMainColor,
//     fontSize: 16.0,
//     fontWeight: FontWeight.w500,
//   );
//   static TextStyle textSize16With500WeightBrownBorderColor =
//       GoogleFonts.poppins(
//     color: AppColors.brownBorderColor,
//     fontSize: 16.0,
//     fontWeight: FontWeight.w500,
//   );
//   static TextStyle textSize16With500WeightPureBlack = GoogleFonts.poppins(
//     color: AppColors.pureBlackColor,
//     fontSize: 16.0,
//     fontWeight: FontWeight.w500,
//   );
//   static TextStyle textSize16With500WeightWhite = GoogleFonts.poppins(
//     color: AppColors.white,
//     fontSize: 16.0,
//     fontWeight: FontWeight.w500,
//   );
//   static TextStyle textSize16With500WeightNormalBlack = GoogleFonts.poppins(
//     color: Colors.black,
//     fontSize: 16.0,
//     fontWeight: FontWeight.w500,
//   );
//
//   static TextStyle textSize16With500WeightGray = GoogleFonts.poppins(
//     color: AppColors.white,
//     fontSize: 16.0,
//     fontWeight: FontWeight.w400,
//   );
//   static TextStyle textSize16With500WeightSecondaryBlack = GoogleFonts.poppins(
//     color: AppColors.secondaryBlack,
//     fontSize: 16.0,
//     fontWeight: FontWeight.w500,
//   );
//   static TextStyle textSize16With400WeightSecondaryBlack = GoogleFonts.poppins(
//     color: AppColors.secondaryBlack,
//     fontSize: 16.0,
//     fontWeight: FontWeight.w400,
//   );
//   static TextStyle textSize16With400WeightThirdBlack = GoogleFonts.poppins(
//     color: AppColors.thirdBlackColor,
//     fontSize: 16.0,
//     fontWeight: FontWeight.w400,
//   );
//   static TextStyle textSize16With400WeightPureBlack = GoogleFonts.poppins(
//     color: AppColors.pureBlackColor,
//     fontSize: 16.0,
//     fontWeight: FontWeight.w400,
//   );
//   static TextStyle textSize16With400WeightBlack = GoogleFonts.poppins(
//     color: AppColors.black,
//     fontSize: 16.0,
//     fontWeight: FontWeight.w400,
//   );
//   static TextStyle textSize16With400WeightIconBlack = GoogleFonts.poppins(
//     color: AppColors.iconBlack,
//     fontSize: 16.0,
//     fontWeight: FontWeight.w400,
//   );
//   static TextStyle textSize16With500WeightprimaryColor = GoogleFonts.poppins(
//     color: AppColors.primaryColor,
//     fontSize: 16.0,
//     fontWeight: FontWeight.w500,
//   );
//   static TextStyle textSize14With400WeightThirdBlack = GoogleFonts.poppins(
//     color: AppColors.thirdBlackColor,
//     fontSize: 14.0,
//     fontWeight: FontWeight.w400,
//   );
//   static TextStyle textSize14With400WeightThirdBlack2 = GoogleFonts.poppins(
//     color: const Color(0xFF979797),
//     fontSize: 14.0,
//     fontWeight: FontWeight.w400,
//   );
//   static TextStyle textSize14With400WeightsecondaryBlack = GoogleFonts.poppins(
//     color: AppColors.secondaryBlack,
//     fontSize: 14.0,
//     fontWeight: FontWeight.w400,
//   );
//   static TextStyle textSize14With400WeightprimaryColor = GoogleFonts.poppins(
//     color: AppColors.primaryColor,
//     fontSize: 14.0,
//     fontWeight: FontWeight.w400,
//   );
//   static TextStyle textSize14With400WeightThirdBlackWithLessOpacity =
//       GoogleFonts.poppins(
//     color: AppColors.white.withOpacity(
//       0.89,
//     ),
//     fontSize: 14.0,
//     fontWeight: FontWeight.w400,
//   );
//   static TextStyle textSize14With400WeightBlack = GoogleFonts.poppins(
//     color: AppColors.black,
//     fontSize: 14.0,
//     fontWeight: FontWeight.w400,
//   );
//   static TextStyle textSize14With400WeightBlackMainColor = GoogleFonts.poppins(
//     color: AppColors.blackMainColor,
//     fontSize: 14.0,
//     fontWeight: FontWeight.w400,
//   );
//   static TextStyle textSize14With400WeightIconBlack = GoogleFonts.poppins(
//     color: AppColors.iconBlack,
//     fontSize: 14.0,
//     fontWeight: FontWeight.w400,
//   );
//   static TextStyle textSize14With500WeightPureBlack = GoogleFonts.poppins(
//     color: AppColors.pureBlackColor,
//     fontSize: 14.0,
//     fontWeight: FontWeight.w500,
//   );
//   static TextStyle textSize14With500WeightBlackMainColor = GoogleFonts.poppins(
//     color: AppColors.blackMainColor,
//     fontSize: 14.0,
//     fontWeight: FontWeight.w500,
//   );
//   static TextStyle textSize14With500WeightTextBlackMainColor =
//       GoogleFonts.poppins(
//     color: AppColors.textMainColor,
//     fontSize: 14.0,
//     fontWeight: FontWeight.w500,
//   );
//   static TextStyle textSize14With500WeightBlack = GoogleFonts.poppins(
//     color: AppColors.black,
//     fontSize: 14.0,
//     fontWeight: FontWeight.w500,
//   );
//   static TextStyle textSize14With500WeightprimaryColor = GoogleFonts.poppins(
//     color: AppColors.primaryColor,
//     fontSize: 14.0,
//     fontWeight: FontWeight.w500,
//   );
//   static TextStyle textSize20With600WeightPureBlack = GoogleFonts.poppins(
//     color: AppColors.pureBlackColor,
//     fontSize: 20.0,
//     fontWeight: FontWeight.w600,
//   );
//   static TextStyle textSize14With500WeightWhite = GoogleFonts.poppins(
//     color: AppColors.white,
//     fontSize: 14.0,
//     fontWeight: FontWeight.w500,
//   );
//   static TextStyle textSize14With500WeightIconBlack = GoogleFonts.poppins(
//     color: AppColors.iconBlack,
//     fontSize: 14.0,
//     fontWeight: FontWeight.w500,
//   );
//   static TextStyle textSize14With600WeightBlack = GoogleFonts.poppins(
//     color: AppColors.black,
//     fontSize: 14.0,
//     fontWeight: FontWeight.w600,
//   );
//
//   static TextStyle textSize12With400WeightSecondaryBlack = GoogleFonts.poppins(
//     color: AppColors.textColor,
//     fontSize: 14.sp,
//     fontWeight: FontWeight.w400,
//   );
//   static TextStyle textSize12With400WeightBlack = GoogleFonts.poppins(
//     color: Color(0xff4e4e52),
//     fontSize: 12.0,
//     fontWeight: FontWeight.w400,
//   );
//   static TextStyle textSize12With400WeightBlackMainColor = GoogleFonts.poppins(
//     color:  Color(0xff4e4e52),
//     fontSize: 12.0,
//     fontWeight: FontWeight.w400,
//   );
//   static TextStyle textSize12With400WeightSubTextColor = GoogleFonts.poppins(
//     color: AppColors.subTextColor,
//     fontSize: 14.0.sp,
//     fontWeight: FontWeight.w400,
//   );
//
//   static TextStyle textSize12With500WeightSecondaryBlack = GoogleFonts.poppins(
//     color:  Color(0xff4e4e52),
//     fontSize: 12.0.sp,
//     fontWeight: FontWeight.w500,
//   );
//   static TextStyle textSize12With500WeightWhite = GoogleFonts.poppins(
//     color: AppColors.white,
//     fontSize: 12.0,
//     fontWeight: FontWeight.w500,
//   );
//   static TextStyle textSize12With500WeightprimaryColor = GoogleFonts.poppins(
//     color: AppColors.primaryColor,
//     fontSize: 12.0,
//     fontWeight: FontWeight.w500,
//   );
//   static TextStyle textbuttonTextStyle = GoogleFonts.poppins(
//     color: AppColors.white,
//     fontSize: 16.0,
//     fontWeight: FontWeight.w500,
//   );
//
//   static TextStyle dmSerifFontHeading = GoogleFonts.dmSerifDisplay(
//     color: AppColors.black,
//     fontSize: 18.0,
//     fontWeight: FontWeight.w400,
//   );
// }
