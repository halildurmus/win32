// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dart representations of common structs used in the Win32 API.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: directives_ordering, unnecessary_getters_setters
// ignore_for_file: unused_field, unused_import

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';
import '../../../combase.dart';
import '../../../guid.dart';
import '../../../security/cryptography/certificates/structs.g.dart';
import '../../../foundation/structs.g.dart';

/// {@category Struct}
class CAINFO extends Struct {
  @Uint32()
  external int cbSize;

  @Int32()
  external int CAType;

  @Uint32()
  external int cCASignatureCerts;

  @Uint32()
  external int cCAExchangeCerts;

  @Uint32()
  external int cExitModules;

  @Int32()
  external int lPropIdMax;

  @Int32()
  external int lRoleSeparationEnabled;

  @Uint32()
  external int cKRACertUsedCount;

  @Uint32()
  external int cKRACertCount;

  @Uint32()
  external int fAdvancedServer;
}

/// {@category Struct}
class CERTTRANSBLOB extends Struct {
  @Uint32()
  external int cb;

  external Pointer<Uint8> pb;
}

/// {@category Struct}
class CERTVIEWRESTRICTION extends Struct {
  @Uint32()
  external int ColumnIndex;

  @Int32()
  external int SeekOperator;

  @Int32()
  external int SortOrder;

  external Pointer<Uint8> pbValue;

  @Uint32()
  external int cbValue;
}

/// {@category Struct}
class CSEDB_RSTMAP extends Struct {
  external Pointer<Utf16> pwszDatabaseName;

  external Pointer<Utf16> pwszNewDatabaseName;
}
