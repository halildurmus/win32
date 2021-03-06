// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import '_base.dart';
import 'com/IMetaDataImport2.dart' as md;

class Module extends AttributeObject {
  final String name;

  Module(md.IMetaDataImport2 reader, int token, this.name)
      : super(reader, token);

  factory Module.fromToken(md.IMetaDataImport2 reader, int token) {
    final szName = calloc<Uint16>(256).cast<Utf16>();
    final pchName = calloc<Uint32>();

    try {
      final hr = reader.GetModuleRefProps(token, szName, 256, pchName);

      if (SUCCEEDED(hr)) {
        return Module(reader, token, szName.toDartString());
      } else {
        throw WindowsException(hr);
      }
    } finally {
      calloc.free(pchName);
      calloc.free(szName);
    }
  }

  @override
  String toString() => 'Module: $name';
}
