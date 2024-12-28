import 'package:const_date_time/src/const_date_time.dart';
import 'package:const_date_time_range/src/const_date_time_range.dart';
import 'package:const_date_time_range/src/to_const_date_time_range.dart';
import 'package:flutter/material.dart' show DateTimeRange;
import 'package:test/test.dart';

void main() {
  const start = ConstDateTime(0, 1, 2, 3, 4, 5, 6, 7);
  const end = ConstDateTime(7, 6, 5, 4, 3, 2, 1, 0);
  const constDateTimeRange = ConstDateTimeRange(start: start, end: end);
  final dateTimeRange = DateTimeRange(start: start.dateTime, end: end.dateTime);

  group('ConstDateTimeRangeExtension', () {
    test('must convert to ConstDateTimeRange', () async {
      final converted = dateTimeRange.toConstDateTimeRange();
      expect(converted == constDateTimeRange, isTrue);
    });
  });
}
