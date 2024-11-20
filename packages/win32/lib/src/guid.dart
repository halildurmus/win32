// ignore_for_file: non_constant_identifier_names

import 'dart:ffi';
import 'dart:typed_data';

import '_internal/win32.dart';
import 'allocator.dart';
import 'exception.dart';
import 'extensions/pointer.dart';
import 'pcwstr.dart';
import 'win32/ole32.g.dart';

/// Represents a globally unique identifier (GUID), a 128-bit value used to
/// uniquely identify objects such as COM interfaces, COM class objects, or
/// manager entry-point vectors (EPVs).
///
/// A GUID consists of:
/// - One group of 8 hexadecimal digits
/// - Three groups of 4 hexadecimal digits
/// - One group of 12 hexadecimal digits
///
/// Example format: `6B29FC40-CA47-1067-B31D-00DD010662DA`
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/guiddef/ns-guiddef-guid>.
///
/// {@category struct}
@Packed(4)
base class GUID extends Struct {
  /// The first 8 hexadecimal digits of the GUID.
  @Uint32()
  external int Data1;

  /// The first group of 4 hexadecimal digits.
  @Uint16()
  external int Data2;

  /// The second group of 4 hexadecimal digits.
  @Uint16()
  external int Data3;

  /// The last 8 bytes of the GUID.
  ///
  /// The first 2 bytes correspond to the third group of 4 hexadecimal digits,
  /// while the remaining 6 bytes form the final 12 hexadecimal digits.
  @Array(8)
  external Array<Uint8> Data4;

  /// Sets the value of this GUID from a string representation.
  ///
  /// The input string ([guid]) must follow one of these formats:
  /// - `{dddddddd-dddd-dddd-dddd-dddddddddddd}`
  /// - `dddddddd-dddd-dddd-dddd-dddddddddddd`
  ///
  /// Example:
  /// ```dart
  /// final guid = loggingCalloc<GUID>();
  /// guid.ref.setGUID('{6b29fc40-ca47-1067-b31d-00dd010662da}');
  /// ```
  ///
  /// Throws a [FormatException] if the GUID is not in the correct format.
  void setGUID(String guid) {
    // This is a debug assert, becuase it's probably computationally expensive,
    // and int.parse will throw a FormatException anyway if it can't parse the
    // values.
    assert(
      RegExp(
        r'\{?[0-9A-Fa-f]{8}(?:-[0-9A-Fa-f]{4}){3}-[0-9A-Fa-f]{12}}?',
      ).hasMatch(guid),
      'GUID must be in the format {dddddddd-dddd-dddd-dddd-dddddddddddd} or '
      'dddddddddddddddddddddddddddddddd',
    );

    final cleanedGUID = guid.replaceAll(RegExp('[{}-]'), '');
    if (cleanedGUID.length != 32) {
      throw ArgumentError.value(guid, 'guid', 'Invalid GUID');
    }

    try {
      Data1 = int.parse(cleanedGUID.substring(0, 8), radix: 16);
      Data2 = int.parse(cleanedGUID.substring(8, 12), radix: 16);
      Data3 = int.parse(cleanedGUID.substring(12, 16), radix: 16);
      final array = Data4;
      for (var i = 0; i < 8; i++) {
        array[i] = int.parse(
          cleanedGUID.substring(16 + i * 2, 18 + i * 2),
          radix: 16,
        );
      }
    } catch (_) {
      throw FormatException('Invalid GUID format: $guid', guid);
    }
  }

  /// Sets the GUID using its individual components.
  ///
  /// This method allows setting the GUID directly from its four main
  /// components:
  /// - [data1]: A 32-bit integer representing the first part of the GUID.
  /// - [data2]: A 16-bit integer representing the second part of the GUID.
  /// - [data3]: A 16-bit integer representing the third part of the GUID.
  /// - [data4]: An 8-byte array representing the final part of the GUID.
  ///
  /// The [data4] must contain exactly 8 bytes.
  ///
  /// Example:
  /// ```dart
  /// final guid = loggingCalloc<GUID>();
  /// guid.ref.setGUIDFromComponents(
  ///   0x6b29fc40,
  ///   0xca47,
  ///   0x1067,
  ///   Uint8List.fromList([0xb3, 0x1d, 0x00, 0xdd, 0x01, 0x06, 0x62, 0xda]),
  /// );
  /// ```
  ///
  /// This method is useful for scenarios where the GUID components are already
  /// available in their raw form and avoids the need for string parsing.
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
    Data4.elements.buffer.asUint8List().setAll(0, data4);
  }

  /// Converts the GUID to its string representation in the standard format:
  /// `{dddddddd-dddd-dddd-dddd-dddddddddddd}`.
  ///
  /// Example:
  /// ```dart
  /// final guid = loggingCalloc<GUID>();
  /// guid.ref.setGUID('6B29FC40-CA47-1067-B31D-00DD010662DA');
  /// print(guid.ref); // Outputs: {6b29fc40-ca47-1067-b31d-00dd010662da}
  /// ```
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

/// A wrapper for the [GUID] structure, used to uniquely identify objects such
/// as COM interfaces and class objects.
///
/// This class simplifies working with [GUID]s by providing automatic memory
/// management and convenient Dart-friendly operations.
///
/// This class uses a [NativeFinalizer] to automatically free the memory
/// allocated for the structure when the object is GCed. This ensures that the
/// unmanaged memory allocated for the structure is automatically freed when the
/// object is GCed.
///
/// If you need full control over the object's lifecycle, you can opt out of
/// automatic finalization by using the [detach] method. This is especially
/// useful in scenarios where ownership of the object is transferred to another
/// part of your application or when explicit lifecycle management is required.
final class Guid implements Finalizable {
  /// Creates a [Guid] from a string representation of a GUID.
  ///
  /// The input string ([guid]) must follow one of these formats:
  /// - `{dddddddd-dddd-dddd-dddd-dddddddddddd}`
  /// - `dddddddd-dddd-dddd-dddd-dddddddddddd`
  ///
  /// Example:
  /// ```dart
  /// final guid = Guid('{6b29fc40-ca47-1067-b31d-00dd010662da}');
  /// ```
  ///
  /// Throws a [FormatException] if the provided string is not a valid GUID.
  ///
  /// Attaches a [NativeFinalizer] to the instance to automatically free the
  /// memory when no longer used.
  factory Guid(String guid) => Guid.zero()..setGUID(guid);

  Guid._fromPointer(this.ptr) {
    _finalizer.attach(
      this,
      ptr.cast(),
      detach: this,
      externalSize: sizeOf<GUID>(),
    );
  }

  /// Creates a [Guid] using its individual components.
  ///
  /// This method allows setting the GUID directly from its four main
  /// components:
  /// - [data1]: A 32-bit integer representing the first part of the GUID.
  /// - [data2]: A 16-bit integer representing the second part of the GUID.
  /// - [data3]: A 16-bit integer representing the third part of the GUID.
  /// - [data4]: An 8-byte array representing the final part of the GUID.
  ///
  /// The [data4] must contain exactly 8 bytes.
  ///
  /// Example:
  /// ```dart
  /// final guid = Guid.fromComponents(
  ///   0x6b29fc40,
  ///   0xca47,
  ///   0x1067,
  ///   Uint8List.fromList([0xb3, 0x1d, 0x00, 0xdd, 0x01, 0x06, 0x62, 0xda]),
  /// );
  /// ```
  ///
  /// This method is useful for scenarios where the GUID components are already
  /// available in their raw form and avoids the need for string parsing.
  ///
  /// Attaches a [NativeFinalizer] to the instance to automatically free the
  /// memory when no longer used.
  factory Guid.fromComponents(
    int data1,
    int data2,
    int data3,
    Uint8List data4,
  ) {
    if (data4.length != 8) {
      throw ArgumentError.value(
        data4,
        'data4',
        'Must contain exactly 8 bytes.',
      );
    }
    return Guid.zero()..setGUIDFromComponents(data1, data2, data3, data4);
  }

  /// Creates a [Guid] from an existing pointer to a [GUID] structure.
  ///
  /// Validates that the [ptr] is not NULL and attaches a [NativeFinalizer] to
  /// the instance to automatically free the [ptr] when the object is GCed.
  factory Guid.fromPointer(Pointer<GUID> ptr) {
    if (ptr.isNull) {
      throw ArgumentError.value(ptr, 'ptr', 'Pointer cannot be null');
    }

    return Guid._fromPointer(ptr);
  }

  /// Creates a [Guid] from a ProgID (e.g., `Shell.Application`).
  ///
  /// Example:
  /// ```dart
  /// final guid = Guid.fromProgID('Shell.Application');
  /// ```
  ///
  /// Throws a [WindowsException] if the [progID] is not registered.
  ///
  /// Attaches a [NativeFinalizer] to the instance to automatically free the
  /// memory when no longer used.
  factory Guid.fromProgID(String progID) {
    final lpszProgID = w(progID);
    try {
      final guid = CLSIDFromProgID(lpszProgID.ptr);
      return Guid._fromPointer(guid);
    } finally {
      lpszProgID.free();
    }
  }

  /// Creates a unique [Guid].
  ///
  /// Attaches a [NativeFinalizer] to the instance to automatically free the
  /// memory when no longer used.
  @pragma('vm:prefer-inline')
  factory Guid.generate() => Guid._fromPointer(CoCreateGuid());

  /// Creates a [Guid] representing a "nil" GUID i.e., all zeros.
  ///
  /// This is useful for scenarios where a default or placeholder GUID is
  /// required.
  ///
  /// Attaches a [NativeFinalizer] to the instance to automatically free the
  /// memory when no longer used.
  @pragma('vm:prefer-inline')
  factory Guid.zero() => Guid._fromPointer(loggingCalloc<GUID>());

  static final _finalizer = NativeFinalizer(coTaskMemFreeAddress);

  /// A pointer to the underlying [GUID] structure.
  final Pointer<GUID> ptr;

  /// Creates a new Guid that is a copy of the current Guid.
  ///
  /// This method duplicates the underlying [GUID] structure, ensuring the new
  /// instance is independent of the original.
  ///
  /// The cloned Guid can safely be modified or freed without affecting the
  /// original.
  Guid clone() => Guid.zero()..ref = ref;

  /// Detaches this instance from the [NativeFinalizer].
  ///
  /// Use this method to manually manage the memory of the [GUID] structure.
  /// After calling this method, the [NativeFinalizer] will no longer free the
  /// memory automatically.
  void detach() => _finalizer.detach(this);

  /// Frees the memory associated with this object.
  ///
  /// This method detaches the instance from the [NativeFinalizer] and releases
  /// the resources associated with the [GUID] structure.
  /// After calling this method, the [ptr] becomes invalid and this object
  /// should not be used further.
  ///
  /// Use this method to immediately release the memory rather than waiting for
  /// GC.
  void free() {
    _finalizer.detach(this);
    loggingCalloc.free(ptr);
  }

  /// Provides access to the underlying [GUID] structure.
  @pragma('vm:prefer-inline')
  GUID get ref => ptr.ref;
  @pragma('vm:prefer-inline')
  set ref(GUID value) => ptr.ref = value;

  /// The first 8 hexadecimal digits of the [GUID].
  @pragma('vm:prefer-inline')
  int get Data1 => ref.Data1;
  @pragma('vm:prefer-inline')
  set Data1(int value) => ref.Data1 = value;

  /// The first group of 4 hexadecimal digits.
  @pragma('vm:prefer-inline')
  int get Data2 => ref.Data2;
  @pragma('vm:prefer-inline')
  set Data2(int value) => ref.Data2 = value;

  /// The second group of 4 hexadecimal digits.
  @pragma('vm:prefer-inline')
  int get Data3 => ref.Data3;
  @pragma('vm:prefer-inline')
  set Data3(int value) => ref.Data3 = value;

  /// The last 8 bytes of the [GUID].
  ///
  /// The first 2 bytes correspond to the third group of 4 hexadecimal digits,
  /// while the remaining 6 bytes form the final 12 hexadecimal digits.
  Uint8List get Data4 => ref.Data4.elements;
  set Data4(Uint8List value) =>
      ref.Data4.elements.buffer.asUint8List().setAll(0, value);

  /// Sets the value of this [GUID] from a string representation.
  ///
  /// The input string ([guid]) must follow one of these formats:
  /// - `{dddddddd-dddd-dddd-dddd-dddddddddddd}`
  /// - `dddddddd-dddd-dddd-dddd-dddddddddddd`
  ///
  /// Example:
  /// ```dart
  /// final guid = Guid.empty();
  /// guid.setGUID('{6b29fc40-ca47-1067-b31d-00dd010662da}');
  /// ```
  ///
  /// Throws a [FormatException] if the GUID is not in the correct format.
  void setGUID(String guid) => ref.setGUID(guid);

  /// Sets the [GUID] using its individual components.
  ///
  /// This method allows setting the GUID directly from its four main
  /// components:
  /// - [data1]: A 32-bit integer representing the first part of the GUID.
  /// - [data2]: A 16-bit integer representing the second part of the GUID.
  /// - [data3]: A 16-bit integer representing the third part of the GUID.
  /// - [data4]: An 8-byte array representing the final part of the GUID.
  ///
  /// The [data4] must contain exactly 8 bytes.
  ///
  /// Example:
  /// ```dart
  /// final guid = loggingCalloc<GUID>();
  /// guid.ref.setGUIDFromComponents(
  ///   0x6b29fc40,
  ///   0xca47,
  ///   0x1067,
  ///   Uint8List.fromList([0xb3, 0x1d, 0x00, 0xdd, 0x01, 0x06, 0x62, 0xda]),
  /// );
  /// ```
  ///
  /// This method is useful for scenarios where the GUID components are already
  /// available in their raw form and avoids the need for string parsing.
  void setGUIDFromComponents(
    int data1,
    int data2,
    int data3,
    Uint8List data4,
  ) => ref.setGUIDFromComponents(data1, data2, data3, data4);

  /// Converts the [GUID] to its string representation in the standard format:
  /// `{dddddddd-dddd-dddd-dddd-dddddddddddd}`.
  ///
  /// Example:
  /// ```dart
  /// final guid = Guid('6B29FC40-CA47-1067-B31D-00DD010662DA');
  /// print(guid); // Outputs: {6b29fc40-ca47-1067-b31d-00dd010662da}
  /// ```
  @override
  String toString() => ref.toString();
}
