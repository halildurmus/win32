// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import '../constants.dart';
import '../metadatastore.dart';
import '../typeidentifier.dart';

import 'win32types.dart';

const Map<String, String> specialTypes = {'System.Guid': 'GUID'};

/// Takes a WinMD type and builds a Dart representation of it.
class TypeProjector {
  final TypeIdentifier typeIdentifier;

  const TypeProjector(this.typeIdentifier);

  bool get isWin32Type => typeIdentifier.name.startsWith('Windows.Win32');

  // The Win32 metadata wraps types like HANDLE into a strongly-typed equivalent
  // (e.g. NonCloseableHandle). That seems unnecessary for now, and so we're
  // going to unwrap that to its underlying value.
  bool get isWin32WrappedType {
    final scope = MetadataStore.getWin32Scope();

    final valueTypeDef = scope.findTypeDef(typeIdentifier.name);

    return (valueTypeDef?.fields.length == 1 &&
        valueTypeDef?.fields.first.name == 'Value');
  }

  TypeIdentifier? get win32WrappedType {
    // Test to see if it's a type on our exceptions list, in which case do
    // nothing.
    final win32Type = typeIdentifier.type?.typeName.split('.').last ?? '';
    final ffiNativeType = convertToFFIType(win32Type);
    if (ffiNativeType != win32Type) return null;

    final scope = MetadataStore.getWin32Scope();
    final valueTypeDef = scope.findTypeDef(typeIdentifier.name);
    return valueTypeDef?.fields.first.typeIdentifier;
  }

  bool get isTypeAnEnum =>
      typeIdentifier.type?.parent?.typeName == 'System.Enum';

  bool get isTypeValueType =>
      (typeIdentifier.corType == CorElementType.ELEMENT_TYPE_VALUETYPE ||
          typeIdentifier.type?.parent?.typeName == 'System.ValueType');

  String pointerType(TypeIdentifier typeIdentifier) {
    // Is it a string pointer?
    if (typeIdentifier.name == 'LPWSTR') {
      return 'Pointer<Utf16>';
    }
    if (typeIdentifier.name == 'LPSTR') {
      return 'Pointer<Utf8>';
    }
    // In ECMA-335, 'char' is understood to represent a wide character
    if (typeIdentifier.name == 'char') {
      return 'Pointer<Utf16>';
    }
    if (typeIdentifier.typeArg?.type?.parent?.typeName == 'System.Enum') {
      return 'Pointer<Uint32>';
    }

    // Check if it's Pointer<T>, in which case we have work
    final typeArgs = typeIdentifier.typeArg;
    if (typeArgs != null) {
      // Pointer<Void> in Dart is unnecessarily restrictive, versus the
      // Win32 meaning, which is more like "undefined type". We can
      // model that with a generic Pointer in Dart.

      if (typeArgs.corType == CorElementType.ELEMENT_TYPE_VOID) {
        return 'Pointer';
      }

      final T = TypeProjector(typeArgs).nativeType;
      // If it's a Unicode Win32 type, strip off the ending 'W'.
      if (T.endsWith('W')) {
        return 'Pointer<${T.substring(0, T.length - 1)}>';
      } else {
        return 'Pointer<$T>';
      }
    } else {
      return 'Pointer';
    }
  }

  String get dartType => convertToDartType(nativeType);

  String get nativeType {
    // ECMA-335 II.14.3 does not guarantee that an enum is 32-bit, but
    // per https://docs.microsoft.com/en-us/uwp/winrt-cref/winmd-files#enums,
    // enums are always signed or unsigned 32-bit values.
    if (isTypeAnEnum) {
      return 'Uint32';
    }

    // For now, treat GUIDs specially
    if (specialTypes.containsKey(typeIdentifier.name)) {
      return specialTypes[typeIdentifier.name]!;
    }

    // Unwrap Win32 value types
    if (isTypeValueType && isWin32Type && isWin32WrappedType) {
      final wrappedType = win32WrappedType;
      if (wrappedType != null) {
        return TypeProjector(wrappedType).nativeType;
      }
    }

    // Treat WinRT value types as Uint32
    if (isTypeValueType && !isWin32Type) {
      return 'Uint32';
    }

    // Handle base types
    switch (typeIdentifier.corType) {
      case CorElementType.ELEMENT_TYPE_VOID:
        return 'Void';
      case CorElementType.ELEMENT_TYPE_BOOLEAN:
        return '/* Boolean */ Uint8';
      case CorElementType.ELEMENT_TYPE_CHAR:
        return 'Uint16';
      case CorElementType.ELEMENT_TYPE_U1:
        return 'Uint8';
      case CorElementType.ELEMENT_TYPE_I1:
        return 'Int8';
      case CorElementType.ELEMENT_TYPE_I2:
        return 'Int16';
      case CorElementType.ELEMENT_TYPE_U2:
        return 'Uint16';
      case CorElementType.ELEMENT_TYPE_I4:
        return 'Int32';
      case CorElementType.ELEMENT_TYPE_U4:
        return 'Uint32';
      case CorElementType.ELEMENT_TYPE_I8:
        return 'Int64';
      case CorElementType.ELEMENT_TYPE_U8:
        return 'Uint64';
      case CorElementType.ELEMENT_TYPE_R4:
        return 'Float';
      case CorElementType.ELEMENT_TYPE_R8:
        return 'Double';
      case CorElementType.ELEMENT_TYPE_STRING:
        return 'IntPtr';
      case CorElementType.ELEMENT_TYPE_OBJECT:
        return 'COMObject';
      case CorElementType.ELEMENT_TYPE_VAR:
      case CorElementType.ELEMENT_TYPE_MVAR:
        return 'Pointer';
      case CorElementType.ELEMENT_TYPE_GENERICINST:
      case CorElementType.ELEMENT_TYPE_ARRAY:
        // TODO: Assume a Vector for now
        return TypeProjector(typeIdentifier.typeArg!).nativeType;
      case CorElementType.ELEMENT_TYPE_PTR:
        return pointerType(typeIdentifier);
      case CorElementType.ELEMENT_TYPE_FNPTR:
        return 'Pointer';
      case CorElementType.ELEMENT_TYPE_I:
      case CorElementType.ELEMENT_TYPE_U:
        return 'IntPtr';
      default:
    }

    // COM type
    if (typeIdentifier.type != null &&
        typeIdentifier.type!.interfaces.isNotEmpty &&
        typeIdentifier.type!.interfaces.first.typeName ==
            'Windows.Win32.Com.IUnknown') {
      return 'Pointer';
    }

    // If it's a Win32 type, we know how to get the type
    if (typeIdentifier.type != null &&
        typeIdentifier.type!.typeName.startsWith('Windows.Win32')) {
      final win32Type = typeIdentifier.type?.typeName.split('.').last ?? '';
      final ffiNativeType = convertToFFIType(win32Type);
      return ffiNativeType;
    }

    if (typeIdentifier.corType == CorElementType.ELEMENT_TYPE_CLASS) {
      // WinRT type
      // TODO: Check this is right in all cases.
      return 'Pointer';
    }
    // Something failed. Return something egregiously wrong, so that the
    // analyzer picks it up as an error.
    return '__${typeIdentifier.name}__';
  }
}
