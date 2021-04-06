// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dart representations of common structs used in the Win32 API.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// -----------------------------------------------------------------------------
// Linter exceptions
// -----------------------------------------------------------------------------
// ignore_for_file: camel_case_types ignore_for_file: camel_case_extensions
//
// Why? The linter defaults to throw a warning for types not named as camel
// case. We deliberately break this convention to match the Win32 underlying
// types.
//
//
// ignore_for_file: unused_field
//
// Why? The linter complains about unused fields (e.g. a class that contains
// underscore-prefixed members that are not used in the library. In this class,
// we use this feature to ensure that sizeOf<STRUCT_NAME> returns a size at
// least as large as the underlying native struct. See, for example,
// ENUMLOGFONTEX.
//
//
// ignore_for_file: unnecessary_getters_setters
//
// Why? In structs like VARIANT, we're using getters and setters to project the
// same underlying data property to various union types. The trivial overhead is
// outweighed by readability.
//
//
// ignore_for_file: unused_import
//
// Why? We speculatively include some imports that we might generate a
// requirement for.
// -----------------------------------------------------------------------------

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';

class MODULEINFO extends Struct {
  external Pointer lpBaseOfDll;
  @Uint32() external int SizeOfImage;
  external Pointer EntryPoint;
}

class PSAPI_WORKING_SET_BLOCK extends Struct {
  @IntPtr() external int Flags;
  @Uint32() external int Anonymous;
}

class PSAPI_WORKING_SET_INFORMATION extends Struct {
  @IntPtr() external int NumberOfEntries;
  @Array(1)
  external Array<PSAPI_WORKING_SET_BLOCK> WorkingSetInfo;
}

class PSAPI_WORKING_SET_EX_BLOCK extends Struct {
  @IntPtr() external int Flags;
  @Uint32() external int Anonymous;
}

class PSAPI_WORKING_SET_EX_INFORMATION extends Struct {
  external Pointer VirtualAddress;
  external PSAPI_WORKING_SET_EX_BLOCK VirtualAttributes;
}

class PSAPI_WS_WATCH_INFORMATION extends Struct {
  external Pointer FaultingPc;
  external Pointer FaultingVa;
}

class PSAPI_WS_WATCH_INFORMATION_EX extends Struct {
  external PSAPI_WS_WATCH_INFORMATION BasicInfo;
  @IntPtr() external int FaultingThreadId;
  @IntPtr() external int Flags;
}

class PROCESS_MEMORY_COUNTERS extends Struct {
  @Uint32() external int cb;
  @Uint32() external int PageFaultCount;
  @IntPtr() external int PeakWorkingSetSize;
  @IntPtr() external int WorkingSetSize;
  @IntPtr() external int QuotaPeakPagedPoolUsage;
  @IntPtr() external int QuotaPagedPoolUsage;
  @IntPtr() external int QuotaPeakNonPagedPoolUsage;
  @IntPtr() external int QuotaNonPagedPoolUsage;
  @IntPtr() external int PagefileUsage;
  @IntPtr() external int PeakPagefileUsage;
}

class PROCESS_MEMORY_COUNTERS_EX extends Struct {
  @Uint32() external int cb;
  @Uint32() external int PageFaultCount;
  @IntPtr() external int PeakWorkingSetSize;
  @IntPtr() external int WorkingSetSize;
  @IntPtr() external int QuotaPeakPagedPoolUsage;
  @IntPtr() external int QuotaPagedPoolUsage;
  @IntPtr() external int QuotaPeakNonPagedPoolUsage;
  @IntPtr() external int QuotaNonPagedPoolUsage;
  @IntPtr() external int PagefileUsage;
  @IntPtr() external int PeakPagefileUsage;
  @IntPtr() external int PrivateUsage;
}

class PERFORMANCE_INFORMATION extends Struct {
  @Uint32() external int cb;
  @IntPtr() external int CommitTotal;
  @IntPtr() external int CommitLimit;
  @IntPtr() external int CommitPeak;
  @IntPtr() external int PhysicalTotal;
  @IntPtr() external int PhysicalAvailable;
  @IntPtr() external int SystemCache;
  @IntPtr() external int KernelTotal;
  @IntPtr() external int KernelPaged;
  @IntPtr() external int KernelNonpaged;
  @IntPtr() external int PageSize;
  @Uint32() external int HandleCount;
  @Uint32() external int ProcessCount;
  @Uint32() external int ThreadCount;
}

class ENUM_PAGE_FILE_INFORMATION extends Struct {
  @Uint32() external int cb;
  @Uint32() external int Reserved;
  @IntPtr() external int TotalSize;
  @IntPtr() external int TotalInUse;
  @IntPtr() external int PeakUsage;
}

