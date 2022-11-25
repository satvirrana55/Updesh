import 'package:flutter/material.dart';
import 'package:flutter_onboard/flutter_onboard.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:updesh/ui/common/login_screen.dart';
import 'package:updesh/utils/text_styles.dart';

import '../../router/my_router.dart';
import '../../theme/app_assets.dart';
import '../../utils/colors.dart';
import '../../widgets/common_widgets.dart';

class OnBoardingScreen extends StatelessWidget {
  final PageController _pageController = PageController();

  OnBoardingScreen({Key? key}) : super(key: key);

  final List<OnBoardModel> onBoardData = [
    const OnBoardModel(
      title: "Lorem ipsum dolor sit amet, consectetur.",
      description:
          "Set your delivery location. Choose your groceries from a wide range of our required products.",
      imgUrl: Ig.onboardingImg,
    ),
    const OnBoardModel(
      title: "Lorem ipsum dolor sit amet, consectetur.",
      description:
          "Set your delivery location. Choose your groceries from a wide range of our required products.",
      imgUrl: Ig.onboardingImg,
    ),
    const OnBoardModel(
      title: "Lorem ipsum dolor sit amet, consectetur.",
      description:
          "Set your delivery location. Choose your groceries from a wide range of our required products.",
      imgUrl: Ig.onboardingImg,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 5),
        child: OnBoard(
          pageController: _pageController,
          onDone: () {},
          onBoardData: onBoardData,
          titleStyles: AppTextStyles.size24WithW500,
          descriptionStyles: AppTextStyles.size16WithW400,
          imageWidth: 372.w,
          imageHeight: 100.h,
          pageIndicatorStyle: PageIndicatorStyle(
            width: 50.w,
            inactiveColor: AppColors.primaryColor,
            activeColor: AppColors.primaryColor,
            inactiveSize: Size(7.w, 7.h),
            activeSize: Size(12.w, 12.h),
          ),
          skipButton: Column(
            children: [
              Column(
                children: [
                  OnBoardConsumer(
                    builder: (context, ref, child) {
                      final state = ref.watch(onBoardStateProvider);
                      return state.isLastPage
                          ? Container()
                          : InkWell(
                              onTap: () {
                                Get.to(() => const LoginScrren());
                              },
                              child: Container(
                                margin:
                                    const EdgeInsets.only(right: 20, top: 10),
                                decoration: commonDecoration(AppColors.white),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 16.w, vertical: 8.h),
                                child: Text("Skip",
                                    style: AppTextStyles.size16WithW500),
                              ),
                            );
                    },
                  ),
                ],
              ),
            ],
          ),
          nextButton: Padding(
            padding: const EdgeInsets.only(
              top: 10,
              bottom: 0,
            ),
            child: OnBoardConsumer(
              builder: (context, ref, child) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [],
                );
              },
            ),
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 0, top: 5),
        child: SizedBox(
          height: 130.sp,
          child: Padding(
            padding: EdgeInsets.only(
              left: 38.sp,
              right: 38.sp,
            ),
            child: Column(
              children: [
                const SizedBox(
                  width: 6,
                ),
                SizedBox(
                  height: 51.sp,
                  child: GestureDetector(
                    onTap: () {
                      Get.toNamed(MyRouter.loginScreen);
                    },
                    child: Container(
                      height: 54.h,
                      width: 258.w,
                      alignment: Alignment.center,
                      decoration:
                          commonDecorationButton(AppColors.primaryColor),
                      child: Text(
                        'Login',
                        style: GoogleFonts.poppins(
                            color: AppColors.textColor5,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),
                addHeight(10.h),
                SizedBox(
                  height: 51.sp,
                  child: GestureDetector(
                    onTap: () {
                      Get.toNamed(MyRouter.signUpScreen);
                    },
                    child: Container(
                      height: 54.h,
                      width: 258.w,
                      alignment: Alignment.center,
                      // decoration: commonDecorationButton(AppColors.white),
                      child: Text(
                        "Sign Up",
                        style: AppTextStyles.size16WithW600darkblack,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
