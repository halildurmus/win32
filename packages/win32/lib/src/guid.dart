// ignore_for_file: non_constant_identifier_names

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';
import 'package:ffi_leak_tracker/ffi_leak_tracker.dart';

/// A native representation of a Windows GUID (Globally Unique Identifier).
///
/// A [GUID] is a 128-bit value used pervasively by Windows to identify COM
/// interfaces, COM classes (CLSIDs), WinRT types, and various system-defined
/// entities.
///
/// This type maps **exactly** to the Win32 `GUID` / `IID` / `CLSID` structure
/// and is ABI-compatible with all Windows APIs that expect a GUID pointer.
///
/// A GUID is composed of:
/// - `Data1`: 32 bits
/// - `Data2`: 16 bits
/// - `Data3`: 16 bits
/// - `Data4`: 8 bytes
///
/// These fields together correspond to the canonical textual form:
/// `dddddddd-dddd-dddd-dddd-dddddddddddd`
///
/// When passing GUIDs to Win32 or COM APIs, use [toNative] to obtain a
/// pointer with the appropriate lifetime.
///
/// To learn more, see:
/// https://learn.microsoft.com/windows/win32/api/guiddef/ns-guiddef-guid
///
/// {@category struct}
@Packed(4)
base class GUID extends Struct {
  /// Creates a [GUID] from its canonical string representation.
  ///
  /// The [guid] string must be in one of the following formats:
  /// - `{dddddddd-dddd-dddd-dddd-dddddddddddd}`
  /// - `dddddddd-dddd-dddd-dddd-dddddddddddd`
  ///
  /// Hex digits may be upper- or lower-case.
  ///
  /// Example:
  /// ```dart
  /// final guid = GUID('{6B29FC40-CA47-1067-B31D-00DD010662DA}');
  /// ```
  ///
  /// Throws a [FormatException] if the string does not represent a valid GUID.
  factory GUID(String guid) => Struct.create()..setGUID(guid);

  /// Creates a [GUID] from its individual component values.
  ///
  /// This constructor avoids string parsing and should be preferred when the
  /// raw GUID components are already available.
  factory GUID.fromComponents(
    int data1,
    int data2,
    int data3,
    Uint8List data4,
  ) => Struct.create()..setGUIDFromComponents(data1, data2, data3, data4);

  /// Creates a "nil" GUID (all fields set to zero).
  ///
  /// This is commonly used as a sentinel value, equivalent to `GUID_NULL`.
  factory GUID.zero() => Struct.create();

  /// The first 32 bits of the GUID.
  @Uint32()
  external int Data1;

  /// The next 16 bits of the GUID.
  @Uint16()
  external int Data2;

  /// The next 16 bits of the GUID.
  @Uint16()
  external int Data3;

  /// The final 8 bytes of the GUID.
  ///
  /// The first two bytes correspond to the fourth group of hexadecimal digits,
  /// and the remaining six bytes form the final group.
  @Array(8)
  external Array<Uint8> Data4;

  /// Sets this GUID from a canonical string representation.
  ///
  /// The [guid] string must be in one of the following formats:
  /// - `{dddddddd-dddd-dddd-dddd-dddddddddddd}`
  /// - `dddddddd-dddd-dddd-dddd-dddddddddddd`
  ///
  /// Example:
  /// ```dart
  /// final guid = adaptiveCalloc<GUID>();
  /// guid.ref.setGUID('6B29FC40-CA47-1067-B31D-00DD010662DA');
  /// ```
  ///
  /// Throws a [FormatException] if the string is not a valid GUID.
  void setGUID(String guid) {
    // Debug-only validation. Parsing will throw if invalid.
    assert(
      RegExp(
        r'\{?[0-9A-Fa-f]{8}(?:-[0-9A-Fa-f]{4}){3}-[0-9A-Fa-f]{12}}?',
      ).hasMatch(guid),
      'Invalid GUID format',
    );

    final cleanedGUID = guid.replaceAll(RegExp('[{}-]'), '');
    if (cleanedGUID.length != 32) {
      throw ArgumentError.value(guid, 'guid', 'Invalid GUID');
    }

    try {
      Data1 = .parse(cleanedGUID.substring(0, 8), radix: 16);
      Data2 = .parse(cleanedGUID.substring(8, 12), radix: 16);
      Data3 = .parse(cleanedGUID.substring(12, 16), radix: 16);
      final array = Data4;
      for (var i = 0; i < 8; i++) {
        array[i] = .parse(
          cleanedGUID.substring(16 + i * 2, 18 + i * 2),
          radix: 16,
        );
      }
    } catch (_) {
      throw FormatException('Invalid GUID format: $guid', guid);
    }
  }

  /// Sets this GUID from its individual component values.
  ///
  /// - [data1], [data2], and [data3] are written verbatim.
  /// - [data4] **must** contain exactly 8 bytes.
  ///
  /// This method is preferred in low-level code where GUIDs are already
  /// available in binary form.
  void setGUIDFromComponents(int data1, int data2, int data3, Uint8List data4) {
    if (data4.length != 8) {
      throw ArgumentError.value(
        data4,
        'data4',
        'Must contain exactly 8 bytes.',
      );
    }

    Data1 = data1;
    Data2 = data2;
    Data3 = data3;
    for (var i = 0; i < 8; i++) {
      Data4[i] = data4[i];
    }
  }

  /// Allocates native memory and copies the contents of this struct into it.
  ///
  /// The returned pointer refers to newly allocated memory. The caller is
  /// responsible for freeing it, unless a scoped allocator (such as [Arena])
  /// is used, in which case the allocator manages the lifetime.
  Pointer<GUID> toNative({Allocator allocator = adaptiveCalloc}) =>
      allocator()..ref = this;

  /// Returns the canonical string representation of this GUID.
  ///
  /// The returned format is always:
  /// `{dddddddd-dddd-dddd-dddd-dddddddddddd}`
  ///
  /// Hex digits are lower-case to match common Win32 conventions.
  @override
  String toString() {
    final data4 = Data4.elements;
    final buffer = StringBuffer()
      ..write('{')
      ..write(Data1.toRadixString(16).padLeft(8, '0'))
      ..write('-')
      ..write(Data2.toRadixString(16).padLeft(4, '0'))
      ..write('-')
      ..write(Data3.toRadixString(16).padLeft(4, '0'))
      ..write('-')
      ..write(
        data4
            .sublist(0, 2)
            .map((e) => e.toRadixString(16).padLeft(2, '0'))
            .join(),
      )
      ..write('-')
      ..write(
        data4.sublist(2).map((e) => e.toRadixString(16).padLeft(2, '0')).join(),
      )
      ..write('}');
    return buffer.toString();
  }
}
