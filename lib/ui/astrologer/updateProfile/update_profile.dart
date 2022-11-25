import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:updesh/components/app_bar.dart';
import 'package:updesh/ui/astrologer/updateProfile/components/data_picker.dart';
import 'package:updesh/ui/astrologer/updateProfile/components/dropdown_update_profile.dart';
import 'package:updesh/ui/astrologer/updateProfile/components/update_profile_components.dart';
import 'package:updesh/utils/colors.dart';
import 'package:updesh/utils/images.dart';
import 'package:updesh/utils/text_styles.dart';
import 'package:updesh/utils/ts.dart';
import 'package:updesh/widgets/common_widgets.dart';

class UpdateProfile extends StatefulWidget {
  const UpdateProfile({super.key});

  @override
  State<UpdateProfile> createState() => _UpdateProfileState();
}

class _UpdateProfileState extends State<UpdateProfile> {
  TextEditingController name = TextEditingController(text: "Ranchi");
  TextEditingController locattion = TextEditingController(text: "Ranchi");
  TextEditingController bio = TextEditingController();
  TextEditingController charge = TextEditingController(text: '₹50');

  int? gender = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(75.h),
            child: const CommonAppBar(
              tittle: 'Update Profile',
            )),
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16, top: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 150,
                      ),
                      Text(
                        'Name*',
                        style: Ts.regular14(AppColors.textColor),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      UpdateProfileTextField(
                        textEditingController: name,
                        value: 1,
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Text(
                        'City*',
                        style: Ts.regular14(AppColors.textColor),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      const DropdownUpdateProfile(),
                      const SizedBox(
                        height: 16,
                      ),
                      Text(
                        'Specialization*',
                        style: Ts.regular14(AppColors.textColor),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      UpdateProfileTextField(
                        textEditingController: locattion,
                        value: 1,
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Text(
                        'Date Of Birth*',
                        style: Ts.regular14(AppColors.textColor),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      const DatePicker(),
                      const SizedBox(
                        height: 16,
                      ),
                      Text(
                        'Specialization*',
                        style: Ts.regular14(AppColors.textColor),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      const DropdownUpdateProfile(),
                      const SizedBox(
                        height: 16,
                      ),
                      Text(
                        'About/Bio',
                        style: Ts.regular14(AppColors.textColor),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      UpdateProfileTextField(
                        textEditingController: bio,
                        value: 5,
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Text(
                        'Gender',
                        style: Ts.regular14(AppColors.textColor),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Radio(
                              value: 1,
                              groupValue: gender,
                              onChanged: ((value) {
                                setState(() {
                                  gender = value;
                                });
                              })),
                          Text(
                            'Male',
                            style: Ts.medium16(AppColors.textColordrwar),
                          ),
                          Radio(
                              value: 2,
                              groupValue: gender,
                              onChanged: ((value) {
                                setState(() {
                                  gender = value;
                                });
                              })),
                          Text(
                            'Female',
                            style: Ts.medium16(AppColors.textColordrwar),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 26,
                      ),
                      Text(
                        'Consultation Charges per minute :',
                        style: Ts.medium16(AppColors.textColordrwar),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      UpdateProfileTextField(
                        textEditingController: charge,
                        value: 1,
                      ),
                      const SizedBox(
                        height: 39,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 50, right: 50),
                        child: GestureDetector(
                          onTap: () {},
                          child: Container(
                            height: 54.h,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: AppColors.primaryColor,
                                border: Border.all(
                                    color: AppColors.borderColor, width: 1),
                                borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    bottomRight: Radius.circular(20))),
                            child: Text(
                              'Save',
                              style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Image.asset(AppImages.rec),
            const Positioned(
              top: 45,
              left: 100,
              right: 100,
              child: CircleAvatar(
                  maxRadius: 55,
                  minRadius: 55,
                  child: Image(
                    image: AssetImage(AppImages.profile3),
                  )),
            ),
            Positioned(
                top: 110,
                left: 100,
                right: 30,
                child: CircleAvatar(
                  backgroundColor: Colors.black,
                  child: Center(
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.camera_alt_rounded,
                          color: Colors.white,
                        )),
                  ),
                )),
          ],
        ));
  }
}
