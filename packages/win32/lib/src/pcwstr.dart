import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:ffi_leak_tracker/ffi_leak_tracker.dart';

import 'types.dart';
import 'utils.dart';

/// A strongly-typed wrapper around a Win32 `PCWSTR`.
///
/// `PCWSTR` represents an immutable, null-terminated UTF-16 string commonly
/// used by Win32 APIs.
extension type const PCWSTR(Pointer<Utf16> _) implements Pointer<Utf16> {
  /// The length of this string in bytes, excluding the terminating NUL
  /// character.
  @pragma('vm:prefer-inline')
  int get byteLength => length * sizeOf<WCHAR>();

  /// Whether this string is empty.
  @pragma('vm:prefer-inline')
  bool get isEmpty => length == 0;

  /// The number of UTF-16 code units in this string, excluding the terminating
  /// NUL character.
  ///
  /// This performs a linear scan until the first NUL code unit.
  int get length {
    final ptr = cast<WCHAR>();
    var length = 0;
    while (ptr[length] != 0) {
      length++;
    }
    return length;
  }

  /// Creates a deep copy of this string into newly allocated native memory.
  ///
  /// The returned pointer is owned by the caller.
  /// - If allocated with the default allocator, it must be released with
  ///   [free].
  /// - If an [Arena] or custom allocator is provided, the memory is released
  ///   according to that allocator’s rules.
  PCWSTR copy({Allocator allocator = adaptiveCalloc}) {
    final pcwstr = allocator<WCHAR>(length + 1);
    pcwstr
        .asTypedList(length + 1)
        .setAll(0, cast<WCHAR>().asTypedList(length + 1));
    return PCWSTR(pcwstr.cast());
  }

  /// Converts this [PCWSTR] to a Dart string.
  ///
  /// If [length] is provided, exactly that many UTF-16 code units are decoded,
  /// allowing embedded NUL characters to be preserved.
  ///
  /// If [length] is omitted, decoding stops at the first terminating NUL.
  String toDartString({int? length}) {
    if (length != null) RangeError.checkNotNegative(length, 'length');
    return String.fromCharCodes(
      cast<WCHAR>().asTypedList(length ?? this.length),
    );
  }

  /// Decodes a double-NUL-terminated UTF-16 string array.
  ///
  /// This format is commonly used by Win32 APIs to return lists of strings
  /// (e.g., environment blocks or file name lists).
  ///
  /// Each string is NUL-terminated, and the array itself is terminated by an
  /// additional NUL code unit.
  ///
  /// Decoding stops when:
  /// - A double-NUL terminator is encountered, or
  /// - [maxLength] UTF-16 code units have been read
  ///
  /// Example:
  /// ```dart
  /// const strings = ['banana', 'strawberry', 'kiwi'];
  /// final block = strings.toPcwstr();
  /// print(block.toDartStringList(24)); // ['banana', 'strawberry', 'kiwi']
  /// print(block.toDartStringList(7)); // ['banana']
  /// print(block.toDartStringList(10)); // ['banana', 'str']
  /// free(block);
  /// ```
  List<String> toDartStringList(int maxLength) {
    RangeError.checkNotNegative(maxLength, 'maxLength');

    final result = <String>[];
    final buffer = StringBuffer();
    final ptr = cast<WCHAR>();

    for (var i = 0; i < maxLength; i++) {
      final value = (ptr + i).value;

      if (value == 0) {
        // A NUL terminator indicates the end of the current string.
        if (buffer.isNotEmpty) {
          result.add(buffer.toString());
          buffer.clear();
        }

        // Double-NUL terminator marks the end of the array.
        if ((ptr + i + 1).value == 0) break;
      } else {
        // Append non-NUL character to the buffer.
        buffer.writeCharCode(value);
      }
    }

    // Add any remaining string in the buffer to the list.
    if (buffer.isNotEmpty) result.add(buffer.toString());

    return result;
  }
}
