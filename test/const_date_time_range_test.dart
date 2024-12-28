import 'package:const_date_time/const_date_time.dart';
import 'package:const_date_time_range/const_date_time_range.dart';
import 'package:flutter/material.dart' show DateTimeRange;
import 'package:test/test.dart';

void main() {
  const start = ConstDateTime(0, 1, 2, 3, 4, 5, 6, 7);
  const end = ConstDateTime(7, 6, 5, 4, 3, 2, 1, 0);
  const constDateTimeRange = ConstDateTimeRange(start: start, end: end);
  final dateTimeRange = DateTimeRange(start: start.dateTime, end: end.dateTime);

  group('Test constructors', () {
    test('default', () {
      expect(constDateTimeRange == dateTimeRange, isTrue);
      expect(dateTimeRange == constDateTimeRange, isTrue);
    });
  });

  group('Test methods', () {
    test('operator ==', () {
      expect(constDateTimeRange == dateTimeRange, isTrue);
      expect(dateTimeRange == constDateTimeRange, isTrue);

      final dateTimeRange2 = DateTimeRange(
          start: start.dateTime, end: end.dateTime.add(Duration(seconds: 1)));
      expect(constDateTimeRange == dateTimeRange2, isFalse);
      expect(dateTimeRange2 == constDateTimeRange, isFalse);
    });

    test('toString', () {
      expect(constDateTimeRange.toString() == dateTimeRange.toString(), isTrue);
    });
  });

  group('Test getters', () {
    test('hashCode', () {
      expect(constDateTimeRange.hashCode == dateTimeRange.hashCode, isTrue);

      final dateTimeRange2 = DateTimeRange(
          start: start.dateTime, end: end.dateTime.add(Duration(seconds: 1)));
      expect(constDateTimeRange.hashCode == dateTimeRange2.hashCode, isFalse);
    });

    test('duration', () {
      const constDateTimeRange = ConstDateTimeRange(
          start: ConstDateTime(2024), end: ConstDateTime(2025));
      expect(constDateTimeRange.duration == Duration(days: 366), isTrue);
    });

    test('date components', () {
      expect(constDateTimeRange.start, start);
      expect(constDateTimeRange.end, end);
    });

    test('runtimeType', () {
      expect(constDateTimeRange.runtimeType == constDateTimeRange.runtimeType,
          isTrue);
      expect(
          constDateTimeRange.runtimeType == dateTimeRange.runtimeType, isTrue);
      expect(constDateTimeRange.runtimeType == start.runtimeType, isFalse);
    });
  });
}
