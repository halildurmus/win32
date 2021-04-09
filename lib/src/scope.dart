// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'base.dart';
import 'com/IMetaDataImport2.dart';
import 'enumeration.dart';
import 'module.dart';
import 'typedef.dart';
import 'win32.dart';

/// A metadata scope, which typically matches an on-disk file.
///
/// Rather than being created directly, you should obtain a scope from a
/// [MetadataStore], which caches scopes to avoid duplication.
class Scope {
  final IMetaDataImport2 reader;
  final _typedefs = <TypeDef>[];
  final _modules = <Module>[];
  final _enums = <Enumeration>[];

  Scope(this.reader);

  String get name {
    final szName = stralloc(MAX_STRING_SIZE);
    final pchName = calloc<ULONG>();
    try {
      final hr =
          reader.GetScopeProps(szName, MAX_STRING_SIZE, pchName, nullptr);
      if (SUCCEEDED(hr)) {
        return szName.toDartString();
      } else {
        throw COMException(hr);
      }
    } finally {
      free(szName);
      free(pchName);
    }
  }

  TypeDef? findTypeDef(String typedef) {
    final typeDef = typeDefs.where((t) => t.typeName == typedef);
    return (typeDef.isNotEmpty ? typeDef.first : null);
  }

  /// Get an enumerated list of typedefs for this scope.
  List<TypeDef> get typeDefs {
    if (_typedefs.isEmpty) {
      final phEnum = calloc<HCORENUM>();
      final rgTypeDefs = calloc<mdTypeDef>();
      final pcTypeDefs = calloc<ULONG>();

      try {
        var hr = reader.EnumTypeDefs(phEnum, rgTypeDefs, 1, pcTypeDefs);
        while (hr == S_OK) {
          final token = rgTypeDefs.value;

          _typedefs.add(TypeDef.fromToken(reader, token));
          hr = reader.EnumTypeDefs(phEnum, rgTypeDefs, 1, pcTypeDefs);
        }
      } finally {
        reader.CloseEnum(phEnum.value);
        free(phEnum);
        free(rgTypeDefs);
        free(pcTypeDefs);
      }
    }
    return _typedefs;
  }

  List<TypeDef> get delegates =>
      typeDefs.where((typeDef) => typeDef.isDelegate).toList();

  /// Get an enumerated list of modules in this scope.
  List<Module> get modules {
    if (_modules.isEmpty) {
      final phEnum = calloc<HCORENUM>();
      final rgModuleRefs = calloc<mdModuleRef>();
      final pcModuleRefs = calloc<ULONG>();

      try {
        var hr = reader.EnumModuleRefs(phEnum, rgModuleRefs, 1, pcModuleRefs);
        while (hr == S_OK) {
          final token = rgModuleRefs.value;
          _modules.add(Module.fromToken(reader, token));
          hr = reader.EnumModuleRefs(phEnum, rgModuleRefs, 1, pcModuleRefs);
        }
      } finally {
        reader.CloseEnum(phEnum.value);
        free(phEnum);
        free(rgModuleRefs);
        free(pcModuleRefs);
      }
    }
    return _modules;
  }

  /// Get an enumerated list of all hard-coded strings in this scope.
  List<String> get userStrings {
    final strings = <String>[];

    final phEnum = calloc<HCORENUM>();
    final rgStrings = calloc<mdString>();
    final pcStrings = calloc<ULONG>();
    final szString = stralloc(MAX_STRING_SIZE);
    final pchString = calloc<ULONG>();

    try {
      var hr = reader.EnumUserStrings(phEnum, rgStrings, 1, pcStrings);
      while (hr == S_OK) {
        final token = rgStrings.value;
        hr = reader.GetUserString(token, szString, MAX_STRING_SIZE, pchString);
        if (hr == S_OK) {
          strings.add(szString.toDartString());
        }
        hr = reader.EnumUserStrings(phEnum, rgStrings, 1, pcStrings);
      }
    } finally {
      reader.CloseEnum(phEnum.value);
      free(phEnum);
      free(rgStrings);
      free(pcStrings);
      free(szString);
      free(pchString);
    }

    return strings;
  }

  /// Get an enumerated list of all enumerations in this scope.
  List<Enumeration> get enums {
    if (_enums.isEmpty) {
      for (final typeDef in typeDefs) {
        if (typeDef.parent?.typeName == 'System.Enum') {
          _enums.add(Enumeration(typeDef));
        }
      }
    }
    return _enums;
  }

  @override
  String toString() => 'Scope: $name';
}
