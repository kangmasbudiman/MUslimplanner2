import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/auth/firebase_auth/auth_util.dart';

String? widgetStateLog(List<String>? widgetState) {
  return widgetState.toString();
}

bool? checkIfDateIsTodayBool(
  DateTime dateInput,
  DateTime todayDate,
) {
  // return colorTrue if dateInput day equal to todayDate day else return colorFalse
  if (dateInput.day == todayDate.day &&
      dateInput.month == todayDate.month &&
      dateInput.year == todayDate.year) {
    return true;
  } else {
    return false;
  }
}

bool isNull(List<String>? widgetState) {
  if (widgetState == null || widgetState.isEmpty) {
    return true;
  } else {
    return false;
  }
}

List<DateTime>? getCurrentWeek(DateTime todaysTime) {
  // generate current week and return list of dates based on todaysTime input
  final List<DateTime> weekDates = [];
  final int currentWeekday = todaysTime.weekday;
  final DateTime startOfWeek =
      todaysTime.subtract(Duration(days: currentWeekday - 1));
  for (int i = 0; i < 7; i++) {
    weekDates.add(startOfWeek.add(Duration(days: i)));
  }
  return weekDates;
}

Color? checkIfDateIsToday(
  DateTime dateInput,
  Color dateColorTrue,
  Color dateColorFalse,
  DateTime todayDate,
) {
  // return colorTrue if dateInput day equal to todayDate day else return colorFalse
  if (dateInput.day == todayDate.day &&
      dateInput.month == todayDate.month &&
      dateInput.year == todayDate.year) {
    return dateColorTrue;
  } else {
    return dateColorFalse;
  }
}

DateTime? convertStringToDateTimeUntukExpired(String gregorianDate) {
  // remove "(zone)" from timings then convert string DD-MM-YYYY and HH:mm to Date Time type
  final dateTimeString = '$gregorianDate';
  final dateFormat = DateFormat('dd-MM-yyyy');
  return dateFormat.parse(dateTimeString);
}

String? convertDateToString() {
  // convert datetime.now to DD-MM-YYYY
  final DateTime now = DateTime.now();
  final DateFormat formatter = DateFormat('dd-MM-yyyy');
  final String formatted = formatter.format(now);
  return formatted;
}

List<int>? convertDateToInteger(DateTime dateInput) {
  // return month and year based on dateInput
  return [dateInput.month, dateInput.year];
}

List<double>? locationToDouble(LatLng? currentLocation) {
  // remove LatLng(lat: , lng: , ) from the word
  if (currentLocation == null) {
    return null;
  }
  return [currentLocation.latitude, currentLocation.longitude];
}

DateTime? convertStringToDateTime(
  String timings,
  String gregorianDate,
) {
  // remove "(zone)" from timings then convert string DD-MM-YYYY and HH:mm to Date Time type
  timings = timings.split(' ')[0];
  final dateTimeString = '$gregorianDate $timings';
  final dateFormat = DateFormat('dd-MM-yyyy HH:mm');
  return dateFormat.parse(dateTimeString);
}

String? timerSholat(
  DateTime dateTimeNow,
  DateTime sholatSelanjutnya,
) {
  // return string -HH:mm based on sholatSelanjutnya substract dateTimeNow
  Duration duration = sholatSelanjutnya.difference(dateTimeNow);
  if (duration.isNegative) {
    return null;
  }
  int totalMinutes = duration.inMinutes;
  int hours = totalMinutes ~/ 60;
  int minutes = totalMinutes % 60;
  String hourString = (hours < 10) ? '0$hours' : hours.toString();
  String minuteString = (minutes < 10) ? '0$minutes' : minutes.toString();
  return '-$hourString:$minuteString';
}

String? convertTomorrowToString() {
  // convert tomorrow date to string with format DD-MM-YYYY
  final tomorrow = DateTime.now().add(Duration(days: 1));
  final formatter = DateFormat('dd-MM-yyyy');
  return formatter.format(tomorrow);
}

DateTime stringtoDateTime(String? datestring) {
  // how to convert string to datetime from variabel
  return DateFormat('yyyy-MM-dd HH:mm:ss').parse(datestring!);
}

String? formatRupiah(String? angka) {
  // format currency from variable
  if (angka == null) return null;
  final formatter =
      NumberFormat.currency(locale: 'id_ID', symbol: 'Rp', decimalDigits: 0);
  final intAngka = int.tryParse(angka);
  if (intAngka == null) return null;
  return formatter.format(intAngka);
}

String intToString(int dataInt) {
  // CONVERT INT TO STRING
  return dataInt.toString();
}

int stringToInt(String mystring) {
  return int.parse(mystring);
}

double convertLatlongtoDouble(
  LatLng latOrLong,
  bool isLat,
) {
  if (isLat) {
    return latOrLong.latitude;
  } else {
    return latOrLong.longitude;
  }
}
