import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';
import 'package:meta/meta.dart';
import 'package:win32/win32.dart';

import 'registry_value.dart';
import 'registry_value_type.dart';

@internal
extension FILETIMEPointerExtension on Pointer<FILETIME> {
  /// Converts the [FILETIME] structure to its Dart equivalent [DateTime].
  ///
  /// Returns a [DateTime] object representing the date and time, or `null` if
  /// the pointer is `nullptr` or the conversion fails.
  @internal
  DateTime? toDateTime() {
    if (this == nullptr) return null;

    final lpSystemTime = calloc<SYSTEMTIME>();
    try {
      final result = FileTimeToSystemTime(this, lpSystemTime);
      if (result == FALSE) return null;

      final systemTime = lpSystemTime.ref;
      return DateTime.utc(
        systemTime.wYear,
        systemTime.wMonth,
        systemTime.wDay,
        systemTime.wHour,
        systemTime.wMinute,
        systemTime.wSecond,
        systemTime.wMilliseconds,
      );
    } finally {
      free(lpSystemTime);
    }
  }
}

/// A class representing pointer data and its associated length in bytes.
@internal
final class PointerData {
  /// Creates an instance of [PointerData] with the given pointer [data] and
  /// its [lengthInBytes].
  const PointerData(this.data, this.lengthInBytes);

  /// The pointer to the data.
  final Pointer<Uint8> data;

  /// The length of the data in bytes.
  final int lengthInBytes;

  @override
  String toString() => 'PointerData($data, $lengthInBytes)';
}

@internal
extension RegistryValueExtension on RegistryValue {
  /// Converts the [RegistryValue] to a Win32-compatible data format.
  ///
  /// This method transforms the current registry value into a format that can
  /// be used by Win32 APIs, returning a [PointerData] instance containing th
  /// pointer to the data and its length in bytes.
  @internal
  PointerData toWin32() => switch (this) {
    BinaryValue(:final value) => PointerData(
      value.allocatePointer(),
      value.length,
    ),
    Int32Value(:final value) => PointerData(
      (calloc<DWORD>()..value = value).cast<Uint8>(),
      sizeOf<DWORD>(),
    ),
    Int64Value(:final value) => PointerData(
      (calloc<QWORD>()..value = value).cast<Uint8>(),
      sizeOf<QWORD>(),
    ),
    NoneValue() => PointerData(nullptr, 0),
    LinkValue(:final value) ||
    StringValue(:final value) ||
    UnexpandedStringValue(:final value) => PointerData(
      value.toNativeUtf16().cast<Uint8>(),
      // Reserve 2 bytes per character (UTF-16 encoding) and 2 extra bytes
      // for the null terminator.
      value.length * 2 + 2,
    ),
    StringArrayValue(:final value) => PointerData(
      value.toWideCharArray().cast<Uint8>(),
      value.fold(
        2, // 2 bytes for the null terminator at the end of the array.
        (prev, element) => prev + element.length * 2 + 2,
      ),
    ),
  };
}

@internal
extension RegistryValueTypeExtension on RegistryValueType {
  /// Converts the [RegistryValueType] to its corresponding [RegistryValue].
  ///
  /// This method constructs a [RegistryValue] instance based on the type of the
  /// registry value and the provided data.
  ///
  /// - [name]: The name of the registry value.
  /// - [data]: A pointer to the data represented as `Pointer<Uint8>`.
  /// - [dataLength]: The length of the data in bytes.
  @internal
  RegistryValue toRegistryValue(
    String name,
    Pointer<Uint8> data,
    int dataLength,
  ) => switch (this) {
    RegistryValueType.none => NoneValue(name),
    RegistryValueType.string => StringValue(
      name,
      data.cast<Utf16>().toDartString(),
    ),
    RegistryValueType.unexpandedString => UnexpandedStringValue(
      name,
      data.cast<Utf16>().toDartString(),
    ),
    RegistryValueType.binary => BinaryValue(
      name,
      // Copy the data to a new Uint8List as the original pointer will be
      // freed when the function exits.
      Uint8List.fromList(data.asTypedList(dataLength)),
    ),
    RegistryValueType.int32 => Int32Value(name, data.cast<DWORD>().value),
    RegistryValueType.stringArray => StringArrayValue(
      name,
      data.cast<Utf16>().unpackStringArray((dataLength - 2) ~/ 2),
    ),
    RegistryValueType.link => LinkValue(
      name,
      data.cast<Utf16>().toDartString(),
    ),
    RegistryValueType.int64 => Int64Value(name, data.cast<QWORD>().value),
  };
}
