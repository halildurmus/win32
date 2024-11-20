import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:ffi_leak_tracker/ffi_leak_tracker.dart';

import '../bstr.dart';
import '../exception.dart';
import '../hstring.dart';
import '../pcstr.dart';
import '../pcwstr.dart';
import '../pstr.dart';
import '../pwstr.dart';
import '../types.dart';
import '../utils.dart';
import '../win32/api_ms_win_core_winrt_string_l1_1_0.g.dart';
import '../win32/oleaut32.g.dart';
import 'arena.dart';
import 'pointer.dart';

/// Extension on [String] for converting Dart strings to Win32 and COM string
/// representations.
///
/// All methods in this extension allocate native memory and return lightweight
/// wrapper types around raw pointers. **Ownership is transferred to the
/// caller** unless an [Arena] is used.
extension StringExtension on String {
  /// Converts this Dart string to a COM [BSTR].
  ///
  /// A `BSTR` is allocated using [SysAllocStringLen] and initialized with the
  /// UTF-16 contents of this string.
  ///
  /// The returned [BSTR] owns the underlying `BSTR` and must be released using
  /// [SysFreeString], unless its lifetime is bound to an [Arena].
  ///
  /// Example:
  /// ```dart
  /// using((arena) {
  ///   final bstr = arena.bstr('Hello');
  ///   // Safe to pass to COM APIs within this scope.
  /// });
  /// ```
  BSTR toBstr() {
    final length = codeUnits.length;
    final bstr = SysAllocStringLen(null, length);
    if (bstr.isNull) throw StateError('Failed to allocate memory for BSTR.');
    bstr.cast<WCHAR>().asTypedList(length).setAll(0, codeUnits);
    return BSTR(bstr);
  }

  /// Converts this Dart string to a WinRT [HSTRING].
  ///
  /// The resulting string is immutable and reference-counted by the WinRT
  /// runtime.
  ///
  /// The returned [HSTRING] must be released using [WindowsDeleteString],
  /// unless scoped via an [Arena].
  ///
  /// Example:
  /// ```dart
  /// using((arena) {
  ///   final hstr = arena.hstring('Hello');
  ///   // Use with WinRT APIs.
  /// });
  /// ```
  ///
  /// Throws a [WindowsException] if string creation fails.
  HSTRING toHstring() {
    if (isEmpty) return WindowsCreateString(null, 0);
    return using((arena) => WindowsCreateString(arena.pcwstr(this), length));
  }

  /// Converts this Dart string to a null-terminated string of 8-bit
  /// Windows (ANSI) characters ([PCSTR]).
  ///
  /// The string is encoded as ANSI and terminated with a single NUL byte.
  ///
  /// The returned pointer must be freed using [free], unless allocated through
  /// an [Arena].
  ///
  /// This should be used for Win32 APIs that accept `PCSTR`.
  ///
  /// Example:
  /// ```dart
  /// using((arena) {
  ///   final name = arena.pcstr('kernel32.dll');
  ///   // Use it with Win32 APIs.
  /// });
  /// ```
  PCSTR toPcstr({Allocator allocator = adaptiveMalloc}) {
    final pcstr = allocator<BYTE>(length + 1);
    for (var i = 0; i < length; i++) {
      pcstr[i] = codeUnitAt(i) & 0xFF;
    }
    pcstr[length] = 0;
    return PCSTR(pcstr.cast());
  }

  /// Converts this Dart string to a null-terminated UTF-16 string ([PCWSTR]).
  ///
  /// The string is encoded as UTF-16 and terminated with a single NUL code unit.
  ///
  /// The returned pointer must be freed using [free], unless allocated through
  /// an [Arena].
  ///
  /// This should be used for Win32 APIs that accept `PCWSTR`.
  ///
  /// Example:
  /// ```dart
  /// using((arena) {
  ///   final path = arena.pcwstr(r'C:\Windows');
  ///   // Use it with Win32 APIs.
  /// });
  /// ```
  PCWSTR toPcwstr({Allocator allocator = adaptiveMalloc}) {
    final units = codeUnits;
    final length = units.length;
    final pcwstr = allocator<WCHAR>(length + 1);
    final buffer = pcwstr.asTypedList(length + 1)..setAll(0, units);
    buffer[length] = 0;
    return PCWSTR(pcwstr.cast());
  }

  /// Converts this Dart string to a null-terminated string of 8-bit
  /// Windows (ANSI) characters ([PSTR]).
  ///
  /// The string is encoded as ANSI and terminated with a single NUL byte.
  ///
  /// The returned pointer must be freed using [free], unless allocated through
  /// an [Arena].
  ///
  /// This should be used for Win32 APIs that accept `PSTR`.
  ///
  /// Example:
  /// ```dart
  /// using((arena) {
  ///   final name = arena.pstr('kernel32.dll');
  ///   // Use it with Win32 APIs.
  /// });
  /// ```
  PSTR toPstr({Allocator allocator = adaptiveMalloc}) {
    final pstr = allocator<BYTE>(length + 1);
    for (var i = 0; i < length; i++) {
      pstr[i] = codeUnitAt(i) & 0xFF;
    }
    pstr[length] = 0;
    return PSTR(pstr.cast());
  }

  /// Converts this Dart string to a null-terminated UTF-16 string ([PWSTR]).
  ///
  /// The string is encoded as UTF-16 and terminated with a single NUL code unit.
  ///
  /// The returned pointer must be freed using [free], unless allocated through
  /// an [Arena].
  ///
  /// This should be used for Win32 APIs that accept `PWSTR`.
  ///
  /// Example:
  /// ```dart
  /// using((arena) {
  ///   final path = arena.pwstr(r'C:\Windows');
  ///   // Use it with Win32 APIs.
  /// });
  /// ```
  PWSTR toPwstr({Allocator allocator = adaptiveMalloc}) {
    final units = codeUnits;
    final length = units.length;
    final pwstr = allocator<WCHAR>(length + 1);
    final buffer = pwstr.asTypedList(length + 1)..setAll(0, units);
    buffer[length] = 0;
    return PWSTR(pwstr.cast());
  }
}

/// Extension on `List<String>` for producing MULTI_SZ-style UTF-16 string
/// blocks.
///
/// The resulting memory layout consists of:
/// - Each string terminated by a NUL character
/// - A final extra NUL character marking the end of the list
///
/// This representation is commonly used by:
/// - Registry APIs
/// - Shell APIs
/// - Setup and configuration functions
extension StringListExtension on List<String> {
  /// Converts this list into a double-NUL-terminated UTF-16 string block.
  ///
  /// The returned pointer must be freed using [free], unless allocated through
  /// an [Arena].
  ///
  /// Example:
  /// ```dart
  /// const strings = ['banana', 'strawberry', 'kiwi'];
  /// using((arena) {
  ///   final multiSz = strings.toPcwstr(allocator: arena);
  ///   // Pass to registry or shell APIs
  /// });
  /// ```
  PCWSTR toPcwstr({Allocator allocator = adaptiveMalloc}) {
    if (isEmpty) throw ArgumentError('The list must not be empty.');

    if (any((string) => string.isEmpty)) {
      throw ArgumentError('The list must not contain empty strings.');
    }

    final totalUnits = fold<int>(0, (sum, s) => sum + s.length + 1) + 1;
    final buffer = allocator<WCHAR>(totalUnits);
    var index = 0;

    for (final value in this) {
      final units = value.codeUnits;
      for (var i = 0; i < units.length; i++) {
        buffer[index++] = units[i];
      }
      buffer[index++] = 0;
    }

    buffer[index] = 0; // Final NUL terminator.
    return PCWSTR(buffer.cast());
  }

  /// Converts this list into a double-NUL-terminated UTF-16 string block.
  ///
  /// The returned pointer must be freed using [free], unless allocated through
  /// an [Arena].
  ///
  /// Example:
  /// ```dart
  /// const strings = ['banana', 'strawberry', 'kiwi'];
  /// using((arena) {
  ///   final multiSz = strings.toPwstr(allocator: arena);
  ///   // Pass to registry or shell APIs
  /// });
  /// ```
  PWSTR toPwstr({Allocator allocator = adaptiveMalloc}) {
    if (isEmpty) throw ArgumentError('The list must not be empty.');

    if (any((string) => string.isEmpty)) {
      throw ArgumentError('The list must not contain empty strings.');
    }

    final totalUnits = fold<int>(0, (sum, s) => sum + s.length + 1) + 1;
    final buffer = allocator<WCHAR>(totalUnits);
    var index = 0;

    for (final value in this) {
      final units = value.codeUnits;
      for (var i = 0; i < units.length; i++) {
        buffer[index++] = units[i];
      }
      buffer[index++] = 0;
    }

    buffer[index] = 0; // Final NUL terminator.
    return PWSTR(buffer.cast());
  }
}
