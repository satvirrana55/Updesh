import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_field/country_picker_dialog.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../../router/my_router.dart';
import '../../theme/app_assets.dart';
import '../../utils/colors.dart';
import '../../utils/text_styles.dart';
import '../../widgets/common_widgets.dart';

class LoginScrren extends StatefulWidget {
  const LoginScrren({Key? key}) : super(key: key);

  @override
  State<LoginScrren> createState() => _LoginScrrenState();
}

class _LoginScrrenState extends State<LoginScrren> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String mobileNumber = "";
  String countryCode = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 17.h),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                addHeight(20.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: 40.h,
                      width: 75.w,
                     
                    ),
                  ],
                ),
                logoWelcome(),
                addHeight(42.h),
                Text(
                  "Login",
                  style: AppTextStyles.size24WithW500,
                ),
                addHeight(24.h),
                Text(
                  "Please Login with phone number",
                  style: AppTextStyles.size14WithW400,
                ),
                addHeight(36.h),
                Text(
                  "Mobile Number",
                  style: AppTextStyles.size14WithW400darkBlack,
                ),
                addHeight(12.h),
                IntlPhoneField(
                  disableLengthCheck: true,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly,
                  ],
                  showDropdownIcon: true,
                  onSaved: (number) {
                    countryCode = number!.countryCode;
                    mobileNumber = number.number;
                  },
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      border: commonInputDecoration(),
                      errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(30),
                          ),
                          borderSide:
                              BorderSide(color: AppColors.red, width: (1))),
                      hintText: '',
                      hintStyle: AppTextStyles.size16WithW400darkColor),
                  initialCountryCode: 'IN',
                  flagsButtonMargin: const EdgeInsets.only(left: 16),
                  pickerDialogStyle: PickerDialogStyle(
                    countryNameStyle: GoogleFonts.poppins(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500,
                    ),
                    countryCodeStyle: GoogleFonts.poppins(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500,
                    ),
                    padding: const EdgeInsets.all(8),
                    searchFieldPadding: const EdgeInsets.all(8),
                  ),
                  dropdownTextStyle: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Colors.black,
                  ),
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 16.0,
                    color: Colors.black,
                  ),
                  dropdownIcon: const Icon(
                    Icons.keyboard_arrow_down_rounded,
                    size: 24,
                    color: Colors.black,
                  ),
                  dropdownIconPosition: IconPosition.trailing,
                ),
                addHeight(64.h),
                CommonButton('Continue', () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState?.save();
                    //   Get.to(OTPScreenPandit(isComeFromPandit: widget.isComeFromPandit,));
                    // Get.toNamed(MyRouter.verifyOtpScreen,
                    // arguments: OTPDetailsArguments(
                    //     countryCode: countryCode,
                    //     mobileNumber: mobileNumber,
                    //     fullName: '',
                    //     email: ''),
                    // );

                    print("GOING TO VERIFY OTP SCREEN");
                    print("Arguments form login screen is " +
                        countryCode +
                        mobileNumber);
                    Get.toNamed(MyRouter.verifyOtpScreen, arguments: [
                      countryCode,
                      mobileNumber,
                    ]);
                  }
                }),
                addHeight(16.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RichText(
                      text: TextSpan(
                        text: "Don't have an account?",
                        style: AppTextStyles.size16WithW400,
                        children: <TextSpan>[
                          TextSpan(
                            text: " SIGN UP",
                            style: AppTextStyles.size16WithW600darkblack,
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Get.toNamed(MyRouter.signUpScreen,
                                    arguments: []);
                              },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Center(
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text: "By Clicking, I accept the",
                      style: AppTextStyles.size14WithW400,
                      children: <TextSpan>[
                        TextSpan(
                          text: " terms \& Conditions ",
                          style: AppTextStyles.size14WithW500darkblack,
                          recognizer: TapGestureRecognizer()
                            ..onTap = () => print('click'),
                        ),
                        TextSpan(
                          text: "\&",
                          style: AppTextStyles.size14WithW400,
                        ),
                        TextSpan(
                          text: " \n privacy Policy ",
                          style: AppTextStyles.size14WithW500darkblack,
                          recognizer: TapGestureRecognizer()
                            ..onTap = () => print('click'),
                        ),
                      ],
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
