// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class CalendarHIjri extends StatefulWidget {
  const CalendarHIjri({
    super.key,
    this.width,
    this.height,
  });

  final double? width;
  final double? height;

  @override
  State<CalendarHIjri> createState() => _CalendarHIjriState();
}

class _CalendarHIjriState extends State<CalendarHIjri> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: SfHijriDateRangePicker(
      yearCellStyle: HijriDatePickerYearCellStyle(
        todayCellDecoration:
            BoxDecoration(shape: BoxShape.circle, color: Colors.black),
        todayTextStyle:
            TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
        textStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
      ),
      headerHeight: 60.0,
      headerStyle: DateRangePickerHeaderStyle(
          textStyle:
              TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
          textAlign: TextAlign.center,
          backgroundColor: Colors.black),
      selectionColor: Colors.grey[500],
      selectionTextStyle:
          TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
      showNavigationArrow: true,
      view: HijriDatePickerView.month,
      monthViewSettings: HijriDatePickerMonthViewSettings(
          weekendDays: [7],
          firstDayOfWeek: 7,
          viewHeaderStyle: DateRangePickerViewHeaderStyle(
              backgroundColor: Colors.black,
              textStyle:
                  TextStyle(fontWeight: FontWeight.w700, color: Colors.white))),
      todayHighlightColor: Colors.black,
      monthCellStyle: HijriDatePickerMonthCellStyle(
          todayCellDecoration:
              BoxDecoration(shape: BoxShape.circle, color: Colors.black),
          todayTextStyle:
              TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
          textStyle:
              TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
          weekendTextStyle:
              TextStyle(color: Colors.red[900], fontWeight: FontWeight.w700)),
    ));
  }
}
