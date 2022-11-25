import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:updesh/ui/astrologer/dashboard/components/button.dart';
import 'package:updesh/ui/astrologer/faq/faq.dart';
import 'package:updesh/ui/astrologer/helpAndSupport/help_support.dart';
import 'package:updesh/ui/astrologer/myAccount/components/my_account_components.dart';
import 'package:updesh/ui/astrologer/settings/settings.dart';
import 'package:updesh/ui/astrologer/updateProfile/update_profile.dart';
import 'package:updesh/utils/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:updesh/utils/images.dart';
import 'package:updesh/utils/ts.dart';

class MyAccount extends StatefulWidget {
  const MyAccount({super.key});

  @override
  State<MyAccount> createState() => _MyAccountState();
}

class _MyAccountState extends State<MyAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: AppColors.boderSideColor, width: 1),
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(25),
                      bottomRight: Radius.circular(25))),
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 10, right: 10, top: 15, bottom: 15),
                child: Row(
                  children: [
                    const CircleAvatar(
                        maxRadius: 40,
                        minRadius: 40,
                        child: Image(
                          image: AssetImage(AppImages.profile3),
                        )),
                    SizedBox(
                      width: 29.w,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Jenny Wilson',
                          style: Ts.medium18(AppColors.textColor2),
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        Text(
                          '9087654321',
                          style: Ts.regular14(AppColors.grey1),
                        )
                      ],
                    ),
                    const Spacer(
                      flex: 1,
                    ),
                    IconButton(
                        onPressed: () {
                          Get.to(() => const UpdateProfile());
                        },
                        icon: const Icon(
                          Icons.edit,
                          color: AppColors.greyIcon,
                        ))
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: (() {
                Get.to(() => const HelpAndSupport());
              }),
              child: const MyAccountComponents(
                tittle: 'Help Center',
                icon: ImageIcon(
                    size: 20,
                    color: AppColors.grey2,
                    AssetImage(
                      AppImages.faq1,
                    )),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            InkWell(
              onTap: (() {
                Get.to(() => const Faq());
              }),
              child: const MyAccountComponents(
                tittle: 'FAQs',
                icon: ImageIcon(
                    size: 20,
                    color: AppColors.grey2,
                    AssetImage(
                      AppImages.faq1,
                    )),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            InkWell(
              onTap: (() {
                Get.to(() => const Settings());
              }),
              child: const MyAccountComponents(
                tittle: 'Settings',
                icon: ImageIcon(
                    size: 20,
                    color: AppColors.grey2,
                    AssetImage(
                      AppImages.settings,
                    )),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            InkWell(
              onTap: (() {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    title: Text(
                      'Log Out',
                      style: Ts.semiBold20(Colors.black),
                    ),
                    content: Text(
                      'Are you sure you want logout?',
                      style: Ts.regular16(AppColors.textColor),
                    ),
                    actions: <Widget>[
                      InkWell(
                        onTap: (() {
                          Navigator.of(context).pop();
                        }),
                        child: const Button(
                          tittle: 'Yes',
                          color: AppColors.primaryColor,
                          colorText: Colors.black,
                        ),
                      ),
                      InkWell(
                        onTap: (() {
                          Navigator.of(context).pop();
                        }),
                        child: const Button(
                          tittle: 'No',
                          color: AppColors.backColor,
                          colorText: Colors.black,
                          borerColor: Colors.transparent,
                        ),
                      ),
                    ],
                  ),
                );
              }),
              child: const MyAccountComponents(
                tittle: 'Logout',
                icon: Icon(
                  Icons.logout,
                  color: Color.fromRGBO(120, 120, 122, 1),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
