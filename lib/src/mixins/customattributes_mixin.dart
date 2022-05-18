import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import '../customattribute.dart';
import '../enums.dart';
import '../token_object.dart';
import '../type_aliases.dart';

/// Represents an object that has custom (named) attributes associated with it.
mixin CustomAttributesMixin on TokenObject {
  final _customAttributes = <CustomAttribute>[];

  /// Retrieve the string associated with a specific attribute name.
  ///
  /// If the attribute's first parameter is not a string, then return an empty
  /// string.
  String attributeAsString(String attrName) {
    final attr = findAttribute(attrName);
    if (attr == null ||
        attr.parameterTypes.isEmpty ||
        attr.parameterTypes.first.baseType != BaseType.String) {
      return '';
    }

    return attr.parameterValues.first as String;
  }

  /// Returns the first attribute matching the given attribute name.
  CustomAttribute? findAttribute(String attrName) {
    final attr = customAttributes.where((element) => element.name == attrName);

    return attr.isEmpty ? null : attr.first;
  }

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
        if (!isResolvedToken) return <CustomAttribute>[];

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
