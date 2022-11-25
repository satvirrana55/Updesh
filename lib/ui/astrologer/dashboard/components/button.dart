import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:updesh/utils/colors.dart';
import 'package:updesh/utils/text_styles.dart';
import 'package:updesh/utils/ts.dart';

class Button extends StatefulWidget {
  final String? tittle;
  final Color? color;
  final Color? colorText;
  final Color? borerColor;

  const Button(
      {Key? key, this.tittle, this.color, this.colorText, this.borerColor})
      : super(key: key);

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 119.w,
      height: 44.h,
      decoration: BoxDecoration(
          color: widget.color,
          border: Border.all(
              color: widget.borerColor == null
                  ? AppColors.borderColor
                  : widget.borerColor as Color,
              width: 1),
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10), bottomRight: Radius.circular(10))),
      child: Center(
          child: Text(
        widget.tittle as String,
        style: Ts.medium16(widget.colorText as Color),
      )),
    );
  }
}
