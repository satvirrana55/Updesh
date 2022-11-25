import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:updesh/utils/colors.dart';
import 'package:updesh/utils/ts.dart';

class NotificationComponents extends StatefulWidget {
  final String? day;
  final String? tittle;
  final String? dis;

  const NotificationComponents({Key? key, this.tittle, this.day, this.dis})
      : super(key: key);
  @override
  State<NotificationComponents> createState() => _NotificationComponentsState();
}

class _NotificationComponentsState extends State<NotificationComponents> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '${widget.day}',
            style: Ts.regular14(AppColors.textColor2),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Row(
              children: [
                Container(
                  height: 32,
                  width: 32,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 245, 243, 243),
                      borderRadius: BorderRadius.all(Radius.circular(25))),
                  child: const Icon(
                    Icons.notifications_none_outlined,
                    color: AppColors.primaryColor,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  '${widget.tittle}',
                  style: Ts.medium16(AppColors.textColor5),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 55),
            child: Text(
              '${widget.dis}',
              style: Ts.regular14(AppColors.textColor3),
            ),
          )
        ],
      ),
    );
  }
}
