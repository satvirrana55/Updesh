import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_dialogs/material_dialogs.dart';
import 'package:updesh/components/app_bar.dart';
import 'package:updesh/utils/text_styles.dart';
import 'package:updesh/widgets/common_app_bar.dart';
import 'package:updesh/widgets/common_widgets.dart';

import '../../router/my_router.dart';
import '../../theme/app_assets.dart';
import '../../utils/colors.dart';
import '../../widgets/custom_textFields.dart';
import '../../widgets/drawer_astrologer.dart';

class ConsultationScreen extends StatefulWidget {
  const ConsultationScreen({Key? key}) : super(key: key);

  @override
  State<ConsultationScreen> createState() => _ConsultationScreenState();
}

class _ConsultationScreenState extends State<ConsultationScreen> {
  bool? _value = false;
  List ConsultationHeading = [
    "Cosultation Charges Per Minute :",
    "Cosultation Charges 15 Minute :",
    "Cosultation Charges 30 Minute :",
  ];
  List ConsultationName = [
    "For Call",
    "For Chat",
    "For Video Call",
  ];

  final _ForChatController = TextEditingController();
  final _ForCallController = TextEditingController();
  final _ForVideoCallController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(75.h),
            child: const CommonAppBar(
              tittle: 'Consultation Charges',
            )),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        ConsultationHeading[0],
                        style: AppTextStyles.size16WithW500,
                      ),
                      Container(
                        height: 90.h,
                        child: ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: 1,
                          itemBuilder: (context, index) {
                            return Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                addHeight(8.h),
                                CustomTextField(
                                  controller: _ForCallController,
                                  hintText: "₹50",
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        ConsultationHeading[1],
                        style: AppTextStyles.size16WithW500,
                      ),
                      Container(
                        height: 90.h,
                        child: ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: 1,
                          itemBuilder: (context, index) {
                            return Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                addHeight(8.h),
                                CustomTextField(
                                  controller: _ForChatController,
                                  hintText: "₹100",
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        ConsultationHeading[2],
                        style: AppTextStyles.size16WithW500,
                      ),
                      Container(
                        height: 90.h,
                        child: ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: 1,
                          itemBuilder: (context, index) {
                            return Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                addHeight(8.h),
                                CustomTextField(
                                  controller: _ForVideoCallController,
                                  hintText: "₹150",
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.all(8),
                        height: 23.h,
                        width: 23.w,
                        child: Checkbox(
                          activeColor: AppColors.primaryColor,
                          value: _value,
                          onChanged: (value) {
                            setState(() {
                              _value = value;
                            });
                          },
                        ),
                      ),
                      addWidth(10.w),
                      Expanded(
                        child: RichText(
                          textAlign: TextAlign.start,
                          text: TextSpan(
                            text: "By submiting, you accept our ",
                            style: AppTextStyles.size14WithW400,
                            children: <TextSpan>[
                              TextSpan(
                                text: " terms \& Conditions ",
                                style: AppTextStyles.size14WithW500darkblack,
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () => print('click'),
                              ),
                              TextSpan(
                                text: "and our",
                                style: AppTextStyles.size14WithW400,
                              ),
                              TextSpan(
                                text: " privacy Policy ",
                                style: AppTextStyles.size14WithW500darkblack,
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () => print('click'),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  addHeight(23.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 80.w),
                    child: CommonButton("Submit", () {
                      Dialogs.materialDialog(
                          onClose: (value) {
                            Get.toNamed(MyRouter.homeScreenAstrologer);
                          },
                          color: Colors.white,
                          context: context,
                          actions: [
                            Padding(
                              padding: const EdgeInsets.only(top: 0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 56.h,
                                    width: 56.w,
                                    child: Image.asset(
                                      Ig.rightclickArrow,
                                    ),
                                  ),
                                  addHeight(24.h),
                                  Text("Registration Successfully",
                                      style: AppTextStyles.size18WithW500),
                                  addHeight(24.h),
                                  Text(
                                    "Thank you for the registration. Our  team shortly get back to you ",
                                    style:
                                        AppTextStyles.size12WithW500darkBlack,
                                    textAlign: TextAlign.center,
                                  ),
                                  addHeight(36.h),
                                  RichText(
                                    text: TextSpan(
                                      text:
                                          "You can reach out to us for astrologers onboarding support team at",
                                      style: const TextStyle(
                                          fontSize: 10, color: Colors.black),
                                      children: <TextSpan>[
                                        TextSpan(
                                          text: "  support@updeshastro.com",
                                          style: const TextStyle(
                                            fontSize: 10,
                                            color: Colors.blue,
                                          ),
                                          recognizer: TapGestureRecognizer()
                                            ..onTap = () => print('click'),
                                        ),
                                        const TextSpan(
                                            text:
                                                " in case of any issue or query  "),
                                      ],
                                    ),
                                  ),
                                  addHeight(25.h),
                                  GestureDetector(
                                    onTap: (() {
                                      Get.toNamed(
                                          MyRouter.homeScreenAstrologer);
                                    }),
                                    child: Container(
                                      height: 54.h,
                                      width: 258.w,
                                      alignment: Alignment.center,
                                      decoration: commonDecorationButton(
                                          AppColors.primaryColor),
                                      child: Text(
                                        'Ok',
                                        style: GoogleFonts.poppins(
                                            color: AppColors.textColor5,
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ]);
                    }),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
