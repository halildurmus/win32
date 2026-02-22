import 'dart:ffi';

import 'package:ffi_leak_tracker/ffi_leak_tracker.dart';
import 'package:meta/meta.dart';
import 'package:win32/win32.dart';

import 'value.dart';

/// A class representing pointer data and its associated length in bytes.
@internal
final class PointerData {
  /// Creates an instance of [PointerData] with the given pointer [data] and
  /// its [lengthInBytes].
  const PointerData(this.data, this.lengthInBytes);

  /// Creates an instance of [PointerData] with a null pointer and zero length.
  PointerData.empty() : data = nullptr, lengthInBytes = 0;

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
  PointerData toWin32({Allocator allocator = adaptiveCalloc}) => switch (this) {
    BinaryValue(:final value) => .new(
      value.toNative(allocator: allocator),
      value.length,
    ),
    DwordValue(:final value) => .new(
      (allocator<DWORD>()..value = value).cast(),
      sizeOf<DWORD>(),
    ),
    QwordValue(:final value) => .new(
      (allocator<QWORD>()..value = value).cast(),
      sizeOf<QWORD>(),
    ),
    NoneValue() => .empty(),
    LinkValue(:final value) ||
    StringValue(:final value) ||
    UnexpandedStringValue(:final value) => .new(
      value.toPcwstr(allocator: allocator).cast(),
      // Reserve 2 bytes per character (UTF-16 encoding) and 2 extra bytes
      // for the null terminator.
      value.length * 2 + 2,
    ),
    MultiStringValue(:final value) => .new(
      value.toPcwstr(allocator: allocator).cast(),
      value.fold(
        2, // 2 bytes for the null terminator at the end of the array.
        (prev, element) => prev + element.length * 2 + 2,
      ),
    ),
  };
}

@internal
extension RegValueTypeExtension on REG_VALUE_TYPE {
  /// Converts the [REG_VALUE_TYPE] to its corresponding [RegistryValue].
  ///
  /// This method constructs a [RegistryValue] instance based on the type of the
  /// registry value and the provided data.
  ///
  /// - [data]: A pointer to the data represented as `Pointer<Uint8>`.
  /// - [dataLength]: The length of the data in bytes.
  @internal
  RegistryValue toRegistryValue(Pointer<Uint8> data, int dataLength) =>
      switch (this) {
        REG_NONE => const NoneValue(),
        REG_SZ => StringValue(PWSTR(data.cast()).toDartString()),
        REG_EXPAND_SZ => UnexpandedStringValue(
          PWSTR(data.cast()).toDartString(),
        ),
        REG_DWORD => DwordValue(data.cast<DWORD>().value),
        REG_MULTI_SZ => MultiStringValue(
          PWSTR(data.cast()).toDartStringList((dataLength - 2) ~/ 2),
        ),
        REG_LINK => LinkValue(PWSTR(data.cast()).toDartString()),
        REG_QWORD => QwordValue(data.cast<QWORD>().value),
        _ => BinaryValue(
          // Copy the data to a new Uint8List as the original pointer will be
          // freed when the function exits.
          .fromList(data.asTypedList(dataLength)),
        ),
      };
}
