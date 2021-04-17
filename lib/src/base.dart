// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'com/IMetaDataImport2.dart';
import 'constants.dart';
import 'utils.dart';

const MAX_STRING_SIZE = 256;

/// The type of object represented by a given token.
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

/// The base object for metadata objects.
///
/// All metadata objects (typedefs, parameters, fields, events, etc.) have a
/// 32-bit token value, which is the primary key for the object in the
/// underlying Windows metadata database. The high byte of the token describes
/// its type.
abstract class TokenObject {
  final IMetaDataImport2 reader;
  final int token;

  const TokenObject(this.reader, this.token);

  @override
  int get hashCode => token;

  @override
  bool operator ==(Object other) =>
      other is TokenObject && other.token == token;

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
        free(pIsGlobal);
      }
    } else {
      return false;
    }
  }

  /// Returns the type of the token.
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
}
