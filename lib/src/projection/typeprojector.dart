// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import '../constants.dart';
import '../typeidentifier.dart';

import 'win32types.dart';

const Map<String, String> specialTypes = {'System.Guid': 'GUID'};

/// Takes a WinMD type and builds a Dart representation of it.
class TypeProjector {
  final TypeIdentifier typeIdentifier;

  const TypeProjector(this.typeIdentifier);

  bool get isTypeAnEnum =>
      typeIdentifier.type?.parent?.typeName == 'System.Enum';

  bool get isTypeValueType =>
      !typeIdentifier.name.startsWith('Windows.Win32') &&
      (typeIdentifier.corType == CorElementType.ELEMENT_TYPE_VALUETYPE ||
          typeIdentifier.type?.parent?.typeName == 'System.ValueType');

  String get dartType {
    if (specialTypes.containsKey(typeIdentifier.name)) {
      return specialTypes[typeIdentifier.name]!;
    }
    if (isTypeAnEnum || isTypeValueType) {
      return 'int';
    }

    switch (typeIdentifier.corType) {
      case CorElementType.ELEMENT_TYPE_VOID:
        return 'void';
      case CorElementType.ELEMENT_TYPE_BOOLEAN:
        return 'bool';
      case CorElementType.ELEMENT_TYPE_STRING:
        return 'int';
      case CorElementType.ELEMENT_TYPE_CHAR:
      case CorElementType.ELEMENT_TYPE_I1:
      case CorElementType.ELEMENT_TYPE_U1:
      case CorElementType.ELEMENT_TYPE_I2:
      case CorElementType.ELEMENT_TYPE_U2:
      case CorElementType.ELEMENT_TYPE_I4:
      case CorElementType.ELEMENT_TYPE_U4:
      case CorElementType.ELEMENT_TYPE_I8:
      case CorElementType.ELEMENT_TYPE_U8:
      case CorElementType.ELEMENT_TYPE_I:
      case CorElementType.ELEMENT_TYPE_U:
        return 'int';
      case CorElementType.ELEMENT_TYPE_R4:
      case CorElementType.ELEMENT_TYPE_R8:
        return 'double';
      case CorElementType.ELEMENT_TYPE_OBJECT:
        return 'COMObject';
      case CorElementType.ELEMENT_TYPE_GENERICINST:
        // TODO: Assume a Vector for now
        return TypeProjector(typeIdentifier.typeArgs.first).dartType;
      case CorElementType.ELEMENT_TYPE_PTR:
        // Is it a string pointer?
        if (typeIdentifier.name == 'LPWSTR') {
          return 'Pointer<Utf16>';
        }
        if (typeIdentifier.name == 'LPSTR') {
          return 'Pointer<Utf8>';
        }
        if (typeIdentifier.typeArgs.first.type?.parent?.typeName ==
            'System.Enum') {
          return 'Pointer<Uint32>';
        }

        // Check if it's Pointer<T>, in which case we have work
        final typeArgs = typeIdentifier.typeArgs;
        if (typeArgs.isNotEmpty) {
          if (typeArgs.first.type != null &&
              typeArgs.first.type!.typeName.startsWith('Windows.Win32') &&
              typeArgs.first.corType != CorElementType.ELEMENT_TYPE_CLASS) {
            final win32Type =
                typeArgs.first.type?.typeName.split('.').last ?? '';
            final ffiNativeType = convertToFFIType(win32Type);
            // If it's a Unicode Win32 type, strip off the ending 'W'.
            if (ffiNativeType.endsWith('W')) {
              return 'Pointer<${ffiNativeType.substring(0, ffiNativeType.length - 1)}>';
            } else {
              return 'Pointer<$ffiNativeType>';
            }
          } else {
            if (typeArgs.first.corType == CorElementType.ELEMENT_TYPE_VOID) {
              // Pointer<Void> in Dart is unnecessarily restrictive, versus the
              // Win32 meaning, which is more like "undefined type". We can
              // model that with a generic Pointer in Dart.
              return 'Pointer';
            } else if (typeArgs.first.type != null &&
                typeArgs.first.type!.interfaces.isNotEmpty &&
                typeArgs.first.type!.interfaces.first.typeName ==
                    'Windows.Win32.Com.IUnknown') {
              // COM type
              return 'Pointer<Pointer>';
            } else {
              // If it's a double- (or triple-) dereferenced pointer, then
              // create a new typeIdentifier, based on the first typeArgs entry
              // and with the remainder as its typeArgs. Then recursively call
              // the function.
              final newType = typeArgs.first.clone();
              if (typeArgs.length > 1) {
                newType.typeArgs.addAll(typeArgs.skip(1));
              }
              return 'Pointer<${TypeProjector(newType).nativeType}>';
            }
          }
        }
        return 'Pointer';

      case CorElementType.ELEMENT_TYPE_FNPTR:
        return 'Pointer';

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
      final dartType = convertToDartType(ffiNativeType);
      return dartType;
    }

    if (typeIdentifier.corType == CorElementType.ELEMENT_TYPE_CLASS) {
      // WinRT type
      // TODO: Check this is right in all cases.
      return 'Pointer';
    }

    // We have no idea. Return something egregiously wrong, so that the
    // analyzer picks it up as an error.
    return '__${typeIdentifier.name}__';
  }

  String get nativeType {
    // ECMA-335 II.14.3 does not guarantee that an enum is 32-bit, but
    // per https://docs.microsoft.com/en-us/uwp/winrt-cref/winmd-files#enums,
    // enums are always signed or unsigned 32-bit values.
    if (isTypeAnEnum) {
      return 'Uint32';
    }

    if (specialTypes.containsKey(typeIdentifier.name)) {
      return specialTypes[typeIdentifier.name]!;
    }
    if (isTypeValueType) {
      // TODO: This might need something more variable.
      return 'Uint32';
    }
    switch (typeIdentifier.corType) {
      case CorElementType.ELEMENT_TYPE_VOID:
        return 'Void';
      case CorElementType.ELEMENT_TYPE_BOOLEAN:
      case CorElementType.ELEMENT_TYPE_CHAR:
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
      case CorElementType.ELEMENT_TYPE_GENERICINST:
        // TODO: Assume a Vector for now
        return TypeProjector(typeIdentifier.typeArgs.first).nativeType;
      case CorElementType.ELEMENT_TYPE_PTR:
        if (typeIdentifier.name == 'LPWSTR') {
          return 'Pointer<Utf16>';
        }
        if (typeIdentifier.name == 'LPSTR') {
          return 'Pointer<Utf8>';
        }
        if (typeIdentifier.typeArgs.first.type?.parent?.typeName ==
            'System.Enum') {
          return 'Pointer<Uint32>';
        }

        final typeArgs = typeIdentifier.typeArgs;
        if (typeArgs.isNotEmpty) {
          if (typeArgs.first.type != null &&
              typeArgs.first.type!.typeName.startsWith('Windows.Win32') &&
              typeArgs.first.corType != CorElementType.ELEMENT_TYPE_CLASS) {
            final win32Type =
                typeArgs.first.type?.typeName.split('.').last ?? '';
            final ffiNativeType = convertToFFIType(win32Type);
            // If it's a Unicode Win32 type, strip off the ending 'W'.
            if (ffiNativeType.endsWith('W')) {
              return 'Pointer<${ffiNativeType.substring(0, ffiNativeType.length - 1)}>';
            } else {
              return 'Pointer<$ffiNativeType>';
            }
          } else {
            if (typeArgs.first.corType == CorElementType.ELEMENT_TYPE_VOID) {
              // Pointer<Void> in Dart is unnecessarily restrictive, versus the
              // Win32/C meaning, which is more like "undefined type". We can
              // model that with a generic Pointer in Dart.
              return 'Pointer';
            } else if (typeArgs.first.type != null &&
                typeArgs.first.type!.interfaces.isNotEmpty &&
                typeArgs.first.type!.interfaces.first.typeName ==
                    'Windows.Win32.Com.IUnknown') {
              // COM type
              return 'Pointer<Pointer>';
            } else {
              // If it's a double- (or triple-) dereferenced pointer, then
              // create a new typeIdentifier, based on the first typeArgs entry
              // and with the remainder as its typeArgs. Then recursively call
              // the function.
              final newType = typeArgs.first.clone();
              if (typeArgs.length > 1) {
                newType.typeArgs.addAll(typeArgs.skip(1));
              }
              return 'Pointer<${TypeProjector(newType).nativeType}>';
            }
          }
        }
        return 'Pointer';

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
