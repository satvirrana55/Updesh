import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:updesh/utils/colors.dart';
import 'package:updesh/utils/text_styles.dart';
import 'package:updesh/utils/ts.dart';

class DropdownUpdateProfile extends StatefulWidget {
  const DropdownUpdateProfile({super.key});

  @override
  State<DropdownUpdateProfile> createState() => _DropdownUpdateProfileState();
}

class _DropdownUpdateProfileState extends State<DropdownUpdateProfile> {
  String dropdownvalue = 'Item 1';

  var items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 50,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: AppColors.borderColor, width: .5),
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(7), bottomRight: Radius.circular(7))),
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
        child: DropdownButton(
          focusColor: Colors.transparent,
          elevation: 0,
          style: Ts.regular16(AppColors.textColordrwar),
          isDense: true,
          isExpanded: true,
          value: dropdownvalue,
          icon: const Icon(Icons.keyboard_arrow_down),
          items: items.map((String items) {
            return DropdownMenuItem(
              value: items,
              child: Text(items),
            );
          }).toList(),
          onChanged: (String? newValue) {
            setState(() {
              dropdownvalue = newValue!;
            });
          },
        ),
      ),
    );
  }
}
