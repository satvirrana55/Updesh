import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:updesh/components/app_bar.dart';

import '../../../router/my_router.dart';
import '../../../theme/app_assets.dart';
import '../../../utils/colors.dart';
import '../../../utils/text_styles.dart';
import '../../widgets/common_app_bar.dart';
import '../../widgets/common_widgets.dart';
import '../../widgets/custom_textFields.dart';

enum ImageSourceType { gallery, camera }

class PanditjiPersonalDetailsScreen extends StatefulWidget {
  PanditjiPersonalDetailsScreen({Key? key}) : super(key: key);

  @override
  _MyPickrState createState() => _MyPickrState();
}

class _MyPickrState extends State<PanditjiPersonalDetailsScreen> {
  File? imageFile;
  final _nameController = TextEditingController();
  final _QualificationController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final _bioController = TextEditingController();
  TextEditingController dateInput = TextEditingController();

  String? _selectedGender;
  String? _selectSpcialization;
  String? _selectSkills;
  String? _selectQualification;

  String? _selectLan;

  String? _selectExp;

  // PickedFile? imageFile = null;

  bool show = false;

  String dateInput11 = "";

  @override
  void initState() {
    // dateInput.text = "";
    dateInput.text = ""; //set the initial value of text field
    super.initState();
  }

  bool? _value = true;
  String? newValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(75.h),
            child: const CommonAppBar(
              tittle: 'Personal Details',
            )),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              children: [
                addHeight(8.h),
                Stack(
                  children: [
                    Material(
                      borderRadius: BorderRadius.circular(50),
                      elevation: 0,
                      child: SizedBox(
                        height: 100.h,
                        width: 100.w,
                        child: ClipRRect(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(50)),
                            child: Image.asset(Ig.personIconProfile)),
                      ),
                    ),
                    Positioned(
                        right: 0,
                        bottom: 3,
                        child: GestureDetector(
                          onTap: () => pickImage(),
                          child: CircleAvatar(
                              backgroundColor:
                                  const Color.fromRGBO(252, 174, 30, 1),
                              radius: 15.sp,
                              child: Icon(
                                Icons.camera_alt_rounded,
                                color: AppColors.white,
                                size: 17.sp,
                              )),
                        ))
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    addHeight(8.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "Profile pic* ",
                          style: AppTextStyles.size14WithW400,
                        ),
                        Text(
                          "( png,jpg,jpeg only)",
                          style: AppTextStyles.size14WithW400,
                        ),
                      ],
                    )
                  ],
                ),
                addHeight(24.h),
                Container(
                    margin: EdgeInsets.only(top: 1.h),
                    child: Form(
                      key: _formKey,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Date of Birth *",
                              style: AppTextStyles.size14WithW400darkblack,
                            ),
                            addHeight(8.h),

                            ///Date of birth
                            TextField(
                              controller: dateInput,
                              //editing controller of this TextField
                              decoration: InputDecoration(
                                  focusedBorder: commonInputDecoration(),
                                  enabledBorder: commonInputDecoration(),
                                  disabledBorder: commonInputDecoration(),
                                  border: commonInputDecoration(),
                                  errorBorder: commonInputDecoration(),
                                  errorStyle: const TextStyle(
                                    color: Colors.red,
                                  ),
                                  hintText: 'Date of Birth',
                                  hintStyle: AppTextStyles.size16WithW400,
                                  // filled: true,
                                  // fillColor: Colors.white60,
                                  contentPadding: EdgeInsets.symmetric(
                                    horizontal: 10.w,
                                  ),
                                  prefixIcon: const Icon(
                                    Icons.calendar_today_outlined,
                                    color: Colors.grey,
                                  )),
                              readOnly: true,
                              //set it true, so that user will not able to edit text
                              onTap: () async {
                                DateTime? _selectedDate = await showDatePicker(
                                    context: context,
                                    initialDate: DateTime.now(),
                                    firstDate: DateTime(1950),
                                    //DateTime.now() - not to allow to choose before today.
                                    lastDate: DateTime(2101));

                                if (_selectedDate != null) {
                                  // print(_selectedDate);
                                  dateInput11 = _selectedDate.toString();
                                  print(dateInput11);
                                  String formattedDate =
                                      DateFormat.yMMMMd('en_US')
                                          .format(_selectedDate);
                                  // print(formattedDate);
                                  setState(() {
                                    dateInput.text =
                                        formattedDate; //set output date to TextField value.
                                  });
                                } else {
                                  print("Date is not selected");
                                }
                              },
                            ),
                            addHeight(16.h),
                            Text(
                              "Gender *",
                              style: AppTextStyles.size14WithW400,
                            ),
                            addHeight(8.h),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 18.h),
                              decoration: commonDecoration(Colors.white),
                              child: DropdownButton<String>(
                                underline: const SizedBox(),
                                enableFeedback: true,
                                // itemHeight: 60.h,
                                menuMaxHeight: 320.h,
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(30)),
                                hint: Text(
                                  "Gender",
                                  style: AppTextStyles.size16WithW400darkColor,
                                ),
                                isExpanded: true,
                                items: <String>['Male', 'Female ', 'Others']
                                    .map((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                                onChanged: (value) {
                                  setState(() {
                                    _selectedGender = value;
                                    print(_selectedGender);
                                  });
                                },
                                value: _selectedGender,
                                style: AppTextStyles.size14WithW400darkblack,
                              ),
                            ),
                            addHeight(16.h),
                            Text(
                              "Specialization *",
                              style: AppTextStyles.size14WithW400,
                            ),
                            addHeight(8.h),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 18.h),
                              decoration: commonDecoration(Colors.white),
                              child: DropdownButton<String>(
                                underline: const SizedBox(),
                                enableFeedback: true,
                                // itemHeight: 60.h,
                                menuMaxHeight: 320.h,
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(30)),
                                hint: Text(
                                  "Vedic",
                                  style: AppTextStyles.size16WithW400darkColor,
                                ),
                                isExpanded: true,
                                items: <String>['Vedic', 'Vedic1 ', 'Others']
                                    .map((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                                onChanged: (value) {
                                  setState(() {
                                    _selectSpcialization = value;
                                    print(_selectSpcialization);
                                  });
                                },
                                value: _selectSpcialization,
                                style: AppTextStyles.size14WithW400darkblack,
                              ),
                            ),

                            addHeight(16.h),
                            Text(
                              "Skills *",
                              style: AppTextStyles.size14WithW400,
                            ),
                            addHeight(8.h),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 18.h),
                              decoration: commonDecoration(Colors.white),
                              child: DropdownButton<String>(
                                underline: const SizedBox(),
                                enableFeedback: true,
                                // itemHeight: 60.h,
                                menuMaxHeight: 320.h,
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(30)),
                                hint: Text(
                                  "Vedic",
                                  style: AppTextStyles.size16WithW400darkColor,
                                ),
                                isExpanded: true,
                                items: <String>['Vedic', 'Vedic1 ', 'Others']
                                    .map((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                                onChanged: (value) {
                                  setState(() {
                                    _selectSkills = value;
                                    print(_selectSkills);
                                  });
                                },
                                value: _selectSkills,
                                style: AppTextStyles.size14WithW400darkblack,
                              ),
                            ),

                            addHeight(8.h),
                            Text(
                              "Location *",
                              style: AppTextStyles.size14WithW400,
                            ),
                            addHeight(8.h),

                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 18.h),
                              decoration: commonDecoration(Colors.white),
                              child: DropdownButton<String>(
                                underline: const SizedBox(),
                                enableFeedback: true,
                                // itemHeight: 60.h,
                                menuMaxHeight: 320.h,
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(30)),
                                isExpanded: true,
                                items: <String>[
                                  'Andhra Pradesh',
                                  'Arunachal Pradesh',
                                  'Assam',
                                  'Bihar',
                                  'Chhattisgarh',
                                  'Goa',
                                  'Gujarat',
                                  'Haryana',
                                  'Himachal Pradesh',
                                  'Jharkhand',
                                  'Karnataka',
                                  'Kerala',
                                  'Madhya Pradesh',
                                  'Maharashtra',
                                  'Manipur',
                                  'Meghalaya',
                                  'Mizoram',
                                  'Nagaland',
                                  'Odisha',
                                  'Punjab',
                                  'Rajasthan',
                                  'Sikkim',
                                  'Tamil Nadu',
                                  'Telangana',
                                  'Tripura',
                                  'Uttar Pradesh',
                                  'Uttarakhand',
                                  'West Bengal',
                                ].map((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                                onChanged: (value) {
                                  setState(() {
                                    newValue = value;
                                    print(newValue);
                                  });
                                },
                                value: newValue,
                                hint: Text(
                                  'pune',
                                  style: AppTextStyles.size16WithW400darkColor,
                                ),
                              ),
                            ),
                            addHeight(8.h),
                            Text(
                              "About/Bio",
                              style: AppTextStyles.size14WithW400,
                            ),
                            addHeight(8.h),
                            SizedBox(
                              height: 100.h,
                              child: TextFormField(
                                decoration: InputDecoration(
                                  focusedBorder: commonInputDecoration(),
                                  enabledBorder: commonInputDecoration(),
                                  disabledBorder: commonInputDecoration(),
                                  border: commonInputDecoration(),
                                  errorBorder: commonInputDecoration(),
                                ),
                                minLines: 3,
                                maxLines: 10,
                              ),
                            ),
                            addHeight(16.h),

                            Text(
                              "Qualification(if any)",
                              style: AppTextStyles.size14WithW400,
                            ),

                            addHeight(8.h),
                            SizedBox(
                              height: 70.h,
                              child: CustomTextField(
                                controller: _QualificationController,
                                hintText: " ",
                              ),
                            ),
                            addHeight(8.h),
                            Text(
                              "Select Language*",
                              style: AppTextStyles.size14WithW400,
                            ),
                            addHeight(8.h),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 18.h),
                              decoration: commonDecoration(Colors.white),
                              child: DropdownButton<String>(
                                underline: const SizedBox(),
                                enableFeedback: true,
                                // itemHeight: 60.h,
                                menuMaxHeight: 320.h,
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(30)),
                                hint: Text(
                                  "Hindi",
                                  style: AppTextStyles.size16WithW400darkColor,
                                ),
                                isExpanded: true,
                                items: <String>['Hindi', 'English', 'Others']
                                    .map((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                                onChanged: (value) {
                                  setState(() {
                                    _selectLan = value;
                                  });
                                },
                                value: _selectQualification,
                                style: AppTextStyles.size14WithW400darkblack,
                              ),
                            ),
                            addHeight(8.h),
                            Text(
                              "Select Experience in years",
                              style: AppTextStyles.size14WithW400,
                            ),
                            addHeight(8.h),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 18.h),
                              decoration: commonDecoration(Colors.white),
                              child: DropdownButton<String>(
                                underline: const SizedBox(),
                                enableFeedback: true,
                                // itemHeight: 60.h,
                                menuMaxHeight: 320.h,
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(30)),
                                hint: Text(
                                  "2",
                                  style: AppTextStyles.size16WithW400darkColor,
                                ),
                                isExpanded: true,
                                items:
                                    <String>['1', '2', '3'].map((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                                onChanged: (value) {
                                  setState(() {
                                    _selectExp = value;
                                    print(_selectQualification);
                                  });
                                },

                                value: _selectQualification,
                                style: AppTextStyles.size16WithW400darkColor,
                              ),
                            ),
                            addHeight(8.h),

                            Text(
                              "Add Qualificatin & Certificate(if Any) *",
                              style: AppTextStyles.size14WithW400,
                            ),
                            addHeight(8.h),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 18.h),
                              decoration: commonDecoration(Colors.white),
                              child: DropdownButton<String>(
                                underline: const SizedBox(),
                                enableFeedback: true,
                                // itemHeight: 60.h,
                                menuMaxHeight: 320.h,
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(30)),
                                hint: Text(
                                  "Select Qualification",
                                  style: AppTextStyles.size16WithW400,
                                ),
                                isExpanded: true,
                                items: <String>[
                                  'Select 1',
                                  'Select 2',
                                  'Others'
                                ].map((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                                onChanged: (value) {
                                  setState(() {
                                    _selectQualification = value;
                                    print(_selectQualification);
                                  });
                                },
                                value: _selectQualification,
                                style: AppTextStyles.size14WithW400darkblack,
                              ),
                            ),
                            addHeight(8.h),
                            Text(
                              "Upload Certification (if any)",
                              style: AppTextStyles.size14WithW400,
                            ),
                            addHeight(8.h),
                            Container(
                              padding: EdgeInsets.all(12.h),
                              decoration: BoxDecoration(
                                  color: Color(0xffFFFCEC),
                                  border:
                                      Border.all(color: AppColors.borderColor),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(8))),
                              child: Row(
                                children: [
                                  GestureDetector(
                                    onTap: () async {
                                      pickImage();
                                    },
                                    child: Container(
                                        margin:
                                            const EdgeInsets.only(right: 10),
                                        padding: const EdgeInsets.all(5),
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color: AppColors.primaryColor
                                                    .withOpacity(0.2)),
                                            borderRadius:
                                                const BorderRadius.all(
                                                    Radius.circular(8))),
                                        child: Text(
                                          "Choose File",
                                          style: AppTextStyles.size14WithW400,
                                        )),
                                  ),
                                  Text(
                                    "No file choosen",
                                    style: AppTextStyles.size12WithW400,
                                  ),
                                ],
                              ),
                            ),

                            addHeight(16.h),
                            Text(
                              "Enter Aadhar Card Number*",
                              style: AppTextStyles.size14WithW400,
                            ),
                            addHeight(8.h),
                            CustomTextField(
                              // initialValue: "Your Name",

                              // prefixChildIcon:  Icon (Icons.person_pin),
                              controller: _nameController,
                              hintText: "",

                              validator: MultiValidator([
                                RequiredValidator(
                                    errorText:
                                        "Please Enter Aadhar Card Number"),
                                MinLengthValidator(2,
                                    errorText: "Aadhar Card Number is Required")
                              ]),
                            ),
                            addHeight(8.h),
                          ]),
                    )),
                addHeight(25.h),
                CommonButton("Save", () {
                  if (_formKey.currentState!.validate()) {
                    // _formKey.currentState?.save();
                    Get.toNamed(MyRouter.consultationScreen);
                  } else {
                    print("Condition not satisfied");
                  }
                }),
                addHeight(25.h),
              ],
            ),
          ),
        ));
  }

  Container datePickerk() {
    return Container(
      height: 200,
      child: CupertinoDatePicker(
        mode: CupertinoDatePickerMode.date,
        initialDateTime: DateTime(1969, 1, 1),
        onDateTimeChanged: (DateTime newDateTime) {
          // Do something
        },
      ),
    );
  }

  imageFromGallery() async {
    PickedFile? pickedFile = await ImagePicker()
        .getImage(source: ImageSource.gallery, maxHeight: 200, maxWidth: 200);
    if (pickedFile != null) {
      setState(() {
        imageFile = File(pickedFile.path);
      });
    }
  }

  imageFromCamera() async {
    PickedFile? pickedFile = await ImagePicker()
        .getImage(source: ImageSource.camera, maxHeight: 200, maxWidth: 200);
    if (pickedFile != null) {
      setState(() {
        imageFile = File(pickedFile.path);
      });
    }
  }

  pickImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image == null) return;

      final imageTemporary = File(image.path);

      final bytes = File(image.path).readAsBytesSync();
      // String base64Image = base64Encode(bytes);
      // setState(() => _profileController.image = imageTemporary);
    } on PlatformException catch (e) {
      debugPrint('Failed to pic image: $e');
    }
  }
}
