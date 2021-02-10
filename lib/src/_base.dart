// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'attribute.dart';

// The base object for metadata objects.
class TokenObject {
  final IMetaDataImport2 reader;
  final int token;

  const TokenObject(this.reader, this.token);
}

class AttributeObject extends TokenObject {
  const AttributeObject(IMetaDataImport2 reader, int token)
      : super(reader, token);

  /// Enumerate all attributes that this parameter has.
  List<Attribute> get attributes {
    final attributes = <Attribute>[];

    final phEnum = calloc<IntPtr>();
    final rAttrs = calloc<Uint32>();
    final pcAttrs = calloc<Uint32>();

    try {
      var hr =
          reader.EnumCustomAttributes(phEnum, token, 0, rAttrs, 1, pcAttrs);
      while (hr == S_OK) {
        final attrToken = rAttrs.value;

        attributes.add(Attribute.fromToken(reader, attrToken));
        hr = reader.EnumCustomAttributes(phEnum, token, 0, rAttrs, 1, pcAttrs);
      }
      return attributes;
    } finally {
      reader.CloseEnum(phEnum.address);

      calloc.free(rAttrs);
      calloc.free(pcAttrs);
    }
  }
}
