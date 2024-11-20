import 'dart:ffi';

import 'extensions/pointer.dart';
import 'types.dart';
import 'win32/api_ms_win_core_winrt_string_l1_1_0.g.dart';

/// A strongly-typed wrapper around a Windows Runtime `HSTRING`.
///
/// `HSTRING` is an immutable, reference-counted UTF-16 string type used
/// throughout the Windows Runtime (WinRT) API surface.
///
/// {@category winrt}
extension type const HSTRING(Pointer _) implements Pointer {
  /// The length of this [HSTRING] in bytes.
  ///
  /// This is equivalent to `length * sizeOf<WCHAR>()`.
  @pragma('vm:prefer-inline')
  int get byteLength => length * sizeOf<WCHAR>();

  /// The number of UTF-16 code units in this [HSTRING].
  @pragma('vm:prefer-inline')
  int get length => isNull ? 0 : WindowsGetStringLen(this);

  /// Whether this [HSTRING] is empty.
  @pragma('vm:prefer-inline')
  bool get isEmpty => isNull || WindowsIsStringEmpty(this);

  /// Creates a new [HSTRING] that is a duplicate of this instance.
  ///
  /// The returned string has its own reference count and must be released
  /// independently.
  ///
  /// Internally, this calls [WindowsDuplicateString].
  @pragma('vm:prefer-inline')
  HSTRING copy() => WindowsDuplicateString(this);

  /// Converts this [HSTRING] to a Dart [String].
  ///
  /// If this value is `NULL`, an empty Dart string is returned.
  String toDartString() {
    if (isNull) return '';
    final pwstr = WindowsGetStringRawBuffer(this, null);
    return pwstr.toDartString(length: length);
  }
}
