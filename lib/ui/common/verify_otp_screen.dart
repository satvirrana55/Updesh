import 'dart:async';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:updesh/router/my_router.dart';
import 'package:updesh/widgets/common_widgets.dart';

import '../../args/otp_details.dart';
import '../../utils/colors.dart';
import '../../utils/text_styles.dart';

class OTPScreen extends StatefulWidget {
  static const String route = 'otp_screen';
  final arguments;
  const OTPScreen({
    Key? key,
    this.arguments,
  }) : super(key: key);

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  // final AuthController authController = Get.find();
  String currentText = "";
  final int type = 1;
  final _formKey = GlobalKey<FormState>();
  double progress = 0;
  int secondsRemaining = 60;
  bool enableResend = false;
  Timer? timer;
  String mobileNumber = "";
  String countryCode = "";

  @override
  initState() {
    super.initState();
    countryCode = Get.arguments[0];
    mobileNumber = Get.arguments[1];
    print(countryCode + mobileNumber + "Data recived form login screen");
    timer = Timer.periodic(const Duration(seconds: 1), (_) {
      if (secondsRemaining != 0) {
        setState(() {
          secondsRemaining--;
          var per = secondsRemaining / 100;
          var total = secondsRemaining / per;
          progress = per * total;
        });
      } else {
        setState(() {
          enableResend = true;
        });
      }
    });
  }

  void _resendCode() {
    setState(() {
      secondsRemaining = 30;
      enableResend = false;
    });
  }

  @override
  dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
            child: Form(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  addHeight(59.h),
                  logoWelcome(),
                  addHeight(41.h),
                  Text(
                    "OTP Verification",
                    style: AppTextStyles.size24WithW500,
                  ),
                  addHeight(24.h),
                  RichText(
                    text: TextSpan(
                      text:
                          "Enter 4-digit verification code sent to your phone number" +
                              countryCode +
                              "  " +
                              mobileNumber,
                      style: AppTextStyles.size14WithW400,
                      children: <TextSpan>[
                        TextSpan(
                          text: " Edit",
                          style: TextStyle(
                              color: Color(0xff111115), fontSize: 14.sp),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Get.back();
                            },
                        ),
                      ],
                    ),
                  ),
                  addHeight(36.h),
                  Form(
                    key: _formKey,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 60.0,
                      ),
                      child: PinCodeTextField(
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                        appContext: context,
                        length: 4,
                        obscureText: false,
                        animationType: AnimationType.fade,
                        autoFocus: true,
                        cursorColor: AppColors.primaryColor,
                        enabled: true,
                        errorTextSpace: 32,
                        validator: (v) {
                          if (v!.length < 4) {
                            return "4 digit OTP Required";
                          } else {
                            return null;
                          }
                        },
                        keyboardType: TextInputType.number,
                        textStyle: AppTextStyles.size14WithW400,
                        pinTheme: pinTheme(),
                        animationDuration: const Duration(milliseconds: 300),
                        backgroundColor: AppColors.white,
                        enableActiveFill: true,
                        useHapticFeedback: true,
                        onCompleted: (v) async {
                          setState(() {
                            currentText = v;
                          });
                          // bool res = await authController.verifyOTP(
                          //   {
                          //     "otp": currentText,
                          //     "type": type.toString(),
                          //     "mobileNumber": widget.arguments.mobileNumber,
                          //     "mobileTelCode": widget.arguments.countryCode,
                          //   },
                          // );
                          // if (res) {
                          //   Navigator.pushNamedAndRemoveUntil(
                          //     context,
                          //     BottomNavigationScreen.route,
                          //     (route) => false,
                          //   );
                          // }
                        },
                        onChanged: (value) {
                          setState(() {
                            currentText = value;
                          });
                        },
                        beforeTextPaste: (text) {
                          print("Allowing to paste $text");
                          //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                          //but you can show anything you want here, like your pop up saying wrong paste format or etc
                          return true;
                        },
                      ),
                    ),
                  ),
                  addHeight(16.h),
                  if (!enableResend)
                    Center(
                      child: Text(
                        "Resend OTP available in $secondsRemaining s",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 14.0,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  addHeight(48.h),
                  CommonButton(
                    "Verify",
                    () async {
                      if (_formKey.currentState!.validate()) {
                        Get.toNamed(MyRouter.panditjiPersonalDetailsScreen);
                        // bool res = await authController.verifyOTP(
                        //   {
                        //     "otp": currentText,
                        //     "type": type.toString(),
                        //     "mobileNumber": widget.arguments.mobileNumber,
                        //     "mobileTelCode": widget.arguments.countryCode,
                        //   },
                        // );
                        // if (res) {
                        //   // Navigator.pushNamedAndRemoveUntil(
                        //   //   context,
                        //   //   BottomNavigationScreen.route,
                        //   //   (route) => false,
                        //   // );
                        // }
                      }
                    },
                  ),
                  addHeight(48.h),
                  if (enableResend)
                    Text(
                      "Resend OTP available",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 14.0,
                        color: AppColors.textColorBlack,
                      ),
                    ),
                  if (enableResend) addHeight(16.h),
                  if (enableResend)
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Container(
                            height: 62,
                            width: 135,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10)),
                              color: const Color(0xFFFFF3E5),
                            ),
                            child: Center(
                              child: Text(
                                "Resend OTP on\nSMS",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14.0,
                                  color: AppColors.textColorBlack,
                                ),
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            height: 62,
                            width: 135,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10)),
                              color: const Color(0xFFFFF3E5),
                            ),
                            child: Center(
                              child: Text(
                                "Resend OTP on\nCall",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14.0,
                                  color: AppColors.textColorBlack,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  if (enableResend) addHeight(100.h),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  PinTheme pinTheme() {
    return PinTheme(
      shape: PinCodeFieldShape.box,
      borderWidth: 0.5,
      disabledColor: AppColors.white,
      errorBorderColor: AppColors.red,
      activeColor: AppColors.boderSideColor,
      inactiveFillColor: AppColors.white,
      selectedFillColor: AppColors.white,
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10.sp), bottomRight: Radius.circular(10.sp)),
      fieldHeight: 45,
      fieldWidth: 45,
      inactiveColor: AppColors.boderSideColor,
      selectedColor: AppColors.boderSideColor,
      activeFillColor: AppColors.white,
    );
  }

  Size textButtonFixedSize = Size(258.w, 54);
}
