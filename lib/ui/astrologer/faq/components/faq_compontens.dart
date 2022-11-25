import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:updesh/utils/colors.dart';
import 'package:updesh/utils/ts.dart';

class FAQComponents extends StatefulWidget {
  final String? tittle;
  final String? dis;

  const FAQComponents({Key? key, this.tittle, this.dis}) : super(key: key);

  @override
  State<FAQComponents> createState() => _FAQComponentsState();
}

class _FAQComponentsState extends State<FAQComponents> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: AppColors.boderSideColor, width: 1),
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10), bottomRight: Radius.circular(10))),
      child: ExpansionTile(
        textColor: Colors.black,
        iconColor: Colors.black,
        collapsedTextColor: Colors.black,
        title: Text(
          '${widget.tittle}',
          style: Ts.medium16(AppColors.textColordrwar),
        ),
        children: [
          ListTile(
            iconColor: AppColors.textColor,
            title: Text(
              '${widget.dis}',
              style: Ts.regular14(AppColors.textColor),
            ),
          )
        ],
      ),
    );
  }
}
