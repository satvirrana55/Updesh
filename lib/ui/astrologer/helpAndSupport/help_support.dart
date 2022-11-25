import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:updesh/components/app_bar.dart';
import 'package:updesh/theme/app_assets.dart';
import 'package:updesh/ui/astrologer/helpAndSupport/components/help_support_components.dart';
import 'package:updesh/utils/colors.dart';
import 'package:updesh/utils/images.dart';
import 'package:updesh/utils/ts.dart';
import 'package:updesh/widgets/common_widgets.dart';

class HelpAndSupport extends StatefulWidget {
  const HelpAndSupport({super.key});

  @override
  State<HelpAndSupport> createState() => _HelpAndSupportState();
}

class _HelpAndSupportState extends State<HelpAndSupport> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(75.h),
          child: const CommonAppBar(
            tittle: 'Help & Support',
          )),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, top: 17),
              child: Column(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 1.65,
                        child: Text(
                          'How can help you? Please contact',
                          style: Ts.medium16(AppColors.textColordrwar),
                        ),
                      ),
                      const Spacer(
                        flex: 1,
                      ),
                      Image(
                        image: AssetImage(AppImages.support),
                        width: 115.w,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 0,
                  ),
                  const Divider(),
                  SizedBox(
                    height: 38.h,
                  ),
                  const HelpAndSupportComponents(
                    tittle: 'Address',
                    dis:
                        'A RenderFlex overflowed by 99288 pixels on the bottom',
                    icon: Icon(Icons.location_on_outlined,
                        color: AppColors.textColordreply),
                  ),
                  SizedBox(
                    height: 36.h,
                  ),
                  const HelpAndSupportComponents(
                    tittle: 'Email Address',
                    dis: 'email@example.com',
                    icon: Icon(Icons.mail_outline_outlined,
                        color: AppColors.textColordreply),
                  ),
                  SizedBox(
                    height: 36.h,
                  ),
                  const HelpAndSupportComponents(
                    tittle: 'Phone Number',
                    dis: '(727)727-2727',
                    icon: Icon(Icons.phone, color: AppColors.textColordreply),
                  ),
                  SizedBox(
                    height: 220.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50, right: 50),
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 54.h,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: AppColors.primaryColor,
                            border: Border.all(
                                color: AppColors.borderColor, width: 1),
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20))),
                        child: Text(
                          'Chat with us',
                          style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
