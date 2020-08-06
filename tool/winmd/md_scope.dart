// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'md_enum.dart';
import 'md_type.dart';

/// A metadata scope, which typically matches an on-disk file.
///
/// Rather than being created directly, you should obtain a scope from a
/// [WinmdReader], which caches scopes to avoid duplication.
class WinmdScope {
  IMetaDataImport2 reader;

  WinmdScope(this.reader);

  /// Get an enumerated list of typedefs for this scope.
  List<WinmdType> get typeDefs {
    final types = <WinmdType>[];

    final phEnum = allocate<IntPtr>()..value = 0;
    final rgTypeDefs = allocate<Uint32>();
    final pcTypeDefs = allocate<Uint32>();

    try {
      var hr = reader.EnumTypeDefs(phEnum, rgTypeDefs, 1, pcTypeDefs);
      while (hr == S_OK) {
        final token = rgTypeDefs.value;

        types.add(WinmdType.fromToken(reader, token));
        hr = reader.EnumTypeDefs(phEnum, rgTypeDefs, 1, pcTypeDefs);
      }
      return types;
    } finally {
      reader.CloseEnum(phEnum.address);

      free(rgTypeDefs);
      free(pcTypeDefs);

      // dispose phEnum crashes here, so leave it allocated
    }
  }

  List<WinmdEnum> get enums {
    final enums = <WinmdEnum>[];
    for (final typeDef in typeDefs) {
      if (typeDef.parent?.typeName == 'System.Enum') {
        enums.add(WinmdEnum(typeDef));
      }
    }
    return enums;
  }

  /// Find a typedef by name.
  WinmdType findTypeDef(String type) {
    final szTypeDef = TEXT(type);
    final ptkTypeDef = allocate<Uint32>();

    try {
      reader.FindTypeDefByName(szTypeDef, NULL, ptkTypeDef);
      return WinmdType.fromToken(reader, ptkTypeDef.value);
    } finally {
      free(szTypeDef);
      free(ptkTypeDef);
    }
  }
}
