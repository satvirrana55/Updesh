import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:updesh/ui/astrologer/dashboard/components/completed_tabview.dart';
import 'package:updesh/ui/astrologer/dashboard/components/ongoing_tabview.dart';
import 'package:updesh/utils/images.dart';
import 'package:updesh/widgets/common_widgets.dart';

class OngoingDetails extends StatefulWidget {
  final Icon? icon;
  final String? tittle;
  const OngoingDetails({Key? key, this.tittle, this.icon}) : super(key: key);

  @override
  State<OngoingDetails> createState() => _OngoingDetailsState();
}

class _OngoingDetailsState extends State<OngoingDetails> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 180 * 100,
            child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 100,
              itemBuilder: (context, index) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    OngoingTabView(
                      tittle: 'Call',
                      image: AppImages.call,
                    ),
                    OngoingTabView(
                      tittle: 'Chat',
                      image: AppImages.chat,
                    ),
                    OngoingTabView(
                      tittle: 'video',
                      image: AppImages.video,
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
