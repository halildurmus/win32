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
import '../../../system/performance/hardwarecounterprofiling/structs.g.dart';

/// {@category Struct}
class HARDWARE_COUNTER_DATA extends Struct {
  @Int32()
  external int Type;

  @Uint32()
  external int Reserved;

  @Uint64()
  external int Value;
}

/// {@category Struct}
class PERFORMANCE_DATA extends Struct {
  @Uint16()
  external int Size;

  @Uint8()
  external int Version;

  @Uint8()
  external int HwCountersCount;

  @Uint32()
  external int ContextSwitchCount;

  @Uint64()
  external int WaitReasonBitMap;

  @Uint64()
  external int CycleTime;

  @Uint32()
  external int RetryCount;

  @Uint32()
  external int Reserved;

  @Array(16)
  external Array<HARDWARE_COUNTER_DATA> HwCounters;
}
