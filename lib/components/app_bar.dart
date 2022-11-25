import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:updesh/components/drawer.dart';
import 'package:updesh/utils/colors.dart';
import 'package:updesh/utils/ts.dart';
import '../../widgets/drawer_astrologer.dart';

class CommonAppBar extends StatefulWidget {
  final String tittle;
  final value;
  final Color? color;
  final Widget? navigator;
  final double? elevation;
  final Color? backColor;

  const CommonAppBar(
      {Key? key,
      required this.tittle,
      this.value,
      this.color,
      this.navigator,
      this.elevation,
      this.backColor})
      : super(key: key);

  @override
  State<CommonAppBar> createState() => _CommonAppBarState();
}

class _CommonAppBarState extends State<CommonAppBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 100.sp,
        elevation: widget.elevation ?? 0,
        shadowColor: AppColors.primaryColor,
        backgroundColor: AppColors.primaryColor,
        title: Text(
          widget.tittle,
          style: Ts.medium16(Colors.black),
        ),
        leading: const BackButton(),
        /* actions: <Widget>[
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.notifications_none)),
          if (widget.value != null)
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 5),
              child: TextButton(
                  onPressed: () {},
                  child: Text(
                    widget.value,
                  )),
            ),
        ], */
      ),
    );
  }
}
