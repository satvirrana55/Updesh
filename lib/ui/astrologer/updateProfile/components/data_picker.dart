import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:updesh/utils/colors.dart';
import 'package:updesh/utils/text_styles.dart';
import 'package:updesh/utils/ts.dart';

class DatePicker extends StatefulWidget {
  const DatePicker({super.key});

  @override
  State<DatePicker> createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  TextEditingController dateInput = TextEditingController();
  String dateInput11 = "";
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        controller: dateInput,
        //editing controller of this TextField
        decoration: InputDecoration(
            focusedBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
                borderSide:
                    BorderSide(color: AppColors.borderColor, width: (1))),
            /* enabledBorder: commonInputDecoration(),
            disabledBorder: commonInputDecoration(),
            border: commonInputDecoration(),
            errorBorder: commonInputDecoration(), */
            errorStyle: const TextStyle(
              color: Colors.red,
            ),
            hintText: '11 August 1997',
            hintStyle: Ts.regular16(AppColors.textColordrwar),
            contentPadding: EdgeInsets.symmetric(
              horizontal: 10.w,
            ),
            prefixIcon: const Icon(
              Icons.calendar_today_outlined,
              color: Colors.grey,
            )),
        readOnly: true,
        onTap: () async {
          DateTime? _selectedDate = await showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime(1950),
              lastDate: DateTime(2101));

          if (_selectedDate != null) {
            dateInput11 = _selectedDate.toString();
            String formattedDate =
                DateFormat.yMMMMd('en_US').format(_selectedDate);
            setState(() {
              dateInput.text = formattedDate;
            });
          } else {}
        },
      ),
    );
  }
}
