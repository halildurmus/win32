import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'registry_value_kind.dart';
import 'utils.dart';

class RegistryValue {
  final String name;
  final RegistryValueKind type;
  final Object data;

  const RegistryValue(this.name, this.type, this.data);

  factory RegistryValue.fromWin32(
      String name, int type, Pointer<Uint8> byteData, int dataLength) {
    switch (type) {
      case REG_SZ:
        return RegistryValue(name, RegistryValueKind.string,
            byteData.cast<Utf16>().toDartString());
      case REG_EXPAND_SZ:
        return RegistryValue(name, RegistryValueKind.unexpandedString,
            byteData.cast<Utf16>().toDartString());
      case REG_LINK:
        return RegistryValue(name, RegistryValueKind.link,
            byteData.cast<Utf16>().toDartString());
      case REG_MULTI_SZ:
        return RegistryValue(name, RegistryValueKind.stringArray,
            byteData.cast<Utf16>().unpackStringArray(dataLength));
      case REG_DWORD:
        return RegistryValue(
            name, RegistryValueKind.int32, byteData.cast<DWORD>().value);
      case REG_QWORD:
        return RegistryValue(
            name, RegistryValueKind.int64, byteData.cast<QWORD>().value);
      case REG_BINARY:
        return RegistryValue(
            name, RegistryValueKind.binary, byteData.asTypedList(dataLength));
      case REG_NONE:
        return RegistryValue(name, RegistryValueKind.none, 0);
      default:
        return RegistryValue(name, RegistryValueKind.unknown, 0);
    }
  }
  PointerData get toWin32 {
    switch (type) {
      case RegistryValueKind.int32:
        final ptr = calloc<DWORD>()..value = data as int;
        return PointerData(ptr.cast<Uint8>(), sizeOf<DWORD>());
      case RegistryValueKind.int64:
        final ptr = calloc<QWORD>()..value = data as int;
        return PointerData(ptr.cast<Uint8>(), sizeOf<QWORD>());
      case RegistryValueKind.string:
        final strData = data as String;
        final ptr = strData.toNativeUtf16();
        return PointerData(ptr.cast<Uint8>(), strData.length * 2 + 1);
      // TODO: Add others
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
