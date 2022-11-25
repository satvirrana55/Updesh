import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:updesh/utils/colors.dart';
import 'package:updesh/utils/ts.dart';

class HelpAndSupportComponents extends StatefulWidget {
  final String? tittle;
  final String? dis;
  final Icon? icon;

  const HelpAndSupportComponents({Key? key, this.tittle, this.dis, this.icon})
      : super(key: key);

  @override
  State<HelpAndSupportComponents> createState() =>
      _HelpAndSupportComponentsState();
}

class _HelpAndSupportComponentsState extends State<HelpAndSupportComponents> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            widget.icon as Icon,
            SizedBox(
              width: 18.w,
            ),
            Text(
              '${widget.tittle}',
              style: Ts.medium14(AppColors.textColordrwar),
            ),
          ],
        ),
        SizedBox(
          height: 8.h,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 41),
          child: Text(
            '${widget.dis}',
            style: Ts.regular14(AppColors.textColor),
          ),
        ),
      ],
    );
  }
}
