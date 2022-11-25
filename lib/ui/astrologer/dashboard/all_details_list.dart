import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:updesh/ui/astrologer/dashboard/completed_details_list.dart';
import 'package:updesh/ui/astrologer/dashboard/components/completed_tabview.dart';
import 'package:updesh/ui/astrologer/dashboard/components/ongoing_tabview.dart';
import 'package:updesh/ui/astrologer/dashboard/ongoing_details_list.dart';
import 'package:updesh/utils/colors.dart';
import 'package:updesh/utils/images.dart';
import 'package:updesh/utils/text_styles.dart';

import '../../../utils/ts.dart';

class AllDetails extends StatefulWidget {
  const AllDetails({super.key});

  @override
  State<AllDetails> createState() => _AllDetailsState();
}

class _AllDetailsState extends State<AllDetails> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CompletedTabView(),
            OngoingDetails(),
            /* const OngoingTabView(
              tittle: 'Call',
              image: AppImages.call,
            ),
            const OngoingTabView(
              tittle: 'chat',
              image: AppImages.chat,
            ),
            const OngoingTabView(
              tittle: 'Call',
              image: AppImages.call,
            ), */
            const SizedBox(
              height: 15,
            ),
            Text(
              'Date: 22-09-2022',
              style: Ts.medium16(AppColors.textColor5),
            ),
            const SizedBox(
              height: 10,
            ),
            const CompletedDetails(),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
