import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:updesh/ui/astrologer/myRating/components/my_rating_profile.dart';
import 'package:updesh/ui/astrologer/myRating/components/rating.dart';

class MyRating extends StatefulWidget {
  const MyRating({super.key});

  @override
  State<MyRating> createState() => _MyRatingState();
}

class _MyRatingState extends State<MyRating> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 24),
      child: Column(
        children: [
          const MyRatingProfile(),
          SizedBox(
            height: 16.h,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    Rating(),
                    SizedBox(
                      height: 10.h,
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
