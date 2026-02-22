import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:ffi_leak_tracker/ffi_leak_tracker.dart';

import '../structs.g.dart';
import '../utils.dart';

/// Extensions for converting between Windows [FILETIME] and Dart [DateTime].
///
/// A `FILETIME` represents the number of **100-nanosecond intervals**
/// since **January 1, 1601 (UTC)** — the Windows epoch.
///
/// Dart `DateTime`, by contrast, represents **microseconds** since
/// **January 1, 1970 (UTC)** — the Unix epoch.
///
/// These extensions provide precise and predictable conversions between the two
/// representations.
extension FILETIMEToDateTimeConversion on FILETIME {
  /// Converts this [FILETIME] to a Dart [DateTime].
  ///
  /// By default, the returned [DateTime] is created in **UTC**.
  ///
  /// If [isUtc] is `false`, the value is interpreted as local time by converting
  /// the resulting UTC [DateTime] using [DateTime.toLocal].
  ///
  /// This mirrors common Win32 usage:
  /// - Absolute timestamps (`FILETIME`) are always UTC
  /// - Local-time interpretation is an explicit choice
  ///
  /// Precision:
  /// - `FILETIME` has 100-nanosecond resolution
  /// - Dart [DateTime] supports microseconds
  /// - Sub-microsecond precision is truncated
  DateTime toDateTime({bool isUtc = true}) {
    final fileTime = _combineHighLow(dwHighDateTime, dwLowDateTime);
    final microsecondsSinceEpoch =
        (fileTime - _fileTimeEpoch) ~/ _ticksPerMicrosecond;
    final dateTime = DateTime.fromMicrosecondsSinceEpoch(
      microsecondsSinceEpoch,
      isUtc: true,
    );
    return isUtc ? dateTime : dateTime.toLocal();
  }
}

/// Extensions for interpreting [FILETIME] values as elapsed time.
///
/// This is intended for Win32 APIs that encode **durations** as `FILETIME`,
/// such as process and thread kernel/user times.
///
/// In this context, a `FILETIME` represents a count of
/// **100-nanosecond intervals**, not a point in time.
extension FILETIMEToDurationConversion on FILETIME {
  /// Converts this [FILETIME] to a Dart [Duration].
  ///
  /// This interpretation is appropriate for APIs like:
  /// - `GetProcessTimes`
  /// - `GetThreadTimes`
  ///
  /// Precision:
  /// - Exact to microseconds
  /// - Sub-microsecond precision is truncated
  @pragma('vm:prefer-inline')
  Duration toDuration() {
    final ticks = _combineHighLow(dwHighDateTime, dwLowDateTime);
    return Duration(microseconds: ticks ~/ _ticksPerMicrosecond);
  }
}

/// Extension for converting Dart [DateTime] values into native [FILETIME]
/// structures.
extension DateTimeToFILETIMEPointerConversion on DateTime {
  /// Converts this [DateTime] to a native [FILETIME].
  ///
  /// The resulting `FILETIME` **always represents a UTC timestamp**.
  ///
  /// If this `DateTime` is not already UTC, it is converted using [toUtc].
  ///
  /// Precision:
  /// - Dart `DateTime` has microsecond resolution
  /// - The resulting `FILETIME` preserves that precision exactly
  ///
  /// The returned pointer must be freed using [free], unless allocated through
  /// an [Arena].
  Pointer<FILETIME> toFILETIME({Allocator allocator = adaptiveCalloc}) {
    final fileTime =
        (toUtc().microsecondsSinceEpoch * _ticksPerMicrosecond) +
        _fileTimeEpoch;
    final ptr = allocator<FILETIME>();
    ptr.ref
      ..dwLowDateTime = fileTime & 0xFFFFFFFF
      ..dwHighDateTime = fileTime >> 32;
    return ptr;
  }
}

/// Extension for converting Dart [Duration] values into native [FILETIME]
/// durations.
extension DurationToFILETIMEConversion on Duration {
  /// Converts this [Duration] to a native [FILETIME] duration.
  ///
  /// The returned `FILETIME` represents an **elapsed time**, not an absolute
  /// timestamp.
  ///
  /// This is suitable for APIs that accept or return durations encoded
  /// as `FILETIME`.
  Pointer<FILETIME> toFILETIME({Allocator allocator = adaptiveCalloc}) {
    final ticks = inMicroseconds * _ticksPerMicrosecond;
    final ptr = allocator<FILETIME>();
    ptr.ref
      ..dwLowDateTime = ticks & 0xFFFFFFFF
      ..dwHighDateTime = ticks >> 32;
    return ptr;
  }
}

@pragma('vm:prefer-inline')
int _combineHighLow(int high, int low) => (high << 32) | low;

/// Number of 100-nanosecond intervals between:
/// - Windows epoch: January 1, 1601 (UTC)
/// - Unix epoch:    January 1, 1970 (UTC)
const _fileTimeEpoch = 116_444_736_000_000_000;

/// The number of 100-nanosecond intervals in one microsecond.
const _ticksPerMicrosecond = 10;
