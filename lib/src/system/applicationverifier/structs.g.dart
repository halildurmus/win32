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
import '../../system/applicationverifier/structs.g.dart';

/// {@category Struct}
class AVRF_BACKTRACE_INFORMATION extends Struct {
  @Uint32()
  external int Depth;

  @Uint32()
  external int Index;

  @Array(32)
  external Array<Uint64> ReturnAddresses;
}

/// {@category Struct}
class AVRF_HANDLE_OPERATION extends Struct {
  @Uint64()
  external int $Handle;

  @Uint32()
  external int ProcessId;

  @Uint32()
  external int ThreadId;

  @Uint32()
  external int OperationType;

  @Uint32()
  external int Spare0;

  external AVRF_BACKTRACE_INFORMATION BackTraceInformation;
}

/// {@category Struct}
class AVRF_HEAP_ALLOCATION extends Struct {
  @Uint64()
  external int HeapHandle;

  @Uint64()
  external int UserAllocation;

  @Uint64()
  external int UserAllocationSize;

  @Uint64()
  external int Allocation;

  @Uint64()
  external int AllocationSize;

  @Uint32()
  external int UserAllocationState;

  @Uint32()
  external int HeapState;

  @Uint64()
  external int HeapContext;

  external Pointer<AVRF_BACKTRACE_INFORMATION> BackTraceInformation;
}
