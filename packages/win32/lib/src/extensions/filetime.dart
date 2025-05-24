import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../structs.g.dart';
import '../utils.dart';

/// Extension on [FILETIME] to convert `FILETIME` structures to [DateTime]
/// instances.
extension FILETIMEToDateTimeConversion on FILETIME {
  /// Converts a [FILETIME] to a [DateTime].
  ///
  /// The returned [DateTime] represents the corresponding timestamp in UTC.
  /// If [convertToLocalTimeZone] is `true`, the resulting [DateTime] is
  /// converted to the local time zone.
  DateTime toDateTime({bool convertToLocalTimeZone = false}) {
    final fileTime = _combineHighLow(dwHighDateTime, dwLowDateTime);
    final microsecondsSinceEpoch =
        (fileTime - _fileTimeEpoch) ~/ _ticksPerMicrosecond;
    final dateTime = DateTime.fromMicrosecondsSinceEpoch(
      microsecondsSinceEpoch,
      isUtc: true,
    );
    return convertToLocalTimeZone ? dateTime.toLocal() : dateTime;
  }
}

/// Extension on [DateTime] to convert `DateTime` instances to
/// `Pointer<FILETIME>`.
extension DateTimeToFILETIMEPointerConversion on DateTime {
  /// Converts this [DateTime] to a `Pointer<FILETIME>` in native memory.
  ///
  /// The returned pointer holds a [FILETIME] structure representing this
  /// [DateTime] in UTC. The caller is responsible for freeing the allocated
  /// memory when it is no longer needed. This can be done using [free].
  /// Optionally, a custom [allocator] (e.g., [Arena]) can be used for scoped
  /// memory management.
  Pointer<FILETIME> toFILETIME({Allocator allocator = calloc}) {
    final fileTime =
        (toUtc().microsecondsSinceEpoch * _ticksPerMicrosecond) +
        _fileTimeEpoch;
    final result = allocator<FILETIME>();
    result.ref
      ..dwLowDateTime = fileTime & 0xFFFFFFFF
      ..dwHighDateTime = fileTime >> 32;
    return result;
  }
}

int _combineHighLow(int high, int low) => (high << 32) | low;

/// The number of 100-nanosecond intervals from
/// `January 1, 1601` (the Windows epoch) to `January 1, 1970` (the Unix epoch).
const _fileTimeEpoch = 116_444_736_000_000_000;

/// The number of 100-nanosecond intervals in one microsecond.
const _ticksPerMicrosecond = 10;
