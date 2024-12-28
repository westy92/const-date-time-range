import 'package:const_date_time/const_date_time.dart';
import 'package:const_date_time_range/const_date_time_range.dart';
import 'package:flutter/material.dart' show DateTimeRange;

const start = ConstDateTime(0, 1, 2, 3, 4, 5, 6, 7);
const end = ConstDateTime(7, 6, 5, 4, 3, 2, 1, 0);
const constDateTimeRange = ConstDateTimeRange(start: start, end: end);
final dateTimeRange = DateTimeRange(start: start.dateTime, end: end.dateTime);

final ConstDateTimeRange cdtrFromDtr = dateTimeRange.toConstDateTimeRange();

void main() {
  // you can pass a ConstDateTimeRange where a DateTimeRange is expected!
  printDateRange(constDateTimeRange);
}

void printDateRange(DateTimeRange dateTimeRange) {
  print(dateTimeRange.toString());
}
