// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'base.dart';
import 'com/IMetaDataImport2.dart';
import 'mixins/customattributes_mixin.dart';
import 'type_aliases.dart';
import 'utils.dart';

class Module extends TokenObject with CustomAttributesMixin {
  final String name;

  Module(IMetaDataImport2 reader, int token, this.name) : super(reader, token);

  /// Creates a module object from its given token.
  factory Module.fromToken(IMetaDataImport2 reader, int token) {
    final szName = stralloc(MAX_STRING_SIZE);
    final pchName = calloc<ULONG>();

    try {
      final hr =
          reader.GetModuleRefProps(token, szName, MAX_STRING_SIZE, pchName);

      if (SUCCEEDED(hr)) {
        return Module(reader, token, szName.toDartString());
      } else {
        throw WindowsException(hr);
      }
    } finally {
      free(pchName);
      free(szName);
    }
  }

  @override
  String toString() => 'Module: $name';
}
