import 'package:const_date_time/const_date_time.dart';
import 'package:const_date_time_range/const_date_time_range.dart';
import 'package:flutter/material.dart' show DateTimeRange;

extension ConstDateTimeExtension on DateTimeRange {
  ConstDateTimeRange toConstDateTimeRange() {
    return ConstDateTimeRange(
        start: start.toConstDateTime(), end: end.toConstDateTime());
  }
}
