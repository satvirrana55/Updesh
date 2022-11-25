import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_field/country_picker_dialog.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:updesh/ui/common/login_screen.dart';

import '../../../utils/colors.dart';
import '../../../utils/text_styles.dart';
import '../../../widgets/common_widgets.dart';
import '../../router/my_router.dart';
import '../../widgets/custom_textFields.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final _nameController = TextEditingController();
  final _numberController = TextEditingController();
  final _emailController = TextEditingController();

  SizedBox addHeight(double size) => SizedBox(height: size.h);

  SizedBox addWidth(double size) => SizedBox(width: size.w);
  String mobileNumber = "";
  String countryCode = "";
  String fullName = "";
  String email = "";
  final String deviceToken = "for now its dummy";
  final int deviceType = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
                addHeight(5.h),
                Container(
                  // height: 501.h,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Sign Up",
                        style: AppTextStyles.size24WithW500,
                        textAlign: TextAlign.left,
                      ),
                      addHeight(36.h),
                      Form(
                        key: _formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Name*",
                                style: AppTextStyles.size14WithW400darkblack),
                            addHeight(12.h),
                            CustomTextField(
                              textInputAction: TextInputAction.next,
                              keyboardType: TextInputType.name,
                              validator: MultiValidator([
                                RequiredValidator(errorText: 'Enter your Name'),
                                MinLengthValidator(2,
                                    errorText: 'Name is required'),
                              ]),
                              controller: _nameController,
                              hintText: "  Enter Name",
                              // prefixChildIcon: const Icon(
                              //   Icons.person_outline_outlined,
                              //   color: Color(0xff7A7A7A),
                              // ),
                            ),
                            addHeight(16.h),
                            Text("Mobile Number",
                                style: AppTextStyles.size14WithW400darkblack),
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
                                  errorBorder: const OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(30),
                                      ),
                                      borderSide: BorderSide(
                                          color: AppColors.red, width: (1))),
                                  hintText: '',
                                  hintStyle:
                                      AppTextStyles.size16WithW400darkColor),
                              initialCountryCode: 'IN',
                              flagsButtonMargin:
                                  const EdgeInsets.only(left: 16),
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
                            addHeight(16.h),

                            Text("Email ID(Optional)",
                                style: AppTextStyles.size16WithW400),
                            addHeight(12.h),
                            CustomTextField(
                              textInputAction: TextInputAction.next,
                              validator: MultiValidator([
                                EmailValidator(errorText: "Wrong Email "),
                              ]),
                              controller: _emailController,
                              hintText: "  Enter your Email ID",
                            )
                            // addHeight(20.h),
                          ],
                        ),
                      ),
                      addHeight(48.h),
                      CommonButton("Continue", () async {
                        fullName = _nameController.text;
                        email = _emailController.text;
                        if (_formKey.currentState!.validate()) {
                          _formKey.currentState?.save();
                          Get.toNamed(MyRouter.verifyOtpScreen, arguments: [
                            countryCode,
                            mobileNumber,
                          ]);
                          //     countryCode: countryCode,
                          //     mobileNumber: mobileNumber,
                          //     fullName: fullName,

                          print(
                              "RESPONSE FORM SIGN UP SCREEN IS :::::::::::\nNAME"
                              " $fullName\nMobile $mobileNumber\ncountry code $countryCode\n Email Id   $email");
                          // if (!mounted) return;
                          // Navigator.pushNamed(
                          //   context,
                          //   OTPScreen.route,
                          //   arguments: OTPDetailsArguments(
                          //     mobileNumber: mobileNumber,
                          //     countryCode: countryCode,
                          //   ),
                          // );
                        }
                      }),
                      addHeight(16.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RichText(
                            text: TextSpan(
                              text: "Already Have an account?",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16.sp,
                                  color: AppColors.textColor),
                              children: <TextSpan>[
                                TextSpan(
                                  text: "Login",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16.sp,
                                      fontFamily: 'Poppins',
                                      color: AppColors.textColorBlack),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      Get.to(() => LoginScrren());
                                    },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Spacer(),
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
                addHeight(20.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
