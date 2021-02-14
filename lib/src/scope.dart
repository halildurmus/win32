// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'constants.dart';
import 'enumeration.dart';
import 'module.dart';
import 'typedef.dart';

/// A metadata scope, which typically matches an on-disk file.
///
/// Rather than being created directly, you should obtain a scope from a
/// [MetadataStore], which caches scopes to avoid duplication.
class Scope {
  final IMetaDataImport2 reader;
  final _modules = <Module>[];

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

  /// Get an enumerated list of typedefs for this scope.
  List<TypeDef> get typeDefs {
    final types = <TypeDef>[];

    final phEnum = calloc<IntPtr>();
    final rgTypeDefs = calloc<Uint32>();
    final pcTypeDefs = calloc<Uint32>();

    try {
      var hr = reader.EnumTypeDefs(phEnum, rgTypeDefs, 1, pcTypeDefs);
      while (hr == S_OK) {
        final token = rgTypeDefs.value;

        types.add(TypeDef.fromToken(reader, token));
        hr = reader.EnumTypeDefs(phEnum, rgTypeDefs, 1, pcTypeDefs);
      }
      return types;
    } finally {
      reader.CloseEnum(phEnum.value);
      calloc.free(phEnum);
      calloc.free(rgTypeDefs);
      calloc.free(pcTypeDefs);
    }
  }

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

  List<Enumeration> get enums {
    final enums = <Enumeration>[];
    for (final typeDef in typeDefs) {
      if (typeDef.parent?.typeName == 'System.Enum') {
        enums.add(Enumeration(typeDef));
      }
    }
    return enums;
  }

  /// Find a typedef by name.
  TypeDef? operator [](String type) {
    final szTypeDef = type.toNativeUtf16();
    final ptkTypeDef = calloc<Uint32>();

    try {
      final hr = reader.FindTypeDefByName(szTypeDef, NULL, ptkTypeDef);
      if (SUCCEEDED(hr)) {
        return TypeDef.fromToken(reader, ptkTypeDef.value);
      } else if (hr == CLDB_E_RECORD_NOTFOUND) {
        return null;
      } else {
        throw COMException(hr);
      }
    } finally {
      calloc.free(szTypeDef);
      calloc.free(ptkTypeDef);
    }
  }
}
