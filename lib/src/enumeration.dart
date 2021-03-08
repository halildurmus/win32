// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'typedef.dart';

/// Represents an enum in the Windows Metadata file
class Enumeration extends TypeDef {
  Enumeration(TypeDef type)
      : super(type.reader, type.token, type.typeName, type.flags,
            type.baseTypeToken);

  @override
  String toString() => 'Enumeration: $typeName';
}
