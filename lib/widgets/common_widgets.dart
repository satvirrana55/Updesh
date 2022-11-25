import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../theme/app_assets.dart';
import '../utils/colors.dart';

BoxDecoration commonDecoration(color) {
  color;
  return BoxDecoration(
      color: color,
      border: Border.all(color: AppColors.borderColor, width: 1),
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10), bottomRight: Radius.circular(10)));
}

BoxDecoration commonDecorationButton(color) {
  color;
  return BoxDecoration(
      color: color,
      border: Border.all(color: AppColors.primaryColor, width: 1),
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20), bottomRight: Radius.circular(20)));
}

SizedBox addHeight(double size) => SizedBox(height: size.h);

SizedBox addWidth(double size) => SizedBox(width: size.w);

Center logoWelcome() {
  return Center(
    child: CircleAvatar(
      radius: 50.h,
      backgroundImage: AssetImage(Ig.logo),
    ),
  );
}

OutlineInputBorder commonInputDecoration() {
  return OutlineInputBorder(
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10), bottomRight: Radius.circular(10)),
      borderSide: BorderSide(color: AppColors.borderColor, width: (1)));
}

GestureDetector CommonButton(text, onTap) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      height: 54.h,
      width: 396.w,
      alignment: Alignment.center,
      decoration: commonDecorationButton(AppColors.primaryColor),
      child: Text(
        text,
        style: GoogleFonts.poppins(
            color: AppColors.textColor5,
            fontSize: 16.sp,
            fontWeight: FontWeight.w600),
      ),
    ),
  );
}
