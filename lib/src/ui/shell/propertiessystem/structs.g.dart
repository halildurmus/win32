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
import '../../../foundation/structs.g.dart';

/// {@category Struct}
class PROPERTYKEY extends Struct {
  external GUID fmtid;

  @Uint32()
  external int pid;
}

/// {@category Struct}
class PROPPRG extends Struct {
  @Uint16()
  external int flPrg;

  @Uint16()
  external int flPrgInit;

  @Array(30)
  external Array<Uint8> achTitle;

  @Array(128)
  external Array<Uint8> achCmdLine;

  @Array(64)
  external Array<Uint8> achWorkDir;

  @Uint16()
  external int wHotKey;

  @Array(80)
  external Array<Uint8> achIconFile;

  @Uint16()
  external int wIconIndex;

  @Uint32()
  external int dwEnhModeFlags;

  @Uint32()
  external int dwRealModeFlags;

  @Array(80)
  external Array<Uint8> achOtherFile;

  @Array(260)
  external Array<Uint8> achPIFFile;
}

/// {@category Struct}
class SERIALIZEDPROPSTORAGE extends Opaque {}
