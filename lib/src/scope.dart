// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'com/IMetaDataImport2.dart';
import 'enumeration.dart';
import 'module.dart';
import 'typedef.dart';

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
    final szName = calloc<Uint16>(256).cast<Utf16>();
    final pchName = calloc<Uint32>();
    try {
      final hr = reader.GetScopeProps(szName, 256, pchName, nullptr);
      if (SUCCEEDED(hr)) {
        return szName.toDartString();
      } else {
        throw COMException(hr);
      }
    } finally {
      calloc.free(szName);
      calloc.free(pchName);
    }
  }

  TypeDef? findTypeDef(String typedef) {
    final typeDef = typeDefs.where((t) => t.typeName == typedef);
    return (typeDef.isNotEmpty ? typeDef.first : null);
  }

  /// Get an enumerated list of typedefs for this scope.
  List<TypeDef> get typeDefs {
    if (_typedefs.isEmpty) {
      final phEnum = calloc<IntPtr>();
      final rgTypeDefs = calloc<Uint32>();
      final pcTypeDefs = calloc<Uint32>();

      try {
        var hr = reader.EnumTypeDefs(phEnum, rgTypeDefs, 1, pcTypeDefs);
        while (hr == S_OK) {
          final token = rgTypeDefs.value;

          _typedefs.add(TypeDef.fromToken(reader, token));
          hr = reader.EnumTypeDefs(phEnum, rgTypeDefs, 1, pcTypeDefs);
        }
      } finally {
        reader.CloseEnum(phEnum.value);
        calloc.free(phEnum);
        calloc.free(rgTypeDefs);
        calloc.free(pcTypeDefs);
      }
    }
    return _typedefs;
  }

  List<TypeDef> get delegates =>
      typeDefs.where((typeDef) => typeDef.isDelegate).toList();

  /// Get an enumerated list of modules for this scope.
  List<Module> get modules {
    if (_modules.isEmpty) {
      final phEnum = calloc<IntPtr>();
      final rgModuleRefs = calloc<Uint32>();
      final pcModuleRefs = calloc<Uint32>();

      try {
        var hr = reader.EnumModuleRefs(phEnum, rgModuleRefs, 1, pcModuleRefs);
        while (hr == S_OK) {
          final token = rgModuleRefs.value;
          _modules.add(Module.fromToken(reader, token));
          hr = reader.EnumModuleRefs(phEnum, rgModuleRefs, 1, pcModuleRefs);
        }
      } finally {
        reader.CloseEnum(phEnum.value);
        calloc.free(phEnum);
        calloc.free(rgModuleRefs);
        calloc.free(pcModuleRefs);
      }
    }
    return _modules;
  }

  List<String> get userStrings {
    final strings = <String>[];

    final phEnum = calloc<IntPtr>();
    final rgStrings = calloc<Uint32>();
    final pcStrings = calloc<Uint32>();
    try {
      var hr = reader.EnumUserStrings(phEnum, rgStrings, 1, pcStrings);
      while (hr == S_OK) {
        final token = rgStrings.value;
        strings.add(token.toHexString(16));
        hr = reader.EnumUserStrings(phEnum, rgStrings, 1, pcStrings);
      }
    } finally {
      reader.CloseEnum(phEnum.value);
      calloc.free(phEnum);
      calloc.free(rgStrings);
      calloc.free(pcStrings);
    }

    return strings;
  }

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
