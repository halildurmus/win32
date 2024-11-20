import 'dart:convert';
import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../allocator.dart';
import '../exception.dart';
import '../pcwstr.dart';
import '../structs.g.dart';
import '../types.dart';
import '../utils.dart';
import '../win32/api_ms_win_core_winrt_string_l1_1_0.g.dart';
import '../win32/oleaut32.g.dart';
import 'pointer.dart';

/// Extension on [String] to convert strings to various Win32 and COM string
/// types.
extension StringExtension on String {
  /// Converts this string to a [BSTR].
  ///
  /// The caller is responsible for freeing the allocated memory when it is no
  /// longer needed. This can be done by calling the [SysFreeString] function.
  ///
  /// Example:
  /// ```dart
  /// final bstr = 'A happy BSTR'.toBSTR();
  /// // Use the BSTR in native operations...
  /// SysFreeString(bstr); // Don't forget to free the allocated memory.
  /// ```
  BSTR toBSTR() {
    final length = codeUnits.length;

    // Allocate memory for the BSTR.
    final bstr = SysAllocStringLen(nullptr, length);
    if (bstr.isNull) throw StateError('Failed to allocate memory for BSTR.');

    // Copy the string's content into the BSTR.
    bstr.cast<WCHAR>().asTypedList(length).setAll(0, codeUnits);

    return bstr;
  }

  /// Converts this string to an [HSTRING].
  ///
  /// The caller is responsible for freeing the allocated memory when it is no
  /// longer needed. This can be done by calling the [WindowsDeleteString]
  /// function.
  ///
  /// Example:
  /// ```dart
  /// final hstring = 'A happy HSTRING'.toHSTRING();
  /// // Use the HSTRING in native operations...
  /// WindowsDeleteString(hstring); // Don't forget to free the allocated memory.
  /// ```
  ///
  /// Throws a [WindowsException] if the HSTRING creation fails.
  int toHSTRING() {
    if (isEmpty) return WindowsCreateString(null, 0);
    final sourceString = w(this);
    try {
      return WindowsCreateString(sourceString.ptr, length);
    } on WindowsException catch (_) {
      sourceString.free();
      rethrow;
    }
  }

  /// Converts this string to a [PSTR].
  ///
  /// The caller is responsible for freeing the allocated memory when it is no
  /// longer needed. This can be done by calling the [free] function.
  /// Optionally, a custom [allocator] (e.g., [Arena]) can be used for scoped
  /// memory management.
  ///
  /// Example:
  /// ```dart
  /// final pstr = 'A happy PSTR'.toPSTR();
  /// // Use the PSTR in native operations...
  /// free(pstr); // Don't forget to free the allocated memory.
  /// ```
  PSTR toPSTR({Allocator allocator = loggingMalloc}) {
    final units = utf8.encode(this);
    final length = units.length;

    // Allocate memory for a PSTR of sufficient length (including the NUL
    // terminator) to hold the string.
    final pstr = allocator<BYTE>(length + 1);

    final nativeString = pstr.asTypedList(length + 1)..setAll(0, units);
    nativeString[length] = 0;
    return pstr.cast();
  }

  /// Converts this string to a [PWSTR].
  ///
  /// The caller is responsible for freeing the allocated memory when it is no
  /// longer needed. This can be done by calling the [free] function.
  /// Optionally, a custom [allocator] (e.g., [Arena]) can be used for scoped
  /// memory management.
  ///
  /// Example:
  /// ```dart
  /// final pwstr = 'A happy PWSTR'.toPWSTR();
  /// // Use the PWSTR in native operations...
  /// free(pwstr); // Don't forget to free the allocated memory.
  /// ```
  PWSTR toPWSTR({Allocator allocator = loggingMalloc}) {
    final units = codeUnits;
    final length = units.length;

    // Allocate memory for a PWTR of sufficient length (including the NUL
    // terminator) to hold the string.
    final pwstr = allocator<WCHAR>(length + 1);

    final nativeString = pwstr.asTypedList(length + 1)..setAll(0, units);
    nativeString[length] = 0;
    return pwstr.cast();
  }
}

/// Extension on `List<String>` to convert string lists into a double
/// NUL-terminated array of UTF-16 strings.
extension StringListExtension on List<String> {
  /// Converts a list of Dart strings into a double NUL-terminated array of
  /// UTF-16 strings.
  ///
  /// This function returns a pointer to a block of memory allocated using the
  /// specified [allocator]. Each string in the list is encoded as a UTF-16 wide
  /// character string and is terminated by a NUL character. The entire list is
  /// also terminated by a final NUL character to indicate the end of the array.
  ///
  /// The caller is responsible for freeing the allocated memory when it is no
  /// longer needed. This can be done by calling the [free] function.
  /// Optionally, a custom [allocator] (e.g., [Arena]) can be used for scoped
  /// memory management.
  ///
  /// Example:
  /// ```dart
  /// const strings = ['banana', 'strawberry', 'kiwi'];
  /// final ptr = strings.toPWSTR();
  /// // Use the pointer in native operations...
  /// free(ptr); // Don't forget to free the allocated memory.
  /// ```
  ///
  /// Throws an [ArgumentError] if the list is empty or contains empty strings.
  PWSTR toPWSTR({Allocator allocator = loggingMalloc}) {
    if (isEmpty) throw ArgumentError('The list must not be empty.');

    if (any((string) => string.isEmpty)) {
      throw ArgumentError('The list must not contain empty strings.');
    }

    // Calculate the total size needed for all strings, including their NUL
    // terminators.
    final totalSize = fold(0, (prev, element) => prev + element.length + 1) + 1;

    // Allocate memory for the array of wide characters.
    final ptr = allocator<WCHAR>(totalSize);

    var index = 0; // Tracks the current position in the allocated memory.
    for (final value in this) {
      final units = value.codeUnits;
      // Copy each UTF-16 code unit into the allocated memory.
      for (var i = 0; i < units.length; i++) {
        ptr[index++] = units[i];
      }
      ptr[index++] = 0; // NUL terminator for the string.
    }
    ptr[index] = 0; // Final NUL terminator to mark end of the list.

    return ptr.cast();
  }
}

/// Extension on [PSTR] to enable writing a string value to memory as a
/// NUL-terminated UTF-8 sequence.
extension PSTRExtension on PSTR {
  /// Writes the given [string] as a UTF-8 encoded sequence to the memory
  /// starting at the pointer's address.
  ///
  /// The caller must ensure that the total size of the memory is at least
  /// `string.length + 1` bytes to ensure there is enough space to store the
  /// string and its NUL terminator. Writing beyond the allocated memory can
  /// lead to undefined behavior.
  ///
  /// Returns the total number of **bytes** written, including the NUL
  /// terminator.
  ///
  /// Example:
  /// ```dart
  /// final pstr = loggingMalloc<BYTE>(10).cast<PSTR>();
  /// final bytesWritten = pstr.setString("Hello");
  /// print(bytesWritten); // Outputs: 6 (5 characters + 1 NUL)
  /// ```
  int setString(String string) {
    final units = utf8.encode(string);
    final length = units.length;

    final nativeString = cast<BYTE>().asTypedList(length + 1)..setAll(0, units);
    nativeString[length] = 0;

    final bytesWritten = length + 1;
    return bytesWritten;
  }
}

/// Extension on [PWSTR] to provide methods for writing and reading UTF-16
/// strings to and from memory.
extension PWSTRExtension on PWSTR {
  /// Writes the given [string] as a UTF-16 encoded sequence to the memory
  /// starting at the pointer's address.
  ///
  /// The caller must ensure that the total size of the memory is at least
  /// `(string.length + 1) * 2` bytes to ensure there is enough space to store
  /// the string and its NUL terminator. Writing beyond the allocated memory can
  /// lead to undefined behavior.
  ///
  /// Returns the total number of **bytes** written, including the NUL
  /// terminator.
  ///
  /// Example:
  /// ```dart
  /// final pwstr = loggingMalloc<WCHAR>(20).cast<PWSTR>();
  /// final bytesWritten = pwstr.setString("Hello");
  /// print(bytesWritten); // Outputs: 12 (5 characters * 2 + 2 NUL)
  /// ```
  int setString(String string) {
    final units = string.codeUnits;
    final length = units.length;

    final nativeString = cast<WCHAR>().asTypedList(length + 1)
      ..setAll(0, units);
    nativeString[length] = 0;

    final bytesWritten = (units.length + 1) * 2;
    return bytesWritten;
  }

  /// Unpacks an array of NUL-terminated UTF-16 strings from the memory block
  /// pointed to by this pointer.
  ///
  /// This method reads UTF-16 encoded strings from the memory block,
  /// interpreting them as an array of NUL-terminated strings. The array itself
  /// is terminated by a double NUL character. The method stops reading when it
  /// encounters a double NUL terminator or after
  /// reading [maxLength] characters, whichever occurs first.
  ///
  /// Example:
  /// ```dart
  /// const strings = ['banana', 'strawberry', 'kiwi'];
  /// final stringArray = strings.toPWSTR();
  /// print(stringArray.toDartStringList(24)); // ['banana', 'strawberry', 'kiwi']
  /// print(stringArray.toDartStringList(7)); // ['banana']
  /// print(stringArray.toDartStringList(10)); // ['banana', 'str']
  /// free(stringArray);
  /// ```
  List<String> toDartStringList(int maxLength) {
    RangeError.checkNotNegative(maxLength, 'maxLength');

    final strings = <String>[];
    final buffer = StringBuffer();
    final ptr = cast<WCHAR>();

    for (var i = 0; i < maxLength; i++) {
      final charCode = (ptr + i).value;

      if (charCode == 0) {
        // A NUL terminator indicates the end of the current string.
        if (buffer.isNotEmpty) {
          strings.add(buffer.toString());
          buffer.clear();
        }

        // Check if the next character is also NUL, indicating the end of the
        // array.
        if ((ptr + i + 1).value == 0) break;
      } else {
        // Append non-NUL character to the buffer.
        buffer.writeCharCode(charCode);
      }
    }

    // Add any remaining string in the buffer to the list.
    if (buffer.isNotEmpty) strings.add(buffer.toString());

    return strings;
  }
}
