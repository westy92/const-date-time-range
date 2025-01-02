import 'package:const_date_time/const_date_time.dart';
import 'package:flutter/material.dart' show DateTimeRange, immutable;

@immutable
class ConstDateTimeRange implements DateTimeRange {
  const ConstDateTimeRange({required this.start, required this.end});

  /// The start of the range of dates.
  @override
  final ConstDateTime start;

  /// The end of the range of dates.
  @override
  final ConstDateTime end;

  @override
  Duration get duration => end.difference(start);

  /// `ConstDateTimeRange` is a decorator type built upon `DateTimeRange`, and we intend
  /// to treat them as the **same** type at runtime. Certain libraries, such as
  /// [Equatable](https://pub.dev/packages/equatable), depend on matching
  /// `runtimeType` for their equality checks. We override the `runtimeType`
  /// to ensure these checks succeed.
  @override
  Type get runtimeType => DateTimeRange;

  @override
  int get hashCode => dateTimeRange.hashCode;

  @override
  bool operator ==(Object other) {
    return dateTimeRange == other;
  }

  @override
  String toString() {
    return dateTimeRange.toString();
  }

  DateTimeRange get dateTimeRange {
    return DateTimeRange(start: start.dateTime, end: end.dateTime);
  }
}
