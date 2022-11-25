import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:updesh/utils/images.dart';
import 'package:updesh/utils/text_styles.dart';
import 'package:updesh/utils/ts.dart';

import '../../../utils/colors.dart';

class CommonContainer extends StatefulWidget {
  final String? tittle;
  final String? rate;
  final String? image;
  const CommonContainer({Key? key, this.tittle, this.image, this.rate})
      : super(key: key);

  @override
  State<CommonContainer> createState() => _CommonContainerState();
}

class _CommonContainerState extends State<CommonContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64.h,
      width: MediaQuery.of(context).size.width,
      // ignore: sort_child_properties_last
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Row(
          children: [
            Image.asset(
              '${widget.image}',
            ),
            SizedBox(
              width: 14.w,
            ),
            Text(
              widget.tittle as String,
              style: Ts.medium18(AppColors.textColorBlack),
            ),
            const Spacer(
              flex: 1,
            ),
            Text(
              widget.rate as String,
              style: Ts.medium16(AppColors.textColorBlack),
            )
          ],
        ),
      ),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: AppColors.blue, width: 1),
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20), bottomRight: Radius.circular(20))),
    );
  }
}
