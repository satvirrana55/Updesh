import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:updesh/ui/astrologer/dashboard/dashboard_bottom_navigation_bar.dart';
import 'package:updesh/ui/astrologer/faq/faq.dart';
import 'package:updesh/ui/common/login_screen.dart';
import 'package:updesh/ui/common/signup_screen.dart';
import 'package:updesh/ui/common/verify_otp_screen.dart';
import '../ui/astrologer/personal_details_screen.dart';
import '../ui/astrologer/consultation_charges_screen.dart';
import '../ui/common/onboarding_screen.dart';
import '../ui/common/splash_screen.dart';

class MyRouter {
  static var onBoardingProcessScreen = "/onBoardingProcessScreen";
  static var loginScreen = "/loginScreen";
  static var verifyOtpScreen = "/verifyOtpScreen";
  static var signUpScreen = "/signUpScreen";
  static var panditjiPersonalDetailsScreen = "/panditjiPersonalDetailsScreen";
  static var consultationScreen = "/consultationScreen";
  static var homeScreenAstrologer = "/homeScreenAstrologer";
  static var faq = "/faq";

  static var route = [
    GetPage(name: '/', page: () => SplashScreen()),
    GetPage(
        name: MyRouter.onBoardingProcessScreen, page: () => OnBoardingScreen()),
    GetPage(name: MyRouter.loginScreen, page: () => const LoginScrren()),
    GetPage(name: MyRouter.verifyOtpScreen, page: () => const OTPScreen()),
    GetPage(name: MyRouter.signUpScreen, page: () => const SignUpScreen()),
    GetPage(
        name: MyRouter.panditjiPersonalDetailsScreen,
        page: () => PanditjiPersonalDetailsScreen()),
    GetPage(
        name: MyRouter.consultationScreen,
        page: () => const ConsultationScreen()),
    GetPage(
        name: MyRouter.homeScreenAstrologer,
        page: () => const DashboardBottomNavigation()),
    GetPage(name: MyRouter.faq, page: () => const Faq()),
  ];
}
