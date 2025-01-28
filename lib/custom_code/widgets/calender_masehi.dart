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

class CalenderMasehi extends StatefulWidget {
  const CalenderMasehi({
    super.key,
    this.width,
    this.height,
  });

  final double? width;
  final double? height;

  @override
  State<CalenderMasehi> createState() => _CalenderMasehiState();
}

class _CalenderMasehiState extends State<CalenderMasehi> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: SfDateRangePicker(
      yearCellStyle: DateRangePickerYearCellStyle(
        leadingDatesTextStyle:
            TextStyle(color: Colors.grey[400], fontWeight: FontWeight.w700),
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
      view: DateRangePickerView.month,
      monthViewSettings: DateRangePickerMonthViewSettings(
          weekendDays: [7],
          showTrailingAndLeadingDates: true,
          firstDayOfWeek: 1,
          viewHeaderStyle: DateRangePickerViewHeaderStyle(
              backgroundColor: Colors.black,
              textStyle:
                  TextStyle(fontWeight: FontWeight.w700, color: Colors.white))),
      todayHighlightColor: Colors.black,
      monthCellStyle: DateRangePickerMonthCellStyle(
          leadingDatesTextStyle:
              TextStyle(color: Colors.grey[400], fontWeight: FontWeight.w600),
          trailingDatesTextStyle:
              TextStyle(color: Colors.grey[400], fontWeight: FontWeight.w600),
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
