library globals;

import 'package:flutter/material.dart';

final fromDate = ValueNotifier<DateTime>(
    DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day));
final toDate = ValueNotifier<DateTime>(DateTime(
    DateTime.now().year, DateTime.now().month, DateTime.now().day + 1));
// var userSelection = ValueNotifier<Map<dynamic, dynamic>>({});
List<String> months = [
  'Jan',
  'Feb',
  'March',
  'April',
  'May',
  'June',
  'July',
  'Aug',
  'Sep',
  'Oct',
  'Nov',
  'Dec'
];
