import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:updesh/utils/colors.dart';
import 'package:updesh/utils/text_styles.dart';
import 'package:updesh/utils/ts.dart';

class UpdateProfileTextField extends StatefulWidget {
  final value;
  final TextEditingController? textEditingController;
  const UpdateProfileTextField(
      {Key? key, this.textEditingController, this.value})
      : super(key: key);
  @override
  State<UpdateProfileTextField> createState() => _UpdateProfileTextFieldState();
}

class _UpdateProfileTextFieldState extends State<UpdateProfileTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        maxLines: widget.value,
        controller: widget.textEditingController,
        style: Ts.regular16(AppColors.textColordrwar),
      ),
    );
  }
}
