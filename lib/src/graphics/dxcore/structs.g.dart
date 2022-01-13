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
import '../../graphics/dxcore/structs.g.dart';

/// {@category Struct}
class DXCoreAdapterMemoryBudget extends Struct {
  @Uint64()
  external int budget;

  @Uint64()
  external int currentUsage;

  @Uint64()
  external int availableForReservation;

  @Uint64()
  external int currentReservation;
}

/// {@category Struct}
class DXCoreAdapterMemoryBudgetNodeSegmentGroup extends Struct {
  @Uint32()
  external int nodeIndex;

  @Uint32()
  external int segmentGroup;
}

/// {@category Struct}
class DXCoreHardwareID extends Struct {
  @Uint32()
  external int vendorID;

  @Uint32()
  external int deviceID;

  @Uint32()
  external int subSysID;

  @Uint32()
  external int revision;
}

/// {@category Struct}
class DXCoreHardwareIDParts extends Struct {
  @Uint32()
  external int vendorID;

  @Uint32()
  external int deviceID;

  @Uint32()
  external int subSystemID;

  @Uint32()
  external int subVendorID;

  @Uint32()
  external int revisionID;
}
