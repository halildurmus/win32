import 'dart:collection';
import 'dart:ffi';

import '../guid.dart';

/// Extension methods for comparing and ordering [GUID] values.
extension GUIDExtension on GUID {
  /// Compares this GUID to [other], defining a total order over all 128 bits.
  ///
  /// Fields are compared left-to-right ([Data1] → [Data2] → [Data3] → [Data4]
  /// byte 0 … 7), matching the canonical string ordering.
  /// Returns a negative integer, zero, or a positive integer as this GUID is
  /// less than, equal to, or greater than [other].
  ///
  /// This is suitable for use as a [SplayTreeMap] or [SplayTreeSet] comparator:
  /// ```dart
  /// final map = SplayTreeMap<GUID, String>((a, b) => a.compareTo(b));
  /// ```
  int compareTo(GUID other) {
    if (identical(this, other)) return 0;
    final d1 = Data1.compareTo(other.Data1);
    if (d1 != 0) return d1;
    final d2 = Data2.compareTo(other.Data2);
    if (d2 != 0) return d2;
    final d3 = Data3.compareTo(other.Data3);
    if (d3 != 0) return d3;
    final a = Data4;
    final b = other.Data4;
    for (var i = 0; i < 8; i++) {
      final d4 = a[i].compareTo(b[i]);
      if (d4 != 0) return d4;
    }
    return 0;
  }

  /// Whether this GUID is equal to [other].
  ///
  /// Comparison is performed field-by-field on the raw binary components.
  ///
  /// Example:
  /// ```dart
  /// final a = GUID('{6B29FC40-CA47-1067-B31D-00DD010662DA}');
  /// final b = GUID('{6B29FC40-CA47-1067-B31D-00DD010662DA}');
  /// final c = GUID('6B29FC40-CA47-1067-B31D-00DD010662DA');
  /// print(a.isEqualTo(b)); // true
  /// print(b.isEqualTo(c)); // true
  /// ```
  bool isEqualTo(GUID other) {
    if (Data1 != other.Data1) return false;
    if (Data2 != other.Data2) return false;
    if (Data3 != other.Data3) return false;
    final a = Data4;
    final b = other.Data4;
    for (var i = 0; i < 8; i++) {
      if (a[i] != b[i]) return false;
    }
    return true;
  }

  /// Whether this GUID is the nil GUID (all fields zero).
  ///
  /// Equivalent to comparing against [GUID.zero], but avoids an allocation.
  bool get isZero =>
      Data1 == 0 &&
      Data2 == 0 &&
      Data3 == 0 &&
      Data4[0] == 0 &&
      Data4[1] == 0 &&
      Data4[2] == 0 &&
      Data4[3] == 0 &&
      Data4[4] == 0 &&
      Data4[5] == 0 &&
      Data4[6] == 0 &&
      Data4[7] == 0;
}
