import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

import '../router/my_router.dart';
import '../theme/app_assets.dart';
import '../utils/colors.dart';
import '../utils/text_styles.dart';
import 'common_app_bar.dart';
import 'common_widgets.dart';

SafeArea myDrawer(BuildContext context) {
  return SafeArea(
    bottom: true,
    child: Drawer(
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height.h,
            margin: EdgeInsets.all(10),
            width: 350.w,
            child: ListView(
              children: [
                Container(
                  height: 100,
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Get.toNamed(MyRouter.homeScreenAstrologer);
                        },
                        child: Container(
                          height: 80,
                          width: 80,
                          child: CircleAvatar(
                              backgroundImage: AssetImage(Ig.personMyAccount)),
                        ),
                      ),
                      addWidth(25.w),
                      Text(
                        "Manish Nighot",
                        style: TextStyle(
                            fontSize: 18.sp, fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      IconButton(
                          onPressed: () {
                            Get.back();
                          },
                          icon: Icon(Icons.close))
                    ],
                  ),
                ),
                addHeight(20.h),
                InkWell(
                    onTap: () {
                      print("click");
                      Get.toNamed(MyRouter.homeScreenAstrologer);
                    },
                    child: commondrawerContainer(
                        Icons.person_outline_outlined, "My Account")),
                addHeight(15.h),
                InkWell(
                    onTap: () {
                      Get.toNamed(MyRouter.homeScreenAstrologer);
                    },
                    child: commondrawerContainer(Icons.wallet, "My Wallet")),
                addHeight(15.h),
                InkWell(
                    onTap: () {
                      Get.toNamed(MyRouter.homeScreenAstrologer);
                    },
                    child:
                        commondrawerContainer(Icons.message, "My Pandit ji")),
                addHeight(15.h),
              ],
            ),
          ),
          Spacer(),
          Container(
            padding: EdgeInsets.all(20),
            height: 76.h,
            color: AppColors.primaryColor,
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    "Privacy Policy",
                    style: TextStyle(fontSize: 14.sp, color: Colors.white),
                  ),
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    "Terms of Services",
                    style: TextStyle(fontSize: 14.sp, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

Container commondrawerContainer(icon, text) {
  icon;
  text;
  return Container(
      height: 50.h,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(30)),
          border: Border.all(
              width: 1,
              color: Color.fromRGBO(224, 224, 224, 1).withOpacity(0.6))),
      child: Row(
        children: [
          addWidth(18.w),
          Icon(
            icon,
            size: 18,
            color: AppColors.primaryColor,
          ),
          addWidth(24.w),
          Text(
            text,
            style: GoogleFonts.poppins(
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
                color: Color(0xff111115)),
          ),
          Spacer(),
          IconButton(
            icon: const Icon(Icons.arrow_forward_ios,
                size: 16, color: Color.fromRGBO(73, 79, 89, 1)),
            onPressed: () {},
          ),
        ],
      ));
}
