import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'extensions/pointer.dart';
import 'pcwstr.dart';
import 'types.dart';
import 'win32/oleaut32.g.dart';

/// A strongly-typed wrapper around a COM `BSTR`.
///
/// `BSTR` is a length-prefixed, UTF-16 encoded string type used extensively
/// throughout COM and Automation APIs. Unlike typical C strings:
/// - The length is stored separately (in bytes)
/// - Embedded NUL characters are permitted
/// - Memory must be released using [SysFreeString]
///
/// {@category com}
extension type const BSTR(Pointer<Utf16> _) implements Pointer<Utf16> {
  /// The length of the string in **bytes**, excluding the terminating NUL.
  ///
  /// This corresponds to [SysStringByteLen].
  @pragma('vm:prefer-inline')
  int get byteLength => SysStringByteLen(this);

  /// The number of UTF-16 code units in this string, excluding the terminating
  /// NUL character.
  ///
  /// This corresponds to [SysStringLen].
  @pragma('vm:prefer-inline')
  int get length => SysStringLen(this);

  /// Whether this string contains zero UTF-16 code units.
  @pragma('vm:prefer-inline')
  bool get isEmpty => length == 0;

  /// Creates a deep copy of this `BSTR`.
  ///
  /// The returned [BSTR] owns a newly allocated `BSTR` that must be released
  /// independently using [SysFreeString].
  ///
  /// This is equivalent to calling `SysAllocString` with the contents of this
  /// string.
  BSTR copy() {
    final bstr = SysAllocString(PCWSTR(this));
    if (bstr.isNull) throw StateError('Failed to allocate memory for BSTR.');
    return BSTR(bstr);
  }

  /// Converts this `BSTR` to a Dart string.
  ///
  /// Any embedded NUL characters are preserved in the resulting Dart string.
  @pragma('vm:prefer-inline')
  String toDartString() =>
      String.fromCharCodes(cast<WCHAR>().asTypedList(length));
}
