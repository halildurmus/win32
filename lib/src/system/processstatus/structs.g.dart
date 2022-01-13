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
import '../../system/processstatus/structs.g.dart';

/// {@category Struct}
class ENUM_PAGE_FILE_INFORMATION extends Struct {
  @Uint32()
  external int cb;

  @Uint32()
  external int Reserved;

  @IntPtr()
  external int TotalSize;

  @IntPtr()
  external int TotalInUse;

  @IntPtr()
  external int PeakUsage;
}

/// {@category Struct}
class MODULEINFO extends Struct {
  external Pointer lpBaseOfDll;

  @Uint32()
  external int SizeOfImage;

  external Pointer EntryPoint;
}

/// {@category Struct}
class PERFORMANCE_INFORMATION extends Struct {
  @Uint32()
  external int cb;

  @IntPtr()
  external int CommitTotal;

  @IntPtr()
  external int CommitLimit;

  @IntPtr()
  external int CommitPeak;

  @IntPtr()
  external int PhysicalTotal;

  @IntPtr()
  external int PhysicalAvailable;

  @IntPtr()
  external int SystemCache;

  @IntPtr()
  external int KernelTotal;

  @IntPtr()
  external int KernelPaged;

  @IntPtr()
  external int KernelNonpaged;

  @IntPtr()
  external int PageSize;

  @Uint32()
  external int HandleCount;

  @Uint32()
  external int ProcessCount;

  @Uint32()
  external int ThreadCount;
}

/// {@category Struct}
class PROCESS_MEMORY_COUNTERS extends Struct {
  @Uint32()
  external int cb;

  @Uint32()
  external int PageFaultCount;

  @IntPtr()
  external int PeakWorkingSetSize;

  @IntPtr()
  external int WorkingSetSize;

  @IntPtr()
  external int QuotaPeakPagedPoolUsage;

  @IntPtr()
  external int QuotaPagedPoolUsage;

  @IntPtr()
  external int QuotaPeakNonPagedPoolUsage;

  @IntPtr()
  external int QuotaNonPagedPoolUsage;

  @IntPtr()
  external int PagefileUsage;

  @IntPtr()
  external int PeakPagefileUsage;
}

/// {@category Struct}
class PROCESS_MEMORY_COUNTERS_EX extends Struct {
  @Uint32()
  external int cb;

  @Uint32()
  external int PageFaultCount;

  @IntPtr()
  external int PeakWorkingSetSize;

  @IntPtr()
  external int WorkingSetSize;

  @IntPtr()
  external int QuotaPeakPagedPoolUsage;

  @IntPtr()
  external int QuotaPagedPoolUsage;

  @IntPtr()
  external int QuotaPeakNonPagedPoolUsage;

  @IntPtr()
  external int QuotaNonPagedPoolUsage;

  @IntPtr()
  external int PagefileUsage;

  @IntPtr()
  external int PeakPagefileUsage;

  @IntPtr()
  external int PrivateUsage;
}

/// {@category Struct}
class PSAPI_WORKING_SET_BLOCK extends Union {
  @IntPtr()
  external int Flags;

  external _PSAPI_WORKING_SET_BLOCK__Anonymous_e__Struct Anonymous;
}

/// {@category Struct}
class _PSAPI_WORKING_SET_BLOCK__Anonymous_e__Struct extends Struct {
  @IntPtr()
  external int bitfield;
}

extension PSAPI_WORKING_SET_BLOCK_Extension on PSAPI_WORKING_SET_BLOCK {
  int get bitfield => this.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous.bitfield = value;
}

/// {@category Struct}
class PSAPI_WORKING_SET_EX_BLOCK extends Union {
  @IntPtr()
  external int Flags;

  external _PSAPI_WORKING_SET_EX_BLOCK__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _PSAPI_WORKING_SET_EX_BLOCK__Anonymous_e__Union extends Union {
  external _PSAPI_WORKING_SET_EX_BLOCK__Anonymous_e__Union__Anonymous_e__Struct
      Anonymous;

  external _PSAPI_WORKING_SET_EX_BLOCK__Anonymous_e__Union__Invalid_e__Struct
      Invalid;
}

/// {@category Struct}
class _PSAPI_WORKING_SET_EX_BLOCK__Anonymous_e__Union__Anonymous_e__Struct
    extends Struct {
  @IntPtr()
  external int bitfield;
}

extension PSAPI_WORKING_SET_EX_BLOCK__Anonymous_e__Union_Extension
    on PSAPI_WORKING_SET_EX_BLOCK {
  int get bitfield => this.Anonymous.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous.Anonymous.bitfield = value;
}

/// {@category Struct}
class _PSAPI_WORKING_SET_EX_BLOCK__Anonymous_e__Union__Invalid_e__Struct
    extends Struct {
  @IntPtr()
  external int bitfield;
}

extension PSAPI_WORKING_SET_EX_BLOCK__Anonymous_e__Union_Extension_1
    on PSAPI_WORKING_SET_EX_BLOCK {
  int get bitfield => this.Anonymous.Invalid.bitfield;
  set bitfield(int value) => this.Anonymous.Invalid.bitfield = value;
}

extension PSAPI_WORKING_SET_EX_BLOCK_Extension on PSAPI_WORKING_SET_EX_BLOCK {
  _PSAPI_WORKING_SET_EX_BLOCK__Anonymous_e__Union__Anonymous_e__Struct
      get Anonymous => this.Anonymous.Anonymous;
  set Anonymous(
          _PSAPI_WORKING_SET_EX_BLOCK__Anonymous_e__Union__Anonymous_e__Struct
              value) =>
      this.Anonymous.Anonymous = value;

  _PSAPI_WORKING_SET_EX_BLOCK__Anonymous_e__Union__Invalid_e__Struct
      get Invalid => this.Anonymous.Invalid;
  set Invalid(
          _PSAPI_WORKING_SET_EX_BLOCK__Anonymous_e__Union__Invalid_e__Struct
              value) =>
      this.Anonymous.Invalid = value;
}

/// {@category Struct}
class PSAPI_WORKING_SET_EX_INFORMATION extends Struct {
  external Pointer VirtualAddress;

  external PSAPI_WORKING_SET_EX_BLOCK VirtualAttributes;
}

/// {@category Struct}
class PSAPI_WORKING_SET_INFORMATION extends Struct {
  @IntPtr()
  external int NumberOfEntries;

  @Array(1)
  external Array<PSAPI_WORKING_SET_BLOCK> WorkingSetInfo;
}

/// {@category Struct}
class PSAPI_WS_WATCH_INFORMATION extends Struct {
  external Pointer FaultingPc;

  external Pointer FaultingVa;
}

/// {@category Struct}
class PSAPI_WS_WATCH_INFORMATION_EX extends Struct {
  external PSAPI_WS_WATCH_INFORMATION BasicInfo;

  @IntPtr()
  external int FaultingThreadId;

  @IntPtr()
  external int Flags;
}
