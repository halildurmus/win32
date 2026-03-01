import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:ffi_leak_tracker/ffi_leak_tracker.dart';

import '../structs.g.dart';
import '../utils.dart';

/// Extensions for converting Windows [SYSTEMTIME] values to Dart [DateTime].
///
/// A [SYSTEMTIME] represents a calendar date and time with millisecond
/// precision. **It does not encode a time zone**.
///
/// By default, this API interprets `SYSTEMTIME` values as **UTC**, which
/// matches the behavior of the majority of Win32 APIs (e.g., `GetSystemTime`,
/// `FileTimeToSystemTime`).
///
/// Callers must explicitly opt into local-time interpretation when required.
extension SYSTEMTIMEToDateTimeConversion on SYSTEMTIME {
  /// Converts this [SYSTEMTIME] to a Dart [DateTime].
  ///
  /// By default ([isUtc] = `true`), the resulting [DateTime] is created in UTC.
  ///
  /// Set [isUtc] to `false` **only** when the value is known to represent
  /// local time (e.g., results from `GetLocalTime` or
  /// `SystemTimeToTzSpecificLocalTime`).
  DateTime toDateTime({bool isUtc = true}) => isUtc
      ? .utc(wYear, wMonth, wDay, wHour, wMinute, wSecond, wMilliseconds)
      : .new(wYear, wMonth, wDay, wHour, wMinute, wSecond, wMilliseconds);
}

/// Extensions for converting Dart [DateTime] values to native [SYSTEMTIME]
/// structures.
extension DateTimeToSYSTEMTIMEConversion on DateTime {
  /// Converts this [DateTime] to a native [SYSTEMTIME].
  ///
  /// By default ([isUtc] = `true`), the [DateTime] is converted to UTC before
  /// populating the structure.
  ///
  /// Set [isUtc] to `false` to interpret this [DateTime] as local time when
  /// calling APIs that expect local `SYSTEMTIME` values.
  ///
  /// The returned pointer must be freed using [free], unless allocated through
  /// an [Arena].
  Pointer<SYSTEMTIME> toSYSTEMTIME({
    bool isUtc = true,
    Allocator allocator = adaptiveCalloc,
  }) {
    final dateTime = isUtc ? toUtc() : this;
    final ptr = allocator<SYSTEMTIME>();
    ptr.ref
      ..wYear = dateTime.year
      ..wMonth = dateTime.month
      ..wDay = dateTime.day
      ..wHour = dateTime.hour
      ..wMinute = dateTime.minute
      ..wSecond = dateTime.second
      ..wMilliseconds = dateTime.millisecond
      ..wDayOfWeek = dateTime.weekday % 7; // Win32: Sunday = 0
    return ptr;
  }
}
