import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:updesh/utils/colors.dart';
import 'package:updesh/utils/text_styles.dart';
import 'package:updesh/utils/ts.dart';

class Rating extends StatefulWidget {
  const Rating({super.key});

  @override
  State<Rating> createState() => _RatingState();
}

class _RatingState extends State<Rating> {
  double _height = 64.h;
  double value = 1;

  void onClick() {
    if (_height == 289.h && value == 1) {
      setState(() {
        _height = 64.h;
      });
    } else if (_height == 64.h) {
      setState(() {
        _height = 159.h;
        value = 0;
      });
    } else if (_height == 159.h && value == 0) {
      setState(() {
        _height = 289.h;
        value = 1;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> _widgets = [
      Container(
        padding: EdgeInsets.only(left: 16, right: 16, top: 20.h),
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Row(
                children: [
                  Text(
                    'Raj Aavasthi',
                    style: Ts.medium16(AppColors.textColor1),
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                  Text(
                    '(5.0)',
                    style: Ts.regular14(AppColors.textColordbotom),
                  ),
                  const Icon(
                    Icons.star,
                    color: AppColors.primaryColor,
                    size: 17,
                  ),
                  const Icon(
                    Icons.star,
                    color: AppColors.primaryColor,
                    size: 17,
                  ),
                  const Icon(
                    Icons.star,
                    color: AppColors.primaryColor,
                    size: 17,
                  ),
                  const Icon(
                    Icons.star,
                    color: AppColors.primaryColor,
                    size: 17,
                  ),
                  const Icon(
                    Icons.star,
                    color: AppColors.primaryColor,
                    size: 17,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
          ],
        ),
      ),
      Container(
        padding: EdgeInsets.only(left: 16, right: 16, top: 16.h),
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. ',
              style: Ts.regular14(AppColors.textColordrating),
            ),
            SizedBox(
              height: 12.h,
            ),
            Row(
              children: [
                const Icon(Icons.reply_outlined, size: 18),
                SizedBox(
                  width: 10.w,
                ),
                InkWell(
                    onTap: (() {
                      onClick();
                    }),
                    child: Text('Reply',
                        style: Ts.regular14(AppColors.textColordrating))),
                SizedBox(
                  height: 12.h,
                ),
              ],
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 10),
        child: Container(
          padding: const EdgeInsets.only(left: 16, right: 16, top: 10),
          width: MediaQuery.of(context).size.width,
          height: 100.h,
          decoration: const BoxDecoration(
              color: AppColors.lightpink,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. ',
                style: Ts.regular14(Color.fromARGB(255, 58, 58, 81)),
              ),
            ],
          ),
        ),
      ),
    ];
    return Column(
      children: [
        InkWell(
          onTap: () {
            onClick();
          },
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 550),
            height: _height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                border: Border.all(color: AppColors.primaryColor, width: 0.4),
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25))),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: _widgets,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
