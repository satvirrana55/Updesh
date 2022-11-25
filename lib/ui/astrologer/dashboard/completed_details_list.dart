import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:updesh/ui/astrologer/dashboard/components/completed_tabview.dart';
import 'package:updesh/ui/astrologer/dashboard/components/ongoing_tabview.dart';

import 'ongoing_details_list.dart';

class CompletedDetails extends StatefulWidget {
  const CompletedDetails({super.key});

  @override
  State<CompletedDetails> createState() => _CompletedDetailsState();
}

class _CompletedDetailsState extends State<CompletedDetails> {
  @override
  Widget build(BuildContext context) {
    /* return Column(
      children: const [CompletedTabView(), CompletedTabView()],
    ) */

    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 120 * 100,
            child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 100,
              itemBuilder: (context, index) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [const CompletedTabView()],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
