import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:updesh/utils/colors.dart';
import 'package:updesh/utils/images.dart';
import 'package:updesh/utils/text_styles.dart';
import 'package:updesh/utils/ts.dart';

class MyRatingProfile extends StatefulWidget {
  const MyRatingProfile({super.key});

  @override
  State<MyRatingProfile> createState() => _MyRatingProfileState();
}

class _MyRatingProfileState extends State<MyRatingProfile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 127,
      padding: const EdgeInsets.only(left: 20, top: 25, bottom: 25),
      decoration: BoxDecoration(
          color: AppColors.primaryColor,
          border: Border.all(color: AppColors.primaryColor, width: 1),
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(25), bottomRight: Radius.circular(25))),
      child: Row(children: [
        const CircleAvatar(
          minRadius: 40,
          maxRadius: 40,
          child: Image(
            image: AssetImage(AppImages.profile3),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 11, bottom: 12, left: 22),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Rahul vaidya",
                style: Ts.medium16(AppColors.textColor1),
              ),
              Row(
                children: [
                  Text(
                    '(4.5)',
                    style: Ts.medium18(AppColors.textColordrwar),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Icon(
                    Icons.star,
                    color: Colors.black,
                    size: 20,
                  )
                ],
              )
            ],
          ),
        )
      ]),
    );
  }
}
