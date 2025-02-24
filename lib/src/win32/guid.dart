// ignore_for_file: non_constant_identifier_names

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';

@Packed(4)
base class GUID extends Struct {
  @Uint32()
  external int Data1;

  @Uint16()
  external int Data2;

  @Uint16()
  external int Data3;

  @Array(8)
  external Array<Uint8> _Data4;

  Uint8List get Data4 {
    final list = Uint8List(8);
    final data4 = _Data4;
    for (var i = 0; i < 8; i++) {
      list[i] = data4[i];
    }
    return list;
  }

  set Data4(Uint8List value) {
    if (value.length != 8) {
      throw ArgumentError.value(
        value,
        'value',
        'Must contain exactly 8 bytes.',
      );
    }

    final data4 = _Data4;
    for (var i = 0; i < 8; i++) {
      data4[i] = value[i];
    }
  }

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
      final array = _Data4;
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
    Data4 = data4;
  }

  @override
  String toString() {
    final data4 = Data4;
    final buffer =
        StringBuffer()
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
            data4
                .sublist(2)
                .map((e) => e.toRadixString(16).padLeft(2, '0'))
                .join(),
          )
          ..write('}');
    return buffer.toString();
  }
}

final class Guid implements Finalizable {
  factory Guid(String guid) => Guid.zero()..setGUID(guid);

  Guid._fromPointer(this.ptr) {
    _finalizer.attach(
      this,
      ptr.cast(),
      detach: this,
      externalSize: sizeOf<GUID>(),
    );
  }

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

  factory Guid.fromPointer(Pointer<GUID> ptr) {
    if (ptr.address == 0) {
      throw ArgumentError.value(ptr, 'ptr', 'Pointer cannot be null');
    }

    return Guid._fromPointer(ptr);
  }

  @pragma('vm:prefer-inline')
  factory Guid.zero() => Guid._fromPointer(calloc<GUID>());

  static final _finalizer = NativeFinalizer(calloc.nativeFree);

  final Pointer<GUID> ptr;

  void detach() => _finalizer.detach(this);

  void free() {
    _finalizer.detach(this);
    calloc.free(ptr);
  }

  @pragma('vm:prefer-inline')
  GUID get ref => ptr.ref;
  @pragma('vm:prefer-inline')
  set ref(GUID value) => ptr.ref = value;

  @pragma('vm:prefer-inline')
  int get Data1 => ref.Data1;
  @pragma('vm:prefer-inline')
  set Data1(int value) => ref.Data1 = value;

  @pragma('vm:prefer-inline')
  int get Data2 => ref.Data2;
  @pragma('vm:prefer-inline')
  set Data2(int value) => ref.Data2 = value;

  @pragma('vm:prefer-inline')
  int get Data3 => ref.Data3;
  @pragma('vm:prefer-inline')
  set Data3(int value) => ref.Data3 = value;

  Uint8List get Data4 => ref.Data4;
  set Data4(Uint8List value) => ref.Data4 = value;

  void setGUID(String guid) => ref.setGUID(guid);

  void setGUIDFromComponents(
    int data1,
    int data2,
    int data3,
    Uint8List data4,
  ) => ref.setGUIDFromComponents(data1, data2, data3, data4);

  @override
  String toString() => ref.toString();
}
