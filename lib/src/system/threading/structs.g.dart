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
import '../../system/threading/structs.g.dart';
import '../../system/threading/callbacks.g.dart';
import '../../system/kernel/structs.g.dart';
import '../../foundation/structs.g.dart';

/// {@category Struct}
class APP_MEMORY_INFORMATION extends Struct {
  @Uint64()
  external int AvailableCommit;

  @Uint64()
  external int PrivateCommitUsage;

  @Uint64()
  external int PeakPrivateCommitUsage;

  @Uint64()
  external int TotalCommitUsage;
}

/// {@category Struct}
class IO_COUNTERS extends Struct {
  @Uint64()
  external int ReadOperationCount;

  @Uint64()
  external int WriteOperationCount;

  @Uint64()
  external int OtherOperationCount;

  @Uint64()
  external int ReadTransferCount;

  @Uint64()
  external int WriteTransferCount;

  @Uint64()
  external int OtherTransferCount;
}

/// {@category Struct}
class MEMORY_PRIORITY_INFORMATION extends Struct {
  @Uint32()
  external int MemoryPriority;
}

/// {@category Struct}
class PEB extends Struct {
  @Array(2)
  external Array<Uint8> Reserved1;

  @Uint8()
  external int BeingDebugged;

  @Array(1)
  external Array<Uint8> Reserved2;

  @Array(2)
  external Array<Pointer> Reserved3;

  external Pointer<PEB_LDR_DATA> Ldr;

  external Pointer<RTL_USER_PROCESS_PARAMETERS> ProcessParameters;

  @Array(3)
  external Array<Pointer> Reserved4;

  external Pointer AtlThunkSListPtr;

  external Pointer Reserved5;

  @Uint32()
  external int Reserved6;

  external Pointer Reserved7;

  @Uint32()
  external int Reserved8;

  @Uint32()
  external int AtlThunkSListPtr32;

  @Array(45)
  external Array<Pointer> Reserved9;

  @Array(96)
  external Array<Uint8> Reserved10;

  external Pointer<NativeFunction<PPS_POST_PROCESS_INIT_ROUTINE>>
      PostProcessInitRoutine;

  @Array(128)
  external Array<Uint8> Reserved11;

  @Array(1)
  external Array<Pointer> Reserved12;

  @Uint32()
  external int SessionId;
}

/// {@category Struct}
class PEB_LDR_DATA extends Struct {
  @Array(8)
  external Array<Uint8> Reserved1;

  @Array(3)
  external Array<Pointer> Reserved2;

  external LIST_ENTRY InMemoryOrderModuleList;
}

/// {@category Struct}
class PROCESS_BASIC_INFORMATION extends Struct {
  external Pointer Reserved1;

  external Pointer<PEB> PebBaseAddress;

  @Array(2)
  external Array<Pointer> Reserved2;

  @IntPtr()
  external int UniqueProcessId;

  external Pointer Reserved3;
}

/// {@category Struct}
class PROCESS_DYNAMIC_EH_CONTINUATION_TARGET extends Struct {
  @IntPtr()
  external int TargetAddress;

  @IntPtr()
  external int Flags;
}

/// {@category Struct}
class PROCESS_DYNAMIC_EH_CONTINUATION_TARGETS_INFORMATION extends Struct {
  @Uint16()
  external int NumberOfTargets;

  @Uint16()
  external int Reserved;

  @Uint32()
  external int Reserved2;

  external Pointer<PROCESS_DYNAMIC_EH_CONTINUATION_TARGET> Targets;
}

/// {@category Struct}
class PROCESS_DYNAMIC_ENFORCED_ADDRESS_RANGE extends Struct {
  @IntPtr()
  external int BaseAddress;

  @IntPtr()
  external int Size;

  @Uint32()
  external int Flags;
}

/// {@category Struct}
class PROCESS_DYNAMIC_ENFORCED_ADDRESS_RANGES_INFORMATION extends Struct {
  @Uint16()
  external int NumberOfRanges;

  @Uint16()
  external int Reserved;

  @Uint32()
  external int Reserved2;

  external Pointer<PROCESS_DYNAMIC_ENFORCED_ADDRESS_RANGE> Ranges;
}

/// {@category Struct}
class PROCESS_INFORMATION extends Struct {
  @IntPtr()
  external int hProcess;

  @IntPtr()
  external int hThread;

  @Uint32()
  external int dwProcessId;

  @Uint32()
  external int dwThreadId;
}

/// {@category Struct}
class PROCESS_LEAP_SECOND_INFO extends Struct {
  @Uint32()
  external int Flags;

  @Uint32()
  external int Reserved;
}

/// {@category Struct}
class PROCESS_MACHINE_INFORMATION extends Struct {
  @Uint16()
  external int ProcessMachine;

  @Uint16()
  external int Res0;

  @Uint32()
  external int MachineAttributes;
}

/// {@category Struct}
class PROCESS_MEMORY_EXHAUSTION_INFO extends Struct {
  @Uint16()
  external int Version;

  @Uint16()
  external int Reserved;

  @Int32()
  external int Type;

  @IntPtr()
  external int Value;
}

/// {@category Struct}
class PROCESS_POWER_THROTTLING_STATE extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int ControlMask;

  @Uint32()
  external int StateMask;
}

/// {@category Struct}
class PROCESS_PROTECTION_LEVEL_INFORMATION extends Struct {
  @Uint32()
  external int ProtectionLevel;
}

/// {@category Struct}
class REASON_CONTEXT extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Flags;

  external _REASON_CONTEXT__Reason_e__Union Reason;
}

/// {@category Struct}
class _REASON_CONTEXT__Reason_e__Union extends Union {
  external _REASON_CONTEXT__Reason_e__Union__Detailed_e__Struct Detailed;

  external Pointer<Utf16> SimpleReasonString;
}

/// {@category Struct}
class _REASON_CONTEXT__Reason_e__Union__Detailed_e__Struct extends Struct {
  @IntPtr()
  external int LocalizedReasonModule;

  @Uint32()
  external int LocalizedReasonId;

  @Uint32()
  external int ReasonStringCount;

  external Pointer<Pointer<Utf16>> ReasonStrings;
}

extension REASON_CONTEXT__Reason_e__Union_Extension on REASON_CONTEXT {
  int get LocalizedReasonModule => this.Reason.Detailed.LocalizedReasonModule;
  set LocalizedReasonModule(int value) =>
      this.Reason.Detailed.LocalizedReasonModule = value;

  int get LocalizedReasonId => this.Reason.Detailed.LocalizedReasonId;
  set LocalizedReasonId(int value) =>
      this.Reason.Detailed.LocalizedReasonId = value;

  int get ReasonStringCount => this.Reason.Detailed.ReasonStringCount;
  set ReasonStringCount(int value) =>
      this.Reason.Detailed.ReasonStringCount = value;

  Pointer<Pointer<Utf16>> get ReasonStrings =>
      this.Reason.Detailed.ReasonStrings;
  set ReasonStrings(Pointer<Pointer<Utf16>> value) =>
      this.Reason.Detailed.ReasonStrings = value;
}

extension REASON_CONTEXT_Extension on REASON_CONTEXT {
  _REASON_CONTEXT__Reason_e__Union__Detailed_e__Struct get Detailed =>
      this.Reason.Detailed;
  set Detailed(_REASON_CONTEXT__Reason_e__Union__Detailed_e__Struct value) =>
      this.Reason.Detailed = value;

  Pointer<Utf16> get SimpleReasonString => this.Reason.SimpleReasonString;
  set SimpleReasonString(Pointer<Utf16> value) =>
      this.Reason.SimpleReasonString = value;
}

/// {@category Struct}
class RTL_BARRIER extends Struct {
  @Uint32()
  external int Reserved1;

  @Uint32()
  external int Reserved2;

  @Array(2)
  external Array<IntPtr> Reserved3;

  @Uint32()
  external int Reserved4;

  @Uint32()
  external int Reserved5;
}

/// {@category Struct}
class RTL_CONDITION_VARIABLE extends Struct {
  external Pointer Ptr;
}

/// {@category Struct}
class RTL_CRITICAL_SECTION extends Struct {
  external Pointer<RTL_CRITICAL_SECTION_DEBUG> DebugInfo;

  @Int32()
  external int LockCount;

  @Int32()
  external int RecursionCount;

  @IntPtr()
  external int OwningThread;

  @IntPtr()
  external int LockSemaphore;

  @IntPtr()
  external int SpinCount;
}

/// {@category Struct}
class RTL_CRITICAL_SECTION_DEBUG extends Struct {
  @Uint16()
  external int Type;

  @Uint16()
  external int CreatorBackTraceIndex;

  external Pointer<RTL_CRITICAL_SECTION> CriticalSection;

  external LIST_ENTRY ProcessLocksList;

  @Uint32()
  external int EntryCount;

  @Uint32()
  external int ContentionCount;

  @Uint32()
  external int Flags;

  @Uint16()
  external int CreatorBackTraceIndexHigh;

  @Uint16()
  external int SpareWORD;
}

/// {@category Struct}
class RTL_RUN_ONCE extends Union {
  external Pointer Ptr;
}

/// {@category Struct}
class RTL_SRWLOCK extends Struct {
  external Pointer Ptr;
}

/// {@category Struct}
class RTL_USER_PROCESS_PARAMETERS extends Struct {
  @Array(16)
  external Array<Uint8> Reserved1;

  @Array(10)
  external Array<Pointer> Reserved2;

  external UNICODE_STRING ImagePathName;

  external UNICODE_STRING CommandLine;
}

/// {@category Struct}
class STARTUPINFOEX extends Struct {
  external STARTUPINFO StartupInfo;

  external Pointer lpAttributeList;
}

/// {@category Struct}
class STARTUPINFO extends Struct {
  @Uint32()
  external int cb;

  external Pointer<Utf16> lpReserved;

  external Pointer<Utf16> lpDesktop;

  external Pointer<Utf16> lpTitle;

  @Uint32()
  external int dwX;

  @Uint32()
  external int dwY;

  @Uint32()
  external int dwXSize;

  @Uint32()
  external int dwYSize;

  @Uint32()
  external int dwXCountChars;

  @Uint32()
  external int dwYCountChars;

  @Uint32()
  external int dwFillAttribute;

  @Uint32()
  external int dwFlags;

  @Uint16()
  external int wShowWindow;

  @Uint16()
  external int cbReserved2;

  external Pointer<Uint8> lpReserved2;

  @IntPtr()
  external int hStdInput;

  @IntPtr()
  external int hStdOutput;

  @IntPtr()
  external int hStdError;
}

/// {@category Struct}
class THREAD_POWER_THROTTLING_STATE extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int ControlMask;

  @Uint32()
  external int StateMask;
}

/// {@category Struct}
class TP_CALLBACK_ENVIRON_V3 extends Struct {
  @Uint32()
  external int Version;

  @IntPtr()
  external int Pool;

  @IntPtr()
  external int CleanupGroup;

  external Pointer<NativeFunction<PTP_CLEANUP_GROUP_CANCEL_CALLBACK>>
      CleanupGroupCancelCallback;

  external Pointer RaceDll;

  @IntPtr()
  external int ActivationContext;

  external Pointer<NativeFunction<PTP_SIMPLE_CALLBACK>> FinalizationCallback;

  external _TP_CALLBACK_ENVIRON_V3__u_e__Union u;

  @Int32()
  external int CallbackPriority;

  @Uint32()
  external int Size;
}

/// {@category Struct}
class _TP_CALLBACK_ENVIRON_V3__u_e__Union extends Union {
  @Uint32()
  external int Flags;

  external _TP_CALLBACK_ENVIRON_V3__u_e__Union__s_e__Struct s;
}

/// {@category Struct}
class _TP_CALLBACK_ENVIRON_V3__u_e__Union__s_e__Struct extends Struct {
  @Uint32()
  external int bitfield;
}

extension TP_CALLBACK_ENVIRON_V3__u_e__Union_Extension
    on TP_CALLBACK_ENVIRON_V3 {
  int get bitfield => this.u.s.bitfield;
  set bitfield(int value) => this.u.s.bitfield = value;
}

extension TP_CALLBACK_ENVIRON_V3_Extension on TP_CALLBACK_ENVIRON_V3 {
  int get Flags => this.u.Flags;
  set Flags(int value) => this.u.Flags = value;

  _TP_CALLBACK_ENVIRON_V3__u_e__Union__s_e__Struct get s => this.u.s;
  set s(_TP_CALLBACK_ENVIRON_V3__u_e__Union__s_e__Struct value) =>
      this.u.s = value;
}

/// {@category Struct}
class TP_CALLBACK_INSTANCE extends Opaque {}

/// {@category Struct}
class TP_IO extends Opaque {}

/// {@category Struct}
class TP_POOL_STACK_INFORMATION extends Struct {
  @IntPtr()
  external int StackReserve;

  @IntPtr()
  external int StackCommit;
}

/// {@category Struct}
class TP_TIMER extends Opaque {}

/// {@category Struct}
class TP_WAIT extends Opaque {}

/// {@category Struct}
class TP_WORK extends Opaque {}

/// {@category Struct}
class UMS_SCHEDULER_STARTUP_INFO extends Struct {
  @Uint32()
  external int UmsVersion;

  external Pointer CompletionList;

  external Pointer<NativeFunction<PRTL_UMS_SCHEDULER_ENTRY_POINT>>
      SchedulerProc;

  external Pointer SchedulerParam;
}

/// {@category Struct}
class UMS_SYSTEM_THREAD_INFORMATION extends Struct {
  @Uint32()
  external int UmsVersion;

  external _UMS_SYSTEM_THREAD_INFORMATION__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _UMS_SYSTEM_THREAD_INFORMATION__Anonymous_e__Union extends Union {
  external _UMS_SYSTEM_THREAD_INFORMATION__Anonymous_e__Union__Anonymous_e__Struct
      Anonymous;

  @Uint32()
  external int ThreadUmsFlags;
}

/// {@category Struct}
class _UMS_SYSTEM_THREAD_INFORMATION__Anonymous_e__Union__Anonymous_e__Struct
    extends Struct {
  @Uint32()
  external int bitfield;
}

extension UMS_SYSTEM_THREAD_INFORMATION__Anonymous_e__Union_Extension
    on UMS_SYSTEM_THREAD_INFORMATION {
  int get bitfield => this.Anonymous.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous.Anonymous.bitfield = value;
}

extension UMS_SYSTEM_THREAD_INFORMATION_Extension
    on UMS_SYSTEM_THREAD_INFORMATION {
  _UMS_SYSTEM_THREAD_INFORMATION__Anonymous_e__Union__Anonymous_e__Struct
      get Anonymous => this.Anonymous.Anonymous;
  set Anonymous(
          _UMS_SYSTEM_THREAD_INFORMATION__Anonymous_e__Union__Anonymous_e__Struct
              value) =>
      this.Anonymous.Anonymous = value;

  int get ThreadUmsFlags => this.Anonymous.ThreadUmsFlags;
  set ThreadUmsFlags(int value) => this.Anonymous.ThreadUmsFlags = value;
}
