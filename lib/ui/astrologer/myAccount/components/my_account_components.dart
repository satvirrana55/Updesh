import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:updesh/utils/colors.dart';
import 'package:updesh/utils/ts.dart';

class MyAccountComponents extends StatefulWidget {
  final String? tittle;
  // ignore: prefer_typing_uninitialized_variables
  final icon;

  const MyAccountComponents({Key? key, this.tittle, this.icon})
      : super(key: key);

  @override
  State<MyAccountComponents> createState() => _MyAccountComponentsState();
}

class _MyAccountComponentsState extends State<MyAccountComponents> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10, right: 10),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: AppColors.boderSideColor, width: 1),
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20), bottomRight: Radius.circular(20))),
      child: Row(
        children: [
          widget.icon,
          const SizedBox(
            width: 10,
          ),
          Text(
            '${widget.tittle}',
            style: Ts.medium16(AppColors.textColor1),
          ),
          const Spacer(
            flex: 1,
          ),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.keyboard_arrow_right_outlined,
                color: AppColors.grey2,
              ))
        ],
      ),
    );
  }
}
