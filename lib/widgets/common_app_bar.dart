import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../router/my_router.dart';
import '../utils/colors.dart';
import 'common_widgets.dart';

PreferredSize commonAppBarHome(
  String title,
) {
  return PreferredSize(
      preferredSize: Size.fromHeight(75.h),
      child: Container(
        color: AppColors.primaryColor,
        child: Column(
          children: [
            AppBar(
              elevation: 0,
              backgroundColor: Colors.transparent,
              title: Text(
                "Logo",
                style: TextStyle(fontSize: 16.sp, color: Colors.white),
              ),
              centerTitle: false,
              actions: [
                IconButton(
                  onPressed: () {
                    Get.toNamed(MyRouter.signUpScreen);
                  },
                  icon: const Icon(
                    Icons.notification_important,
                    color: Colors.white,
                  ),
                ),
                addWidth(10.w),
              ],
            ),
          ],
        ),
      ));
}

AppBar commonAppBarPanditji(title) {
  title;
  Widget actions;
  return AppBar(
    elevation: 0,
    backgroundColor: AppColors.primaryColor,
    title: Text(
      title,
      style: TextStyle(color: Colors.white, fontSize: 16.sp),
    ),
    centerTitle: true,
    leading: IconButton(
      icon: const Icon(
        Icons.arrow_back,
        color: Colors.white,
      ),
      onPressed: () {
        Get.back();
      },
    ),
    actions: [
      IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.notification_add_rounded,
            color: Colors.white,
          ))
    ],
  );
}

AppBar commonAppBarPanditji1(title) {
  title;

  return AppBar(
    elevation: 0,
    backgroundColor: AppColors.primaryColor,
    title: Text(
      title,
      style: TextStyle(color: Colors.white, fontSize: 18.sp),
    ),
    centerTitle: true,
    leading: IconButton(
      icon: const Icon(
        Icons.arrow_back,
        color: Colors.white,
      ),
      onPressed: () {
        Get.back();
      },
    ),
    actions: [
      IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.search,
            color: Colors.white,
          ))
    ],
  );
}

AppBar commonAppBarPanditji2(title) {
  title;

  return AppBar(
    elevation: 0,
    backgroundColor: AppColors.primaryColor,
    title: Text(
      title,
      style: TextStyle(color: Colors.white, fontSize: 18.sp),
    ),
    centerTitle: true,
    leading: IconButton(
      icon: const Icon(
        Icons.arrow_back,
        color: Colors.white,
      ),
      onPressed: () {
        Get.back();
      },
    ),
  );
}
