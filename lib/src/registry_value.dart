import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'registry_value_type.dart';
import 'utils.dart';

/// An individual data value in the Windows Registry.
class RegistryValue {
  final String name;
  final RegistryValueType type;
  final Object data;

  const RegistryValue(this.name, this.type, this.data);

  factory RegistryValue.fromWin32(
      String name, int type, Pointer<Uint8> byteData, int dataLength) {
    switch (type) {
      case REG_SZ:
        return RegistryValue(name, RegistryValueType.string,
            byteData.cast<Utf16>().toDartString());
      case REG_EXPAND_SZ:
        return RegistryValue(name, RegistryValueType.unexpandedString,
            byteData.cast<Utf16>().toDartString());
      case REG_LINK:
        return RegistryValue(name, RegistryValueType.link,
            byteData.cast<Utf16>().toDartString());
      case REG_MULTI_SZ:
        return RegistryValue(name, RegistryValueType.stringArray,
            byteData.cast<Utf16>().unpackStringArray(dataLength));
      case REG_DWORD:
        return RegistryValue(
            name, RegistryValueType.int32, byteData.cast<DWORD>().value);
      case REG_QWORD:
        return RegistryValue(
            name, RegistryValueType.int64, byteData.cast<QWORD>().value);
      case REG_BINARY:
        return RegistryValue(
            name, RegistryValueType.binary, byteData.asTypedList(dataLength));
      case REG_NONE:
        return RegistryValue(name, RegistryValueType.none, 0);
      default:
        return RegistryValue(name, RegistryValueType.unknown, 0);
    }
  }
  PointerData get toWin32 {
    switch (type) {
      case RegistryValueType.int32:
        final ptr = calloc<DWORD>()..value = data as int;
        return PointerData(ptr.cast<Uint8>(), sizeOf<DWORD>());
      case RegistryValueType.int64:
        final ptr = calloc<QWORD>()..value = data as int;
        return PointerData(ptr.cast<Uint8>(), sizeOf<QWORD>());
      case RegistryValueType.string:
      case RegistryValueType.unexpandedString:
      case RegistryValueType.link:
        final strData = data as String;
        final ptr = strData.toNativeUtf16();
        return PointerData(ptr.cast<Uint8>(), strData.length * 2 + 1);
      case RegistryValueType.stringArray:
        final strArray = (data as List<String>).map((s) => '$s\x00').join();
        final ptr = strArray.toNativeUtf16();
        return PointerData(ptr.cast<Uint8>(), strArray.length * 2);
      case RegistryValueType.binary:
        final dataList = Uint8List.fromList(data as List<int>);
        final ptr = dataList.allocatePointer();
        return PointerData(ptr, dataList.length);

      default:
        return PointerData(nullptr, 0);
    }
  }

  @override
  bool operator ==(Object other) =>
      other is RegistryValue &&
      other.name == name &&
      other.type == type &&
      other.data == data;

  @override
  int get hashCode => name.hashCode * data.hashCode;

  @override
  String toString() => '$name\t$type\t$data';
}
