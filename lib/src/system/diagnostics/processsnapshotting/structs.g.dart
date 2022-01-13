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
import '../../../system/memory/structs.g.dart';
import '../../../foundation/structs.g.dart';
import '../../../system/diagnostics/processsnapshotting/structs.g.dart';
import '../../../system/diagnostics/debug/structs.g.dart';

/// {@category Struct}
class PSS_ALLOCATOR extends Struct {
  external Pointer Context;

  @IntPtr()
  external int AllocRoutine;

  @IntPtr()
  external int FreeRoutine;
}

/// {@category Struct}
class PSS_AUXILIARY_PAGES_INFORMATION extends Struct {
  @Uint32()
  external int AuxPagesCaptured;
}

/// {@category Struct}
class PSS_AUXILIARY_PAGE_ENTRY extends Struct {
  external Pointer Address;

  external MEMORY_BASIC_INFORMATION BasicInformation;

  external FILETIME CaptureTime;

  external Pointer PageContents;

  @Uint32()
  external int PageSize;
}

/// {@category Struct}
class PSS_HANDLE_ENTRY extends Struct {
  @IntPtr()
  external int $Handle;

  @Uint32()
  external int Flags;

  @Int32()
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

  external _PSS_HANDLE_ENTRY__TypeSpecificInformation_e__Union
      TypeSpecificInformation;
}

/// {@category Struct}
class _PSS_HANDLE_ENTRY__TypeSpecificInformation_e__Union extends Union {
  external _PSS_HANDLE_ENTRY__TypeSpecificInformation_e__Union__Process_e__Struct
      Process;

  external _PSS_HANDLE_ENTRY__TypeSpecificInformation_e__Union__Thread_e__Struct
      Thread;

  external _PSS_HANDLE_ENTRY__TypeSpecificInformation_e__Union__Mutant_e__Struct
      Mutant;

  external _PSS_HANDLE_ENTRY__TypeSpecificInformation_e__Union__Event_e__Struct
      Event;

  external _PSS_HANDLE_ENTRY__TypeSpecificInformation_e__Union__Section_e__Struct
      Section;

  external _PSS_HANDLE_ENTRY__TypeSpecificInformation_e__Union__Semaphore_e__Struct
      Semaphore;
}

/// {@category Struct}
class _PSS_HANDLE_ENTRY__TypeSpecificInformation_e__Union__Process_e__Struct
    extends Struct {
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
}

extension PSS_HANDLE_ENTRY__TypeSpecificInformation_e__Union_Extension
    on PSS_HANDLE_ENTRY {
  int get ExitStatus => this.TypeSpecificInformation.Process.ExitStatus;
  set ExitStatus(int value) =>
      this.TypeSpecificInformation.Process.ExitStatus = value;

  Pointer get PebBaseAddress =>
      this.TypeSpecificInformation.Process.PebBaseAddress;
  set PebBaseAddress(Pointer value) =>
      this.TypeSpecificInformation.Process.PebBaseAddress = value;

  int get AffinityMask => this.TypeSpecificInformation.Process.AffinityMask;
  set AffinityMask(int value) =>
      this.TypeSpecificInformation.Process.AffinityMask = value;

  int get BasePriority => this.TypeSpecificInformation.Process.BasePriority;
  set BasePriority(int value) =>
      this.TypeSpecificInformation.Process.BasePriority = value;

  int get ProcessId => this.TypeSpecificInformation.Process.ProcessId;
  set ProcessId(int value) =>
      this.TypeSpecificInformation.Process.ProcessId = value;

  int get ParentProcessId =>
      this.TypeSpecificInformation.Process.ParentProcessId;
  set ParentProcessId(int value) =>
      this.TypeSpecificInformation.Process.ParentProcessId = value;

  int get Flags => this.TypeSpecificInformation.Process.Flags;
  set Flags(int value) => this.TypeSpecificInformation.Process.Flags = value;
}

/// {@category Struct}
class _PSS_HANDLE_ENTRY__TypeSpecificInformation_e__Union__Thread_e__Struct
    extends Struct {
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

  external Pointer Win32StartAddress;
}

extension PSS_HANDLE_ENTRY__TypeSpecificInformation_e__Union_Extension_1
    on PSS_HANDLE_ENTRY {
  int get ExitStatus => this.TypeSpecificInformation.Thread.ExitStatus;
  set ExitStatus(int value) =>
      this.TypeSpecificInformation.Thread.ExitStatus = value;

  Pointer get TebBaseAddress =>
      this.TypeSpecificInformation.Thread.TebBaseAddress;
  set TebBaseAddress(Pointer value) =>
      this.TypeSpecificInformation.Thread.TebBaseAddress = value;

  int get ProcessId => this.TypeSpecificInformation.Thread.ProcessId;
  set ProcessId(int value) =>
      this.TypeSpecificInformation.Thread.ProcessId = value;

  int get ThreadId => this.TypeSpecificInformation.Thread.ThreadId;
  set ThreadId(int value) =>
      this.TypeSpecificInformation.Thread.ThreadId = value;

  int get AffinityMask => this.TypeSpecificInformation.Thread.AffinityMask;
  set AffinityMask(int value) =>
      this.TypeSpecificInformation.Thread.AffinityMask = value;

  int get Priority => this.TypeSpecificInformation.Thread.Priority;
  set Priority(int value) =>
      this.TypeSpecificInformation.Thread.Priority = value;

  int get BasePriority => this.TypeSpecificInformation.Thread.BasePriority;
  set BasePriority(int value) =>
      this.TypeSpecificInformation.Thread.BasePriority = value;

  Pointer get Win32StartAddress =>
      this.TypeSpecificInformation.Thread.Win32StartAddress;
  set Win32StartAddress(Pointer value) =>
      this.TypeSpecificInformation.Thread.Win32StartAddress = value;
}

/// {@category Struct}
class _PSS_HANDLE_ENTRY__TypeSpecificInformation_e__Union__Mutant_e__Struct
    extends Struct {
  @Int32()
  external int CurrentCount;

  @Int32()
  external int Abandoned;

  @Uint32()
  external int OwnerProcessId;

  @Uint32()
  external int OwnerThreadId;
}

extension PSS_HANDLE_ENTRY__TypeSpecificInformation_e__Union_Extension_2
    on PSS_HANDLE_ENTRY {
  int get CurrentCount => this.TypeSpecificInformation.Mutant.CurrentCount;
  set CurrentCount(int value) =>
      this.TypeSpecificInformation.Mutant.CurrentCount = value;

  int get Abandoned => this.TypeSpecificInformation.Mutant.Abandoned;
  set Abandoned(int value) =>
      this.TypeSpecificInformation.Mutant.Abandoned = value;

  int get OwnerProcessId => this.TypeSpecificInformation.Mutant.OwnerProcessId;
  set OwnerProcessId(int value) =>
      this.TypeSpecificInformation.Mutant.OwnerProcessId = value;

  int get OwnerThreadId => this.TypeSpecificInformation.Mutant.OwnerThreadId;
  set OwnerThreadId(int value) =>
      this.TypeSpecificInformation.Mutant.OwnerThreadId = value;
}

/// {@category Struct}
class _PSS_HANDLE_ENTRY__TypeSpecificInformation_e__Union__Event_e__Struct
    extends Struct {
  @Int32()
  external int ManualReset;

  @Int32()
  external int Signaled;
}

extension PSS_HANDLE_ENTRY__TypeSpecificInformation_e__Union_Extension_3
    on PSS_HANDLE_ENTRY {
  int get ManualReset => this.TypeSpecificInformation.Event.ManualReset;
  set ManualReset(int value) =>
      this.TypeSpecificInformation.Event.ManualReset = value;

  int get Signaled => this.TypeSpecificInformation.Event.Signaled;
  set Signaled(int value) =>
      this.TypeSpecificInformation.Event.Signaled = value;
}

/// {@category Struct}
class _PSS_HANDLE_ENTRY__TypeSpecificInformation_e__Union__Section_e__Struct
    extends Struct {
  external Pointer BaseAddress;

  @Uint32()
  external int AllocationAttributes;

  @Int64()
  external int MaximumSize;
}

extension PSS_HANDLE_ENTRY__TypeSpecificInformation_e__Union_Extension_4
    on PSS_HANDLE_ENTRY {
  Pointer get BaseAddress => this.TypeSpecificInformation.Section.BaseAddress;
  set BaseAddress(Pointer value) =>
      this.TypeSpecificInformation.Section.BaseAddress = value;

  int get AllocationAttributes =>
      this.TypeSpecificInformation.Section.AllocationAttributes;
  set AllocationAttributes(int value) =>
      this.TypeSpecificInformation.Section.AllocationAttributes = value;

  int get MaximumSize => this.TypeSpecificInformation.Section.MaximumSize;
  set MaximumSize(int value) =>
      this.TypeSpecificInformation.Section.MaximumSize = value;
}

/// {@category Struct}
class _PSS_HANDLE_ENTRY__TypeSpecificInformation_e__Union__Semaphore_e__Struct
    extends Struct {
  @Int32()
  external int CurrentCount;

  @Int32()
  external int MaximumCount;
}

extension PSS_HANDLE_ENTRY__TypeSpecificInformation_e__Union_Extension_5
    on PSS_HANDLE_ENTRY {
  int get CurrentCount => this.TypeSpecificInformation.Semaphore.CurrentCount;
  set CurrentCount(int value) =>
      this.TypeSpecificInformation.Semaphore.CurrentCount = value;

  int get MaximumCount => this.TypeSpecificInformation.Semaphore.MaximumCount;
  set MaximumCount(int value) =>
      this.TypeSpecificInformation.Semaphore.MaximumCount = value;
}

extension PSS_HANDLE_ENTRY_Extension on PSS_HANDLE_ENTRY {
  _PSS_HANDLE_ENTRY__TypeSpecificInformation_e__Union__Process_e__Struct
      get Process => this.TypeSpecificInformation.Process;
  set Process(
          _PSS_HANDLE_ENTRY__TypeSpecificInformation_e__Union__Process_e__Struct
              value) =>
      this.TypeSpecificInformation.Process = value;

  _PSS_HANDLE_ENTRY__TypeSpecificInformation_e__Union__Thread_e__Struct
      get Thread => this.TypeSpecificInformation.Thread;
  set Thread(
          _PSS_HANDLE_ENTRY__TypeSpecificInformation_e__Union__Thread_e__Struct
              value) =>
      this.TypeSpecificInformation.Thread = value;

  _PSS_HANDLE_ENTRY__TypeSpecificInformation_e__Union__Mutant_e__Struct
      get Mutant => this.TypeSpecificInformation.Mutant;
  set Mutant(
          _PSS_HANDLE_ENTRY__TypeSpecificInformation_e__Union__Mutant_e__Struct
              value) =>
      this.TypeSpecificInformation.Mutant = value;

  _PSS_HANDLE_ENTRY__TypeSpecificInformation_e__Union__Event_e__Struct
      get Event => this.TypeSpecificInformation.Event;
  set Event(
          _PSS_HANDLE_ENTRY__TypeSpecificInformation_e__Union__Event_e__Struct
              value) =>
      this.TypeSpecificInformation.Event = value;

  _PSS_HANDLE_ENTRY__TypeSpecificInformation_e__Union__Section_e__Struct
      get Section => this.TypeSpecificInformation.Section;
  set Section(
          _PSS_HANDLE_ENTRY__TypeSpecificInformation_e__Union__Section_e__Struct
              value) =>
      this.TypeSpecificInformation.Section = value;

  _PSS_HANDLE_ENTRY__TypeSpecificInformation_e__Union__Semaphore_e__Struct
      get Semaphore => this.TypeSpecificInformation.Semaphore;
  set Semaphore(
          _PSS_HANDLE_ENTRY__TypeSpecificInformation_e__Union__Semaphore_e__Struct
              value) =>
      this.TypeSpecificInformation.Semaphore = value;
}

/// {@category Struct}
class PSS_HANDLE_INFORMATION extends Struct {
  @Uint32()
  external int HandlesCaptured;
}

/// {@category Struct}
class PSS_HANDLE_TRACE_INFORMATION extends Struct {
  @IntPtr()
  external int SectionHandle;

  @Uint32()
  external int Size;
}

/// {@category Struct}
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

/// {@category Struct}
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

  @Array(260)
  external Array<Uint16> _ImageFileName;

  String get ImageFileName {
    final charCodes = <int>[];
    for (var i = 0; i < 260; i++) {
      charCodes.add(_ImageFileName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set ImageFileName(String value) {
    final stringToStore = value.padRight(260, '\x00');
    for (var i = 0; i < 260; i++) {
      _ImageFileName[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
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

/// {@category Struct}
class PSS_THREAD_INFORMATION extends Struct {
  @Uint32()
  external int ThreadsCaptured;

  @Uint32()
  external int ContextLength;
}

/// {@category Struct}
class PSS_VA_CLONE_INFORMATION extends Struct {
  @IntPtr()
  external int VaCloneHandle;
}

/// {@category Struct}
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

/// {@category Struct}
class PSS_VA_SPACE_INFORMATION extends Struct {
  @Uint32()
  external int RegionCount;
}
