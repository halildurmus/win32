import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import '../base.dart';
import '../customattribute.dart';
import '../type_aliases.dart';

/// Represents an object that has custom (named) attributes associated with it.
mixin CustomAttributesMixin on TokenObject {
  /// Retrieve the string associated with a specific attribute name.
  String attributeAsString(String attrName) {
    final szName = attrName.toNativeUtf16();
    final ppData = calloc<Pointer<BYTE>>();
    final pcbData = calloc<ULONG>();
    try {
      final hr = reader.GetCustomAttributeByName(
          token, szName, ppData.cast(), pcbData);
      if (SUCCEEDED(hr)) {
        if (pcbData.value <= 3) return '';
        final sigList = ppData.value.elementAt(3).cast<Utf8>().toDartString();
        return sigList;
      } else {
        throw WindowsException(hr);
      }
    } finally {
      free(szName);
      free(ppData);
      free(pcbData);
    }
  }

  /// Retrieve the blob associated with a specific attribute name.
  Uint8List customAttributeAsBytes(String attrName) {
    final szName = attrName.toNativeUtf16();
    final ppData = calloc<Pointer<BYTE>>();
    final pcbData = calloc<ULONG>();
    try {
      final hr = reader.GetCustomAttributeByName(
          token, szName, ppData.cast(), pcbData);
      if (SUCCEEDED(hr)) {
        final sigList = ppData.value.asTypedList(pcbData.value);
        return sigList;
      } else {
        throw WindowsException(hr);
      }
    } finally {
      free(szName);
      free(ppData);
      free(pcbData);
    }
  }

  /// Enumerate all attributes that this object has.
  List<CustomAttribute> get customAttributes {
    final customAttributes = <CustomAttribute>[];

    final phEnum = calloc<HCORENUM>();
    final rAttrs = calloc<mdCustomAttribute>();
    final pcAttrs = calloc<ULONG>();

    try {
      // Certain TokenObjects may not have a valid token (e.g. a return
      // type has a token of 0). In this case, we return an empty set, since
      // calling EnumCustomAttributes with a scope of 0 will return all
      // attributes on all objects in the scope.
      if (!isValidToken) return customAttributes;

      var hr =
          reader.EnumCustomAttributes(phEnum, token, 0, rAttrs, 1, pcAttrs);
      while (hr == S_OK) {
        final attrToken = rAttrs.value;

        customAttributes.add(CustomAttribute.fromToken(reader, attrToken));
        hr = reader.EnumCustomAttributes(phEnum, token, 0, rAttrs, 1, pcAttrs);
      }
      return customAttributes;
    } finally {
      reader.CloseEnum(phEnum.value);
      free(phEnum);
      free(rAttrs);
      free(pcAttrs);
    }
  }
}
