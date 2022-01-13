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
import '../../system/hostcomputenetwork/structs.g.dart';

/// {@category Struct}
class HCN_PORT_RANGE_ENTRY extends Struct {
  external GUID OwningPartitionId;

  external GUID TargetPartitionId;

  @Int32()
  external int Protocol;

  @Uint64()
  external int Priority;

  @Uint32()
  external int ReservationType;

  @Uint32()
  external int SharingFlags;

  @Uint32()
  external int DeliveryMode;

  @Uint16()
  external int StartingPort;

  @Uint16()
  external int EndingPort;
}

/// {@category Struct}
class HCN_PORT_RANGE_RESERVATION extends Struct {
  @Uint16()
  external int startingPort;

  @Uint16()
  external int endingPort;
}
