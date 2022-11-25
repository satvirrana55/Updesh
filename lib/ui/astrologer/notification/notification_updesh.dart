import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:updesh/components/app_bar.dart';
import 'package:updesh/ui/astrologer/notification/components/notification_components.dart';

class NotificationUpdesh extends StatefulWidget {
  const NotificationUpdesh({super.key});

  @override
  State<NotificationUpdesh> createState() => _NotificationUpdeshState();
}

class _NotificationUpdeshState extends State<NotificationUpdesh> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(75.h),
          child: const CommonAppBar(
            tittle: 'Notification',
          )),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 1,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: const [
                    NotificationComponents(
                      day: 'Today',
                      tittle: 'Booking Confermation',
                      dis:
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                    ),
                    SizedBox(
                      height: 26,
                    ),
                    NotificationComponents(
                      day: 'Yesterday',
                      tittle: 'Booking Confermation',
                      dis:
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                    ),
                    SizedBox(
                      height: 26,
                    ),
                    NotificationComponents(
                      day: '10-11-2022',
                      tittle: 'Booking Confermation',
                      dis:
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
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
