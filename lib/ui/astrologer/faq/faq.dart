import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:updesh/components/app_bar.dart';
import 'package:updesh/ui/astrologer/faq/components/faq_compontens.dart';
import 'package:updesh/utils/colors.dart';
import 'package:updesh/utils/ts.dart';

class Faq extends StatefulWidget {
  const Faq({super.key});

  @override
  State<Faq> createState() => _FaqState();
}

class _FaqState extends State<Faq> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(75.h),
          child: const CommonAppBar(
            tittle: 'FAQ',
          )),
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 17),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Frequently Asked Questions',
              style: Ts.semiBold18(AppColors.textColordrwar),
            ),
            const SizedBox(
              height: 16,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: const [
                      FAQComponents(
                        tittle: "Lorem ipsum dolor sit amet, consecte elit.",
                        dis:
                            'Reloaded 1 of 1355 libraries in 8,715ms (compile: 179 ms, reload: 2222 ms, reassemble: 6060 ms)',
                      ),
                      SizedBox(
                        height: 16,
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
