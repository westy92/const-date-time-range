# const_date_time_range

[![Build Status](https://github.com/westy92/const-date-time-range/actions/workflows/github-actions.yml/badge.svg)](https://github.com/westy92/const-date-time-range/actions/workflows/github-actions.yml?query=branch%3Amain)
[![Code Coverage](https://codecov.io/gh/westy92/const-date-time-range/branch/main/graph/badge.svg)](https://codecov.io/gh/westy92/const-date-time-range)
[![Funding Status](https://img.shields.io/github/sponsors/westy92)](https://github.com/sponsors/westy92)

A drop-in replacement for Dart's `DateTimeRange` class with `const` constructors.

## Getting started

Install the package:

```bash
flutter pub add const_date_time_range
```

or

```bash
dart pub add const_date_time_range
```

## Usage

You can use a `ConstDateTimeRange` anywhere a `DateTimeRange` is expected. All major `DateTimeRange` constructors have a `const` version.

```dart
import 'package:const_date_time/const_date_time.dart';
import 'package:const_date_time_range/const_date_time_range.dart';

// const constructors
const start = ConstDateTime(2024);
const end = ConstDateTime(2025);
const constDateTimeRange = ConstDateTimeRange(start: start, end: end);
```

You can access the underlying `DateTimeRange` object directly:

```dart
const cdtr = ConstDateTimeRange(start: ConstDateTime(2024), end: ConstDateTime(2025))
final DateTimeRange dtr = cdtr.dateTimeRange;
// other getters are available as well:
final ConstDateTime dtrStart = cdtr.start;
final ConstDateTime dtrEnd = cdtr.end;
```

You can convert a `DateTimeRange` to a `ConstDateTimeRange`.

```dart
final dtr = DateTimeRange(start: DateTime(2024), end: DateTime(2025));
final ConstDateTimeRange cdtr = dtr.toConstDateTimeRange();
```

## Sponsor

Please consider [sponsoring my work](https://github.com/sponsors/westy92) to ensure this library receives the attention it deserves.

## License

const_date_time_range is released under the MIT License.
