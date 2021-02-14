// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import '../constants.dart';
import '../typedef.dart';
import '../typeidentifier.dart';
import 'types.dart';
import '../utils.dart';
import 'win32types.dart';

const Map<String, String> specialTypes = {'System.Guid': 'GUID'};

/// Takes a WinMD type and builds a Dart representation of it.
class TypeBuilder {
  static bool isTypeAnEnum(TypeIdentifier typeIdentifier) =>
      typeIdentifier.type?.parent?.typeName == 'System.Enum';

  static bool isTypeValueType(TypeIdentifier typeIdentifier) =>
      typeIdentifier.type?.parent?.typeName == 'System.ValueType';

  static String dartType(TypeIdentifier typeIdentifier) {
    if (isTypeAnEnum(typeIdentifier) || isTypeValueType(typeIdentifier)) {
      return 'int';
    }

    if (specialTypes.containsKey(typeIdentifier.name)) {
      return specialTypes[typeIdentifier.name]!;
    }

    switch (typeIdentifier.corType) {
      case CorElementType.ELEMENT_TYPE_VOID:
        return 'void';
      case CorElementType.ELEMENT_TYPE_BOOLEAN:
        return 'bool';
      case CorElementType.ELEMENT_TYPE_STRING:
        return 'IntPtr';
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
      case CorElementType.ELEMENT_TYPE_PTR:
        // Check if it's Pointer<T>, in which case we have work
        final typeArgs = typeIdentifier.typeArgs;
        if (typeArgs.length == 1) {
          if (typeArgs.first.type != null &&
              typeArgs.first.type!.typeName.startsWith('Windows.Win32')) {
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
            if (typeArgs.first.corType == CorElementType.ELEMENT_TYPE_U2) {
              if (typeIdentifier.name == 'LPWSTR') {
                return 'Pointer<Utf16>';
              }
              if (typeIdentifier.name == 'LPSTR') {
                return 'Pointer<Utf8>';
              }
              return 'Pointer<Uint16>';
            }
            if (typeArgs.first.corType == CorElementType.ELEMENT_TYPE_VOID) {
              // Pointer<Void> in Dart is unnecessarily restrictive, versus the
              // Win32 meaning, which is more like "undefined type". We can
              // model that with a generic Pointer in Dart.
              return 'Pointer';
            } else {
              return 'Pointer<${nativeType(typeArgs.first)}>';
            }
          }
        }
        return 'Pointer';

      case CorElementType.ELEMENT_TYPE_FNPTR:
        return 'Pointer';

      default:
    }

    // If it's a Win32 type, we know how to get the type
    if (typeIdentifier.type != null &&
        typeIdentifier.type!.typeName.startsWith('Windows.Win32')) {
      final win32Type = typeIdentifier.type?.typeName.split('.').last ?? '';
      final ffiNativeType = convertToFFIType(win32Type);
      final dartType = convertToDartType(ffiNativeType);
      return dartType;
    }

    throw WinmdException('Undetected type.');
    // return '';
  }

  static String nativeType(TypeIdentifier typeIdentifier) {
    // ECMA-335 II.14.3 does not guarantee that an enum is 32-bit, but
    // per https://docs.microsoft.com/en-us/uwp/winrt-cref/winmd-files#enums,
    // enums are always signed or unsigned 32-bit values.
    if (isTypeAnEnum(typeIdentifier)) {
      return 'Int32';
    }
    if (isTypeValueType(typeIdentifier)) {
      // TODO: This needs figuring out -- a struct could have anything in it.
      return 'Uint32';
    }
    if (specialTypes.containsKey(typeIdentifier.name)) {
      return specialTypes[typeIdentifier.name]!;
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
      case CorElementType.ELEMENT_TYPE_PTR:
        final typeArgs = typeIdentifier.typeArgs;
        if (typeArgs.length == 1) {
          if (typeArgs.first.type != null &&
              typeArgs.first.type!.typeName.startsWith('Windows.Win32')) {
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
            if (typeArgs.first.corType == CorElementType.ELEMENT_TYPE_U2) {
              if (typeIdentifier.name == 'LPWSTR') {
                return 'Pointer<Utf16>';
              }
              if (typeIdentifier.name == 'LPSTR') {
                return 'Pointer<Utf8>';
              }
              return 'Pointer<Uint16>';
            }
            if (typeArgs.first.corType == CorElementType.ELEMENT_TYPE_VOID) {
              // Pointer<Void> in Dart is unnecessarily restrictive, versus the
              // Win32 meaning, which is more like "undefined type". We can
              // model that with a generic Pointer in Dart.
              return 'Pointer';
            } else {
              return 'Pointer<${nativeType(typeArgs.first)}>';
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
    // If it's a Win32 type, we know how to get the type
    if (typeIdentifier.type != null &&
        typeIdentifier.type!.typeName.startsWith('Windows.Win32')) {
      final win32Type = typeIdentifier.type?.typeName.split('.').last ?? '';
      final ffiNativeType = convertToFFIType(win32Type);
      return ffiNativeType;
    }
    throw WinmdException('Undetected type.');
    // return '';
  }

  /// Take a TypeDef and create a Dart projection of it.
  static ClassProjection projectWindowsType(TypeDef mdTypeDef) {
    final interface = ClassProjection();
    interface.sourceType = SourceType.winrt; // for now
    interface.iid = mdTypeDef.guid;
    interface.name = mdTypeDef.typeName;
    interface.inherits = mdTypeDef.parent!.typeName;
    interface.vtableStart = 6; // For now, hardcode to IInspectable subclass

    for (final mdMethod in mdTypeDef.methods) {
      final method = MethodProjection();
      method.name = mdMethod.methodName;
      method.returnTypeNative = 'Int32';
      method.returnTypeDart = 'int';

      // return value is passed as an pointer
      if (mdMethod.returnType.typeIdentifier.corType !=
          CorElementType.ELEMENT_TYPE_VOID) {
        if (mdMethod.isSetProperty) {
          final paramName = method.name.substring(4).toCamelCase();
          method.parameters.add(ParameterProjection(paramName,
              nativeType: nativeType(mdMethod.returnType.typeIdentifier),
              dartType: dartType(mdMethod.returnType.typeIdentifier)));
        } else if (mdMethod.isGetProperty) {
          method.parameters.add(ParameterProjection('value',
              nativeType: nativeType(mdMethod.returnType.typeIdentifier),
              dartType: dartType(mdMethod.returnType.typeIdentifier)));
        } else {
          method.parameters.add(ParameterProjection('value',
              nativeType:
                  'Pointer<${nativeType(mdMethod.returnType.typeIdentifier)}>',
              dartType:
                  'Pointer<${nativeType(mdMethod.returnType.typeIdentifier)}>'));
        }
      }

      for (final mdParam in mdMethod.parameters) {
        method.parameters.add(ParameterProjection(mdParam.name,
            nativeType: nativeType(mdParam.typeIdentifier),
            dartType: dartType(mdParam.typeIdentifier)));
      }

      interface.methods.add(method);
    }

    return interface;
  }
}
