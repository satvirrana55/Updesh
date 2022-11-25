import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:updesh/components/app_bar.dart';
import 'package:updesh/ui/astrologer/dashboard/completed_details_list.dart';
import 'package:updesh/ui/astrologer/dashboard/all_details_list.dart';
import 'package:updesh/ui/astrologer/dashboard/components/button.dart';
import 'package:updesh/ui/astrologer/components/common_container.dart';
import 'package:updesh/ui/astrologer/dashboard/ongoing_details_list.dart';
import 'package:updesh/utils/colors.dart';
import 'package:updesh/utils/images.dart';
import 'package:updesh/utils/text_styles.dart';
import 'package:updesh/utils/ts.dart';

class UpdeshDashBoardAstrologer extends StatefulWidget {
  const UpdeshDashBoardAstrologer({Key? key}) : super(key: key);

  @override
  State<UpdeshDashBoardAstrologer> createState() =>
      _UpdeshDashBoardAstrologerState();
}

class _UpdeshDashBoardAstrologerState extends State<UpdeshDashBoardAstrologer> {
  Color busy = AppColors.primaryColor;
  Color online = Colors.white;
  Color ofline = Colors.white;
  Color text1 = AppColors.textColorBlack;
  Color text2 = AppColors.textColorBlack;
  Color text3 = AppColors.textColorBlack;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 1.2,
        child: Padding(
          padding: const EdgeInsets.only(left: 15.5, right: 15, top: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Today's Data",
                style: Ts.medium16(AppColors.textColor5),
              ),
              SizedBox(
                height: 16.h,
              ),
              const CommonContainer(
                tittle: "Today's Earning",
                image: AppImages.earnings,
                rate: 'INR 5K',
              ),
              SizedBox(
                height: 12.h,
              ),
              const CommonContainer(
                tittle: "Total no. of Call",
                image: AppImages.call,
                rate: '100',
              ),
              SizedBox(
                height: 12.h,
              ),
              const CommonContainer(
                tittle: "Total no. of chat",
                image: AppImages.chat,
                rate: '40',
              ),
              SizedBox(
                height: 24.h,
              ),
              Text(
                "Mark Your Availabitiy",
                style: Ts.medium16(AppColors.textColor5),
              ),
              SizedBox(
                height: 24.h,
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        busy = AppColors.primaryColor;
                        online = AppColors.white;
                        ofline = AppColors.white;
                        text2 = AppColors.textColorBlack;
                        text3 = AppColors.textColorBlack;
                      });
                    },
                    child: Button(
                      tittle: 'Busy',
                      color: busy,
                      colorText: AppColors.textColorBlack,
                    ),
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        busy = AppColors.white;
                        online = AppColors.green;
                        ofline = AppColors.white;
                        text2 = AppColors.white;
                        text3 = AppColors.textColorBlack;
                      });
                    },
                    child: Button(
                      tittle: 'Online',
                      color: online,
                      colorText: text2,
                    ),
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        busy = AppColors.white;
                        online = AppColors.white;
                        ofline = AppColors.greyButon;
                        text3 = AppColors.white;
                        text2 = AppColors.textColorBlack;
                      });
                    },
                    child: Button(
                      tittle: 'Offline',
                      color: ofline,
                      colorText: text3,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 24.h,
              ),
              const Divider(
                color: AppColors.boderSideColor,
              ),
              SizedBox(
                height: 24.h,
              ),
              Text(
                "My Consulation",
                style: AppTextStyles.size16WithW500,
              ),
              SizedBox(
                height: 12.h,
              ),
              DefaultTabController(
                length: 3,
                child: Expanded(
                  child: Column(
                    children: [
                      TabBar(
                          unselectedLabelColor: AppColors.textColor,
                          indicatorColor: AppColors.backColor,
                          labelStyle: Ts.medium16(AppColors.backColor),
                          indicator: BoxDecoration(
                              border: Border.all(color: Colors.grey, width: 1),
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10))),
                          tabs: [
                            Container(
                              height: 40.h,
                              width: 100.w,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.transparent, width: 1),
                                  borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10))),
                              child: const Center(
                                child: Text(
                                  "All",
                                ),
                              ),
                            ),
                            Container(
                              height: 40.h,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.transparent, width: 1),
                                  borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(5),
                                      bottomRight: Radius.circular(5))),
                              child: const Center(
                                child: Text(
                                  "Ongoing",
                                ),
                              ),
                            ),
                            Container(
                              height: 40.h,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.transparent),
                                  borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(5),
                                      bottomRight: Radius.circular(5))),
                              child: const Center(
                                child: Text(
                                  "Completed",
                                ),
                              ),
                            ),
                          ]),
                      const Expanded(
                          child: TabBarView(
                        children: [
                          AllDetails(),
                          OngoingDetails(
                            tittle: 'Call',
                            icon: Icon(
                              Icons.videocam_sharp,
                              color: Colors.green,
                              size: 16,
                            ),
                          ),
                          CompletedDetails()
                        ],
                      )),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
