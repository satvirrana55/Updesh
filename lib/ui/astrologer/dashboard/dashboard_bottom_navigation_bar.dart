import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:updesh/components/app_bar.dart';
import 'package:updesh/components/drawer.dart';
import 'package:updesh/ui/astrologer/dashboard/all_details_list.dart';
import 'package:updesh/ui/astrologer/dashboard/completed_details_list.dart';
import 'package:updesh/ui/astrologer/dashboard/updesh_dashboard.dart';
import 'package:updesh/ui/astrologer/myAccount/my_account.dart';
import 'package:updesh/ui/astrologer/myRating/my_rating.dart';
import 'package:updesh/ui/astrologer/notification/notification_updesh.dart';
import 'package:updesh/utils/colors.dart';
import 'package:updesh/utils/images.dart';
import 'package:updesh/utils/ts.dart';

class DashboardBottomNavigation extends StatefulWidget {
  const DashboardBottomNavigation({super.key});

  @override
  State<DashboardBottomNavigation> createState() =>
      _DashboardBottomNavigationState();
}

class _DashboardBottomNavigationState extends State<DashboardBottomNavigation> {
  int _currentIndex = 0;
  static const List<Widget> _tabs = <Widget>[
    UpdeshDashBoardAstrologer(),
    MyRating(),
    MyAccount(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _currentIndex == 0
            ? AppBar(
                toolbarHeight: 75.sp,
                elevation: 0,
                backgroundColor: AppColors.primaryColor,
                title: Text(
                  'Updesh',
                  style: Ts.medium16(Colors.black),
                ),
                leading: Builder(builder: (BuildContext context) {
                  return Padding(
                      padding: EdgeInsets.only(left: 20.sp, top: 5),
                      child: SizedBox(
                          height: 16.sp,
                          width: 17.sp,
                          child: IconButton(
                            icon: const Icon(
                              Icons.menu,
                            ),
                            onPressed: () {
                              Scaffold.of(context).openDrawer();
                            },
                          )));
                }),
                actions: <Widget>[
                  IconButton(
                      onPressed: () {
                        Get.to(() => const NotificationUpdesh());
                      },
                      icon: const Icon(Icons.notifications_none)),
                ],
              )
            : _currentIndex == 1
                ? PreferredSize(
                    preferredSize: Size.fromHeight(75.h),
                    child: const CommonAppBar(
                      tittle: 'My Rating',
                    ))
                : PreferredSize(
                    preferredSize: Size.fromHeight(75.h),
                    child: const CommonAppBar(
                      tittle: 'My Account',
                    )),
        drawer: const DDrawer(),
        body: _tabs[_currentIndex],
        bottomNavigationBar: ClipRRect(
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(30),
            topLeft: Radius.circular(30),
          ),
          child: Container(
            decoration: const BoxDecoration(
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 15,
                  spreadRadius: 60,
                  offset: Offset(20.0, 10.0),
                ),
              ],
            ),
            child: BottomNavigationBar(
              elevation: 20,
              selectedItemColor: AppColors.textColorBlack,
              selectedLabelStyle: Ts.medium14(AppColors.textColorBlack),
              type: BottomNavigationBarType.fixed,
              currentIndex: _currentIndex,
              items: [
                BottomNavigationBarItem(
                    icon: _currentIndex == 0
                        ? Image.asset(
                            AppImages.solor,
                            color: Colors.grey.shade900,
                          )
                        : Image.asset(
                            AppImages.solor,
                            color: Colors.grey.shade600,
                          ),
                    label: 'Consultation',
                    backgroundColor: Colors.grey.shade700),
                BottomNavigationBarItem(
                    icon: _currentIndex == 1
                        ? Icon(
                            Icons.star,
                            color: Colors.grey.shade900,
                          )
                        : Icon(
                            Icons.star,
                            color: Colors.grey.shade600,
                          ),
                    label: 'My Ratings',
                    backgroundColor: Colors.blue),
                BottomNavigationBarItem(
                    icon: _currentIndex == 2
                        ? Icon(
                            Icons.account_circle,
                            color: Colors.grey.shade900,
                          )
                        : Icon(
                            Icons.account_circle,
                            color: Colors.grey.shade600,
                          ),
                    label: 'Account',
                    backgroundColor: Colors.green),
              ],
              onTap: (index) {
                print(index);
                setState(() {
                  _currentIndex = index;
                });
              },
            ),
          ),
        ));
  }
}
