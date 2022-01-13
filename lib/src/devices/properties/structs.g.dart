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
import '../../combase.dart';
import '../../guid.dart';
import '../../devices/properties/structs.g.dart';
import '../../foundation/structs.g.dart';

/// {@category Struct}
class DEVPROPCOMPKEY extends Struct {
  external DEVPROPKEY Key;

  @Int32()
  external int Store;

  external Pointer<Utf16> LocaleName;
}

/// {@category Struct}
class DEVPROPERTY extends Struct {
  external DEVPROPCOMPKEY CompKey;

  @Uint32()
  external int Type;

  @Uint32()
  external int BufferSize;

  external Pointer Buffer;
}

/// {@category Struct}
class DEVPROPKEY extends Struct {
  external GUID fmtid;

  @Uint32()
  external int pid;
}
