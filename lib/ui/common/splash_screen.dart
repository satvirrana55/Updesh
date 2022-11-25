import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../controllers/splash_controller.dart';
import '../../../theme/app_assets.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);

  final splashScreen = Get.put(SplashScreenController());

  // final _controller = Get.put(GetHomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(Ig.splashImg), fit: BoxFit.cover)),
          child: Center(
              // child: Container(
              //   height: 338.h,
              //   width: 338.w,
              //   decoration: const BoxDecoration(
              //       image: DecorationImage(
              //           image: AssetImage(Ig.logo), fit: BoxFit.cover)),
              // ),
              ),
        ),
      ),
    );
  }
}
