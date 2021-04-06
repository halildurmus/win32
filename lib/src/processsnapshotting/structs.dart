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

class HPSS extends Struct {
  @IntPtr()
  external int Value;
}

class HPSSWALK extends Struct {
  @IntPtr()
  external int Value;
}

class PSS_PROCESS_INFORMATION extends Struct {
  @Uint32()
  external int ExitStatus;
  external Pointer PebBaseAddress;
  @IntPtr()
  external int AffinityMask;
  @Int32()
  external int BasePriority;
  @Uint32()
  external int ProcessId;
  @Uint32()
  external int ParentProcessId;
  @Uint32()
  external int Flags;
  external FILETIME CreateTime;
  external FILETIME ExitTime;
  external FILETIME KernelTime;
  external FILETIME UserTime;
  @Uint32()
  external int PriorityClass;
  @IntPtr()
  external int PeakVirtualSize;
  @IntPtr()
  external int VirtualSize;
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
  @Uint32()
  external int ExecuteFlags;
  @Array(129)
  external Array<Uint16> ImageFileName;
}

class PSS_VA_CLONE_INFORMATION extends Struct {
  @IntPtr()
  external int VaCloneHandle;
}

class PSS_AUXILIARY_PAGES_INFORMATION extends Struct {
  @Uint32()
  external int AuxPagesCaptured;
}

class PSS_VA_SPACE_INFORMATION extends Struct {
  @Uint32()
  external int RegionCount;
}

class PSS_HANDLE_INFORMATION extends Struct {
  @Uint32()
  external int HandlesCaptured;
}

class PSS_THREAD_INFORMATION extends Struct {
  @Uint32()
  external int ThreadsCaptured;
  @Uint32()
  external int ContextLength;
}

class PSS_HANDLE_TRACE_INFORMATION extends Struct {
  @IntPtr()
  external int SectionHandle;
  @Uint32()
  external int Size;
}

class PSS_PERFORMANCE_COUNTERS extends Struct {
  @Uint64()
  external int TotalCycleCount;
  @Uint64()
  external int TotalWallClockPeriod;
  @Uint64()
  external int VaCloneCycleCount;
  @Uint64()
  external int VaCloneWallClockPeriod;
  @Uint64()
  external int VaSpaceCycleCount;
  @Uint64()
  external int VaSpaceWallClockPeriod;
  @Uint64()
  external int AuxPagesCycleCount;
  @Uint64()
  external int AuxPagesWallClockPeriod;
  @Uint64()
  external int HandlesCycleCount;
  @Uint64()
  external int HandlesWallClockPeriod;
  @Uint64()
  external int ThreadsCycleCount;
  @Uint64()
  external int ThreadsWallClockPeriod;
}

class PSS_AUXILIARY_PAGE_ENTRY extends Struct {
  external Pointer Address;
  external MEMORY_BASIC_INFORMATION BasicInformation;
  external FILETIME CaptureTime;
  external Pointer PageContents;
  @Uint32()
  external int PageSize;
}

class PSS_VA_SPACE_ENTRY extends Struct {
  external Pointer BaseAddress;
  external Pointer AllocationBase;
  @Uint32()
  external int AllocationProtect;
  @IntPtr()
  external int RegionSize;
  @Uint32()
  external int State;
  @Uint32()
  external int Protect;
  @Uint32()
  external int Type;
  @Uint32()
  external int TimeDateStamp;
  @Uint32()
  external int SizeOfImage;
  external Pointer ImageBase;
  @Uint32()
  external int CheckSum;
  @Uint16()
  external int MappedFileNameLength;
  external Pointer<Utf16> MappedFileName;
}

class PSS_HANDLE_ENTRY extends Struct {
  @IntPtr()
  external int Handle;
  @Uint32()
  external int Flags;
  @Uint32()
  external int ObjectType;
  external FILETIME CaptureTime;
  @Uint32()
  external int Attributes;
  @Uint32()
  external int GrantedAccess;
  @Uint32()
  external int HandleCount;
  @Uint32()
  external int PointerCount;
  @Uint32()
  external int PagedPoolCharge;
  @Uint32()
  external int NonPagedPoolCharge;
  external FILETIME CreationTime;
  @Uint16()
  external int TypeNameLength;
  external Pointer<Utf16> TypeName;
  @Uint16()
  external int ObjectNameLength;
  external Pointer<Utf16> ObjectName;
  @Uint32()
  external int TypeSpecificInformation;
}

class PSS_THREAD_ENTRY extends Struct {
  @Uint32()
  external int ExitStatus;
  external Pointer TebBaseAddress;
  @Uint32()
  external int ProcessId;
  @Uint32()
  external int ThreadId;
  @IntPtr()
  external int AffinityMask;
  @Int32()
  external int Priority;
  @Int32()
  external int BasePriority;
  external Pointer LastSyscallFirstArgument;
  @Uint16()
  external int LastSyscallNumber;
  external FILETIME CreateTime;
  external FILETIME ExitTime;
  external FILETIME KernelTime;
  external FILETIME UserTime;
  external Pointer Win32StartAddress;
  external FILETIME CaptureTime;
  @Uint32()
  external int Flags;
  @Uint16()
  external int SuspendCount;
  @Uint16()
  external int SizeOfContextRecord;
  external Pointer<CONTEXT> ContextRecord;
}

class PSS_ALLOCATOR extends Struct {
  external Pointer Context;
  @IntPtr()
  external int AllocRoutine;
  @IntPtr()
  external int FreeRoutine;
}
