// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'base.dart';
import 'com/IMetaDataImport2.dart';
import 'moduleref.dart';
import 'pekind.dart';
import 'type_aliases.dart';
import 'typedef.dart';
import 'utils/exception.dart';
import 'utils/string.dart';

/// A metadata scope, which typically matches an on-disk file.
///
/// Rather than being created directly, you should obtain a scope from a
/// [MetadataStore], which caches scopes to avoid duplication.
class Scope {
  late final String guid;
  late final String name;
  final IMetaDataImport2 reader;

  final _enums = <TypeDef>[];
  final _modules = <ModuleRef>[];
  final _typedefs = <TypeDef>[];

  Scope(this.reader) {
    final szName = stralloc(MAX_STRING_SIZE);
    final pchName = calloc<ULONG>();
    final pmvid = calloc<GUID>();
    try {
      final hr = reader.GetScopeProps(szName, MAX_STRING_SIZE, pchName, pmvid);
      if (SUCCEEDED(hr)) {
        name = szName.toDartString();
        guid = pmvid.ref.toString();
      } else {
        throw COMException(hr);
      }
    } finally {
      free(szName);
      free(pchName);
    }
  }

  @override
  String toString() => name;

  TypeDef? findTypeDef(String typedef) {
    final typeDef = typeDefs.where((t) => t.name == typedef);
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
          final typeDefToken = rgTypeDefs.value;

          _typedefs.add(TypeDef.fromToken(this, typeDefToken));
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

  int get moduleToken {
    final pmd = calloc<mdModule>();

    try {
      final hr = reader.GetModuleFromScope(pmd);
      if (SUCCEEDED(hr)) {
        return pmd.value;
      } else {
        throw WinmdException('Unable to find module token.');
      }
    } finally {
      free(pmd);
    }
  }

  List<TypeDef> get delegates =>
      typeDefs.where((typeDef) => typeDef.isDelegate).toList();

  /// Get an enumerated list of modules in this scope.
  List<ModuleRef> get moduleRefs {
    if (_modules.isEmpty) {
      final phEnum = calloc<HCORENUM>();
      final rgModuleRefs = calloc<mdModuleRef>();
      final pcModuleRefs = calloc<ULONG>();

      try {
        var hr = reader.EnumModuleRefs(phEnum, rgModuleRefs, 1, pcModuleRefs);
        while (hr == S_OK) {
          final moduleToken = rgModuleRefs.value;
          _modules.add(ModuleRef.fromToken(this, moduleToken));
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
        final stringToken = rgStrings.value;
        hr = reader.GetUserString(
            stringToken, szString, MAX_STRING_SIZE, pchString);
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
  List<TypeDef> get enums {
    if (_enums.isEmpty) {
      for (final typeDef in typeDefs) {
        if (typeDef.parent?.name == 'System.Enum') {
          _enums.add(typeDef);
        }
      }
    }
    return _enums;
  }

  PEKind get executableKind => PEKind(reader);

  String get versionNumber {
    final pwzBuf = stralloc(MAX_STRING_SIZE);
    final pccBufSize = calloc<DWORD>();
    try {
      final hr = reader.GetVersionString(pwzBuf, MAX_STRING_SIZE, pccBufSize);

      if (SUCCEEDED(hr)) {
        return pwzBuf.toDartString();
      } else {
        return '';
      }
    } finally {
      free(pwzBuf);
      free(pccBufSize);
    }
  }
}
