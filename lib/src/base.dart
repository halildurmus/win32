// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'com/IMetaDataImport2.dart';
import 'constants.dart';
import 'customattribute.dart';
import 'utils.dart';

enum TokenType {
  Module,
  TypeRef,
  TypeDef,
  FieldDef,
  MethodDef,
  ParamDef,
  InterfaceImpl,
  MemberRef,
  CustomAttribute,
  Permission,
  Signature,
  Event,
  Property,
  ModuleRef,
  TypeSpec,
  Assembly,
  AssemblyRef,
  File,
  ExportedType,
  ManifestResource,
  GenericParam,
  MethodSpec,
  GenericParamConstraint,
  String,
  Name,
  BaseType
}

// The base object for metadata objects.
abstract class TokenObject {
  final IMetaDataImport2 reader;
  final int token;

  const TokenObject(this.reader, this.token);

  /// Returns true if the token is well-formed.
  bool get isValidToken => reader.IsValidToken(token) == TRUE;

  /// Returns true if the token is marked as global.
  bool get isGlobal {
    if (isValidToken) {
      final pIsGlobal = calloc<Int32>();

      try {
        final hr = reader.IsGlobal(token, pIsGlobal);
        if (SUCCEEDED(hr)) {
          return pIsGlobal.value == 1;
        } else {
          throw WindowsException(hr);
        }
      } finally {
        calloc.free(pIsGlobal);
      }
    } else {
      return false;
    }
  }

  TokenType get tokenType {
    switch (token & 0xFF000000) {
      case CorTokenType.mdtModule:
        return TokenType.Module;
      case CorTokenType.mdtTypeRef:
        return TokenType.TypeRef;
      case CorTokenType.mdtTypeDef:
        return TokenType.TypeDef;
      case CorTokenType.mdtFieldDef:
        return TokenType.FieldDef;
      case CorTokenType.mdtMethodDef:
        return TokenType.MethodDef;
      case CorTokenType.mdtParamDef:
        return TokenType.ParamDef;
      case CorTokenType.mdtInterfaceImpl:
        return TokenType.InterfaceImpl;
      case CorTokenType.mdtMemberRef:
        return TokenType.MemberRef;
      case CorTokenType.mdtCustomAttribute:
        return TokenType.CustomAttribute;
      case CorTokenType.mdtPermission:
        return TokenType.Permission;
      case CorTokenType.mdtSignature:
        return TokenType.Signature;
      case CorTokenType.mdtEvent:
        return TokenType.Event;
      case CorTokenType.mdtProperty:
        return TokenType.Property;
      case CorTokenType.mdtModuleRef:
        return TokenType.ModuleRef;
      case CorTokenType.mdtTypeSpec:
        return TokenType.TypeSpec;
      case CorTokenType.mdtAssembly:
        return TokenType.Assembly;
      case CorTokenType.mdtAssemblyRef:
        return TokenType.AssemblyRef;
      case CorTokenType.mdtFile:
        return TokenType.File;
      case CorTokenType.mdtExportedType:
        return TokenType.ExportedType;
      case CorTokenType.mdtManifestResource:
        return TokenType.ManifestResource;
      case CorTokenType.mdtGenericParam:
        return TokenType.GenericParam;
      case CorTokenType.mdtMethodSpec:
        return TokenType.MethodSpec;
      case CorTokenType.mdtGenericParamConstraint:
        return TokenType.GenericParamConstraint;
      case CorTokenType.mdtString:
        return TokenType.String;
      case CorTokenType.mdtName:
        return TokenType.Name;
      case CorTokenType.mdtBaseType:
        return TokenType.BaseType;
      default:
        throw WinmdException(
            'Unrecognized token type ${(token & 0xFF000000).toHexString(32)}');
    }
  }

  @override
  int get hashCode => token;

  @override
  bool operator ==(Object other) =>
      other is TokenObject && other.token == token;
}

/// Represents an object that has custom (named) attributes associated with it.
mixin CustomAttributes on TokenObject {
  /// Retrieve the string associated with a specific attribute name.
  String attributeAsString(String attrName) {
    final szName = attrName.toNativeUtf16();
    final ppData = calloc<IntPtr>();
    final pcbData = calloc<Uint32>();
    try {
      final hr =
          reader.GetCustomAttributeByName(token, szName, ppData, pcbData);
      if (SUCCEEDED(hr)) {
        if (pcbData.value <= 3) return '';
        final sigList = Pointer<Uint8>.fromAddress(ppData.value)
            .elementAt(3)
            .cast<Utf8>()
            .toDartString();
        return sigList;
      } else {
        throw WindowsException(hr);
      }
    } finally {
      calloc.free(szName);
      calloc.free(ppData);
      calloc.free(pcbData);
    }
  }

  /// Retrieve the blob associated with a specific attribute name.
  Uint8List customAttributeAsBytes(String attrName) {
    final szName = attrName.toNativeUtf16();
    final ppData = calloc<IntPtr>();
    final pcbData = calloc<Uint32>();
    try {
      final hr =
          reader.GetCustomAttributeByName(token, szName, ppData, pcbData);
      if (SUCCEEDED(hr)) {
        final sigList =
            Pointer<Uint8>.fromAddress(ppData.value).asTypedList(pcbData.value);
        return sigList;
      } else {
        throw WindowsException(hr);
      }
    } finally {
      calloc.free(szName);
      calloc.free(ppData);
      calloc.free(pcbData);
    }
  }

  /// Enumerate all attributes that this object has.
  List<CustomAttribute> get customAttributes {
    final attributes = <CustomAttribute>[];

    final phEnum = calloc<IntPtr>();
    final rAttrs = calloc<Uint32>();
    final pcAttrs = calloc<Uint32>();

    try {
      // Certain TokenObjects may not have a valid token (e.g. a return
      // type has a token of 0). In this case, we return an empty set, since
      // calling EnumCustomAttributes with a scope of 0 will return all
      // attributes on all objects in the scope.
      if (!isValidToken) return attributes;

      var hr =
          reader.EnumCustomAttributes(phEnum, token, 0, rAttrs, 1, pcAttrs);
      while (hr == S_OK) {
        final attrToken = rAttrs.value;

        attributes.add(CustomAttribute.fromToken(reader, attrToken));
        hr = reader.EnumCustomAttributes(phEnum, token, 0, rAttrs, 1, pcAttrs);
      }
      return attributes;
    } finally {
      reader.CloseEnum(phEnum.value);
      calloc.free(phEnum);
      calloc.free(rAttrs);
      calloc.free(pcAttrs);
    }
  }
}
