import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:updesh/widgets/common_widgets.dart';

import '../utils/colors.dart';
import '../utils/text_styles.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final bool? obscureText;
  final FormFieldValidator<String>? validator;
  final String? hintText;
  final List<TextInputFormatter>? inputFormatters;
  final String? labelText;
  // final Widget? prefixChildIcon;
  final Widget? suffixIcon;
  final TextInputType? keyboardType;
  final String? initialValue;
  final TextInputAction? textInputAction;

  const CustomTextField({
    super.key,
    this.obscureText = false,
    required this.controller,
    this.inputFormatters,
    this.validator,
    this.hintText,
    this.labelText,
    // this.prefixChildIcon,
    this.suffixIcon,
    this.keyboardType,
    this.initialValue,
    this.textInputAction,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textInputAction: textInputAction,
      initialValue: initialValue,
      controller: controller,
      obscureText: obscureText!,
      validator: validator,
      // FilteringTextInputFormatter.digitsOnly
      inputFormatters: inputFormatters,

      decoration: InputDecoration(
          focusedBorder: commonInputDecoration(),
          enabledBorder: commonInputDecoration(),
          disabledBorder: commonInputDecoration(),
          border: commonInputDecoration(),
          errorBorder: commonInputDecoration(),
          errorStyle: const TextStyle(
            color: Colors.red,
          ),
          contentPadding:
              EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
          hintText: hintText,
          labelStyle: AppTextStyles.size16WithW500,
          labelText: labelText,
          // prefixIcon: prefixChildIcon,
          suffixIcon: suffixIcon,
          hintStyle: AppTextStyles.size16WithW400,
          // focusedBorder: InputBorder.none,
          focusColor: AppColors.textColorBlack,
          hoverColor: AppColors.textColorBlack),
      keyboardType: keyboardType,
    );
  }
}

class CustomTextField2 extends StatelessWidget {
  final TextEditingController controller;
  final bool? obscureText;
  final FormFieldValidator<String>? validator;
  final String? hintText;
  final List<TextInputFormatter>? inputFormatters;
  final String? labelText;
  final Widget? prefixChildIcon;
  final Widget? suffixIcon;
  final TextInputType? keyboardType;

  const CustomTextField2(
      {super.key,
      this.obscureText = false,
      required this.controller,
      this.inputFormatters,
      this.validator,
      this.hintText,
      this.labelText,
      this.prefixChildIcon,
      this.suffixIcon,
      this.keyboardType});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText!,
      validator: validator,
      // FilteringTextInputFormatter.digitsOnly
      inputFormatters: inputFormatters,

      decoration: InputDecoration(
          labelText: labelText,
          suffixIcon: suffixIcon,
          hintText: hintText,
          contentPadding: const EdgeInsets.all(10),
          fillColor: const Color(0xffF5F5F5),
          labelStyle: TextStyle(
            color: Colors.grey[400],
            fontSize: MediaQuery.of(context).size.width * 0.040,
          ),
          enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(30),
              ),
              borderSide: BorderSide(
                color: Color(0xffe0e0e0),
              )),
          errorBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
              borderSide: BorderSide(
                color: Colors.red,
              )),
          disabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(30),
              ),
              borderSide: BorderSide(color: Color(0xffe0e0e0), width: (1))),
          focusedBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(30),
              ),
              borderSide: BorderSide(color: Color(0xffe0e0e0), width: (1))),
          border: const OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xffe0e0e0), width: (1))),
          hintStyle: TextStyle(
            color: const Color(0xff4e4e52),
            fontSize: MediaQuery.of(context).size.width * 0.040,
          ),

          // focusedBorder: InputBorder.none,
          focusColor: AppColors.textColorBlack,
          hoverColor: AppColors.textColorBlack),
    );
  }
}

class updateProfileTextFields extends StatelessWidget {
  final bool? obscureText;
  final TextEditingController controller;
  final FormFieldValidator<String>? validator;
  final String? hintText;
  final List<TextInputFormatter>? inputFormatters;
  final String? labelText;
  final Widget? prefixChildIcon;
  final Widget? suffixIcon;
  final TextInputType? keyboardType;
  final String? initialValue;

  const updateProfileTextFields(
      {super.key,
      this.obscureText = false,
      required this.controller,
      this.inputFormatters,
      this.validator,
      this.hintText,
      this.labelText,
      this.prefixChildIcon,
      this.suffixIcon,
      this.keyboardType,
      this.initialValue});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: initialValue,
      obscureText: obscureText!,
      validator: validator,
      // FilteringTextInputFormatter.digitsOnly
      inputFormatters: inputFormatters,

      decoration: InputDecoration(
          fillColor: const Color(0xffF5F5F5),
          enabledBorder: OutlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(30)),
              borderSide: BorderSide(color: Colors.grey.withOpacity(0.3))),
          errorStyle: const TextStyle(
            color: Colors.red,
          ),
          contentPadding: const EdgeInsets.all(10),
          // fillColor: AppColors.textFormFieldBackgroundColor,

          hintText: hintText,
          labelStyle: TextStyle(
            color: AppColors.textColor,
            fontSize: MediaQuery.of(context).size.width * 0.040,
          ),
          labelText: labelText,
          suffixIcon: suffixIcon,
          focusedBorder: OutlineInputBorder(
              borderRadius: const BorderRadius.all(
                Radius.circular(30),
              ),
              borderSide: BorderSide(color: Colors.grey.withOpacity(0.3))),
          border: OutlineInputBorder(
              borderRadius: const BorderRadius.all(
                Radius.circular(30),
              ),
              borderSide: BorderSide(color: Colors.grey.withOpacity(0.3))),
          hintStyle: AppTextStyles.size16WithW500,
          // focusedBorder: InputBorder.none,
          focusColor: AppColors.textColorBlack,
          hoverColor: AppColors.textColorBlack),
      keyboardType: keyboardType,
    );
  }
}
