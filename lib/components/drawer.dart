import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:updesh/router/my_router.dart';
import 'package:updesh/theme/app_assets.dart';
import 'package:updesh/ui/astrologer/faq/faq.dart';
import 'package:updesh/ui/astrologer/helpAndSupport/help_support.dart';
import 'package:updesh/utils/colors.dart';
import 'package:updesh/utils/images.dart';
import 'package:updesh/utils/ts.dart';
import 'package:updesh/widgets/common_widgets.dart';
import 'package:updesh/widgets/drawer_astrologer.dart';

class DDrawer extends StatefulWidget {
  const DDrawer({Key? key}) : super(key: key);

  @override
  State<DDrawer> createState() => _DDrawerState();
}

class _DDrawerState extends State<DDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height.h,
            margin: const EdgeInsets.all(10),
            width: 350.w,
            child: ListView(
              children: [
                Container(
                  height: 100,
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Get.toNamed(MyRouter.homeScreenAstrologer);
                        },
                        child: Container(
                          height: 80,
                          width: 80,
                          child: const CircleAvatar(
                              backgroundImage: AssetImage(AppImages.profile1)),
                        ),
                      ),
                      addWidth(25.w),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Naman Antrikesh",
                            style: TextStyle(
                                fontSize: 18.sp, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "9992992929",
                            style: TextStyle(
                                fontSize: 14.sp, fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                      const Spacer(),
                      IconButton(
                          onPressed: () {
                            Get.back();
                          },
                          icon: const Icon(
                            Icons.close,
                            size: 20,
                            color: Color.fromRGBO(120, 120, 122, 1),
                          ))
                    ],
                  ),
                ),
                const Divider(),
                addHeight(20.h),
                InkWell(
                    onTap: () {
                      Get.to(() => const HelpAndSupport());
                    },
                    child: commondrawerContainer(
                        const Icon(
                          Icons.person,
                          size: 18,
                          color: Colors.black,
                        ),
                        "Help Center")),
                addHeight(15.h),
                InkWell(
                    onTap: () {
                      Get.to(() => const Faq());
                    },
                    child: commondrawerContainer(
                        const ImageIcon(
                            size: 18,
                            color: Colors.black,
                            AssetImage(
                              '${AppImages.faq}',
                            )),
                        "FAQs")),
                addHeight(15.h),
                InkWell(
                    onTap: () {
                      Get.toNamed(MyRouter.homeScreenAstrologer);
                    },
                    child: commondrawerContainer(
                        const Icon(
                          Icons.logout,
                          size: 18,
                          color: Colors.black,
                        ),
                        "Logout")),
                addHeight(15.h),
              ],
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 0, bottom: 0),
            child: Container(
              padding: const EdgeInsets.all(20),
              height: 76.h,
              color: AppColors.primaryColor,
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      "Privacy Policy",
                      style: Ts.regular14(AppColors.textColordrwar),
                    ),
                  ),
                  /*  */
                  const Spacer(),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      "Terms of Services",
                      style: Ts.regular14(AppColors.textColordrwar),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Container commondrawerContainer(icon, text) {
  icon;
  text;
  return Container(
      height: 50.h,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(15), bottomRight: Radius.circular(15)),
          border: Border.all(
              width: 1,
              color: const Color.fromRGBO(224, 224, 224, 1).withOpacity(0.6))),
      child: Row(
        children: [
          addWidth(18.w),
          icon,
          addWidth(24.w),
          Text(
            text,
            style: GoogleFonts.poppins(
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
                color: const Color(0xff111115)),
          ),
          const Spacer(),
          IconButton(
            icon: const Icon(Icons.arrow_forward_ios,
                size: 16, color: Color.fromRGBO(73, 79, 89, 1)),
            onPressed: () {},
          ),
        ],
      ));
}
