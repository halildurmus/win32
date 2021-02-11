// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'enumeration.dart';
import 'typedef.dart';

/// A metadata scope, which typically matches an on-disk file.
///
/// Rather than being created directly, you should obtain a scope from a
/// [MetadataStore], which caches scopes to avoid duplication.
class Scope {
  final IMetaDataImport2 reader;

  Scope(this.reader);

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
      reader.CloseEnum(phEnum.address);

      calloc.free(rgTypeDefs);
      calloc.free(pcTypeDefs);

      // dispose phEnum crashes here, so leave it allocated
    }
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
  TypeDef findTypeDef(String type) {
    final szTypeDef = type.toNativeUtf16();
    final ptkTypeDef = calloc<Uint32>();

    try {
      reader.FindTypeDefByName(szTypeDef, NULL, ptkTypeDef);
      return TypeDef.fromToken(reader, ptkTypeDef.value);
    } finally {
      calloc.free(szTypeDef);
      calloc.free(ptkTypeDef);
    }
  }
}
