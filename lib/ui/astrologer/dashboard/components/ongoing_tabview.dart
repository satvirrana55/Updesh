import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:updesh/utils/colors.dart';
import 'package:updesh/utils/images.dart';
import 'package:updesh/utils/text_styles.dart';
import 'package:updesh/utils/ts.dart';

class OngoingTabView extends StatefulWidget {
  final Icon? icon;
  final String? tittle;
  final String? image;

  const OngoingTabView({Key? key, this.tittle, this.icon, this.image})
      : super(key: key);
  @override
  State<OngoingTabView> createState() => _OngoingTabViewState();
}

class _OngoingTabViewState extends State<OngoingTabView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Container(
        height: 120.h,
        padding: const EdgeInsets.only(top: 0, left: 20, right: 20),
        decoration: BoxDecoration(
            border: Border.all(color: AppColors.boderSideColor, width: 0),
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(15),
                bottomRight: Radius.circular(15))),
        child: Padding(
            padding: const EdgeInsets.only(top: 17),
            child: Stack(
              children: [
                Column(
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
                      'Status : In Queue',
                      style: Ts.regular14(AppColors.red1),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                  ],
                ),
                Positioned(
                    right: 0,
                    top: 26,
                    child: Container(
                      height: 40.h,
                      width: 94.w,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.green, width: 1),
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10))),
                      child: Center(
                        child: TextButton.icon(
                            onPressed: () {},
                            icon: ImageIcon(
                                size: 20,
                                color: AppColors.green,
                                AssetImage(
                                  '${widget.image}',
                                )),
                            label: Text(
                              widget.tittle as String,
                              style: const TextStyle(
                                  fontSize: 12, color: AppColors.green),
                            )),
                      ),
                    ))
              ],
            )),
      ),
    );
    ;
  }
}
