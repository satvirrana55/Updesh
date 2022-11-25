import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:updesh/utils/colors.dart';
import 'package:updesh/utils/text_styles.dart';
import 'package:updesh/utils/ts.dart';

class CompletedTabView extends StatefulWidget {
  const CompletedTabView({super.key});

  @override
  State<CompletedTabView> createState() => _CompletedTabViewState();
}

class _CompletedTabViewState extends State<CompletedTabView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Container(
        height: 120.h,
        padding: const EdgeInsets.only(top: 20),
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: AppColors.boderSideColor, width: 0),
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(15),
                bottomRight: Radius.circular(15))),
        child: Padding(
          padding: const EdgeInsets.only(
            left: 20,
            right: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'Riya Jagtap',
                    style: Ts.medium16(AppColors.textColor1),
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                  Text(
                    '₹50',
                    style: Ts.regular16(AppColors.textColordrwar),
                  )
                ],
              ),
              SizedBox(
                height: 4.h,
              ),
              Text(
                "Duratio of call :0 min",
                style: Ts.regular16(AppColors.textColor),
              ),
              SizedBox(
                height: 4.h,
              ),
              Text(
                'Status: Completed',
                style: Ts.regular14(AppColors.green),
              ),
              SizedBox(
                height: 10.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
