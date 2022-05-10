import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import '../customattribute.dart';
import '../tokenObject.dart';
import '../type_aliases.dart';

/// Represents an object that has custom (named) attributes associated with it.
mixin CustomAttributesMixin on TokenObject {
  final _customAttributes = <CustomAttribute>[];

  /// Retrieve the string associated with a specific attribute name.
  String attributeAsString(String attrName) => using((Arena arena) {
        final szName = attrName.toNativeUtf16(allocator: arena);
        final ppData = arena<Pointer<BYTE>>();
        final pcbData = arena<ULONG>();
        final hr =
            reader.GetCustomAttributeByName(token, szName, ppData, pcbData);
        if (SUCCEEDED(hr)) {
          if (pcbData.value <= 3) return '';
          final sigList = ppData.value.elementAt(3).cast<Utf8>().toDartString();
          return sigList;
        } else {
          throw WindowsException(hr);
        }
      });

  /// Retrieve the blob associated with a specific attribute name.
  Uint8List customAttributeAsBytes(String attrName) => using((Arena arena) {
        final szName = attrName.toNativeUtf16(allocator: arena);
        final ppData = arena<Pointer<BYTE>>();
        final pcbData = arena<ULONG>();
        final hr =
            reader.GetCustomAttributeByName(token, szName, ppData, pcbData);
        if (SUCCEEDED(hr)) {
          final sigList = ppData.value.asTypedList(pcbData.value);
          return sigList;
        } else {
          throw WindowsException(hr);
        }
      });

  /// Enumerate all attributes that this object has.
  List<CustomAttribute> get customAttributes {
    if (_customAttributes.isEmpty) {
      using((Arena arena) {
        final phEnum = arena<HCORENUM>();
        final rAttrs = arena<mdCustomAttribute>();
        final pcAttrs = arena<ULONG>();

        // Certain TokenObjects may not have a valid token (e.g. a return
        // type has a token of 0). In this case, we return an empty set, since
        // calling EnumCustomAttributes with a scope of 0 will return all
        // attributes on all objects in the scope.
        if (!isResolvedToken) return _customAttributes;

        var hr =
            reader.EnumCustomAttributes(phEnum, token, 0, rAttrs, 1, pcAttrs);
        while (hr == S_OK) {
          final attrToken = rAttrs.value;

          _customAttributes.add(CustomAttribute.fromToken(scope, attrToken));
          hr =
              reader.EnumCustomAttributes(phEnum, token, 0, rAttrs, 1, pcAttrs);
        }
        reader.CloseEnum(phEnum.value);
      });
    }
    return _customAttributes;
  }
}
