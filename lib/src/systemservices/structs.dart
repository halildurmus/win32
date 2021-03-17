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

class FLOAT128 extends Struct {
  @Int64() external int LowPart;
  @Int64() external int HighPart;
}

class M128A extends Struct {
  @Uint64() external int Low;
  @Int64() external int High;
}

class XSAVE_FORMAT extends Struct {
  @Uint16() external int ControlWord;
  @Uint16() external int StatusWord;
  @Uint8() external int TagWord;
  @Uint8() external int Reserved1;
  @Uint16() external int ErrorOpcode;
  @Uint32() external int ErrorOffset;
  @Uint16() external int ErrorSelector;
  @Uint16() external int Reserved2;
  @Uint32() external int DataOffset;
  @Uint16() external int DataSelector;
  @Uint16() external int Reserved3;
  @Uint32() external int MxCsr;
  @Uint32() external int MxCsr_Mask;
  external M128A FloatRegisters;
  external M128A XmmRegisters;
  external __ubyte__ Reserved4;
}

class XSAVE_CET_U_FORMAT extends Struct {
  @Uint64() external int Ia32CetUMsr;
  @Uint64() external int Ia32Pl3SspMsr;
}

class XSAVE_AREA_HEADER extends Struct {
  @Uint64() external int Mask;
  @Uint64() external int CompactionMask;
  external __uint64__ Reserved2;
}

class XSAVE_AREA extends Struct {
  external XSAVE_FORMAT LegacyState;
  external XSAVE_AREA_HEADER Header;
}

class XSTATE_CONTEXT extends Struct {
  @Uint64() external int Mask;
  @Uint32() external int Length;
  @Uint32() external int Reserved1;
  external Pointer<XSAVE_AREA> Area;
  @Uint32() external int Reserved2;
  external Pointer Buffer;
  @Uint32() external int Reserved3;
}

class KNONVOLATILE_CONTEXT_POINTERS_ARM64 extends Struct {
  external Pointer<Uint64> X19;
  external Pointer<Uint64> X20;
  external Pointer<Uint64> X21;
  external Pointer<Uint64> X22;
  external Pointer<Uint64> X23;
  external Pointer<Uint64> X24;
  external Pointer<Uint64> X25;
  external Pointer<Uint64> X26;
  external Pointer<Uint64> X27;
  external Pointer<Uint64> X28;
  external Pointer<Uint64> Fp;
  external Pointer<Uint64> Lr;
  external Pointer<Uint64> D8;
  external Pointer<Uint64> D9;
  external Pointer<Uint64> D10;
  external Pointer<Uint64> D11;
  external Pointer<Uint64> D12;
  external Pointer<Uint64> D13;
  external Pointer<Uint64> D14;
  external Pointer<Uint64> D15;
}

class FLOATING_SAVE_AREA extends Struct {
  @Uint32() external int ControlWord;
  @Uint32() external int StatusWord;
  @Uint32() external int TagWord;
  @Uint32() external int ErrorOffset;
  @Uint32() external int ErrorSelector;
  @Uint32() external int DataOffset;
  @Uint32() external int DataSelector;
  external __ubyte__ RegisterArea;
  @Uint32() external int Spare0;
}

class KNONVOLATILE_CONTEXT_POINTERS extends Struct {
  @Uint32() external int Dummy;
}

class WOW64_DESCRIPTOR_TABLE_ENTRY extends Struct {
  @Uint32() external int Selector;
  external WOW64_LDT_ENTRY Descriptor;
}

class EXCEPTION_RECORD32 extends Struct {
  @Uint32() external int ExceptionCode;
  @Uint32() external int ExceptionFlags;
  @Uint32() external int ExceptionRecord;
  @Uint32() external int ExceptionAddress;
  @Uint32() external int NumberParameters;
  external __uint__ ExceptionInformation;
}

class SE_SID extends Struct {
  external SID Sid;
  external __ubyte__ Buffer;
}

class SYSTEM_PROCESS_TRUST_LABEL_ACE extends Struct {
  external ACE_HEADER Header;
  @Uint32() external int Mask;
  @Uint32() external int SidStart;
}

class SYSTEM_ACCESS_FILTER_ACE extends Struct {
  external ACE_HEADER Header;
  @Uint32() external int Mask;
  @Uint32() external int SidStart;
}

class SECURITY_DESCRIPTOR_RELATIVE extends Struct {
  @Uint8() external int Revision;
  @Uint8() external int Sbz1;
  @Uint16() external int Control;
  @Uint32() external int Owner;
  @Uint32() external int Group;
  @Uint32() external int Sacl;
  @Uint32() external int Dacl;
}

class SECURITY_OBJECT_AI_PARAMS extends Struct {
  @Uint32() external int Size;
  @Uint32() external int ConstraintMask;
}

class ACCESS_REASONS extends Struct {
  external __uint__ Data;
}

class SE_SECURITY_DESCRIPTOR extends Struct {
  @Uint32() external int Size;
  @Uint32() external int Flags;
  external Pointer SecurityDescriptor;
}

class SE_ACCESS_REQUEST extends Struct {
  @Uint32() external int Size;
  external Pointer<SE_SECURITY_DESCRIPTOR> SeSecurityDescriptor;
  @Uint32() external int DesiredAccess;
  @Uint32() external int PreviouslyGrantedAccess;
  external Pointer PrincipalSelfSid;
  external Pointer<GENERIC_MAPPING> GenericMapping;
  @Uint32() external int ObjectTypeListCount;
  external Pointer<OBJECT_TYPE_LIST> ObjectTypeList;
}

class SE_ACCESS_REPLY extends Struct {
  @Uint32() external int Size;
  @Uint32() external int ResultListCount;
  external Pointer<Uint32> GrantedAccess;
  external Pointer<Uint32> AccessStatus;
  external Pointer<ACCESS_REASONS> AccessReason;
  external Pointer<Pointer<PRIVILEGE_SET>> Privileges;
}

class TOKEN_SID_INFORMATION extends Struct {
  external Pointer Sid;
}

class TOKEN_BNO_ISOLATION_INFORMATION extends Struct {
  external Pointer<Utf16> IsolationPrefix;
  @Uint8() external int IsolationEnabled;
}

class SE_IMPERSONATION_STATE extends Struct {
  external Pointer Token;
  @Uint8() external int CopyOnOpen;
  @Uint8() external int EffectiveOnly;
  @Uint32() external int Level;
}

class JOB_SET_ARRAY extends Struct {
  @IntPtr() external int JobHandle;
  @Uint32() external int MemberLevel;
  @Uint32() external int Flags;
}

class EXCEPTION_REGISTRATION_RECORD extends Struct {
  external Pointer<EXCEPTION_REGISTRATION_RECORD> Next;
  external EXCEPTION_ROUTINE Handler;
}

class UMS_CREATE_THREAD_ATTRIBUTES extends Struct {
  @Uint32() external int UmsVersion;
  external Pointer UmsContext;
  external Pointer UmsCompletionList;
}

class WOW64_ARCHITECTURE_INFORMATION extends Struct {
  @Uint32() external int _bitfield;
}

class PROCESS_DYNAMIC_EH_CONTINUATION_TARGET extends Struct {
  @IntPtr() external int TargetAddress;
  @IntPtr() external int Flags;
}

class PROCESS_DYNAMIC_EH_CONTINUATION_TARGETS_INFORMATION extends Struct {
  @Uint16() external int NumberOfTargets;
  @Uint16() external int Reserved;
  @Uint32() external int Reserved2;
  external Pointer<PROCESS_DYNAMIC_EH_CONTINUATION_TARGET> Targets;
}

class QUOTA_LIMITS_EX extends Struct {
  @IntPtr() external int PagedPoolLimit;
  @IntPtr() external int NonPagedPoolLimit;
  @IntPtr() external int MinimumWorkingSetSize;
  @IntPtr() external int MaximumWorkingSetSize;
  @IntPtr() external int PagefileLimit;
  @Int64() external int TimeLimit;
  @IntPtr() external int WorkingSetLimit;
  @IntPtr() external int Reserved2;
  @IntPtr() external int Reserved3;
  @IntPtr() external int Reserved4;
  @Uint32() external int Flags;
  external RATE_QUOTA_LIMIT CpuRateLimit;
}

class IO_COUNTERS extends Struct {
  @Uint64() external int ReadOperationCount;
  @Uint64() external int WriteOperationCount;
  @Uint64() external int OtherOperationCount;
  @Uint64() external int ReadTransferCount;
  @Uint64() external int WriteTransferCount;
  @Uint64() external int OtherTransferCount;
}

class JOBOBJECT_BASIC_ACCOUNTING_INFORMATION extends Struct {
  @Int64() external int TotalUserTime;
  @Int64() external int TotalKernelTime;
  @Int64() external int ThisPeriodTotalUserTime;
  @Int64() external int ThisPeriodTotalKernelTime;
  @Uint32() external int TotalPageFaultCount;
  @Uint32() external int TotalProcesses;
  @Uint32() external int ActiveProcesses;
  @Uint32() external int TotalTerminatedProcesses;
}

class JOBOBJECT_BASIC_LIMIT_INFORMATION extends Struct {
  @Int64() external int PerProcessUserTimeLimit;
  @Int64() external int PerJobUserTimeLimit;
  @Uint32() external int LimitFlags;
  @IntPtr() external int MinimumWorkingSetSize;
  @IntPtr() external int MaximumWorkingSetSize;
  @Uint32() external int ActiveProcessLimit;
  @IntPtr() external int Affinity;
  @Uint32() external int PriorityClass;
  @Uint32() external int SchedulingClass;
}

class JOBOBJECT_EXTENDED_LIMIT_INFORMATION extends Struct {
  external JOBOBJECT_BASIC_LIMIT_INFORMATION BasicLimitInformation;
  external IO_COUNTERS IoInfo;
  @IntPtr() external int ProcessMemoryLimit;
  @IntPtr() external int JobMemoryLimit;
  @IntPtr() external int PeakProcessMemoryUsed;
  @IntPtr() external int PeakJobMemoryUsed;
}

class JOBOBJECT_BASIC_PROCESS_ID_LIST extends Struct {
  @Uint32() external int NumberOfAssignedProcesses;
  @Uint32() external int NumberOfProcessIdsInList;
  external __uintptr__ ProcessIdList;
}

class JOBOBJECT_BASIC_UI_RESTRICTIONS extends Struct {
  @Uint32() external int UIRestrictionsClass;
}

class JOBOBJECT_SECURITY_LIMIT_INFORMATION extends Struct {
  @Uint32() external int SecurityLimitFlags;
  @IntPtr() external int JobToken;
  external Pointer<TOKEN_GROUPS> SidsToDisable;
  external Pointer<TOKEN_PRIVILEGES> PrivilegesToDelete;
  external Pointer<TOKEN_GROUPS> RestrictedSids;
}

class JOBOBJECT_END_OF_JOB_TIME_INFORMATION extends Struct {
  @Uint32() external int EndOfJobTimeAction;
}

class JOBOBJECT_ASSOCIATE_COMPLETION_PORT extends Struct {
  external Pointer CompletionKey;
  @IntPtr() external int CompletionPort;
}

class JOBOBJECT_BASIC_AND_IO_ACCOUNTING_INFORMATION extends Struct {
  external JOBOBJECT_BASIC_ACCOUNTING_INFORMATION BasicInfo;
  external IO_COUNTERS IoInfo;
}

class JOBOBJECT_JOBSET_INFORMATION extends Struct {
  @Uint32() external int MemberLevel;
}

class JOBOBJECT_NOTIFICATION_LIMIT_INFORMATION extends Struct {
  @Uint64() external int IoReadBytesLimit;
  @Uint64() external int IoWriteBytesLimit;
  @Int64() external int PerJobUserTimeLimit;
  @Uint64() external int JobMemoryLimit;
  @Uint32() external int RateControlTolerance;
  @Uint32() external int RateControlToleranceInterval;
  @Uint32() external int LimitFlags;
}

class JOBOBJECT_LIMIT_VIOLATION_INFORMATION extends Struct {
  @Uint32() external int LimitFlags;
  @Uint32() external int ViolationLimitFlags;
  @Uint64() external int IoReadBytes;
  @Uint64() external int IoReadBytesLimit;
  @Uint64() external int IoWriteBytes;
  @Uint64() external int IoWriteBytesLimit;
  @Int64() external int PerJobUserTime;
  @Int64() external int PerJobUserTimeLimit;
  @Uint64() external int JobMemory;
  @Uint64() external int JobMemoryLimit;
  @Uint32() external int RateControlTolerance;
  @Uint32() external int RateControlToleranceLimit;
}

class JOBOBJECT_NET_RATE_CONTROL_INFORMATION extends Struct {
  @Uint64() external int MaxBandwidth;
  @Uint32() external int ControlFlags;
  @Uint8() external int DscpTag;
}

class JOBOBJECT_IO_RATE_CONTROL_INFORMATION_NATIVE extends Struct {
  @Int64() external int MaxIops;
  @Int64() external int MaxBandwidth;
  @Int64() external int ReservationIops;
  external Pointer<Utf16> VolumeName;
  @Uint32() external int BaseIoSize;
  @Uint32() external int ControlFlags;
  @Uint16() external int VolumeNameLength;
}

class JOBOBJECT_IO_RATE_CONTROL_INFORMATION_NATIVE_V2 extends Struct {
  @Int64() external int MaxIops;
  @Int64() external int MaxBandwidth;
  @Int64() external int ReservationIops;
  external Pointer<Utf16> VolumeName;
  @Uint32() external int BaseIoSize;
  @Uint32() external int ControlFlags;
  @Uint16() external int VolumeNameLength;
  @Int64() external int CriticalReservationIops;
  @Int64() external int ReservationBandwidth;
  @Int64() external int CriticalReservationBandwidth;
  @Int64() external int MaxTimePercent;
  @Int64() external int ReservationTimePercent;
  @Int64() external int CriticalReservationTimePercent;
}

class JOBOBJECT_IO_RATE_CONTROL_INFORMATION_NATIVE_V3 extends Struct {
  @Int64() external int MaxIops;
  @Int64() external int MaxBandwidth;
  @Int64() external int ReservationIops;
  external Pointer<Utf16> VolumeName;
  @Uint32() external int BaseIoSize;
  @Uint32() external int ControlFlags;
  @Uint16() external int VolumeNameLength;
  @Int64() external int CriticalReservationIops;
  @Int64() external int ReservationBandwidth;
  @Int64() external int CriticalReservationBandwidth;
  @Int64() external int MaxTimePercent;
  @Int64() external int ReservationTimePercent;
  @Int64() external int CriticalReservationTimePercent;
  @Int64() external int SoftMaxIops;
  @Int64() external int SoftMaxBandwidth;
  @Int64() external int SoftMaxTimePercent;
  @Int64() external int LimitExcessNotifyIops;
  @Int64() external int LimitExcessNotifyBandwidth;
  @Int64() external int LimitExcessNotifyTimePercent;
}

class JOBOBJECT_IO_ATTRIBUTION_STATS extends Struct {
  @IntPtr() external int IoCount;
  @Uint64() external int TotalNonOverlappedQueueTime;
  @Uint64() external int TotalNonOverlappedServiceTime;
  @Uint64() external int TotalSize;
}

class JOBOBJECT_IO_ATTRIBUTION_INFORMATION extends Struct {
  @Uint32() external int ControlFlags;
  external JOBOBJECT_IO_ATTRIBUTION_STATS ReadStats;
  external JOBOBJECT_IO_ATTRIBUTION_STATS WriteStats;
}

class SILOOBJECT_BASIC_INFORMATION extends Struct {
  @Uint32() external int SiloId;
  @Uint32() external int SiloParentId;
  @Uint32() external int NumberOfProcesses;
  @Uint8() external int IsInServerSilo;
  external __ubyte__ Reserved;
}

class SERVERSILO_BASIC_INFORMATION extends Struct {
  @Uint32() external int ServiceSessionId;
  @Uint32() external int State;
  @Uint32() external int ExitStatus;
  @Uint8() external int IsDownlevelContainer;
  external Pointer ApiSetSchema;
  external Pointer HostApiSetSchema;
}

class CACHE_DESCRIPTOR extends Struct {
  @Uint8() external int Level;
  @Uint8() external int Associativity;
  @Uint16() external int LineSize;
  @Uint32() external int Size;
  @Uint32() external int Type;
}

class PROCESSOR_RELATIONSHIP extends Struct {
  @Uint8() external int Flags;
  @Uint8() external int EfficiencyClass;
  external __ubyte__ Reserved;
  @Uint16() external int GroupCount;
  external GROUP_AFFINITY GroupMask;
}

class NUMA_NODE_RELATIONSHIP extends Struct {
  @Uint32() external int NodeNumber;
  external __ubyte__ Reserved;
  external GROUP_AFFINITY GroupMask;
}

class CACHE_RELATIONSHIP extends Struct {
  @Uint8() external int Level;
  @Uint8() external int Associativity;
  @Uint16() external int LineSize;
  @Uint32() external int CacheSize;
  @Uint32() external int Type;
  external __ubyte__ Reserved;
  external GROUP_AFFINITY GroupMask;
}

class PROCESSOR_GROUP_INFO extends Struct {
  @Uint8() external int MaximumProcessorCount;
  @Uint8() external int ActiveProcessorCount;
  external __ubyte__ Reserved;
  @IntPtr() external int ActiveProcessorMask;
}

class GROUP_RELATIONSHIP extends Struct {
  @Uint16() external int MaximumGroupCount;
  @Uint16() external int ActiveGroupCount;
  external __ubyte__ Reserved;
  external PROCESSOR_GROUP_INFO GroupInfo;
}

class SYSTEM_PROCESSOR_CYCLE_TIME_INFORMATION extends Struct {
  @Uint64() external int CycleTime;
}

class XSTATE_FEATURE extends Struct {
  @Uint32() external int Offset;
  @Uint32() external int Size;
}

class MEMORY_BASIC_INFORMATION extends Struct {
  external Pointer BaseAddress;
  external Pointer AllocationBase;
  @Uint32() external int AllocationProtect;
  @IntPtr() external int RegionSize;
  @Uint32() external int State;
  @Uint32() external int Protect;
  @Uint32() external int Type;
}

class MEMORY_BASIC_INFORMATION32 extends Struct {
  @Uint32() external int BaseAddress;
  @Uint32() external int AllocationBase;
  @Uint32() external int AllocationProtect;
  @Uint32() external int RegionSize;
  @Uint32() external int State;
  @Uint32() external int Protect;
  @Uint32() external int Type;
}

class MEMORY_BASIC_INFORMATION64 extends Struct {
  @Uint64() external int BaseAddress;
  @Uint64() external int AllocationBase;
  @Uint32() external int AllocationProtect;
  @Uint32() external int __alignment1;
  @Uint64() external int RegionSize;
  @Uint32() external int State;
  @Uint32() external int Protect;
  @Uint32() external int Type;
  @Uint32() external int __alignment2;
}

class CFG_CALL_TARGET_INFO extends Struct {
  @IntPtr() external int Offset;
  @IntPtr() external int Flags;
}

class MEM_ADDRESS_REQUIREMENTS extends Struct {
  external Pointer LowestStartingAddress;
  external Pointer HighestEndingAddress;
  @IntPtr() external int Alignment;
}

class ENCLAVE_CREATE_INFO_SGX extends Struct {
  external __ubyte__ Secs;
}

class ENCLAVE_INIT_INFO_SGX extends Struct {
  external __ubyte__ SigStruct;
  external __ubyte__ Reserved1;
  external __ubyte__ EInitToken;
  external __ubyte__ Reserved2;
}

class ENCLAVE_CREATE_INFO_VBS extends Struct {
  @Uint32() external int Flags;
  external __ubyte__ OwnerID;
}

class ENCLAVE_CREATE_INFO_VBS_BASIC extends Struct {
  @Uint32() external int Flags;
  external __ubyte__ OwnerID;
}

class ENCLAVE_LOAD_DATA_VBS_BASIC extends Struct {
  @Uint32() external int PageType;
}

class ENCLAVE_INIT_INFO_VBS extends Struct {
  @Uint32() external int Length;
  @Uint32() external int ThreadCount;
}

class FILE_SEGMENT_ELEMENT extends Struct {
  external Pointer Buffer;
  @Uint64() external int Alignment;
}

class SCRUB_DATA_INPUT extends Struct {
  @Uint32() external int Size;
  @Uint32() external int Flags;
  @Uint32() external int MaximumIos;
  external __uint__ ObjectId;
  external __uint__ Reserved;
  external __ubyte__ ResumeContext;
}

class SCRUB_PARITY_EXTENT extends Struct {
  @Int64() external int Offset;
  @Uint64() external int Length;
}

class SCRUB_PARITY_EXTENT_DATA extends Struct {
  @Uint16() external int Size;
  @Uint16() external int Flags;
  @Uint16() external int NumberOfParityExtents;
  @Uint16() external int MaximumNumberOfParityExtents;
  external SCRUB_PARITY_EXTENT ParityExtents;
}

class SCRUB_DATA_OUTPUT extends Struct {
  @Uint32() external int Size;
  @Uint32() external int Flags;
  @Uint32() external int Status;
  @Uint64() external int ErrorFileOffset;
  @Uint64() external int ErrorLength;
  @Uint64() external int NumberOfBytesRepaired;
  @Uint64() external int NumberOfBytesFailed;
  @Uint64() external int InternalFileReference;
  @Uint16() external int ResumeContextLength;
  @Uint16() external int ParityExtentDataOffset;
  external __uint__ Reserved;
  @Uint64() external int NumberOfMetadataBytesProcessed;
  @Uint64() external int NumberOfDataBytesProcessed;
  @Uint64() external int TotalNumberOfMetadataBytesInUse;
  @Uint64() external int TotalNumberOfDataBytesInUse;
  external __ubyte__ ResumeContext;
}

class SHARED_VIRTUAL_DISK_SUPPORT extends Struct {
  @Uint32() external int SharedVirtualDiskSupport;
  @Uint32() external int HandleState;
}

class REARRANGE_FILE_DATA extends Struct {
  @Uint64() external int SourceStartingOffset;
  @Uint64() external int TargetOffset;
  @IntPtr() external int SourceFileHandle;
  @Uint32() external int Length;
  @Uint32() external int Flags;
}

class SHUFFLE_FILE_DATA extends Struct {
  @Int64() external int StartingOffset;
  @Int64() external int Length;
  @Uint32() external int Flags;
}

class NETWORK_APP_INSTANCE_EA extends Struct {
  external GUID AppInstanceID;
  @Uint32() external int CsvFlags;
}

class CM_Power_Data_s extends Struct {
  @Uint32() external int PD_Size;
  @Uint32() external int PD_MostRecentPowerState;
  @Uint32() external int PD_Capabilities;
  @Uint32() external int PD_D1Latency;
  @Uint32() external int PD_D2Latency;
  @Uint32() external int PD_D3Latency;
  @Uint32() external int PD_PowerStateMapping;
  @Uint32() external int PD_DeepestSystemWake;
}

class POWER_USER_PRESENCE extends Struct {
  @Uint32() external int UserPresence;
}

class POWER_SESSION_CONNECT extends Struct {
  @Uint8() external int Connected;
  @Uint8() external int Console;
}

class POWER_SESSION_TIMEOUTS extends Struct {
  @Uint32() external int InputTimeout;
  @Uint32() external int DisplayTimeout;
}

class POWER_SESSION_RIT_STATE extends Struct {
  @Uint8() external int Active;
  @Uint32() external int LastInputTime;
}

class POWER_SESSION_WINLOGON extends Struct {
  @Uint32() external int SessionId;
  @Uint8() external int Console;
  @Uint8() external int Locked;
}

class POWER_SESSION_ALLOW_EXTERNAL_DMA_DEVICES extends Struct {
  @Uint8() external int IsAllowed;
}

class POWER_IDLE_RESILIENCY extends Struct {
  @Uint32() external int CoalescingTimeout;
  @Uint32() external int IdleResiliencyPeriod;
}

class POWER_MONITOR_INVOCATION extends Struct {
  @Uint8() external int Console;
  @Uint32() external int RequestReason;
}

class RESUME_PERFORMANCE extends Struct {
  @Uint32() external int PostTimeMs;
  @Uint64() external int TotalResumeTimeMs;
  @Uint64() external int ResumeCompleteTimestamp;
}

class SET_POWER_SETTING_VALUE extends Struct {
  @Uint32() external int Version;
  external GUID Guid;
  @Uint32() external int PowerCondition;
  @Uint32() external int DataLength;
  external __ubyte__ Data;
}

class NOTIFY_USER_POWER_SETTING extends Struct {
  external GUID Guid;
}

class APPLICATIONLAUNCH_SETTING_VALUE extends Struct {
  @Int64() external int ActivationTime;
  @Uint32() external int Flags;
  @Uint32() external int ButtonInstanceID;
}

class POWER_PLATFORM_INFORMATION extends Struct {
  @Uint8() external int AoAc;
}

class BATTERY_REPORTING_SCALE extends Struct {
  @Uint32() external int Granularity;
  @Uint32() external int Capacity;
}

class PPM_WMI_LEGACY_PERFSTATE extends Struct {
  @Uint32() external int Frequency;
  @Uint32() external int Flags;
  @Uint32() external int PercentFrequency;
}

class PPM_WMI_IDLE_STATE extends Struct {
  @Uint32() external int Latency;
  @Uint32() external int Power;
  @Uint32() external int TimeCheck;
  @Uint8() external int PromotePercent;
  @Uint8() external int DemotePercent;
  @Uint8() external int StateType;
  @Uint8() external int Reserved;
  @Uint32() external int StateFlags;
  @Uint32() external int Context;
  @Uint32() external int IdleHandler;
  @Uint32() external int Reserved1;
}

class PPM_WMI_IDLE_STATES extends Struct {
  @Uint32() external int Type;
  @Uint32() external int Count;
  @Uint32() external int TargetState;
  @Uint32() external int OldState;
  @Uint64() external int TargetProcessors;
  external PPM_WMI_IDLE_STATE State;
}

class PPM_WMI_IDLE_STATES_EX extends Struct {
  @Uint32() external int Type;
  @Uint32() external int Count;
  @Uint32() external int TargetState;
  @Uint32() external int OldState;
  external Pointer TargetProcessors;
  external PPM_WMI_IDLE_STATE State;
}

class PPM_WMI_PERF_STATE extends Struct {
  @Uint32() external int Frequency;
  @Uint32() external int Power;
  @Uint8() external int PercentFrequency;
  @Uint8() external int IncreaseLevel;
  @Uint8() external int DecreaseLevel;
  @Uint8() external int Type;
  @Uint32() external int IncreaseTime;
  @Uint32() external int DecreaseTime;
  @Uint64() external int Control;
  @Uint64() external int Status;
  @Uint32() external int HitCount;
  @Uint32() external int Reserved1;
  @Uint64() external int Reserved2;
  @Uint64() external int Reserved3;
}

class PPM_WMI_PERF_STATES extends Struct {
  @Uint32() external int Count;
  @Uint32() external int MaxFrequency;
  @Uint32() external int CurrentState;
  @Uint32() external int MaxPerfState;
  @Uint32() external int MinPerfState;
  @Uint32() external int LowestPerfState;
  @Uint32() external int ThermalConstraint;
  @Uint8() external int BusyAdjThreshold;
  @Uint8() external int PolicyType;
  @Uint8() external int Type;
  @Uint8() external int Reserved;
  @Uint32() external int TimerInterval;
  @Uint64() external int TargetProcessors;
  @Uint32() external int PStateHandler;
  @Uint32() external int PStateContext;
  @Uint32() external int TStateHandler;
  @Uint32() external int TStateContext;
  @Uint32() external int FeedbackHandler;
  @Uint32() external int Reserved1;
  @Uint64() external int Reserved2;
  external PPM_WMI_PERF_STATE State;
}

class PPM_WMI_PERF_STATES_EX extends Struct {
  @Uint32() external int Count;
  @Uint32() external int MaxFrequency;
  @Uint32() external int CurrentState;
  @Uint32() external int MaxPerfState;
  @Uint32() external int MinPerfState;
  @Uint32() external int LowestPerfState;
  @Uint32() external int ThermalConstraint;
  @Uint8() external int BusyAdjThreshold;
  @Uint8() external int PolicyType;
  @Uint8() external int Type;
  @Uint8() external int Reserved;
  @Uint32() external int TimerInterval;
  external Pointer TargetProcessors;
  @Uint32() external int PStateHandler;
  @Uint32() external int PStateContext;
  @Uint32() external int TStateHandler;
  @Uint32() external int TStateContext;
  @Uint32() external int FeedbackHandler;
  @Uint32() external int Reserved1;
  @Uint64() external int Reserved2;
  external PPM_WMI_PERF_STATE State;
}

class PPM_IDLE_STATE_ACCOUNTING extends Struct {
  @Uint32() external int IdleTransitions;
  @Uint32() external int FailedTransitions;
  @Uint32() external int InvalidBucketIndex;
  @Uint64() external int TotalTime;
  external __uint__ IdleTimeBuckets;
}

class PPM_IDLE_ACCOUNTING extends Struct {
  @Uint32() external int StateCount;
  @Uint32() external int TotalTransitions;
  @Uint32() external int ResetCount;
  @Uint64() external int StartTime;
  external PPM_IDLE_STATE_ACCOUNTING State;
}

class PPM_IDLE_STATE_BUCKET_EX extends Struct {
  @Uint64() external int TotalTimeUs;
  @Uint32() external int MinTimeUs;
  @Uint32() external int MaxTimeUs;
  @Uint32() external int Count;
}

class PPM_IDLE_STATE_ACCOUNTING_EX extends Struct {
  @Uint64() external int TotalTime;
  @Uint32() external int IdleTransitions;
  @Uint32() external int FailedTransitions;
  @Uint32() external int InvalidBucketIndex;
  @Uint32() external int MinTimeUs;
  @Uint32() external int MaxTimeUs;
  @Uint32() external int CancelledTransitions;
  external PPM_IDLE_STATE_BUCKET_EX IdleTimeBuckets;
}

class PPM_IDLE_ACCOUNTING_EX extends Struct {
  @Uint32() external int StateCount;
  @Uint32() external int TotalTransitions;
  @Uint32() external int ResetCount;
  @Uint32() external int AbortCount;
  @Uint64() external int StartTime;
  external PPM_IDLE_STATE_ACCOUNTING_EX State;
}

class PPM_PERFSTATE_EVENT extends Struct {
  @Uint32() external int State;
  @Uint32() external int Status;
  @Uint32() external int Latency;
  @Uint32() external int Speed;
  @Uint32() external int Processor;
}

class PPM_PERFSTATE_DOMAIN_EVENT extends Struct {
  @Uint32() external int State;
  @Uint32() external int Latency;
  @Uint32() external int Speed;
  @Uint64() external int Processors;
}

class PPM_IDLESTATE_EVENT extends Struct {
  @Uint32() external int NewState;
  @Uint32() external int OldState;
  @Uint64() external int Processors;
}

class PPM_THERMALCHANGE_EVENT extends Struct {
  @Uint32() external int ThermalConstraint;
  @Uint64() external int Processors;
}

class PPM_THERMAL_POLICY_EVENT extends Struct {
  @Uint8() external int Mode;
  @Uint64() external int Processors;
}

class POWER_ACTION_POLICY extends Struct {
  @Uint32() external int Action;
  @Uint32() external int Flags;
  @Uint32() external int EventCode;
}

class SYSTEM_POWER_LEVEL extends Struct {
  @Uint8() external int Enable;
  external __ubyte__ Spare;
  @Uint32() external int BatteryLevel;
  external POWER_ACTION_POLICY PowerPolicy;
  @Uint32() external int MinSystemState;
}

class SYSTEM_POWER_POLICY extends Struct {
  @Uint32() external int Revision;
  external POWER_ACTION_POLICY PowerButton;
  external POWER_ACTION_POLICY SleepButton;
  external POWER_ACTION_POLICY LidClose;
  @Uint32() external int LidOpenWake;
  @Uint32() external int Reserved;
  external POWER_ACTION_POLICY Idle;
  @Uint32() external int IdleTimeout;
  @Uint8() external int IdleSensitivity;
  @Uint8() external int DynamicThrottle;
  external __ubyte__ Spare2;
  @Uint32() external int MinSleep;
  @Uint32() external int MaxSleep;
  @Uint32() external int ReducedLatencySleep;
  @Uint32() external int WinLogonFlags;
  @Uint32() external int Spare3;
  @Uint32() external int DozeS4Timeout;
  @Uint32() external int BroadcastCapacityResolution;
  external SYSTEM_POWER_LEVEL DischargePolicy;
  @Uint32() external int VideoTimeout;
  @Uint8() external int VideoDimDisplay;
  external __uint__ VideoReserved;
  @Uint32() external int SpindownTimeout;
  @Uint8() external int OptimizeForPower;
  @Uint8() external int FanThrottleTolerance;
  @Uint8() external int ForcedThrottle;
  @Uint8() external int MinThrottle;
  external POWER_ACTION_POLICY OverThrottled;
}

class PROCESSOR_IDLESTATE_INFO extends Struct {
  @Uint32() external int TimeCheck;
  @Uint8() external int DemotePercent;
  @Uint8() external int PromotePercent;
  external __ubyte__ Spare;
}

class PROCESSOR_POWER_POLICY_INFO extends Struct {
  @Uint32() external int TimeCheck;
  @Uint32() external int DemoteLimit;
  @Uint32() external int PromoteLimit;
  @Uint8() external int DemotePercent;
  @Uint8() external int PromotePercent;
  external __ubyte__ Spare;
  @Uint32() external int _bitfield;
}

class PROCESSOR_POWER_POLICY extends Struct {
  @Uint32() external int Revision;
  @Uint8() external int DynamicThrottle;
  external __ubyte__ Spare;
  @Uint32() external int _bitfield;
  @Uint32() external int PolicyCount;
  external PROCESSOR_POWER_POLICY_INFO Policy;
}

class ADMINISTRATOR_POWER_POLICY extends Struct {
  @Uint32() external int MinSleep;
  @Uint32() external int MaxSleep;
  @Uint32() external int MinVideoTimeout;
  @Uint32() external int MaxVideoTimeout;
  @Uint32() external int MinSpindownTimeout;
  @Uint32() external int MaxSpindownTimeout;
}

class HIBERFILE_BUCKET extends Struct {
  @Uint64() external int MaxPhysicalMemory;
  external __uint__ PhysicalMemoryPercent;
}

class SYSTEM_POWER_CAPABILITIES extends Struct {
  @Uint8() external int PowerButtonPresent;
  @Uint8() external int SleepButtonPresent;
  @Uint8() external int LidPresent;
  @Uint8() external int SystemS1;
  @Uint8() external int SystemS2;
  @Uint8() external int SystemS3;
  @Uint8() external int SystemS4;
  @Uint8() external int SystemS5;
  @Uint8() external int HiberFilePresent;
  @Uint8() external int FullWake;
  @Uint8() external int VideoDimPresent;
  @Uint8() external int ApmPresent;
  @Uint8() external int UpsPresent;
  @Uint8() external int ThermalControl;
  @Uint8() external int ProcessorThrottle;
  @Uint8() external int ProcessorMinThrottle;
  @Uint8() external int ProcessorMaxThrottle;
  @Uint8() external int FastSystemS4;
  @Uint8() external int Hiberboot;
  @Uint8() external int WakeAlarmPresent;
  @Uint8() external int AoAc;
  @Uint8() external int DiskSpinDown;
  @Uint8() external int HiberFileType;
  @Uint8() external int AoAcConnectivitySupported;
  external __ubyte__ spare3;
  @Uint8() external int SystemBatteriesPresent;
  @Uint8() external int BatteriesAreShortTerm;
  external BATTERY_REPORTING_SCALE BatteryScale;
  @Uint32() external int AcOnLineWake;
  @Uint32() external int SoftLidWake;
  @Uint32() external int RtcWake;
  @Uint32() external int MinDeviceWakeState;
  @Uint32() external int DefaultLowLatencyWake;
}

class SYSTEM_BATTERY_STATE extends Struct {
  @Uint8() external int AcOnLine;
  @Uint8() external int BatteryPresent;
  @Uint8() external int Charging;
  @Uint8() external int Discharging;
  external __ubyte__ Spare1;
  @Uint8() external int Tag;
  @Uint32() external int MaxCapacity;
  @Uint32() external int RemainingCapacity;
  @Uint32() external int Rate;
  @Uint32() external int EstimatedTime;
  @Uint32() external int DefaultAlert1;
  @Uint32() external int DefaultAlert2;
}

class IMAGE_DOS_HEADER extends Struct {
  @Uint16() external int e_magic;
  @Uint16() external int e_cblp;
  @Uint16() external int e_cp;
  @Uint16() external int e_crlc;
  @Uint16() external int e_cparhdr;
  @Uint16() external int e_minalloc;
  @Uint16() external int e_maxalloc;
  @Uint16() external int e_ss;
  @Uint16() external int e_sp;
  @Uint16() external int e_csum;
  @Uint16() external int e_ip;
  @Uint16() external int e_cs;
  @Uint16() external int e_lfarlc;
  @Uint16() external int e_ovno;
  external __ushort__ e_res;
  @Uint16() external int e_oemid;
  @Uint16() external int e_oeminfo;
  external __ushort__ e_res2;
  @Int32() external int e_lfanew;
}

class IMAGE_OS2_HEADER extends Struct {
  @Uint16() external int ne_magic;
  @Int8() external int ne_ver;
  @Int8() external int ne_rev;
  @Uint16() external int ne_enttab;
  @Uint16() external int ne_cbenttab;
  @Int32() external int ne_crc;
  @Uint16() external int ne_flags;
  @Uint16() external int ne_autodata;
  @Uint16() external int ne_heap;
  @Uint16() external int ne_stack;
  @Int32() external int ne_csip;
  @Int32() external int ne_sssp;
  @Uint16() external int ne_cseg;
  @Uint16() external int ne_cmod;
  @Uint16() external int ne_cbnrestab;
  @Uint16() external int ne_segtab;
  @Uint16() external int ne_rsrctab;
  @Uint16() external int ne_restab;
  @Uint16() external int ne_modtab;
  @Uint16() external int ne_imptab;
  @Int32() external int ne_nrestab;
  @Uint16() external int ne_cmovent;
  @Uint16() external int ne_align;
  @Uint16() external int ne_cres;
  @Uint8() external int ne_exetyp;
  @Uint8() external int ne_flagsothers;
  @Uint16() external int ne_pretthunks;
  @Uint16() external int ne_psegrefbytes;
  @Uint16() external int ne_swaparea;
  @Uint16() external int ne_expver;
}

class IMAGE_VXD_HEADER extends Struct {
  @Uint16() external int e32_magic;
  @Uint8() external int e32_border;
  @Uint8() external int e32_worder;
  @Uint32() external int e32_level;
  @Uint16() external int e32_cpu;
  @Uint16() external int e32_os;
  @Uint32() external int e32_ver;
  @Uint32() external int e32_mflags;
  @Uint32() external int e32_mpages;
  @Uint32() external int e32_startobj;
  @Uint32() external int e32_eip;
  @Uint32() external int e32_stackobj;
  @Uint32() external int e32_esp;
  @Uint32() external int e32_pagesize;
  @Uint32() external int e32_lastpagesize;
  @Uint32() external int e32_fixupsize;
  @Uint32() external int e32_fixupsum;
  @Uint32() external int e32_ldrsize;
  @Uint32() external int e32_ldrsum;
  @Uint32() external int e32_objtab;
  @Uint32() external int e32_objcnt;
  @Uint32() external int e32_objmap;
  @Uint32() external int e32_itermap;
  @Uint32() external int e32_rsrctab;
  @Uint32() external int e32_rsrccnt;
  @Uint32() external int e32_restab;
  @Uint32() external int e32_enttab;
  @Uint32() external int e32_dirtab;
  @Uint32() external int e32_dircnt;
  @Uint32() external int e32_fpagetab;
  @Uint32() external int e32_frectab;
  @Uint32() external int e32_impmod;
  @Uint32() external int e32_impmodcnt;
  @Uint32() external int e32_impproc;
  @Uint32() external int e32_pagesum;
  @Uint32() external int e32_datapage;
  @Uint32() external int e32_preload;
  @Uint32() external int e32_nrestab;
  @Uint32() external int e32_cbnrestab;
  @Uint32() external int e32_nressum;
  @Uint32() external int e32_autodata;
  @Uint32() external int e32_debuginfo;
  @Uint32() external int e32_debuglen;
  @Uint32() external int e32_instpreload;
  @Uint32() external int e32_instdemand;
  @Uint32() external int e32_heapsize;
  external __ubyte__ e32_res3;
  @Uint32() external int e32_winresoff;
  @Uint32() external int e32_winreslen;
  @Uint16() external int e32_devid;
  @Uint16() external int e32_ddkver;
}

class IMAGE_OPTIONAL_HEADER extends Struct {
  @Uint16() external int Magic;
  @Uint8() external int MajorLinkerVersion;
  @Uint8() external int MinorLinkerVersion;
  @Uint32() external int SizeOfCode;
  @Uint32() external int SizeOfInitializedData;
  @Uint32() external int SizeOfUninitializedData;
  @Uint32() external int AddressOfEntryPoint;
  @Uint32() external int BaseOfCode;
  @Uint32() external int BaseOfData;
  @Uint32() external int ImageBase;
  @Uint32() external int SectionAlignment;
  @Uint32() external int FileAlignment;
  @Uint16() external int MajorOperatingSystemVersion;
  @Uint16() external int MinorOperatingSystemVersion;
  @Uint16() external int MajorImageVersion;
  @Uint16() external int MinorImageVersion;
  @Uint16() external int MajorSubsystemVersion;
  @Uint16() external int MinorSubsystemVersion;
  @Uint32() external int Win32VersionValue;
  @Uint32() external int SizeOfImage;
  @Uint32() external int SizeOfHeaders;
  @Uint32() external int CheckSum;
  @Uint16() external int Subsystem;
  @Uint16() external int DllCharacteristics;
  @Uint32() external int SizeOfStackReserve;
  @Uint32() external int SizeOfStackCommit;
  @Uint32() external int SizeOfHeapReserve;
  @Uint32() external int SizeOfHeapCommit;
  @Uint32() external int LoaderFlags;
  @Uint32() external int NumberOfRvaAndSizes;
  external IMAGE_DATA_DIRECTORY DataDirectory;
}

class IMAGE_ROM_OPTIONAL_HEADER extends Struct {
  @Uint16() external int Magic;
  @Uint8() external int MajorLinkerVersion;
  @Uint8() external int MinorLinkerVersion;
  @Uint32() external int SizeOfCode;
  @Uint32() external int SizeOfInitializedData;
  @Uint32() external int SizeOfUninitializedData;
  @Uint32() external int AddressOfEntryPoint;
  @Uint32() external int BaseOfCode;
  @Uint32() external int BaseOfData;
  @Uint32() external int BaseOfBss;
  @Uint32() external int GprMask;
  external __uint__ CprMask;
  @Uint32() external int GpValue;
}

class IMAGE_NT_HEADERS extends Struct {
  @Uint32() external int Signature;
  external IMAGE_FILE_HEADER FileHeader;
  external IMAGE_OPTIONAL_HEADER OptionalHeader;
}

class IMAGE_ROM_HEADERS extends Struct {
  external IMAGE_FILE_HEADER FileHeader;
  external IMAGE_ROM_OPTIONAL_HEADER OptionalHeader;
}

class ANON_OBJECT_HEADER extends Struct {
  @Uint16() external int Sig1;
  @Uint16() external int Sig2;
  @Uint16() external int Version;
  @Uint16() external int Machine;
  @Uint32() external int TimeDateStamp;
  external GUID ClassID;
  @Uint32() external int SizeOfData;
}

class ANON_OBJECT_HEADER_V2 extends Struct {
  @Uint16() external int Sig1;
  @Uint16() external int Sig2;
  @Uint16() external int Version;
  @Uint16() external int Machine;
  @Uint32() external int TimeDateStamp;
  external GUID ClassID;
  @Uint32() external int SizeOfData;
  @Uint32() external int Flags;
  @Uint32() external int MetaDataSize;
  @Uint32() external int MetaDataOffset;
}

class ANON_OBJECT_HEADER_BIGOBJ extends Struct {
  @Uint16() external int Sig1;
  @Uint16() external int Sig2;
  @Uint16() external int Version;
  @Uint16() external int Machine;
  @Uint32() external int TimeDateStamp;
  external GUID ClassID;
  @Uint32() external int SizeOfData;
  @Uint32() external int Flags;
  @Uint32() external int MetaDataSize;
  @Uint32() external int MetaDataOffset;
  @Uint32() external int NumberOfSections;
  @Uint32() external int PointerToSymbolTable;
  @Uint32() external int NumberOfSymbols;
}

class IMAGE_AUX_SYMBOL_TOKEN_DEF extends Struct {
  @Uint8() external int bAuxType;
  @Uint8() external int bReserved;
  @Uint32() external int SymbolTableIndex;
  external __ubyte__ rgbReserved;
}

class IMAGE_BASE_RELOCATION extends Struct {
  @Uint32() external int VirtualAddress;
  @Uint32() external int SizeOfBlock;
}

class IMAGE_ARCHIVE_MEMBER_HEADER extends Struct {
  external __ubyte__ Name;
  external __ubyte__ Date;
  external __ubyte__ UserID;
  external __ubyte__ GroupID;
  external __ubyte__ Mode;
  external __ubyte__ Size;
  external __ubyte__ EndHeader;
}

class IMAGE_EXPORT_DIRECTORY extends Struct {
  @Uint32() external int Characteristics;
  @Uint32() external int TimeDateStamp;
  @Uint16() external int MajorVersion;
  @Uint16() external int MinorVersion;
  @Uint32() external int Name;
  @Uint32() external int Base;
  @Uint32() external int NumberOfFunctions;
  @Uint32() external int NumberOfNames;
  @Uint32() external int AddressOfFunctions;
  @Uint32() external int AddressOfNames;
  @Uint32() external int AddressOfNameOrdinals;
}

class IMAGE_IMPORT_BY_NAME extends Struct {
  @Uint16() external int Hint;
  external __byte__ Name;
}

class IMAGE_BOUND_IMPORT_DESCRIPTOR extends Struct {
  @Uint32() external int TimeDateStamp;
  @Uint16() external int OffsetModuleName;
  @Uint16() external int NumberOfModuleForwarderRefs;
}

class IMAGE_BOUND_FORWARDER_REF extends Struct {
  @Uint32() external int TimeDateStamp;
  @Uint16() external int OffsetModuleName;
  @Uint16() external int Reserved;
}

class IMAGE_RESOURCE_DIRECTORY extends Struct {
  @Uint32() external int Characteristics;
  @Uint32() external int TimeDateStamp;
  @Uint16() external int MajorVersion;
  @Uint16() external int MinorVersion;
  @Uint16() external int NumberOfNamedEntries;
  @Uint16() external int NumberOfIdEntries;
}

class IMAGE_RESOURCE_DIRECTORY_STRING extends Struct {
  @Uint16() external int Length;
  external __byte__ NameString;
}

class IMAGE_RESOURCE_DIR_STRING_U extends Struct {
  @Uint16() external int Length;
  external __ushort__ NameString;
}

class IMAGE_RESOURCE_DATA_ENTRY extends Struct {
  @Uint32() external int OffsetToData;
  @Uint32() external int Size;
  @Uint32() external int CodePage;
  @Uint32() external int Reserved;
}

class IMAGE_LOAD_CONFIG_CODE_INTEGRITY extends Struct {
  @Uint16() external int Flags;
  @Uint16() external int Catalog;
  @Uint32() external int CatalogOffset;
  @Uint32() external int Reserved;
}

class IMAGE_DYNAMIC_RELOCATION_TABLE extends Struct {
  @Uint32() external int Version;
  @Uint32() external int Size;
}

class IMAGE_DYNAMIC_RELOCATION32 extends Struct {
  @Uint32() external int Symbol;
  @Uint32() external int BaseRelocSize;
}

class IMAGE_DYNAMIC_RELOCATION64 extends Struct {
  @Uint64() external int Symbol;
  @Uint32() external int BaseRelocSize;
}

class IMAGE_DYNAMIC_RELOCATION32_V2 extends Struct {
  @Uint32() external int HeaderSize;
  @Uint32() external int FixupInfoSize;
  @Uint32() external int Symbol;
  @Uint32() external int SymbolGroup;
  @Uint32() external int Flags;
}

class IMAGE_DYNAMIC_RELOCATION64_V2 extends Struct {
  @Uint32() external int HeaderSize;
  @Uint32() external int FixupInfoSize;
  @Uint64() external int Symbol;
  @Uint32() external int SymbolGroup;
  @Uint32() external int Flags;
}

class IMAGE_PROLOGUE_DYNAMIC_RELOCATION_HEADER extends Struct {
  @Uint8() external int PrologueByteCount;
}

class IMAGE_EPILOGUE_DYNAMIC_RELOCATION_HEADER extends Struct {
  @Uint32() external int EpilogueCount;
  @Uint8() external int EpilogueByteCount;
  @Uint8() external int BranchDescriptorElementSize;
  @Uint16() external int BranchDescriptorCount;
}

class IMAGE_IMPORT_CONTROL_TRANSFER_DYNAMIC_RELOCATION extends Struct {
  @Uint32() external int _bitfield;
}

class IMAGE_INDIR_CONTROL_TRANSFER_DYNAMIC_RELOCATION extends Struct {
  @Uint16() external int _bitfield;
}

class IMAGE_SWITCHTABLE_BRANCH_DYNAMIC_RELOCATION extends Struct {
  @Uint16() external int _bitfield;
}

class IMAGE_HOT_PATCH_INFO extends Struct {
  @Uint32() external int Version;
  @Uint32() external int Size;
  @Uint32() external int SequenceNumber;
  @Uint32() external int BaseImageList;
  @Uint32() external int BaseImageCount;
  @Uint32() external int BufferOffset;
  @Uint32() external int ExtraPatchSize;
}

class IMAGE_HOT_PATCH_BASE extends Struct {
  @Uint32() external int SequenceNumber;
  @Uint32() external int Flags;
  @Uint32() external int OriginalTimeDateStamp;
  @Uint32() external int OriginalCheckSum;
  @Uint32() external int CodeIntegrityInfo;
  @Uint32() external int CodeIntegritySize;
  @Uint32() external int PatchTable;
  @Uint32() external int BufferOffset;
}

class IMAGE_HOT_PATCH_HASHES extends Struct {
  external __ubyte__ SHA256;
  external __ubyte__ SHA1;
}

class IMAGE_CE_RUNTIME_FUNCTION_ENTRY extends Struct {
  @Uint32() external int FuncStart;
  @Uint32() external int _bitfield;
}

class IMAGE_ALPHA64_RUNTIME_FUNCTION_ENTRY extends Struct {
  @Uint64() external int BeginAddress;
  @Uint64() external int EndAddress;
  @Uint64() external int ExceptionHandler;
  @Uint64() external int HandlerData;
  @Uint64() external int PrologEndAddress;
}

class IMAGE_ALPHA_RUNTIME_FUNCTION_ENTRY extends Struct {
  @Uint32() external int BeginAddress;
  @Uint32() external int EndAddress;
  @Uint32() external int ExceptionHandler;
  @Uint32() external int HandlerData;
  @Uint32() external int PrologEndAddress;
}

class IMAGE_ENCLAVE_CONFIG32 extends Struct {
  @Uint32() external int Size;
  @Uint32() external int MinimumRequiredConfigSize;
  @Uint32() external int PolicyFlags;
  @Uint32() external int NumberOfImports;
  @Uint32() external int ImportList;
  @Uint32() external int ImportEntrySize;
  external __ubyte__ FamilyID;
  external __ubyte__ ImageID;
  @Uint32() external int ImageVersion;
  @Uint32() external int SecurityVersion;
  @Uint32() external int EnclaveSize;
  @Uint32() external int NumberOfThreads;
  @Uint32() external int EnclaveFlags;
}

class IMAGE_ENCLAVE_CONFIG64 extends Struct {
  @Uint32() external int Size;
  @Uint32() external int MinimumRequiredConfigSize;
  @Uint32() external int PolicyFlags;
  @Uint32() external int NumberOfImports;
  @Uint32() external int ImportList;
  @Uint32() external int ImportEntrySize;
  external __ubyte__ FamilyID;
  external __ubyte__ ImageID;
  @Uint32() external int ImageVersion;
  @Uint32() external int SecurityVersion;
  @Uint64() external int EnclaveSize;
  @Uint32() external int NumberOfThreads;
  @Uint32() external int EnclaveFlags;
}

class IMAGE_ENCLAVE_IMPORT extends Struct {
  @Uint32() external int MatchType;
  @Uint32() external int MinimumSecurityVersion;
  external __ubyte__ UniqueOrAuthorID;
  external __ubyte__ FamilyID;
  external __ubyte__ ImageID;
  @Uint32() external int ImportName;
  @Uint32() external int Reserved;
}

class IMAGE_DEBUG_MISC extends Struct {
  @Uint32() external int DataType;
  @Uint32() external int Length;
  @Uint8() external int Unicode;
  external __ubyte__ Reserved;
  external __ubyte__ Data;
}

class IMAGE_SEPARATE_DEBUG_HEADER extends Struct {
  @Uint16() external int Signature;
  @Uint16() external int Flags;
  @Uint16() external int Machine;
  @Uint16() external int Characteristics;
  @Uint32() external int TimeDateStamp;
  @Uint32() external int CheckSum;
  @Uint32() external int ImageBase;
  @Uint32() external int SizeOfImage;
  @Uint32() external int NumberOfSections;
  @Uint32() external int ExportedNamesSize;
  @Uint32() external int DebugDirectorySize;
  @Uint32() external int SectionAlignment;
  external __uint__ Reserved;
}

class NON_PAGED_DEBUG_INFO extends Struct {
  @Uint16() external int Signature;
  @Uint16() external int Flags;
  @Uint32() external int Size;
  @Uint16() external int Machine;
  @Uint16() external int Characteristics;
  @Uint32() external int TimeDateStamp;
  @Uint32() external int CheckSum;
  @Uint32() external int SizeOfImage;
  @Uint64() external int ImageBase;
}

class IMAGE_ARCHITECTURE_HEADER extends Struct {
  @Uint32() external int _bitfield;
  @Uint32() external int FirstEntryRVA;
}

class IMAGE_ARCHITECTURE_ENTRY extends Struct {
  @Uint32() external int FixupInstRVA;
  @Uint32() external int NewInst;
}

class RTL_RUN_ONCE extends Struct {
  external Pointer Ptr;
}

class RTL_BARRIER extends Struct {
  @Uint32() external int Reserved1;
  @Uint32() external int Reserved2;
  external __uintptr__ Reserved3;
  @Uint32() external int Reserved4;
  @Uint32() external int Reserved5;
}

class NV_MEMORY_RANGE extends Struct {
  external Pointer BaseAddress;
  @IntPtr() external int Length;
}

class CORRELATION_VECTOR extends Struct {
  @Int8() external int Version;
  external __byte__ Vector;
}

class CUSTOM_SYSTEM_EVENT_TRIGGER_CONFIG extends Struct {
  @Uint32() external int Size;
  external Pointer<Utf16> TriggerId;
}

class IMAGE_POLICY_METADATA extends Struct {
  @Uint8() external int Version;
  external __ubyte__ Reserved0;
  @Uint64() external int ApplicationId;
  external IMAGE_POLICY_ENTRY Policies;
}

class RTL_CRITICAL_SECTION_DEBUG extends Struct {
  @Uint16() external int Type;
  @Uint16() external int CreatorBackTraceIndex;
  external Pointer<RTL_CRITICAL_SECTION> CriticalSection;
  external LIST_ENTRY ProcessLocksList;
  @Uint32() external int EntryCount;
  @Uint32() external int ContentionCount;
  @Uint32() external int Flags;
  @Uint16() external int CreatorBackTraceIndexHigh;
  @Uint16() external int SpareWORD;
}

class RTL_CRITICAL_SECTION extends Struct {
  external Pointer<RTL_CRITICAL_SECTION_DEBUG> DebugInfo;
  @Int32() external int LockCount;
  @Int32() external int RecursionCount;
  @IntPtr() external int OwningThread;
  @IntPtr() external int LockSemaphore;
  @IntPtr() external int SpinCount;
}

class RTL_SRWLOCK extends Struct {
  external Pointer Ptr;
}

class RTL_CONDITION_VARIABLE extends Struct {
  external Pointer Ptr;
}

class HEAP_OPTIMIZE_RESOURCES_INFORMATION extends Struct {
  @Uint32() external int Version;
  @Uint32() external int Flags;
}

class SUPPORTED_OS_INFO extends Struct {
  @Uint16() external int MajorVersion;
  @Uint16() external int MinorVersion;
}

class MAXVERSIONTESTED_INFO extends Struct {
  @Uint64() external int MaxVersionTested;
}

class EVENTLOGRECORD extends Struct {
  @Uint32() external int Length;
  @Uint32() external int Reserved;
  @Uint32() external int RecordNumber;
  @Uint32() external int TimeGenerated;
  @Uint32() external int TimeWritten;
  @Uint32() external int EventID;
  @Uint32() external int EventType;
  @Uint16() external int NumStrings;
  @Uint16() external int EventCategory;
  @Uint16() external int ReservedFlags;
  @Uint32() external int ClosingRecordNumber;
  @Uint32() external int StringOffset;
  @Uint32() external int UserSidLength;
  @Uint32() external int UserSidOffset;
  @Uint32() external int DataLength;
  @Uint32() external int DataOffset;
}

class EVENTSFORLOGFILE extends Struct {
  @Uint32() external int ulSize;
  external __ushort__ szLogicalLogFile;
  @Uint32() external int ulNumRecords;
  external EVENTLOGRECORD pEventLogRecords;
}

class PACKEDEVENTINFO extends Struct {
  @Uint32() external int ulSize;
  @Uint32() external int ulNumEventsForLogFile;
  @Uint32() external int ulOffsets;
}

class TAPE_ERASE extends Struct {
  @Uint32() external int Type;
  @Uint8() external int Immediate;
}

class TAPE_PREPARE extends Struct {
  @Uint32() external int Operation;
  @Uint8() external int Immediate;
}

class TAPE_WRITE_MARKS extends Struct {
  @Uint32() external int Type;
  @Uint32() external int Count;
  @Uint8() external int Immediate;
}

class TAPE_GET_POSITION extends Struct {
  @Uint32() external int Type;
  @Uint32() external int Partition;
  @Int64() external int Offset;
}

class TAPE_SET_POSITION extends Struct {
  @Uint32() external int Method;
  @Uint32() external int Partition;
  @Int64() external int Offset;
  @Uint8() external int Immediate;
}

class TAPE_GET_DRIVE_PARAMETERS extends Struct {
  @Uint8() external int ECC;
  @Uint8() external int Compression;
  @Uint8() external int DataPadding;
  @Uint8() external int ReportSetmarks;
  @Uint32() external int DefaultBlockSize;
  @Uint32() external int MaximumBlockSize;
  @Uint32() external int MinimumBlockSize;
  @Uint32() external int MaximumPartitionCount;
  @Uint32() external int FeaturesLow;
  @Uint32() external int FeaturesHigh;
  @Uint32() external int EOTWarningZoneSize;
}

class TAPE_SET_DRIVE_PARAMETERS extends Struct {
  @Uint8() external int ECC;
  @Uint8() external int Compression;
  @Uint8() external int DataPadding;
  @Uint8() external int ReportSetmarks;
  @Uint32() external int EOTWarningZoneSize;
}

class TAPE_GET_MEDIA_PARAMETERS extends Struct {
  @Int64() external int Capacity;
  @Int64() external int Remaining;
  @Uint32() external int BlockSize;
  @Uint32() external int PartitionCount;
  @Uint8() external int WriteProtected;
}

class TAPE_SET_MEDIA_PARAMETERS extends Struct {
  @Uint32() external int BlockSize;
}

class TAPE_CREATE_PARTITION extends Struct {
  @Uint32() external int Method;
  @Uint32() external int Count;
  @Uint32() external int Size;
}

class TAPE_WMI_OPERATIONS extends Struct {
  @Uint32() external int Method;
  @Uint32() external int DataBufferSize;
  external Pointer DataBuffer;
}

class TRANSACTION_BASIC_INFORMATION extends Struct {
  external GUID TransactionId;
  @Uint32() external int State;
  @Uint32() external int Outcome;
}

class TRANSACTIONMANAGER_BASIC_INFORMATION extends Struct {
  external GUID TmIdentity;
  @Int64() external int VirtualClock;
}

class TRANSACTIONMANAGER_LOG_INFORMATION extends Struct {
  external GUID LogIdentity;
}

class TRANSACTIONMANAGER_LOGPATH_INFORMATION extends Struct {
  @Uint32() external int LogPathLength;
  external __ushort__ LogPath;
}

class TRANSACTIONMANAGER_RECOVERY_INFORMATION extends Struct {
  @Uint64() external int LastRecoveredLsn;
}

class TRANSACTIONMANAGER_OLDEST_INFORMATION extends Struct {
  external GUID OldestTransactionGuid;
}

class TRANSACTION_PROPERTIES_INFORMATION extends Struct {
  @Uint32() external int IsolationLevel;
  @Uint32() external int IsolationFlags;
  @Int64() external int Timeout;
  @Uint32() external int Outcome;
  @Uint32() external int DescriptionLength;
  external __ushort__ Description;
}

class TRANSACTION_BIND_INFORMATION extends Struct {
  @IntPtr() external int TmHandle;
}

class TRANSACTION_ENLISTMENT_PAIR extends Struct {
  external GUID EnlistmentId;
  external GUID ResourceManagerId;
}

class TRANSACTION_ENLISTMENTS_INFORMATION extends Struct {
  @Uint32() external int NumberOfEnlistments;
  external TRANSACTION_ENLISTMENT_PAIR EnlistmentPair;
}

class TRANSACTION_SUPERIOR_ENLISTMENT_INFORMATION extends Struct {
  external TRANSACTION_ENLISTMENT_PAIR SuperiorEnlistmentPair;
}

class RESOURCEMANAGER_BASIC_INFORMATION extends Struct {
  external GUID ResourceManagerId;
  @Uint32() external int DescriptionLength;
  external __ushort__ Description;
}

class RESOURCEMANAGER_COMPLETION_INFORMATION extends Struct {
  @IntPtr() external int IoCompletionPortHandle;
  @IntPtr() external int CompletionKey;
}

class ENLISTMENT_BASIC_INFORMATION extends Struct {
  external GUID EnlistmentId;
  external GUID TransactionId;
  external GUID ResourceManagerId;
}

class ENLISTMENT_CRM_INFORMATION extends Struct {
  external GUID CrmTransactionManagerId;
  external GUID CrmResourceManagerId;
  external GUID CrmEnlistmentId;
}

class TRANSACTION_LIST_ENTRY extends Struct {
  external GUID UOW;
}

class TRANSACTION_LIST_INFORMATION extends Struct {
  @Uint32() external int NumberOfTransactions;
  external TRANSACTION_LIST_ENTRY TransactionInformation;
}

class KTMOBJECT_CURSOR extends Struct {
  external GUID LastQuery;
  @Uint32() external int ObjectIdCount;
  external GUID ObjectIds;
}

class TP_CALLBACK_INSTANCE extends Struct {
}

class TP_POOL extends Struct {
}

class TP_POOL_STACK_INFORMATION extends Struct {
  @IntPtr() external int StackReserve;
  @IntPtr() external int StackCommit;
}

class TP_CLEANUP_GROUP extends Struct {
}

class TP_WORK extends Struct {
}

class TP_TIMER extends Struct {
}

class TP_WAIT extends Struct {
}

class TP_IO extends Struct {
}

class TEB extends Struct {
}

class APP_LOCAL_DEVICE_ID extends Struct {
  external __ubyte__ value;
}

class JOBOBJECT_IO_RATE_CONTROL_INFORMATION extends Struct {
  @Int64() external int MaxIops;
  @Int64() external int MaxBandwidth;
  @Int64() external int ReservationIops;
  external Pointer<Utf16> VolumeName;
  @Uint32() external int BaseIoSize;
  @Uint32() external int ControlFlags;
}

class PROCESS_INFORMATION extends Struct {
  @IntPtr() external int hProcess;
  @IntPtr() external int hThread;
  @Uint32() external int dwProcessId;
  @Uint32() external int dwThreadId;
}

class STARTUPINFOA extends Struct {
  @Uint32() external int cb;
  external Pointer<Utf8> lpReserved;
  external Pointer<Utf8> lpDesktop;
  external Pointer<Utf8> lpTitle;
  @Uint32() external int dwX;
  @Uint32() external int dwY;
  @Uint32() external int dwXSize;
  @Uint32() external int dwYSize;
  @Uint32() external int dwXCountChars;
  @Uint32() external int dwYCountChars;
  @Uint32() external int dwFillAttribute;
  @Uint32() external int dwFlags;
  @Uint16() external int wShowWindow;
  @Uint16() external int cbReserved2;
  external Pointer<Uint8> lpReserved2;
  @IntPtr() external int hStdInput;
  @IntPtr() external int hStdOutput;
  @IntPtr() external int hStdError;
}

class STARTUPINFOW extends Struct {
  @Uint32() external int cb;
  external Pointer<Utf16> lpReserved;
  external Pointer<Utf16> lpDesktop;
  external Pointer<Utf16> lpTitle;
  @Uint32() external int dwX;
  @Uint32() external int dwY;
  @Uint32() external int dwXSize;
  @Uint32() external int dwYSize;
  @Uint32() external int dwXCountChars;
  @Uint32() external int dwYCountChars;
  @Uint32() external int dwFillAttribute;
  @Uint32() external int dwFlags;
  @Uint16() external int wShowWindow;
  @Uint16() external int cbReserved2;
  external Pointer<Uint8> lpReserved2;
  @IntPtr() external int hStdInput;
  @IntPtr() external int hStdOutput;
  @IntPtr() external int hStdError;
}

class MEMORY_PRIORITY_INFORMATION extends Struct {
  @Uint32() external int MemoryPriority;
}

class THREAD_POWER_THROTTLING_STATE extends Struct {
  @Uint32() external int Version;
  @Uint32() external int ControlMask;
  @Uint32() external int StateMask;
}

class APP_MEMORY_INFORMATION extends Struct {
  @Uint64() external int AvailableCommit;
  @Uint64() external int PrivateCommitUsage;
  @Uint64() external int PeakPrivateCommitUsage;
  @Uint64() external int TotalCommitUsage;
}

class PROCESS_MEMORY_EXHAUSTION_INFO extends Struct {
  @Uint16() external int Version;
  @Uint16() external int Reserved;
  @Uint32() external int Type;
  @IntPtr() external int Value;
}

class PROCESS_POWER_THROTTLING_STATE extends Struct {
  @Uint32() external int Version;
  @Uint32() external int ControlMask;
  @Uint32() external int StateMask;
}

class PROCESS_PROTECTION_LEVEL_INFORMATION extends Struct {
  @Uint32() external int ProtectionLevel;
}

class PROCESS_LEAP_SECOND_INFO extends Struct {
  @Uint32() external int Flags;
  @Uint32() external int Reserved;
}

class MEMORYSTATUSEX extends Struct {
  @Uint32() external int dwLength;
  @Uint32() external int dwMemoryLoad;
  @Uint64() external int ullTotalPhys;
  @Uint64() external int ullAvailPhys;
  @Uint64() external int ullTotalPageFile;
  @Uint64() external int ullAvailPageFile;
  @Uint64() external int ullTotalVirtual;
  @Uint64() external int ullAvailVirtual;
  @Uint64() external int ullAvailExtendedVirtual;
}

class COMMPROP extends Struct {
  @Uint16() external int wPacketLength;
  @Uint16() external int wPacketVersion;
  @Uint32() external int dwServiceMask;
  @Uint32() external int dwReserved1;
  @Uint32() external int dwMaxTxQueue;
  @Uint32() external int dwMaxRxQueue;
  @Uint32() external int dwMaxBaud;
  @Uint32() external int dwProvSubType;
  @Uint32() external int dwProvCapabilities;
  @Uint32() external int dwSettableParams;
  @Uint32() external int dwSettableBaud;
  @Uint16() external int wSettableData;
  @Uint32() external int wSettableStopParity;
  @Uint32() external int dwCurrentTxQueue;
  @Uint32() external int dwCurrentRxQueue;
  @Uint32() external int dwProvSpec1;
  @Uint32() external int dwProvSpec2;
  external __ushort__ wcProvChar;
}

class COMSTAT extends Struct {
  @Uint32() external int _bitfield;
  @Uint32() external int cbInQue;
  @Uint32() external int cbOutQue;
}

class DCB extends Struct {
  @Uint32() external int DCBlength;
  @Uint32() external int BaudRate;
  @Uint32() external int _bitfield;
  @Uint16() external int wReserved;
  @Uint16() external int XonLim;
  @Uint16() external int XoffLim;
  @Uint8() external int ByteSize;
  @Uint32() external int Parity;
  @Uint32() external int StopBits;
  @Int8() external int XonChar;
  @Int8() external int XoffChar;
  @Int8() external int ErrorChar;
  @Int8() external int EofChar;
  @Int8() external int EvtChar;
  @Uint16() external int wReserved1;
}

class COMMTIMEOUTS extends Struct {
  @Uint32() external int ReadIntervalTimeout;
  @Uint32() external int ReadTotalTimeoutMultiplier;
  @Uint32() external int ReadTotalTimeoutConstant;
  @Uint32() external int WriteTotalTimeoutMultiplier;
  @Uint32() external int WriteTotalTimeoutConstant;
}

class COMMCONFIG extends Struct {
  @Uint32() external int dwSize;
  @Uint16() external int wVersion;
  @Uint16() external int wReserved;
  external DCB dcb;
  @Uint32() external int dwProviderSubType;
  @Uint32() external int dwProviderOffset;
  @Uint32() external int dwProviderSize;
  external __ushort__ wcProviderData;
}

class MEMORYSTATUS extends Struct {
  @Uint32() external int dwLength;
  @Uint32() external int dwMemoryLoad;
  @IntPtr() external int dwTotalPhys;
  @IntPtr() external int dwAvailPhys;
  @IntPtr() external int dwTotalPageFile;
  @IntPtr() external int dwAvailPageFile;
  @IntPtr() external int dwTotalVirtual;
  @IntPtr() external int dwAvailVirtual;
}

class UMS_SCHEDULER_STARTUP_INFO extends Struct {
  @Uint32() external int UmsVersion;
  external Pointer CompletionList;
  external PRTL_UMS_SCHEDULER_ENTRY_POINT SchedulerProc;
  external Pointer SchedulerParam;
}

class WIN32_STREAM_ID extends Struct {
  @Uint32() external int dwStreamId;
  @Uint32() external int dwStreamAttributes;
  @Int64() external int Size;
  @Uint32() external int dwStreamNameSize;
  external __ushort__ cStreamName;
}

class STARTUPINFOEXA extends Struct {
  external STARTUPINFOA StartupInfo;
  @IntPtr() external int lpAttributeList;
}

class STARTUPINFOEXW extends Struct {
  external STARTUPINFOW StartupInfo;
  @IntPtr() external int lpAttributeList;
}

class EVENTLOG_FULL_INFORMATION extends Struct {
  @Uint32() external int dwFull;
}

class SYSTEM_POWER_STATUS extends Struct {
  @Uint8() external int ACLineStatus;
  @Uint8() external int BatteryFlag;
  @Uint8() external int BatteryLifePercent;
  @Uint8() external int SystemStatusFlag;
  @Uint32() external int BatteryLifeTime;
  @Uint32() external int BatteryFullLifeTime;
}

class PEB_LDR_DATA extends Struct {
  external __ubyte__ Reserved1;
  external ____ Reserved2;
  external LIST_ENTRY InMemoryOrderModuleList;
}

class RTL_USER_PROCESS_PARAMETERS extends Struct {
  external __ubyte__ Reserved1;
  external ____ Reserved2;
  external UNICODE_STRING ImagePathName;
  external UNICODE_STRING CommandLine;
}

class PEB extends Struct {
  external __ubyte__ Reserved1;
  @Uint8() external int BeingDebugged;
  external __ubyte__ Reserved2;
  external ____ Reserved3;
  external Pointer<PEB_LDR_DATA> Ldr;
  external Pointer<RTL_USER_PROCESS_PARAMETERS> ProcessParameters;
  external ____ Reserved4;
  external Pointer AtlThunkSListPtr;
  external Pointer Reserved5;
  @Uint32() external int Reserved6;
  external Pointer Reserved7;
  @Uint32() external int Reserved8;
  @Uint32() external int AtlThunkSListPtr32;
  external ____ Reserved9;
  external __ubyte__ Reserved10;
  external PPS_POST_PROCESS_INIT_ROUTINE PostProcessInitRoutine;
  external __ubyte__ Reserved11;
  external ____ Reserved12;
  @Uint32() external int SessionId;
}

class BOOL extends Struct {
  @Int32() external int Value;
}

class BoundaryDescriptorHandle extends Struct {
  @IntPtr() external int Value;
}

class DHPDEV extends Struct {
  @IntPtr() external int Value;
}

class DHSURF extends Struct {
  @IntPtr() external int Value;
}

class DPI_AWARENESS_CONTEXT extends Struct {
  @IntPtr() external int Value;
}

class EventLogHandle extends Struct {
  @IntPtr() external int Value;
}

class EventSourceHandle extends Struct {
  @IntPtr() external int Value;
}

class HANDLE extends Struct {
  @IntPtr() external int Value;
}

class HBM extends Struct {
  @IntPtr() external int Value;
}

class HDEV extends Struct {
  @IntPtr() external int Value;
}

class HDRVOBJ extends Struct {
  @IntPtr() external int Value;
}

class HeapHandle extends Struct {
  @IntPtr() external int Value;
}

class HFASTMUTEX extends Struct {
  @IntPtr() external int Value;
}

class HINSTANCE extends Struct {
  @IntPtr() external int Value;
}

class HLSURF extends Struct {
  @IntPtr() external int Value;
}

class HPCON extends Struct {
  @IntPtr() external int Value;
}

class HPOWERNOTIFY extends Struct {
  @IntPtr() external int Value;
}

class HRSRC extends Struct {
  @IntPtr() external int Value;
}

class HSEMAPHORE extends Struct {
  @IntPtr() external int Value;
}

class HSPRITE extends Struct {
  @IntPtr() external int Value;
}

class HSTR extends Struct {
  @IntPtr() external int Value;
}

class HSURF extends Struct {
  @IntPtr() external int Value;
}

class HUMPD extends Struct {
  @IntPtr() external int Value;
}

class LRESULT extends Struct {
  @Int32() external int Value;
}

class LSTATUS extends Struct {
  @Int32() external int Value;
}

class NamespaceHandle extends Struct {
  @IntPtr() external int Value;
}

class NTSTATUS extends Struct {
  @Int32() external int Value;
}

class PSTR extends Struct {
  external Pointer<Uint8> Value;
}

class PTP_POOL extends Struct {
  @IntPtr() external int Value;
}

class PWSTR extends Struct {
  external Pointer<Uint8> Value;
}

class TimerQueueHandle extends Struct {
  @IntPtr() external int Value;
}

class SECURITY_ATTRIBUTES extends Struct {
  @Uint32() external int nLength;
  external Pointer lpSecurityDescriptor;
  @Int32() external int bInheritHandle;
}

class HEAP_SUMMARY extends Struct {
  @Uint32() external int cb;
  @IntPtr() external int cbAllocated;
  @IntPtr() external int cbCommitted;
  @IntPtr() external int cbReserved;
  @IntPtr() external int cbMaxReserve;
}

class WIN32_MEMORY_RANGE_ENTRY extends Struct {
  external Pointer VirtualAddress;
  @IntPtr() external int NumberOfBytes;
}

class ENUMUILANG extends Struct {
  @Uint32() external int NumOfEnumUILang;
  @Uint32() external int SizeOfEnumUIBuffer;
  external Pointer<Uint16> pEnumUIBuffer;
}

class REDIRECTION_FUNCTION_DESCRIPTOR extends Struct {
  external Pointer<Utf8> DllName;
  external Pointer<Utf8> FunctionName;
  external Pointer RedirectionTarget;
}

class REDIRECTION_DESCRIPTOR extends Struct {
  @Uint32() external int Version;
  @Uint32() external int FunctionCount;
  external Pointer<REDIRECTION_FUNCTION_DESCRIPTOR> Redirections;
}

class COORD extends Struct {
  @Int16() external int X;
  @Int16() external int Y;
}

class SMALL_RECT extends Struct {
  @Int16() external int Left;
  @Int16() external int Top;
  @Int16() external int Right;
  @Int16() external int Bottom;
}

class MOUSE_EVENT_RECORD extends Struct {
  external COORD dwMousePosition;
  @Uint32() external int dwButtonState;
  @Uint32() external int dwControlKeyState;
  @Uint32() external int dwEventFlags;
}

class WINDOW_BUFFER_SIZE_RECORD extends Struct {
  external COORD dwSize;
}

class MENU_EVENT_RECORD extends Struct {
  @Uint32() external int dwCommandId;
}

class FOCUS_EVENT_RECORD extends Struct {
  @Int32() external int bSetFocus;
}

class CONSOLE_FONT_INFO extends Struct {
  @Uint32() external int nFont;
  external COORD dwFontSize;
}

class CONSOLE_READCONSOLE_CONTROL extends Struct {
  @Uint32() external int nLength;
  @Uint32() external int nInitialChars;
  @Uint32() external int dwCtrlWakeupMask;
  @Uint32() external int dwControlKeyState;
}

class CONSOLE_CURSOR_INFO extends Struct {
  @Uint32() external int dwSize;
  @Int32() external int bVisible;
}

class CONSOLE_SCREEN_BUFFER_INFO extends Struct {
  external COORD dwSize;
  external COORD dwCursorPosition;
  @Uint16() external int wAttributes;
  external SMALL_RECT srWindow;
  external COORD dwMaximumWindowSize;
}

class CONSOLE_SCREEN_BUFFER_INFOEX extends Struct {
  @Uint32() external int cbSize;
  external COORD dwSize;
  external COORD dwCursorPosition;
  @Uint16() external int wAttributes;
  external SMALL_RECT srWindow;
  external COORD dwMaximumWindowSize;
  @Uint16() external int wPopupAttributes;
  @Int32() external int bFullscreenSupported;
  external __uint__ ColorTable;
}

class CONSOLE_FONT_INFOEX extends Struct {
  @Uint32() external int cbSize;
  @Uint32() external int nFont;
  external COORD dwFontSize;
  @Uint32() external int FontFamily;
  @Uint32() external int FontWeight;
  external __ushort__ FaceName;
}

class CONSOLE_SELECTION_INFO extends Struct {
  @Uint32() external int dwFlags;
  external COORD dwSelectionAnchor;
  external SMALL_RECT srSelection;
}

class CONSOLE_HISTORY_INFO extends Struct {
  @Uint32() external int cbSize;
  @Uint32() external int HistoryBufferSize;
  @Uint32() external int NumberOfHistoryBuffers;
  @Uint32() external int dwFlags;
}

class RPC_IMPORT_CONTEXT_P extends Struct {
  external Pointer LookupContext;
  external Pointer ProposedHandle;
  external Pointer<RPC_BINDING_VECTOR> Bindings;
}

class RemHGLOBAL extends Struct {
  @Int32() external int fNullHGlobal;
  @Uint32() external int cbData;
  external __ubyte__ data;
}

class RemHMETAFILEPICT extends Struct {
  @Int32() external int mm;
  @Int32() external int xExt;
  @Int32() external int yExt;
  @Uint32() external int cbData;
  external __ubyte__ data;
}

class RemHENHMETAFILE extends Struct {
  @Uint32() external int cbData;
  external __ubyte__ data;
}

class RemHBITMAP extends Struct {
  @Uint32() external int cbData;
  external __ubyte__ data;
}

class RemHPALETTE extends Struct {
  @Uint32() external int cbData;
  external __ubyte__ data;
}

class RemBRUSH extends Struct {
  @Uint32() external int cbData;
  external __ubyte__ data;
}

class remoteMETAFILEPICT extends Struct {
  @Int32() external int mm;
  @Int32() external int xExt;
  @Int32() external int yExt;
  external Pointer<userHMETAFILE> hMF;
}

class userBITMAP extends Struct {
  @Int32() external int bmType;
  @Int32() external int bmWidth;
  @Int32() external int bmHeight;
  @Int32() external int bmWidthBytes;
  @Uint16() external int bmPlanes;
  @Uint16() external int bmBitsPixel;
  @Uint32() external int cbSize;
  external __ubyte__ pBuffer;
}

class BSTRBLOB extends Struct {
  @Uint32() external int cbSize;
  external Pointer<Uint8> pData;
}

class CLIPDATA extends Struct {
  @Uint32() external int cbSize;
  @Int32() external int ulClipFmt;
  external Pointer<Uint8> pClipData;
}

class STORAGE_HOTPLUG_INFO extends Struct {
  @Uint32() external int Size;
  @Uint8() external int MediaRemovable;
  @Uint8() external int MediaHotplug;
  @Uint8() external int DeviceHotplug;
  @Uint8() external int WriteCacheEnableOverride;
}

class STORAGE_DEVICE_NUMBER extends Struct {
  @Uint32() external int DeviceType;
  @Uint32() external int DeviceNumber;
  @Uint32() external int PartitionNumber;
}

class STORAGE_DEVICE_NUMBERS extends Struct {
  @Uint32() external int Version;
  @Uint32() external int Size;
  @Uint32() external int NumberOfDevices;
  external STORAGE_DEVICE_NUMBER Devices;
}

class STORAGE_DEVICE_NUMBER_EX extends Struct {
  @Uint32() external int Version;
  @Uint32() external int Size;
  @Uint32() external int Flags;
  @Uint32() external int DeviceType;
  @Uint32() external int DeviceNumber;
  external GUID DeviceGuid;
  @Uint32() external int PartitionNumber;
}

class STORAGE_BUS_RESET_REQUEST extends Struct {
  @Uint8() external int PathId;
}

class STORAGE_BREAK_RESERVATION_REQUEST extends Struct {
  @Uint32() external int Length;
  @Uint8() external int _unused;
  @Uint8() external int PathId;
  @Uint8() external int TargetId;
  @Uint8() external int Lun;
}

class PREVENT_MEDIA_REMOVAL extends Struct {
  @Uint8() external int PreventMediaRemoval;
}

class CLASS_MEDIA_CHANGE_CONTEXT extends Struct {
  @Uint32() external int MediaChangeCount;
  @Uint32() external int NewState;
}

class TAPE_STATISTICS extends Struct {
  @Uint32() external int Version;
  @Uint32() external int Flags;
  @Int64() external int RecoveredWrites;
  @Int64() external int UnrecoveredWrites;
  @Int64() external int RecoveredReads;
  @Int64() external int UnrecoveredReads;
  @Uint8() external int CompressionRatioReads;
  @Uint8() external int CompressionRatioWrites;
}

class TAPE_GET_STATISTICS extends Struct {
  @Uint32() external int Operation;
}

class GET_MEDIA_TYPES extends Struct {
  @Uint32() external int DeviceType;
  @Uint32() external int MediaInfoCount;
  external DEVICE_MEDIA_INFO MediaInfo;
}

class STORAGE_PREDICT_FAILURE extends Struct {
  @Uint32() external int PredictFailure;
  external __ubyte__ VendorSpecific;
}

class STORAGE_FAILURE_PREDICTION_CONFIG extends Struct {
  @Uint32() external int Version;
  @Uint32() external int Size;
  @Uint8() external int Set;
  @Uint8() external int Enabled;
  @Uint16() external int Reserved;
}

class STORAGE_PROPERTY_SET extends Struct {
  @Uint32() external int PropertyId;
  @Uint32() external int SetType;
  external __ubyte__ AdditionalParameters;
}

class STORAGE_IDENTIFIER extends Struct {
  @Uint32() external int CodeSet;
  @Uint32() external int Type;
  @Uint16() external int IdentifierSize;
  @Uint16() external int NextOffset;
  @Uint32() external int Association;
  external __ubyte__ Identifier;
}

class STORAGE_LB_PROVISIONING_MAP_RESOURCES extends Struct {
  @Uint32() external int Size;
  @Uint32() external int Version;
  @Uint8() external int _bitfield1;
  external __ubyte__ Reserved1;
  @Uint8() external int _bitfield2;
  external __ubyte__ Reserved3;
  @Uint64() external int AvailableMappingResources;
  @Uint64() external int UsedMappingResources;
}

class STORAGE_RPMB_DESCRIPTOR extends Struct {
  @Uint32() external int Version;
  @Uint32() external int Size;
  @Uint32() external int SizeInBytes;
  @Uint32() external int MaxReliableWriteSizeInBytes;
  @Uint32() external int FrameFormat;
}

class STORAGE_CRYPTO_CAPABILITY extends Struct {
  @Uint32() external int Version;
  @Uint32() external int Size;
  @Uint32() external int CryptoCapabilityIndex;
  @Uint32() external int AlgorithmId;
  @Uint32() external int KeySize;
  @Uint32() external int DataUnitSizeBitmask;
}

class STORAGE_CRYPTO_DESCRIPTOR extends Struct {
  @Uint32() external int Version;
  @Uint32() external int Size;
  @Uint32() external int NumKeysSupported;
  @Uint32() external int NumCryptoCapabilities;
  external STORAGE_CRYPTO_CAPABILITY CryptoCapabilities;
}

class STORAGE_TIER extends Struct {
  external GUID Id;
  external __ushort__ Name;
  external __ushort__ Description;
  @Uint64() external int Flags;
  @Uint64() external int ProvisionedCapacity;
  @Uint32() external int MediaType;
  @Uint32() external int Class;
}

class STORAGE_DEVICE_TIERING_DESCRIPTOR extends Struct {
  @Uint32() external int Version;
  @Uint32() external int Size;
  @Uint32() external int Flags;
  @Uint32() external int TotalNumberOfTiers;
  @Uint32() external int NumberOfTiersReturned;
  external STORAGE_TIER Tiers;
}

class STORAGE_DEVICE_FAULT_DOMAIN_DESCRIPTOR extends Struct {
  @Uint32() external int Version;
  @Uint32() external int Size;
  @Uint32() external int NumberOfFaultDomains;
  external GUID FaultDomainIds;
}

class STORAGE_PROTOCOL_SPECIFIC_DATA_EXT extends Struct {
  @Uint32() external int ProtocolType;
  @Uint32() external int DataType;
  @Uint32() external int ProtocolDataValue;
  @Uint32() external int ProtocolDataSubValue;
  @Uint32() external int ProtocolDataOffset;
  @Uint32() external int ProtocolDataLength;
  @Uint32() external int FixedProtocolReturnData;
  @Uint32() external int ProtocolDataSubValue2;
  @Uint32() external int ProtocolDataSubValue3;
  @Uint32() external int ProtocolDataSubValue4;
  @Uint32() external int ProtocolDataSubValue5;
  external __uint__ Reserved;
}

class STORAGE_PROTOCOL_DATA_DESCRIPTOR_EXT extends Struct {
  @Uint32() external int Version;
  @Uint32() external int Size;
  external STORAGE_PROTOCOL_SPECIFIC_DATA_EXT ProtocolSpecificData;
}

class STORAGE_DEVICE_MANAGEMENT_STATUS extends Struct {
  @Uint32() external int Version;
  @Uint32() external int Size;
  @Uint32() external int Health;
  @Uint32() external int NumberOfOperationalStatus;
  @Uint32() external int NumberOfAdditionalReasons;
  @Uint32() external int OperationalStatus;
  external STORAGE_OPERATIONAL_REASON AdditionalReasons;
}

class STORAGE_ZONE_GROUP extends Struct {
  @Uint32() external int ZoneCount;
  @Uint32() external int ZoneType;
  @Uint64() external int ZoneSize;
}

class STORAGE_DEVICE_LOCATION_DESCRIPTOR extends Struct {
  @Uint32() external int Version;
  @Uint32() external int Size;
  external DEVICE_LOCATION Location;
  @Uint32() external int StringOffset;
}

class STORAGE_DEVICE_NUMA_PROPERTY extends Struct {
  @Uint32() external int Version;
  @Uint32() external int Size;
  @Uint32() external int NumaNode;
}

class STORAGE_DEVICE_UNSAFE_SHUTDOWN_COUNT extends Struct {
  @Uint32() external int Version;
  @Uint32() external int Size;
  @Uint32() external int UnsafeShutdownCount;
}

class STORAGE_HW_ENDURANCE_DATA_DESCRIPTOR extends Struct {
  @Uint32() external int Version;
  @Uint32() external int Size;
  external STORAGE_HW_ENDURANCE_INFO EnduranceInfo;
}

class DEVICE_DATA_SET_RANGE extends Struct {
  @Int64() external int StartingOffset;
  @Uint64() external int LengthInBytes;
}

class DEVICE_MANAGE_DATA_SET_ATTRIBUTES extends Struct {
  @Uint32() external int Size;
  @Uint32() external int Action;
  @Uint32() external int Flags;
  @Uint32() external int ParameterBlockOffset;
  @Uint32() external int ParameterBlockLength;
  @Uint32() external int DataSetRangesOffset;
  @Uint32() external int DataSetRangesLength;
}

class DEVICE_MANAGE_DATA_SET_ATTRIBUTES_OUTPUT extends Struct {
  @Uint32() external int Size;
  @Uint32() external int Action;
  @Uint32() external int Flags;
  @Uint32() external int OperationStatus;
  @Uint32() external int ExtendedError;
  @Uint32() external int TargetDetailedError;
  @Uint32() external int ReservedStatus;
  @Uint32() external int OutputBlockOffset;
  @Uint32() external int OutputBlockLength;
}

class DEVICE_DSM_DEFINITION extends Struct {
  @Uint32() external int Action;
  @Uint8() external int SingleRange;
  @Uint32() external int ParameterBlockAlignment;
  @Uint32() external int ParameterBlockLength;
  @Uint8() external int HasOutput;
  @Uint32() external int OutputBlockAlignment;
  @Uint32() external int OutputBlockLength;
}

class DEVICE_DSM_NOTIFICATION_PARAMETERS extends Struct {
  @Uint32() external int Size;
  @Uint32() external int Flags;
  @Uint32() external int NumFileTypeIDs;
  external GUID FileTypeID;
}

class DEVICE_DSM_OFFLOAD_READ_PARAMETERS extends Struct {
  @Uint32() external int Flags;
  @Uint32() external int TimeToLive;
  external __uint__ Reserved;
}

class STORAGE_OFFLOAD_READ_OUTPUT extends Struct {
  @Uint32() external int OffloadReadFlags;
  @Uint32() external int Reserved;
  @Uint64() external int LengthProtected;
  @Uint32() external int TokenLength;
  external STORAGE_OFFLOAD_TOKEN Token;
}

class DEVICE_DSM_OFFLOAD_WRITE_PARAMETERS extends Struct {
  @Uint32() external int Flags;
  @Uint32() external int Reserved;
  @Uint64() external int TokenOffset;
  external STORAGE_OFFLOAD_TOKEN Token;
}

class STORAGE_OFFLOAD_WRITE_OUTPUT extends Struct {
  @Uint32() external int OffloadWriteFlags;
  @Uint32() external int Reserved;
  @Uint64() external int LengthCopied;
}

class DEVICE_DATA_SET_LBP_STATE_PARAMETERS extends Struct {
  @Uint32() external int Version;
  @Uint32() external int Size;
  @Uint32() external int Flags;
  @Uint32() external int OutputVersion;
}

class DEVICE_DATA_SET_LB_PROVISIONING_STATE extends Struct {
  @Uint32() external int Size;
  @Uint32() external int Version;
  @Uint64() external int SlabSizeInBytes;
  @Uint32() external int SlabOffsetDeltaInBytes;
  @Uint32() external int SlabAllocationBitMapBitCount;
  @Uint32() external int SlabAllocationBitMapLength;
  external __uint__ SlabAllocationBitMap;
}

class DEVICE_DATA_SET_LB_PROVISIONING_STATE_V2 extends Struct {
  @Uint32() external int Size;
  @Uint32() external int Version;
  @Uint64() external int SlabSizeInBytes;
  @Uint64() external int SlabOffsetDeltaInBytes;
  @Uint32() external int SlabAllocationBitMapBitCount;
  @Uint32() external int SlabAllocationBitMapLength;
  external __uint__ SlabAllocationBitMap;
}

class DEVICE_DATA_SET_REPAIR_PARAMETERS extends Struct {
  @Uint32() external int NumberOfRepairCopies;
  @Uint32() external int SourceCopy;
  external __uint__ RepairCopies;
}

class DEVICE_DATA_SET_REPAIR_OUTPUT extends Struct {
  external DEVICE_DATA_SET_RANGE ParityExtent;
}

class DEVICE_DATA_SET_SCRUB_OUTPUT extends Struct {
  @Uint64() external int BytesProcessed;
  @Uint64() external int BytesRepaired;
  @Uint64() external int BytesFailed;
}

class DEVICE_DATA_SET_SCRUB_EX_OUTPUT extends Struct {
  @Uint64() external int BytesProcessed;
  @Uint64() external int BytesRepaired;
  @Uint64() external int BytesFailed;
  external DEVICE_DATA_SET_RANGE ParityExtent;
}

class DEVICE_DSM_TIERING_QUERY_INPUT extends Struct {
  @Uint32() external int Version;
  @Uint32() external int Size;
  @Uint32() external int Flags;
  @Uint32() external int NumberOfTierIds;
  external GUID TierIds;
}

class STORAGE_TIER_REGION extends Struct {
  external GUID TierId;
  @Uint64() external int Offset;
  @Uint64() external int Length;
}

class DEVICE_DSM_TIERING_QUERY_OUTPUT extends Struct {
  @Uint32() external int Version;
  @Uint32() external int Size;
  @Uint32() external int Flags;
  @Uint32() external int Reserved;
  @Uint64() external int Alignment;
  @Uint32() external int TotalNumberOfRegions;
  @Uint32() external int NumberOfRegionsReturned;
  external STORAGE_TIER_REGION Regions;
}

class DEVICE_DSM_NVCACHE_CHANGE_PRIORITY_PARAMETERS extends Struct {
  @Uint32() external int Size;
  @Uint8() external int TargetPriority;
  external __ubyte__ Reserved;
}

class DEVICE_DATA_SET_TOPOLOGY_ID_QUERY_OUTPUT extends Struct {
  @Uint64() external int TopologyRangeBytes;
  external __ubyte__ TopologyId;
}

class DEVICE_STORAGE_ADDRESS_RANGE extends Struct {
  @Int64() external int StartAddress;
  @Uint64() external int LengthInBytes;
}

class DEVICE_DSM_PHYSICAL_ADDRESSES_OUTPUT extends Struct {
  @Uint32() external int Version;
  @Uint32() external int Flags;
  @Uint32() external int TotalNumberOfRanges;
  @Uint32() external int NumberOfRangesReturned;
  external DEVICE_STORAGE_ADDRESS_RANGE Ranges;
}

class DEVICE_DSM_REPORT_ZONES_PARAMETERS extends Struct {
  @Uint32() external int Size;
  @Uint8() external int ReportOption;
  @Uint8() external int Partial;
  external __ubyte__ Reserved;
}

class STORAGE_ZONE_DESCRIPTOR extends Struct {
  @Uint32() external int Size;
  @Uint32() external int ZoneType;
  @Uint32() external int ZoneCondition;
  @Uint8() external int ResetWritePointerRecommend;
  external __ubyte__ Reserved0;
  @Uint64() external int ZoneSize;
  @Uint64() external int WritePointerOffset;
}

class DEVICE_DSM_REPORT_ZONES_DATA extends Struct {
  @Uint32() external int Size;
  @Uint32() external int ZoneCount;
  @Uint32() external int Attributes;
  @Uint32() external int Reserved0;
  external STORAGE_ZONE_DESCRIPTOR ZoneDescriptors;
}

class DEVICE_DSM_RANGE_ERROR_INFO extends Struct {
  @Uint32() external int Version;
  @Uint32() external int Flags;
  @Uint32() external int TotalNumberOfRanges;
  @Uint32() external int NumberOfRangesReturned;
  external DEVICE_STORAGE_RANGE_ATTRIBUTES Ranges;
}

class DEVICE_DSM_LOST_QUERY_PARAMETERS extends Struct {
  @Uint32() external int Version;
  @Uint64() external int Granularity;
}

class DEVICE_DSM_LOST_QUERY_OUTPUT extends Struct {
  @Uint32() external int Version;
  @Uint32() external int Size;
  @Uint64() external int Alignment;
  @Uint32() external int NumberOfBits;
  external __uint__ BitMap;
}

class DEVICE_DSM_FREE_SPACE_OUTPUT extends Struct {
  @Uint32() external int Version;
  @Uint64() external int FreeSpace;
}

class DEVICE_DSM_CONVERSION_OUTPUT extends Struct {
  @Uint32() external int Version;
  external GUID Source;
}

class STORAGE_GET_BC_PROPERTIES_OUTPUT extends Struct {
  @Uint32() external int MaximumRequestsPerPeriod;
  @Uint32() external int MinimumPeriod;
  @Uint64() external int MaximumRequestSize;
  @Uint32() external int EstimatedTimePerRequest;
  @Uint32() external int NumOutStandingRequests;
  @Uint64() external int RequestSize;
}

class STORAGE_ALLOCATE_BC_STREAM_INPUT extends Struct {
  @Uint32() external int Version;
  @Uint32() external int RequestsPerPeriod;
  @Uint32() external int Period;
  @Uint8() external int RetryFailures;
  @Uint8() external int Discardable;
  external __ubyte__ Reserved1;
  @Uint32() external int AccessType;
  @Uint32() external int AccessMode;
}

class STORAGE_ALLOCATE_BC_STREAM_OUTPUT extends Struct {
  @Uint64() external int RequestSize;
  @Uint32() external int NumOutStandingRequests;
}

class STORAGE_PRIORITY_HINT_SUPPORT extends Struct {
  @Uint32() external int SupportFlags;
}

class STORAGE_DIAGNOSTIC_REQUEST extends Struct {
  @Uint32() external int Version;
  @Uint32() external int Size;
  @Uint32() external int Reserved;
  @Uint32() external int TargetType;
  @Uint32() external int Level;
}

class STORAGE_DIAGNOSTIC_DATA extends Struct {
  @Uint32() external int Version;
  @Uint32() external int Size;
  external GUID ProviderId;
  @Uint32() external int BufferSize;
  @Uint32() external int Reserved;
  external __ubyte__ DiagnosticDataBuffer;
}

class PHYSICAL_ELEMENT_STATUS_REQUEST extends Struct {
  @Uint32() external int Version;
  @Uint32() external int Size;
  @Uint32() external int StartingElement;
  @Uint8() external int Filter;
  @Uint8() external int ReportType;
  external __ubyte__ Reserved;
}

class PHYSICAL_ELEMENT_STATUS_DESCRIPTOR extends Struct {
  @Uint32() external int Version;
  @Uint32() external int Size;
  @Uint32() external int ElementIdentifier;
  @Uint8() external int PhysicalElementType;
  @Uint8() external int PhysicalElementHealth;
  external __ubyte__ Reserved1;
  @Uint64() external int AssociatedCapacity;
  external __uint__ Reserved2;
}

class PHYSICAL_ELEMENT_STATUS extends Struct {
  @Uint32() external int Version;
  @Uint32() external int Size;
  @Uint32() external int DescriptorCount;
  @Uint32() external int ReturnedDescriptorCount;
  @Uint32() external int ElementIdentifierBeingDepoped;
  @Uint32() external int Reserved;
  external PHYSICAL_ELEMENT_STATUS_DESCRIPTOR Descriptors;
}

class REMOVE_ELEMENT_AND_TRUNCATE_REQUEST extends Struct {
  @Uint32() external int Version;
  @Uint32() external int Size;
  @Uint64() external int RequestCapacity;
  @Uint32() external int ElementIdentifier;
  @Uint32() external int Reserved;
}

class GET_DEVICE_INTERNAL_STATUS_DATA_REQUEST extends Struct {
  @Uint32() external int Version;
  @Uint32() external int Size;
  @Uint32() external int RequestDataType;
  @Uint32() external int RequestDataSet;
}

class DEVICE_INTERNAL_STATUS_DATA extends Struct {
  @Uint32() external int Version;
  @Uint32() external int Size;
  @Uint64() external int T10VendorId;
  @Uint32() external int DataSet1Length;
  @Uint32() external int DataSet2Length;
  @Uint32() external int DataSet3Length;
  @Uint32() external int DataSet4Length;
  @Uint8() external int StatusDataVersion;
  external __ubyte__ Reserved;
  external __ubyte__ ReasonIdentifier;
  @Uint32() external int StatusDataLength;
  external __ubyte__ StatusData;
}

class STORAGE_MEDIA_SERIAL_NUMBER_DATA extends Struct {
  @Uint16() external int Reserved;
  @Uint16() external int SerialNumberLength;
  external __ubyte__ SerialNumber;
}

class STORAGE_READ_CAPACITY extends Struct {
  @Uint32() external int Version;
  @Uint32() external int Size;
  @Uint32() external int BlockLength;
  @Int64() external int NumberOfBlocks;
  @Int64() external int DiskLength;
}

class DEVICEDUMP_SUBSECTION_POINTER extends Struct {
  @Uint32() external int dwSize;
  @Uint32() external int dwFlags;
  @Uint32() external int dwOffset;
}

class DEVICEDUMP_STRUCTURE_VERSION extends Struct {
  @Uint32() external int dwSignature;
  @Uint32() external int dwVersion;
  @Uint32() external int dwSize;
}

class DEVICEDUMP_SECTION_HEADER extends Struct {
  external GUID guidDeviceDataId;
  external __ubyte__ sOrganizationID;
  @Uint32() external int dwFirmwareRevision;
  external __ubyte__ sModelNumber;
  external __ubyte__ szDeviceManufacturingID;
  @Uint32() external int dwFlags;
  @Uint32() external int bRestrictedPrivateDataVersion;
  @Uint32() external int dwFirmwareIssueId;
  external __ubyte__ szIssueDescriptionString;
}

class GP_LOG_PAGE_DESCRIPTOR extends Struct {
  @Uint16() external int LogAddress;
  @Uint16() external int LogSectors;
}

class DEVICEDUMP_PUBLIC_SUBSECTION extends Struct {
  @Uint32() external int dwFlags;
  external GP_LOG_PAGE_DESCRIPTOR GPLogTable;
  external __byte__ szDescription;
  external __ubyte__ bData;
}

class DEVICEDUMP_RESTRICTED_SUBSECTION extends Struct {
  external __ubyte__ bData;
}

class DEVICEDUMP_PRIVATE_SUBSECTION extends Struct {
  @Uint32() external int dwFlags;
  external GP_LOG_PAGE_DESCRIPTOR GPLogId;
  external __ubyte__ bData;
}

class DEVICEDUMP_STORAGEDEVICE_DATA extends Struct {
  external DEVICEDUMP_STRUCTURE_VERSION Descriptor;
  external DEVICEDUMP_SECTION_HEADER SectionHeader;
  @Uint32() external int dwBufferSize;
  @Uint32() external int dwReasonForCollection;
  external DEVICEDUMP_SUBSECTION_POINTER PublicData;
  external DEVICEDUMP_SUBSECTION_POINTER RestrictedData;
  external DEVICEDUMP_SUBSECTION_POINTER PrivateData;
}

class DEVICEDUMP_STORAGESTACK_PUBLIC_DUMP extends Struct {
  external DEVICEDUMP_STRUCTURE_VERSION Descriptor;
  @Uint32() external int dwReasonForCollection;
  external __ubyte__ cDriverName;
  @Uint32() external int uiNumRecords;
  external DEVICEDUMP_STORAGESTACK_PUBLIC_STATE_RECORD RecordArray;
}

class STORAGE_IDLE_POWER extends Struct {
  @Uint32() external int Version;
  @Uint32() external int Size;
  @Uint32() external int _bitfield;
  @Uint32() external int D3IdleTimeout;
}

class STORAGE_IDLE_POWERUP_REASON extends Struct {
  @Uint32() external int Version;
  @Uint32() external int Size;
  @Uint32() external int PowerupReason;
}

class STORAGE_RPMB_DATA_FRAME extends Struct {
  external __ubyte__ Stuff;
  external __ubyte__ KeyOrMAC;
  external __ubyte__ Data;
  external __ubyte__ Nonce;
  external __ubyte__ WriteCounter;
  external __ubyte__ Address;
  external __ubyte__ BlockCount;
  external __ubyte__ OperationResult;
  external __ubyte__ RequestOrResponseType;
}

class STORAGE_EVENT_NOTIFICATION extends Struct {
  @Uint32() external int Version;
  @Uint32() external int Size;
  @Uint64() external int Events;
}

class STORAGE_COUNTERS extends Struct {
  @Uint32() external int Version;
  @Uint32() external int Size;
  @Uint32() external int NumberOfCounters;
  external STORAGE_COUNTER Counters;
}

class STORAGE_HW_FIRMWARE_INFO_QUERY extends Struct {
  @Uint32() external int Version;
  @Uint32() external int Size;
  @Uint32() external int Flags;
  @Uint32() external int Reserved;
}

class STORAGE_HW_FIRMWARE_SLOT_INFO extends Struct {
  @Uint32() external int Version;
  @Uint32() external int Size;
  @Uint8() external int SlotNumber;
  @Uint8() external int _bitfield;
  external __ubyte__ Reserved1;
  external __ubyte__ Revision;
}

class STORAGE_HW_FIRMWARE_INFO extends Struct {
  @Uint32() external int Version;
  @Uint32() external int Size;
  @Uint8() external int _bitfield;
  @Uint8() external int SlotCount;
  @Uint8() external int ActiveSlot;
  @Uint8() external int PendingActivateSlot;
  @Uint8() external int FirmwareShared;
  external __ubyte__ Reserved;
  @Uint32() external int ImagePayloadAlignment;
  @Uint32() external int ImagePayloadMaxSize;
  external STORAGE_HW_FIRMWARE_SLOT_INFO Slot;
}

class STORAGE_HW_FIRMWARE_DOWNLOAD_V2 extends Struct {
  @Uint32() external int Version;
  @Uint32() external int Size;
  @Uint32() external int Flags;
  @Uint8() external int Slot;
  external __ubyte__ Reserved;
  @Uint64() external int Offset;
  @Uint64() external int BufferSize;
  @Uint32() external int ImageSize;
  @Uint32() external int Reserved2;
  external __ubyte__ ImageBuffer;
}

class STORAGE_ATTRIBUTE_MGMT extends Struct {
  @Uint32() external int Version;
  @Uint32() external int Size;
  @Uint32() external int Action;
  @Uint32() external int Attribute;
}

class SCM_PD_HEALTH_NOTIFICATION_DATA extends Struct {
  external GUID DeviceGuid;
}

class SCM_LOGICAL_DEVICE_INSTANCE extends Struct {
  @Uint32() external int Version;
  @Uint32() external int Size;
  external GUID DeviceGuid;
  external __ushort__ SymbolicLink;
}

class SCM_LOGICAL_DEVICES extends Struct {
  @Uint32() external int Version;
  @Uint32() external int Size;
  @Uint32() external int DeviceCount;
  external SCM_LOGICAL_DEVICE_INSTANCE Devices;
}

class SCM_PHYSICAL_DEVICE_INSTANCE extends Struct {
  @Uint32() external int Version;
  @Uint32() external int Size;
  @Uint32() external int NfitHandle;
  external __ushort__ SymbolicLink;
}

class SCM_PHYSICAL_DEVICES extends Struct {
  @Uint32() external int Version;
  @Uint32() external int Size;
  @Uint32() external int DeviceCount;
  external SCM_PHYSICAL_DEVICE_INSTANCE Devices;
}

class SCM_REGION extends Struct {
  @Uint32() external int Version;
  @Uint32() external int Size;
  @Uint32() external int Flags;
  @Uint32() external int NfitHandle;
  external GUID LogicalDeviceGuid;
  external GUID AddressRangeType;
  @Uint32() external int AssociatedId;
  @Uint64() external int Length;
  @Uint64() external int StartingDPA;
  @Uint64() external int BaseSPA;
  @Uint64() external int SPAOffset;
  @Uint64() external int RegionOffset;
}

class SCM_REGIONS extends Struct {
  @Uint32() external int Version;
  @Uint32() external int Size;
  @Uint32() external int RegionCount;
  external SCM_REGION Regions;
}

class SCM_INTERLEAVED_PD_INFO extends Struct {
  @Uint32() external int DeviceHandle;
  external GUID DeviceGuid;
}

class SCM_LD_INTERLEAVE_SET_INFO extends Struct {
  @Uint32() external int Version;
  @Uint32() external int Size;
  @Uint32() external int InterleaveSetSize;
  external SCM_INTERLEAVED_PD_INFO InterleaveSet;
}

class SCM_PD_PROPERTY_QUERY extends Struct {
  @Uint32() external int Version;
  @Uint32() external int Size;
  @Uint32() external int PropertyId;
  @Uint32() external int QueryType;
  external __ubyte__ AdditionalParameters;
}

class SCM_PD_DESCRIPTOR_HEADER extends Struct {
  @Uint32() external int Version;
  @Uint32() external int Size;
}

class SCM_PD_DEVICE_HANDLE extends Struct {
  @Uint32() external int Version;
  @Uint32() external int Size;
  external GUID DeviceGuid;
  @Uint32() external int DeviceHandle;
}

class SCM_PD_DEVICE_INFO extends Struct {
  @Uint32() external int Version;
  @Uint32() external int Size;
  external GUID DeviceGuid;
  @Uint32() external int UnsafeShutdownCount;
  @Uint64() external int PersistentMemorySizeInBytes;
  @Uint64() external int VolatileMemorySizeInBytes;
  @Uint64() external int TotalMemorySizeInBytes;
  @Uint32() external int SlotNumber;
  @Uint32() external int DeviceHandle;
  @Uint16() external int PhysicalId;
  @Uint8() external int NumberOfFormatInterfaceCodes;
  external __ushort__ FormatInterfaceCodes;
  @Uint32() external int VendorId;
  @Uint32() external int ProductId;
  @Uint32() external int SubsystemDeviceId;
  @Uint32() external int SubsystemVendorId;
  @Uint8() external int ManufacturingLocation;
  @Uint8() external int ManufacturingWeek;
  @Uint8() external int ManufacturingYear;
  @Uint32() external int SerialNumber4Byte;
  @Uint32() external int SerialNumberLengthInChars;
  external __byte__ SerialNumber;
}

class SCM_PD_DEVICE_SPECIFIC_PROPERTY extends Struct {
  external __ushort__ Name;
  @Int64() external int Value;
}

class SCM_PD_DEVICE_SPECIFIC_INFO extends Struct {
  @Uint32() external int Version;
  @Uint32() external int Size;
  @Uint32() external int NumberOfProperties;
  external SCM_PD_DEVICE_SPECIFIC_PROPERTY DeviceSpecificProperties;
}

class SCM_PD_FIRMWARE_SLOT_INFO extends Struct {
  @Uint32() external int Version;
  @Uint32() external int Size;
  @Uint8() external int SlotNumber;
  @Uint8() external int _bitfield;
  external __ubyte__ Reserved1;
  external __ubyte__ Revision;
}

class SCM_PD_FIRMWARE_INFO extends Struct {
  @Uint32() external int Version;
  @Uint32() external int Size;
  @Uint8() external int ActiveSlot;
  @Uint8() external int NextActiveSlot;
  @Uint8() external int SlotCount;
  external SCM_PD_FIRMWARE_SLOT_INFO Slots;
}

class SCM_PD_MANAGEMENT_STATUS extends Struct {
  @Uint32() external int Version;
  @Uint32() external int Size;
  @Uint32() external int Health;
  @Uint32() external int NumberOfOperationalStatus;
  @Uint32() external int NumberOfAdditionalReasons;
  @Uint32() external int OperationalStatus;
  @Uint32() external int AdditionalReasons;
}

class SCM_PD_LOCATION_STRING extends Struct {
  @Uint32() external int Version;
  @Uint32() external int Size;
  external __ushort__ Location;
}

class SCM_PD_FIRMWARE_DOWNLOAD extends Struct {
  @Uint32() external int Version;
  @Uint32() external int Size;
  @Uint32() external int Flags;
  @Uint8() external int Slot;
  external __ubyte__ Reserved;
  @Uint64() external int Offset;
  @Uint32() external int FirmwareImageSizeInBytes;
  external __ubyte__ FirmwareImage;
}

class SCM_PD_FIRMWARE_ACTIVATE extends Struct {
  @Uint32() external int Version;
  @Uint32() external int Size;
  @Uint32() external int Flags;
  @Uint8() external int Slot;
}

class SCM_PD_PASSTHROUGH_INPUT extends Struct {
  @Uint32() external int Version;
  @Uint32() external int Size;
  external GUID ProtocolGuid;
  @Uint32() external int DataSize;
  external __ubyte__ Data;
}

class SCM_PD_PASSTHROUGH_OUTPUT extends Struct {
  @Uint32() external int Version;
  @Uint32() external int Size;
  external GUID ProtocolGuid;
  @Uint32() external int DataSize;
  external __ubyte__ Data;
}

class SCM_PD_PASSTHROUGH_INVDIMM_INPUT extends Struct {
  @Uint32() external int Opcode;
  @Uint32() external int OpcodeParametersLength;
  external __ubyte__ OpcodeParameters;
}

class SCM_PD_PASSTHROUGH_INVDIMM_OUTPUT extends Struct {
  @Uint16() external int GeneralStatus;
  @Uint16() external int ExtendedStatus;
  @Uint32() external int OutputDataLength;
  external __ubyte__ OutputData;
}

class SCM_PD_REINITIALIZE_MEDIA_OUTPUT extends Struct {
  @Uint32() external int Version;
  @Uint32() external int Size;
  @Uint32() external int Status;
}

class DISK_CONTROLLER_NUMBER extends Struct {
  @Uint32() external int ControllerNumber;
  @Uint32() external int DiskNumber;
}

class HISTOGRAM_BUCKET extends Struct {
  @Uint32() external int Reads;
  @Uint32() external int Writes;
}

class DISK_HISTOGRAM extends Struct {
  @Int64() external int DiskSize;
  @Int64() external int Start;
  @Int64() external int End;
  @Int64() external int Average;
  @Int64() external int AverageRead;
  @Int64() external int AverageWrite;
  @Uint32() external int Granularity;
  @Uint32() external int Size;
  @Uint32() external int ReadCount;
  @Uint32() external int WriteCount;
  external Pointer<HISTOGRAM_BUCKET> Histogram;
}

class DISK_RECORD extends Struct {
  @Int64() external int ByteOffset;
  @Int64() external int StartTime;
  @Int64() external int EndTime;
  external Pointer VirtualAddress;
  @Uint32() external int NumberOfBytes;
  @Uint8() external int DeviceNumber;
  @Uint8() external int ReadRequest;
}

class DISK_LOGGING extends Struct {
  @Uint8() external int Function;
  external Pointer BufferAddress;
  @Uint32() external int BufferSize;
}

class BIN_RANGE extends Struct {
  @Int64() external int StartValue;
  @Int64() external int Length;
}

class PERF_BIN extends Struct {
  @Uint32() external int NumberOfBins;
  @Uint32() external int TypeOfBin;
  external BIN_RANGE BinsRanges;
}

class BIN_COUNT extends Struct {
  external BIN_RANGE BinRange;
  @Uint32() external int BinCount;
}

class BIN_RESULTS extends Struct {
  @Uint32() external int NumberOfBins;
  external BIN_COUNT BinCounts;
}

class GETVERSIONINPARAMS extends Struct {
  @Uint8() external int bVersion;
  @Uint8() external int bRevision;
  @Uint8() external int bReserved;
  @Uint8() external int bIDEDeviceMap;
  @Uint32() external int fCapabilities;
  external __uint__ dwReserved;
}

class IDEREGS extends Struct {
  @Uint8() external int bFeaturesReg;
  @Uint8() external int bSectorCountReg;
  @Uint8() external int bSectorNumberReg;
  @Uint8() external int bCylLowReg;
  @Uint8() external int bCylHighReg;
  @Uint8() external int bDriveHeadReg;
  @Uint8() external int bCommandReg;
  @Uint8() external int bReserved;
}

class SENDCMDINPARAMS extends Struct {
  @Uint32() external int cBufferSize;
  external IDEREGS irDriveRegs;
  @Uint8() external int bDriveNumber;
  external __ubyte__ bReserved;
  external __uint__ dwReserved;
  external __ubyte__ bBuffer;
}

class DRIVERSTATUS extends Struct {
  @Uint8() external int bDriverError;
  @Uint8() external int bIDEError;
  external __ubyte__ bReserved;
  external __uint__ dwReserved;
}

class SENDCMDOUTPARAMS extends Struct {
  @Uint32() external int cBufferSize;
  external DRIVERSTATUS DriverStatus;
  external __ubyte__ bBuffer;
}

class CHANGER_ELEMENT extends Struct {
  @Uint32() external int ElementType;
  @Uint32() external int ElementAddress;
}

class CHANGER_ELEMENT_LIST extends Struct {
  external CHANGER_ELEMENT Element;
  @Uint32() external int NumberOfElements;
}

class GET_CHANGER_PARAMETERS extends Struct {
  @Uint32() external int Size;
  @Uint16() external int NumberTransportElements;
  @Uint16() external int NumberStorageElements;
  @Uint16() external int NumberCleanerSlots;
  @Uint16() external int NumberIEElements;
  @Uint16() external int NumberDataTransferElements;
  @Uint16() external int NumberOfDoors;
  @Uint16() external int FirstSlotNumber;
  @Uint16() external int FirstDriveNumber;
  @Uint16() external int FirstTransportNumber;
  @Uint16() external int FirstIEPortNumber;
  @Uint16() external int FirstCleanerSlotAddress;
  @Uint16() external int MagazineSize;
  @Uint32() external int DriveCleanTimeout;
  @Uint32() external int Features0;
  @Uint32() external int Features1;
  @Uint8() external int MoveFromTransport;
  @Uint8() external int MoveFromSlot;
  @Uint8() external int MoveFromIePort;
  @Uint8() external int MoveFromDrive;
  @Uint8() external int ExchangeFromTransport;
  @Uint8() external int ExchangeFromSlot;
  @Uint8() external int ExchangeFromIePort;
  @Uint8() external int ExchangeFromDrive;
  @Uint32() external int LockUnlockCapabilities;
  @Uint8() external int PositionCapabilities;
  external __ubyte__ Reserved1;
  external __uint__ Reserved2;
}

class CHANGER_PRODUCT_DATA extends Struct {
  external __ubyte__ VendorId;
  external __ubyte__ ProductId;
  external __ubyte__ Revision;
  external __ubyte__ SerialNumber;
  @Uint8() external int DeviceType;
}

class CHANGER_SET_ACCESS extends Struct {
  external CHANGER_ELEMENT Element;
  @Uint32() external int Control;
}

class CHANGER_READ_ELEMENT_STATUS extends Struct {
  external CHANGER_ELEMENT_LIST ElementList;
  @Uint8() external int VolumeTagInfo;
}

class CHANGER_ELEMENT_STATUS extends Struct {
  external CHANGER_ELEMENT Element;
  external CHANGER_ELEMENT SrcElementAddress;
  @Uint32() external int Flags;
  @Uint32() external int ExceptionCode;
  @Uint8() external int TargetId;
  @Uint8() external int Lun;
  @Uint16() external int Reserved;
  external __ubyte__ PrimaryVolumeID;
  external __ubyte__ AlternateVolumeID;
}

class CHANGER_ELEMENT_STATUS_EX extends Struct {
  external CHANGER_ELEMENT Element;
  external CHANGER_ELEMENT SrcElementAddress;
  @Uint32() external int Flags;
  @Uint32() external int ExceptionCode;
  @Uint8() external int TargetId;
  @Uint8() external int Lun;
  @Uint16() external int Reserved;
  external __ubyte__ PrimaryVolumeID;
  external __ubyte__ AlternateVolumeID;
  external __ubyte__ VendorIdentification;
  external __ubyte__ ProductIdentification;
  external __ubyte__ SerialNumber;
}

class CHANGER_INITIALIZE_ELEMENT_STATUS extends Struct {
  external CHANGER_ELEMENT_LIST ElementList;
  @Uint8() external int BarCodeScan;
}

class CHANGER_SET_POSITION extends Struct {
  external CHANGER_ELEMENT Transport;
  external CHANGER_ELEMENT Destination;
  @Uint8() external int Flip;
}

class CHANGER_EXCHANGE_MEDIUM extends Struct {
  external CHANGER_ELEMENT Transport;
  external CHANGER_ELEMENT Source;
  external CHANGER_ELEMENT Destination1;
  external CHANGER_ELEMENT Destination2;
  @Uint8() external int Flip1;
  @Uint8() external int Flip2;
}

class CHANGER_MOVE_MEDIUM extends Struct {
  external CHANGER_ELEMENT Transport;
  external CHANGER_ELEMENT Source;
  external CHANGER_ELEMENT Destination;
  @Uint8() external int Flip;
}

class CHANGER_SEND_VOLUME_TAG_INFORMATION extends Struct {
  external CHANGER_ELEMENT StartingElement;
  @Uint32() external int ActionCode;
  external __ubyte__ VolumeIDTemplate;
}

class READ_ELEMENT_ADDRESS_INFO extends Struct {
  @Uint32() external int NumberOfElements;
  external CHANGER_ELEMENT_STATUS ElementStatus;
}

class PATHNAME_BUFFER extends Struct {
  @Uint32() external int PathNameLength;
  external __ushort__ Name;
}

class FSCTL_QUERY_FAT_BPB_BUFFER extends Struct {
  external __ubyte__ First0x24BytesOfBootSector;
}

class REFS_VOLUME_DATA_BUFFER extends Struct {
  @Uint32() external int ByteCount;
  @Uint32() external int MajorVersion;
  @Uint32() external int MinorVersion;
  @Uint32() external int BytesPerPhysicalSector;
  @Int64() external int VolumeSerialNumber;
  @Int64() external int NumberSectors;
  @Int64() external int TotalClusters;
  @Int64() external int FreeClusters;
  @Int64() external int TotalReserved;
  @Uint32() external int BytesPerSector;
  @Uint32() external int BytesPerCluster;
  @Int64() external int MaximumSizeOfResidentFile;
  @Uint16() external int FastTierDataFillRatio;
  @Uint16() external int SlowTierDataFillRatio;
  @Uint32() external int DestagesFastTierToSlowTierRate;
  @Int64() external int Reserved;
}

class STARTING_LCN_INPUT_BUFFER_EX extends Struct {
  @Int64() external int StartingLcn;
  @Uint32() external int Flags;
}

class RETRIEVAL_POINTER_COUNT extends Struct {
  @Uint32() external int ExtentCount;
}

class MOVE_FILE_RECORD_DATA extends Struct {
  @IntPtr() external int FileHandle;
  @Int64() external int SourceFileRecord;
  @Int64() external int TargetFileRecord;
}

class USN_RECORD_UNION extends Struct {
  external USN_RECORD_COMMON_HEADER Header;
  external USN_RECORD_V2 V2;
  external USN_RECORD_V3 V3;
  external USN_RECORD_V4 V4;
}

class BULK_SECURITY_TEST_DATA extends Struct {
  @Uint32() external int DesiredAccess;
  external __uint__ SecurityIds;
}

class FILE_PREFETCH extends Struct {
  @Uint32() external int Type;
  @Uint32() external int Count;
  external __uint64__ Prefetch;
}

class FILE_PREFETCH_EX extends Struct {
  @Uint32() external int Type;
  @Uint32() external int Count;
  external Pointer Context;
  external __uint64__ Prefetch;
}

class FILE_ZERO_DATA_INFORMATION_EX extends Struct {
  @Int64() external int FileOffset;
  @Int64() external int BeyondFinalZero;
  @Uint32() external int Flags;
}

class ENCRYPTION_BUFFER extends Struct {
  @Uint32() external int EncryptionOperation;
  external __ubyte__ Private;
}

class DECRYPTION_STATUS_BUFFER extends Struct {
  @Uint8() external int NoEncryptedStreams;
}

class REQUEST_RAW_ENCRYPTED_DATA extends Struct {
  @Int64() external int FileOffset;
  @Uint32() external int Length;
}

class ENCRYPTED_DATA_INFO extends Struct {
  @Uint64() external int StartingFileOffset;
  @Uint32() external int OutputBufferOffset;
  @Uint32() external int BytesWithinFileSize;
  @Uint32() external int BytesWithinValidDataLength;
  @Uint16() external int CompressionFormat;
  @Uint8() external int DataUnitShift;
  @Uint8() external int ChunkShift;
  @Uint8() external int ClusterShift;
  @Uint8() external int EncryptionFormat;
  @Uint16() external int NumberOfDataBlocks;
  external __uint__ DataBlockSize;
}

class EXTENDED_ENCRYPTED_DATA_INFO extends Struct {
  @Uint32() external int ExtendedCode;
  @Uint32() external int Length;
  @Uint32() external int Flags;
  @Uint32() external int Reserved;
}

class SI_COPYFILE extends Struct {
  @Uint32() external int SourceFileNameLength;
  @Uint32() external int DestinationFileNameLength;
  @Uint32() external int Flags;
  external __ushort__ FileNameBuffer;
}

class FILE_INITIATE_REPAIR_OUTPUT_BUFFER extends Struct {
  @Uint64() external int Hint1;
  @Uint64() external int Hint2;
  @Uint64() external int Clsn;
  @Uint32() external int Status;
}

class TXFS_ROLLFORWARD_REDO_INFORMATION extends Struct {
  @Int64() external int LastVirtualClock;
  @Uint64() external int LastRedoLsn;
  @Uint64() external int HighestRecoveryLsn;
  @Uint32() external int Flags;
}

class TXFS_START_RM_INFORMATION extends Struct {
  @Uint32() external int Flags;
  @Uint64() external int LogContainerSize;
  @Uint32() external int LogContainerCountMin;
  @Uint32() external int LogContainerCountMax;
  @Uint32() external int LogGrowthIncrement;
  @Uint32() external int LogAutoShrinkPercentage;
  @Uint32() external int TmLogPathOffset;
  @Uint16() external int TmLogPathLength;
  @Uint16() external int LoggingMode;
  @Uint16() external int LogPathLength;
  @Uint16() external int Reserved;
  external __ushort__ LogPath;
}

class FILE_FS_PERSISTENT_VOLUME_INFORMATION extends Struct {
  @Uint32() external int VolumeFlags;
  @Uint32() external int FlagMask;
  @Uint32() external int Version;
  @Uint32() external int Reserved;
}

class STORAGE_QUERY_DEPENDENT_VOLUME_REQUEST extends Struct {
  @Uint32() external int RequestLevel;
  @Uint32() external int RequestFlags;
}

class STORAGE_QUERY_DEPENDENT_VOLUME_LEV1_ENTRY extends Struct {
  @Uint32() external int EntryLength;
  @Uint32() external int DependencyTypeFlags;
  @Uint32() external int ProviderSpecificFlags;
  external VIRTUAL_STORAGE_TYPE VirtualStorageType;
}

class STORAGE_QUERY_DEPENDENT_VOLUME_LEV2_ENTRY extends Struct {
  @Uint32() external int EntryLength;
  @Uint32() external int DependencyTypeFlags;
  @Uint32() external int ProviderSpecificFlags;
  external VIRTUAL_STORAGE_TYPE VirtualStorageType;
  @Uint32() external int AncestorLevel;
  @Uint32() external int HostVolumeNameOffset;
  @Uint32() external int HostVolumeNameSize;
  @Uint32() external int DependentVolumeNameOffset;
  @Uint32() external int DependentVolumeNameSize;
  @Uint32() external int RelativePathOffset;
  @Uint32() external int RelativePathSize;
  @Uint32() external int DependentDeviceNameOffset;
  @Uint32() external int DependentDeviceNameSize;
}

class SD_CHANGE_MACHINE_SID_INPUT extends Struct {
  @Uint16() external int CurrentMachineSIDOffset;
  @Uint16() external int CurrentMachineSIDLength;
  @Uint16() external int NewMachineSIDOffset;
  @Uint16() external int NewMachineSIDLength;
}

class SD_CHANGE_MACHINE_SID_OUTPUT extends Struct {
  @Uint64() external int NumSDChangedSuccess;
  @Uint64() external int NumSDChangedFail;
  @Uint64() external int NumSDUnused;
  @Uint64() external int NumSDTotal;
  @Uint64() external int NumMftSDChangedSuccess;
  @Uint64() external int NumMftSDChangedFail;
  @Uint64() external int NumMftSDTotal;
}

class SD_QUERY_STATS_INPUT extends Struct {
  @Uint32() external int Reserved;
}

class SD_QUERY_STATS_OUTPUT extends Struct {
  @Uint64() external int SdsStreamSize;
  @Uint64() external int SdsAllocationSize;
  @Uint64() external int SiiStreamSize;
  @Uint64() external int SiiAllocationSize;
  @Uint64() external int SdhStreamSize;
  @Uint64() external int SdhAllocationSize;
  @Uint64() external int NumSDTotal;
  @Uint64() external int NumSDUnused;
}

class SD_ENUM_SDS_INPUT extends Struct {
  @Uint64() external int StartingOffset;
  @Uint64() external int MaxSDEntriesToReturn;
}

class SD_ENUM_SDS_ENTRY extends Struct {
  @Uint32() external int Hash;
  @Uint32() external int SecurityId;
  @Uint64() external int Offset;
  @Uint32() external int Length;
  external __ubyte__ Descriptor;
}

class SD_ENUM_SDS_OUTPUT extends Struct {
  @Uint64() external int NextOffset;
  @Uint64() external int NumSDEntriesReturned;
  @Uint64() external int NumSDBytesReturned;
  external SD_ENUM_SDS_ENTRY SDEntry;
}

class FILE_TYPE_NOTIFICATION_INPUT extends Struct {
  @Uint32() external int Flags;
  @Uint32() external int NumFileTypeIDs;
  external GUID FileTypeID;
}

class CSV_MGMT_LOCK extends Struct {
  @Uint32() external int Flags;
}

class CSV_QUERY_FILE_REVISION_FILE_ID_128 extends Struct {
  external FILE_ID_128 FileId;
  external __int64__ FileRevision;
}

class CSV_QUERY_VOLUME_REDIRECT_STATE extends Struct {
  @Uint32() external int MdsNodeId;
  @Uint32() external int DsNodeId;
  @Uint8() external int IsDiskConnected;
  @Uint8() external int ClusterEnableDirectIo;
  @Uint32() external int DiskConnectivity;
}

class CSV_QUERY_MDS_PATH_V2 extends Struct {
  @Int64() external int Version;
  @Uint32() external int RequiredSize;
  @Uint32() external int MdsNodeId;
  @Uint32() external int DsNodeId;
  @Uint32() external int Flags;
  @Uint32() external int DiskConnectivity;
  external GUID VolumeId;
  @Uint32() external int IpAddressOffset;
  @Uint32() external int IpAddressLength;
  @Uint32() external int PathOffset;
  @Uint32() external int PathLength;
}

class CLUSTER_RANGE extends Struct {
  @Int64() external int StartingCluster;
  @Int64() external int ClusterCount;
}

class FILE_REFERENCE_RANGE extends Struct {
  @Uint64() external int StartingFileReferenceNumber;
  @Uint64() external int EndingFileReferenceNumber;
}

class QUERY_FILE_LAYOUT_OUTPUT extends Struct {
  @Uint32() external int FileEntryCount;
  @Uint32() external int FirstFileOffset;
  @Uint32() external int Flags;
  @Uint32() external int Reserved;
}

class FILE_LAYOUT_ENTRY extends Struct {
  @Uint32() external int Version;
  @Uint32() external int NextFileOffset;
  @Uint32() external int Flags;
  @Uint32() external int FileAttributes;
  @Uint64() external int FileReferenceNumber;
  @Uint32() external int FirstNameOffset;
  @Uint32() external int FirstStreamOffset;
  @Uint32() external int ExtraInfoOffset;
  @Uint32() external int ExtraInfoLength;
}

class FILE_LAYOUT_NAME_ENTRY extends Struct {
  @Uint32() external int NextNameOffset;
  @Uint32() external int Flags;
  @Uint64() external int ParentFileReferenceNumber;
  @Uint32() external int FileNameLength;
  @Uint32() external int Reserved;
  external __ushort__ FileName;
}

class STREAM_LAYOUT_ENTRY extends Struct {
  @Uint32() external int Version;
  @Uint32() external int NextStreamOffset;
  @Uint32() external int Flags;
  @Uint32() external int ExtentInformationOffset;
  @Int64() external int AllocationSize;
  @Int64() external int EndOfFile;
  @Uint32() external int StreamInformationOffset;
  @Uint32() external int AttributeTypeCode;
  @Uint32() external int AttributeFlags;
  @Uint32() external int StreamIdentifierLength;
  external __ushort__ StreamIdentifier;
}

class FSCTL_SET_INTEGRITY_INFORMATION_BUFFER_EX extends Struct {
  @Uint8() external int EnableIntegrity;
  @Uint8() external int KeepIntegrityStateUnchanged;
  @Uint16() external int Reserved;
  @Uint32() external int Flags;
  @Uint8() external int Version;
  external __ubyte__ Reserved2;
}

class FSCTL_OFFLOAD_READ_INPUT extends Struct {
  @Uint32() external int Size;
  @Uint32() external int Flags;
  @Uint32() external int TokenTimeToLive;
  @Uint32() external int Reserved;
  @Uint64() external int FileOffset;
  @Uint64() external int CopyLength;
}

class FSCTL_OFFLOAD_READ_OUTPUT extends Struct {
  @Uint32() external int Size;
  @Uint32() external int Flags;
  @Uint64() external int TransferLength;
  external __ubyte__ Token;
}

class FSCTL_OFFLOAD_WRITE_INPUT extends Struct {
  @Uint32() external int Size;
  @Uint32() external int Flags;
  @Uint64() external int FileOffset;
  @Uint64() external int CopyLength;
  @Uint64() external int TransferOffset;
  external __ubyte__ Token;
}

class FSCTL_OFFLOAD_WRITE_OUTPUT extends Struct {
  @Uint32() external int Size;
  @Uint32() external int Flags;
  @Uint64() external int LengthWritten;
}

class SET_PURGE_FAILURE_MODE_INPUT extends Struct {
  @Uint32() external int Flags;
}

class FILE_REGION_INFO extends Struct {
  @Int64() external int FileOffset;
  @Int64() external int Length;
  @Uint32() external int Usage;
  @Uint32() external int Reserved;
}

class FILE_REGION_OUTPUT extends Struct {
  @Uint32() external int Flags;
  @Uint32() external int TotalRegionEntryCount;
  @Uint32() external int RegionEntryCount;
  @Uint32() external int Reserved;
  external FILE_REGION_INFO Region;
}

class FILE_REGION_INPUT extends Struct {
  @Int64() external int FileOffset;
  @Int64() external int Length;
  @Uint32() external int DesiredUsage;
}

class WRITE_USN_REASON_INPUT extends Struct {
  @Uint32() external int Flags;
  @Uint32() external int UsnReasonToWrite;
}

class FILE_DESIRED_STORAGE_CLASS_INFORMATION extends Struct {
  @Uint32() external int Class;
  @Uint32() external int Flags;
}

class DUPLICATE_EXTENTS_DATA_EX extends Struct {
  @IntPtr() external int Size;
  @IntPtr() external int FileHandle;
  @Int64() external int SourceFileOffset;
  @Int64() external int TargetFileOffset;
  @Int64() external int ByteCount;
  @Uint32() external int Flags;
}

class REFS_SMR_VOLUME_INFO_OUTPUT extends Struct {
  @Uint32() external int Version;
  @Uint32() external int Flags;
  @Int64() external int SizeOfRandomlyWritableTier;
  @Int64() external int FreeSpaceInRandomlyWritableTier;
  @Int64() external int SizeofSMRTier;
  @Int64() external int FreeSpaceInSMRTier;
  @Int64() external int UsableFreeSpaceInSMRTier;
  @Uint32() external int VolumeGcState;
  @Uint32() external int VolumeGcLastStatus;
  external __uint64__ Unused;
}

class REFS_SMR_VOLUME_GC_PARAMETERS extends Struct {
  @Uint32() external int Version;
  @Uint32() external int Flags;
  @Uint32() external int Action;
  @Uint32() external int Method;
  @Uint32() external int IoGranularity;
  @Uint32() external int CompressionFormat;
  external __uint64__ Unused;
}

class STREAMS_QUERY_PARAMETERS_OUTPUT_BUFFER extends Struct {
  @Uint32() external int OptimalWriteSize;
  @Uint32() external int StreamGranularitySize;
  @Uint32() external int StreamIdMin;
  @Uint32() external int StreamIdMax;
}

class STREAMS_ASSOCIATE_ID_INPUT_BUFFER extends Struct {
  @Uint32() external int Flags;
  @Uint32() external int StreamId;
}

class STREAMS_QUERY_ID_OUTPUT_BUFFER extends Struct {
  @Uint32() external int StreamId;
}

class QUERY_BAD_RANGES_INPUT_RANGE extends Struct {
  @Uint64() external int StartOffset;
  @Uint64() external int LengthInBytes;
}

class QUERY_BAD_RANGES_INPUT extends Struct {
  @Uint32() external int Flags;
  @Uint32() external int NumRanges;
  external QUERY_BAD_RANGES_INPUT_RANGE Ranges;
}

class QUERY_BAD_RANGES_OUTPUT_RANGE extends Struct {
  @Uint32() external int Flags;
  @Uint32() external int Reserved;
  @Uint64() external int StartOffset;
  @Uint64() external int LengthInBytes;
}

class QUERY_BAD_RANGES_OUTPUT extends Struct {
  @Uint32() external int Flags;
  @Uint32() external int NumBadRanges;
  @Uint64() external int NextOffsetToLookUp;
  external QUERY_BAD_RANGES_OUTPUT_RANGE BadRanges;
}

class SET_DAX_ALLOC_ALIGNMENT_HINT_INPUT extends Struct {
  @Uint32() external int Flags;
  @Uint32() external int AlignmentShift;
  @Uint64() external int FileOffsetToAlign;
  @Uint32() external int FallbackAlignmentShift;
}

class VIRTUAL_STORAGE_SET_BEHAVIOR_INPUT extends Struct {
  @Uint32() external int Size;
  @Uint32() external int BehaviorCode;
}

class ENCRYPTION_KEY_CTRL_INPUT extends Struct {
  @Uint32() external int HeaderSize;
  @Uint32() external int StructureSize;
  @Uint16() external int KeyOffset;
  @Uint16() external int KeySize;
  @Uint32() external int DplLock;
  @Uint64() external int DplUserId;
  @Uint64() external int DplCredentialId;
}

class WOF_EXTERNAL_INFO extends Struct {
  @Uint32() external int Version;
  @Uint32() external int Provider;
}

class WOF_EXTERNAL_FILE_ID extends Struct {
  external FILE_ID_128 FileId;
}

class WOF_VERSION_INFO extends Struct {
  @Uint32() external int WofVersion;
}

class WIM_PROVIDER_EXTERNAL_INFO extends Struct {
  @Uint32() external int Version;
  @Uint32() external int Flags;
  @Int64() external int DataSourceId;
  external __ubyte__ ResourceHash;
}

class WIM_PROVIDER_ADD_OVERLAY_INPUT extends Struct {
  @Uint32() external int WimType;
  @Uint32() external int WimIndex;
  @Uint32() external int WimFileNameOffset;
  @Uint32() external int WimFileNameLength;
}

class WIM_PROVIDER_UPDATE_OVERLAY_INPUT extends Struct {
  @Int64() external int DataSourceId;
  @Uint32() external int WimFileNameOffset;
  @Uint32() external int WimFileNameLength;
}

class WIM_PROVIDER_REMOVE_OVERLAY_INPUT extends Struct {
  @Int64() external int DataSourceId;
}

class WIM_PROVIDER_SUSPEND_OVERLAY_INPUT extends Struct {
  @Int64() external int DataSourceId;
}

class WIM_PROVIDER_OVERLAY_ENTRY extends Struct {
  @Uint32() external int NextEntryOffset;
  @Int64() external int DataSourceId;
  external GUID WimGuid;
  @Uint32() external int WimFileNameOffset;
  @Uint32() external int WimType;
  @Uint32() external int WimIndex;
  @Uint32() external int Flags;
}

class FILE_PROVIDER_EXTERNAL_INFO_V0 extends Struct {
  @Uint32() external int Version;
  @Uint32() external int Algorithm;
}

class FILE_PROVIDER_EXTERNAL_INFO_V1 extends Struct {
  @Uint32() external int Version;
  @Uint32() external int Algorithm;
  @Uint32() external int Flags;
}

class CONTAINER_VOLUME_STATE extends Struct {
  @Uint32() external int Flags;
}

class CONTAINER_ROOT_INFO_INPUT extends Struct {
  @Uint32() external int Flags;
}

class CONTAINER_ROOT_INFO_OUTPUT extends Struct {
  @Uint16() external int ContainerRootIdLength;
  external __ubyte__ ContainerRootId;
}

class VIRTUALIZATION_INSTANCE_INFO_INPUT extends Struct {
  @Uint32() external int NumberOfWorkerThreads;
  @Uint32() external int Flags;
}

class VIRTUALIZATION_INSTANCE_INFO_INPUT_EX extends Struct {
  @Uint16() external int HeaderSize;
  @Uint32() external int Flags;
  @Uint32() external int NotificationInfoSize;
  @Uint16() external int NotificationInfoOffset;
  @Uint16() external int ProviderMajorVersion;
}

class VIRTUALIZATION_INSTANCE_INFO_OUTPUT extends Struct {
  external GUID VirtualizationInstanceID;
}

class GET_FILTER_FILE_IDENTIFIER_INPUT extends Struct {
  @Uint16() external int AltitudeLength;
  external __ushort__ Altitude;
}

class GET_FILTER_FILE_IDENTIFIER_OUTPUT extends Struct {
  @Uint16() external int FilterFileIdentifierLength;
  external __ubyte__ FilterFileIdentifier;
}

class IO_IRP_EXT_TRACK_OFFSET_HEADER extends Struct {
  @Uint16() external int Validation;
  @Uint16() external int Flags;
  external PIO_IRP_EXT_PROCESS_TRACKED_OFFSET_CALLBACK TrackedOffsetCallback;
}

class SCARD_IO_REQUEST extends Struct {
  @Uint32() external int dwProtocol;
  @Uint32() external int cbPciLength;
}

class SCARD_T0_COMMAND extends Struct {
  @Uint8() external int bCla;
  @Uint8() external int bIns;
  @Uint8() external int bP1;
  @Uint8() external int bP2;
  @Uint8() external int bP3;
}

class SCARD_T1_REQUEST extends Struct {
  external SCARD_IO_REQUEST ioRequest;
}

class PRINTER_INFO_1A extends Struct {
  @Uint32() external int Flags;
  external Pointer<Utf8> pDescription;
  external Pointer<Utf8> pName;
  external Pointer<Utf8> pComment;
}

class PRINTER_INFO_1W extends Struct {
  @Uint32() external int Flags;
  external Pointer<Utf16> pDescription;
  external Pointer<Utf16> pName;
  external Pointer<Utf16> pComment;
}

class PRINTER_INFO_2A extends Struct {
  external Pointer<Utf8> pServerName;
  external Pointer<Utf8> pPrinterName;
  external Pointer<Utf8> pShareName;
  external Pointer<Utf8> pPortName;
  external Pointer<Utf8> pDriverName;
  external Pointer<Utf8> pComment;
  external Pointer<Utf8> pLocation;
  external Pointer<DEVMODEA> pDevMode;
  external Pointer<Utf8> pSepFile;
  external Pointer<Utf8> pPrintProcessor;
  external Pointer<Utf8> pDatatype;
  external Pointer<Utf8> pParameters;
  external Pointer pSecurityDescriptor;
  @Uint32() external int Attributes;
  @Uint32() external int Priority;
  @Uint32() external int DefaultPriority;
  @Uint32() external int StartTime;
  @Uint32() external int UntilTime;
  @Uint32() external int Status;
  @Uint32() external int cJobs;
  @Uint32() external int AveragePPM;
}

class PRINTER_INFO_2W extends Struct {
  external Pointer<Utf16> pServerName;
  external Pointer<Utf16> pPrinterName;
  external Pointer<Utf16> pShareName;
  external Pointer<Utf16> pPortName;
  external Pointer<Utf16> pDriverName;
  external Pointer<Utf16> pComment;
  external Pointer<Utf16> pLocation;
  external Pointer<DEVMODE> pDevMode;
  external Pointer<Utf16> pSepFile;
  external Pointer<Utf16> pPrintProcessor;
  external Pointer<Utf16> pDatatype;
  external Pointer<Utf16> pParameters;
  external Pointer pSecurityDescriptor;
  @Uint32() external int Attributes;
  @Uint32() external int Priority;
  @Uint32() external int DefaultPriority;
  @Uint32() external int StartTime;
  @Uint32() external int UntilTime;
  @Uint32() external int Status;
  @Uint32() external int cJobs;
  @Uint32() external int AveragePPM;
}

class PRINTER_INFO_3 extends Struct {
  external Pointer pSecurityDescriptor;
}

class PRINTER_INFO_4A extends Struct {
  external Pointer<Utf8> pPrinterName;
  external Pointer<Utf8> pServerName;
  @Uint32() external int Attributes;
}

class PRINTER_INFO_4W extends Struct {
  external Pointer<Utf16> pPrinterName;
  external Pointer<Utf16> pServerName;
  @Uint32() external int Attributes;
}

class PRINTER_INFO_5A extends Struct {
  external Pointer<Utf8> pPrinterName;
  external Pointer<Utf8> pPortName;
  @Uint32() external int Attributes;
  @Uint32() external int DeviceNotSelectedTimeout;
  @Uint32() external int TransmissionRetryTimeout;
}

class PRINTER_INFO_5W extends Struct {
  external Pointer<Utf16> pPrinterName;
  external Pointer<Utf16> pPortName;
  @Uint32() external int Attributes;
  @Uint32() external int DeviceNotSelectedTimeout;
  @Uint32() external int TransmissionRetryTimeout;
}

class PRINTER_INFO_6 extends Struct {
  @Uint32() external int dwStatus;
}

class PRINTER_INFO_7A extends Struct {
  external Pointer<Utf8> pszObjectGUID;
  @Uint32() external int dwAction;
}

class PRINTER_INFO_7W extends Struct {
  external Pointer<Utf16> pszObjectGUID;
  @Uint32() external int dwAction;
}

class PRINTER_INFO_8A extends Struct {
  external Pointer<DEVMODEA> pDevMode;
}

class PRINTER_INFO_8W extends Struct {
  external Pointer<DEVMODE> pDevMode;
}

class PRINTER_INFO_9A extends Struct {
  external Pointer<DEVMODEA> pDevMode;
}

class PRINTER_INFO_9W extends Struct {
  external Pointer<DEVMODE> pDevMode;
}

class JOB_INFO_1A extends Struct {
  @Uint32() external int JobId;
  external Pointer<Utf8> pPrinterName;
  external Pointer<Utf8> pMachineName;
  external Pointer<Utf8> pUserName;
  external Pointer<Utf8> pDocument;
  external Pointer<Utf8> pDatatype;
  external Pointer<Utf8> pStatus;
  @Uint32() external int Status;
  @Uint32() external int Priority;
  @Uint32() external int Position;
  @Uint32() external int TotalPages;
  @Uint32() external int PagesPrinted;
  external SYSTEMTIME Submitted;
}

class JOB_INFO_1W extends Struct {
  @Uint32() external int JobId;
  external Pointer<Utf16> pPrinterName;
  external Pointer<Utf16> pMachineName;
  external Pointer<Utf16> pUserName;
  external Pointer<Utf16> pDocument;
  external Pointer<Utf16> pDatatype;
  external Pointer<Utf16> pStatus;
  @Uint32() external int Status;
  @Uint32() external int Priority;
  @Uint32() external int Position;
  @Uint32() external int TotalPages;
  @Uint32() external int PagesPrinted;
  external SYSTEMTIME Submitted;
}

class JOB_INFO_2A extends Struct {
  @Uint32() external int JobId;
  external Pointer<Utf8> pPrinterName;
  external Pointer<Utf8> pMachineName;
  external Pointer<Utf8> pUserName;
  external Pointer<Utf8> pDocument;
  external Pointer<Utf8> pNotifyName;
  external Pointer<Utf8> pDatatype;
  external Pointer<Utf8> pPrintProcessor;
  external Pointer<Utf8> pParameters;
  external Pointer<Utf8> pDriverName;
  external Pointer<DEVMODEA> pDevMode;
  external Pointer<Utf8> pStatus;
  external Pointer pSecurityDescriptor;
  @Uint32() external int Status;
  @Uint32() external int Priority;
  @Uint32() external int Position;
  @Uint32() external int StartTime;
  @Uint32() external int UntilTime;
  @Uint32() external int TotalPages;
  @Uint32() external int Size;
  external SYSTEMTIME Submitted;
  @Uint32() external int Time;
  @Uint32() external int PagesPrinted;
}

class JOB_INFO_2W extends Struct {
  @Uint32() external int JobId;
  external Pointer<Utf16> pPrinterName;
  external Pointer<Utf16> pMachineName;
  external Pointer<Utf16> pUserName;
  external Pointer<Utf16> pDocument;
  external Pointer<Utf16> pNotifyName;
  external Pointer<Utf16> pDatatype;
  external Pointer<Utf16> pPrintProcessor;
  external Pointer<Utf16> pParameters;
  external Pointer<Utf16> pDriverName;
  external Pointer<DEVMODE> pDevMode;
  external Pointer<Utf16> pStatus;
  external Pointer pSecurityDescriptor;
  @Uint32() external int Status;
  @Uint32() external int Priority;
  @Uint32() external int Position;
  @Uint32() external int StartTime;
  @Uint32() external int UntilTime;
  @Uint32() external int TotalPages;
  @Uint32() external int Size;
  external SYSTEMTIME Submitted;
  @Uint32() external int Time;
  @Uint32() external int PagesPrinted;
}

class JOB_INFO_3 extends Struct {
  @Uint32() external int JobId;
  @Uint32() external int NextJobId;
  @Uint32() external int Reserved;
}

class JOB_INFO_4A extends Struct {
  @Uint32() external int JobId;
  external Pointer<Utf8> pPrinterName;
  external Pointer<Utf8> pMachineName;
  external Pointer<Utf8> pUserName;
  external Pointer<Utf8> pDocument;
  external Pointer<Utf8> pNotifyName;
  external Pointer<Utf8> pDatatype;
  external Pointer<Utf8> pPrintProcessor;
  external Pointer<Utf8> pParameters;
  external Pointer<Utf8> pDriverName;
  external Pointer<DEVMODEA> pDevMode;
  external Pointer<Utf8> pStatus;
  external Pointer pSecurityDescriptor;
  @Uint32() external int Status;
  @Uint32() external int Priority;
  @Uint32() external int Position;
  @Uint32() external int StartTime;
  @Uint32() external int UntilTime;
  @Uint32() external int TotalPages;
  @Uint32() external int Size;
  external SYSTEMTIME Submitted;
  @Uint32() external int Time;
  @Uint32() external int PagesPrinted;
  @Int32() external int SizeHigh;
}

class JOB_INFO_4W extends Struct {
  @Uint32() external int JobId;
  external Pointer<Utf16> pPrinterName;
  external Pointer<Utf16> pMachineName;
  external Pointer<Utf16> pUserName;
  external Pointer<Utf16> pDocument;
  external Pointer<Utf16> pNotifyName;
  external Pointer<Utf16> pDatatype;
  external Pointer<Utf16> pPrintProcessor;
  external Pointer<Utf16> pParameters;
  external Pointer<Utf16> pDriverName;
  external Pointer<DEVMODE> pDevMode;
  external Pointer<Utf16> pStatus;
  external Pointer pSecurityDescriptor;
  @Uint32() external int Status;
  @Uint32() external int Priority;
  @Uint32() external int Position;
  @Uint32() external int StartTime;
  @Uint32() external int UntilTime;
  @Uint32() external int TotalPages;
  @Uint32() external int Size;
  external SYSTEMTIME Submitted;
  @Uint32() external int Time;
  @Uint32() external int PagesPrinted;
  @Int32() external int SizeHigh;
}

class ADDJOB_INFO_1A extends Struct {
  external Pointer<Utf8> Path;
  @Uint32() external int JobId;
}

class ADDJOB_INFO_1W extends Struct {
  external Pointer<Utf16> Path;
  @Uint32() external int JobId;
}

class DRIVER_INFO_1A extends Struct {
  external Pointer<Utf8> pName;
}

class DRIVER_INFO_1W extends Struct {
  external Pointer<Utf16> pName;
}

class DRIVER_INFO_2A extends Struct {
  @Uint32() external int cVersion;
  external Pointer<Utf8> pName;
  external Pointer<Utf8> pEnvironment;
  external Pointer<Utf8> pDriverPath;
  external Pointer<Utf8> pDataFile;
  external Pointer<Utf8> pConfigFile;
}

class DRIVER_INFO_2W extends Struct {
  @Uint32() external int cVersion;
  external Pointer<Utf16> pName;
  external Pointer<Utf16> pEnvironment;
  external Pointer<Utf16> pDriverPath;
  external Pointer<Utf16> pDataFile;
  external Pointer<Utf16> pConfigFile;
}

class DRIVER_INFO_3A extends Struct {
  @Uint32() external int cVersion;
  external Pointer<Utf8> pName;
  external Pointer<Utf8> pEnvironment;
  external Pointer<Utf8> pDriverPath;
  external Pointer<Utf8> pDataFile;
  external Pointer<Utf8> pConfigFile;
  external Pointer<Utf8> pHelpFile;
  external Pointer<Utf8> pDependentFiles;
  external Pointer<Utf8> pMonitorName;
  external Pointer<Utf8> pDefaultDataType;
}

class DRIVER_INFO_3W extends Struct {
  @Uint32() external int cVersion;
  external Pointer<Utf16> pName;
  external Pointer<Utf16> pEnvironment;
  external Pointer<Utf16> pDriverPath;
  external Pointer<Utf16> pDataFile;
  external Pointer<Utf16> pConfigFile;
  external Pointer<Utf16> pHelpFile;
  external Pointer<Utf16> pDependentFiles;
  external Pointer<Utf16> pMonitorName;
  external Pointer<Utf16> pDefaultDataType;
}

class DRIVER_INFO_4A extends Struct {
  @Uint32() external int cVersion;
  external Pointer<Utf8> pName;
  external Pointer<Utf8> pEnvironment;
  external Pointer<Utf8> pDriverPath;
  external Pointer<Utf8> pDataFile;
  external Pointer<Utf8> pConfigFile;
  external Pointer<Utf8> pHelpFile;
  external Pointer<Utf8> pDependentFiles;
  external Pointer<Utf8> pMonitorName;
  external Pointer<Utf8> pDefaultDataType;
  external Pointer<Utf8> pszzPreviousNames;
}

class DRIVER_INFO_4W extends Struct {
  @Uint32() external int cVersion;
  external Pointer<Utf16> pName;
  external Pointer<Utf16> pEnvironment;
  external Pointer<Utf16> pDriverPath;
  external Pointer<Utf16> pDataFile;
  external Pointer<Utf16> pConfigFile;
  external Pointer<Utf16> pHelpFile;
  external Pointer<Utf16> pDependentFiles;
  external Pointer<Utf16> pMonitorName;
  external Pointer<Utf16> pDefaultDataType;
  external Pointer<Utf16> pszzPreviousNames;
}

class DRIVER_INFO_5A extends Struct {
  @Uint32() external int cVersion;
  external Pointer<Utf8> pName;
  external Pointer<Utf8> pEnvironment;
  external Pointer<Utf8> pDriverPath;
  external Pointer<Utf8> pDataFile;
  external Pointer<Utf8> pConfigFile;
  @Uint32() external int dwDriverAttributes;
  @Uint32() external int dwConfigVersion;
  @Uint32() external int dwDriverVersion;
}

class DRIVER_INFO_5W extends Struct {
  @Uint32() external int cVersion;
  external Pointer<Utf16> pName;
  external Pointer<Utf16> pEnvironment;
  external Pointer<Utf16> pDriverPath;
  external Pointer<Utf16> pDataFile;
  external Pointer<Utf16> pConfigFile;
  @Uint32() external int dwDriverAttributes;
  @Uint32() external int dwConfigVersion;
  @Uint32() external int dwDriverVersion;
}

class DRIVER_INFO_6A extends Struct {
  @Uint32() external int cVersion;
  external Pointer<Utf8> pName;
  external Pointer<Utf8> pEnvironment;
  external Pointer<Utf8> pDriverPath;
  external Pointer<Utf8> pDataFile;
  external Pointer<Utf8> pConfigFile;
  external Pointer<Utf8> pHelpFile;
  external Pointer<Utf8> pDependentFiles;
  external Pointer<Utf8> pMonitorName;
  external Pointer<Utf8> pDefaultDataType;
  external Pointer<Utf8> pszzPreviousNames;
  external FILETIME ftDriverDate;
  @Uint64() external int dwlDriverVersion;
  external Pointer<Utf8> pszMfgName;
  external Pointer<Utf8> pszOEMUrl;
  external Pointer<Utf8> pszHardwareID;
  external Pointer<Utf8> pszProvider;
}

class DRIVER_INFO_6W extends Struct {
  @Uint32() external int cVersion;
  external Pointer<Utf16> pName;
  external Pointer<Utf16> pEnvironment;
  external Pointer<Utf16> pDriverPath;
  external Pointer<Utf16> pDataFile;
  external Pointer<Utf16> pConfigFile;
  external Pointer<Utf16> pHelpFile;
  external Pointer<Utf16> pDependentFiles;
  external Pointer<Utf16> pMonitorName;
  external Pointer<Utf16> pDefaultDataType;
  external Pointer<Utf16> pszzPreviousNames;
  external FILETIME ftDriverDate;
  @Uint64() external int dwlDriverVersion;
  external Pointer<Utf16> pszMfgName;
  external Pointer<Utf16> pszOEMUrl;
  external Pointer<Utf16> pszHardwareID;
  external Pointer<Utf16> pszProvider;
}

class DRIVER_INFO_8A extends Struct {
  @Uint32() external int cVersion;
  external Pointer<Utf8> pName;
  external Pointer<Utf8> pEnvironment;
  external Pointer<Utf8> pDriverPath;
  external Pointer<Utf8> pDataFile;
  external Pointer<Utf8> pConfigFile;
  external Pointer<Utf8> pHelpFile;
  external Pointer<Utf8> pDependentFiles;
  external Pointer<Utf8> pMonitorName;
  external Pointer<Utf8> pDefaultDataType;
  external Pointer<Utf8> pszzPreviousNames;
  external FILETIME ftDriverDate;
  @Uint64() external int dwlDriverVersion;
  external Pointer<Utf8> pszMfgName;
  external Pointer<Utf8> pszOEMUrl;
  external Pointer<Utf8> pszHardwareID;
  external Pointer<Utf8> pszProvider;
  external Pointer<Utf8> pszPrintProcessor;
  external Pointer<Utf8> pszVendorSetup;
  external Pointer<Utf8> pszzColorProfiles;
  external Pointer<Utf8> pszInfPath;
  @Uint32() external int dwPrinterDriverAttributes;
  external Pointer<Utf8> pszzCoreDriverDependencies;
  external FILETIME ftMinInboxDriverVerDate;
  @Uint64() external int dwlMinInboxDriverVerVersion;
}

class DRIVER_INFO_8W extends Struct {
  @Uint32() external int cVersion;
  external Pointer<Utf16> pName;
  external Pointer<Utf16> pEnvironment;
  external Pointer<Utf16> pDriverPath;
  external Pointer<Utf16> pDataFile;
  external Pointer<Utf16> pConfigFile;
  external Pointer<Utf16> pHelpFile;
  external Pointer<Utf16> pDependentFiles;
  external Pointer<Utf16> pMonitorName;
  external Pointer<Utf16> pDefaultDataType;
  external Pointer<Utf16> pszzPreviousNames;
  external FILETIME ftDriverDate;
  @Uint64() external int dwlDriverVersion;
  external Pointer<Utf16> pszMfgName;
  external Pointer<Utf16> pszOEMUrl;
  external Pointer<Utf16> pszHardwareID;
  external Pointer<Utf16> pszProvider;
  external Pointer<Utf16> pszPrintProcessor;
  external Pointer<Utf16> pszVendorSetup;
  external Pointer<Utf16> pszzColorProfiles;
  external Pointer<Utf16> pszInfPath;
  @Uint32() external int dwPrinterDriverAttributes;
  external Pointer<Utf16> pszzCoreDriverDependencies;
  external FILETIME ftMinInboxDriverVerDate;
  @Uint64() external int dwlMinInboxDriverVerVersion;
}

class DOC_INFO_1A extends Struct {
  external Pointer<Utf8> pDocName;
  external Pointer<Utf8> pOutputFile;
  external Pointer<Utf8> pDatatype;
}

class DOC_INFO_1W extends Struct {
  external Pointer<Utf16> pDocName;
  external Pointer<Utf16> pOutputFile;
  external Pointer<Utf16> pDatatype;
}

class FORM_INFO_1A extends Struct {
  @Uint32() external int Flags;
  external Pointer<Utf8> pName;
  external SIZE Size;
  external RECTL ImageableArea;
}

class FORM_INFO_1W extends Struct {
  @Uint32() external int Flags;
  external Pointer<Utf16> pName;
  external SIZE Size;
  external RECTL ImageableArea;
}

class FORM_INFO_2A extends Struct {
  @Uint32() external int Flags;
  external Pointer<Utf8> pName;
  external SIZE Size;
  external RECTL ImageableArea;
  external Pointer<Utf8> pKeyword;
  @Uint32() external int StringType;
  external Pointer<Utf8> pMuiDll;
  @Uint32() external int dwResourceId;
  external Pointer<Utf8> pDisplayName;
  @Uint16() external int wLangId;
}

class FORM_INFO_2W extends Struct {
  @Uint32() external int Flags;
  external Pointer<Utf16> pName;
  external SIZE Size;
  external RECTL ImageableArea;
  external Pointer<Utf8> pKeyword;
  @Uint32() external int StringType;
  external Pointer<Utf16> pMuiDll;
  @Uint32() external int dwResourceId;
  external Pointer<Utf16> pDisplayName;
  @Uint16() external int wLangId;
}

class DOC_INFO_2A extends Struct {
  external Pointer<Utf8> pDocName;
  external Pointer<Utf8> pOutputFile;
  external Pointer<Utf8> pDatatype;
  @Uint32() external int dwMode;
  @Uint32() external int JobId;
}

class DOC_INFO_2W extends Struct {
  external Pointer<Utf16> pDocName;
  external Pointer<Utf16> pOutputFile;
  external Pointer<Utf16> pDatatype;
  @Uint32() external int dwMode;
  @Uint32() external int JobId;
}

class DOC_INFO_3A extends Struct {
  external Pointer<Utf8> pDocName;
  external Pointer<Utf8> pOutputFile;
  external Pointer<Utf8> pDatatype;
  @Uint32() external int dwFlags;
}

class DOC_INFO_3W extends Struct {
  external Pointer<Utf16> pDocName;
  external Pointer<Utf16> pOutputFile;
  external Pointer<Utf16> pDatatype;
  @Uint32() external int dwFlags;
}

class PRINTPROCESSOR_INFO_1A extends Struct {
  external Pointer<Utf8> pName;
}

class PRINTPROCESSOR_INFO_1W extends Struct {
  external Pointer<Utf16> pName;
}

class PRINTPROCESSOR_CAPS_1 extends Struct {
  @Uint32() external int dwLevel;
  @Uint32() external int dwNupOptions;
  @Uint32() external int dwPageOrderFlags;
  @Uint32() external int dwNumberOfCopies;
}

class PRINTPROCESSOR_CAPS_2 extends Struct {
  @Uint32() external int dwLevel;
  @Uint32() external int dwNupOptions;
  @Uint32() external int dwPageOrderFlags;
  @Uint32() external int dwNumberOfCopies;
  @Uint32() external int dwDuplexHandlingCaps;
  @Uint32() external int dwNupDirectionCaps;
  @Uint32() external int dwNupBorderCaps;
  @Uint32() external int dwBookletHandlingCaps;
  @Uint32() external int dwScalingCaps;
}

class PORT_INFO_1A extends Struct {
  external Pointer<Utf8> pName;
}

class PORT_INFO_1W extends Struct {
  external Pointer<Utf16> pName;
}

class PORT_INFO_2A extends Struct {
  external Pointer<Utf8> pPortName;
  external Pointer<Utf8> pMonitorName;
  external Pointer<Utf8> pDescription;
  @Uint32() external int fPortType;
  @Uint32() external int Reserved;
}

class PORT_INFO_2W extends Struct {
  external Pointer<Utf16> pPortName;
  external Pointer<Utf16> pMonitorName;
  external Pointer<Utf16> pDescription;
  @Uint32() external int fPortType;
  @Uint32() external int Reserved;
}

class PORT_INFO_3A extends Struct {
  @Uint32() external int dwStatus;
  external Pointer<Utf8> pszStatus;
  @Uint32() external int dwSeverity;
}

class PORT_INFO_3W extends Struct {
  @Uint32() external int dwStatus;
  external Pointer<Utf16> pszStatus;
  @Uint32() external int dwSeverity;
}

class MONITOR_INFO_1A extends Struct {
  external Pointer<Utf8> pName;
}

class MONITOR_INFO_1W extends Struct {
  external Pointer<Utf16> pName;
}

class MONITOR_INFO_2A extends Struct {
  external Pointer<Utf8> pName;
  external Pointer<Utf8> pEnvironment;
  external Pointer<Utf8> pDLLName;
}

class MONITOR_INFO_2W extends Struct {
  external Pointer<Utf16> pName;
  external Pointer<Utf16> pEnvironment;
  external Pointer<Utf16> pDLLName;
}

class DATATYPES_INFO_1A extends Struct {
  external Pointer<Utf8> pName;
}

class DATATYPES_INFO_1W extends Struct {
  external Pointer<Utf16> pName;
}

class PRINTER_DEFAULTSA extends Struct {
  external Pointer<Utf8> pDatatype;
  external Pointer<DEVMODEA> pDevMode;
  @Uint32() external int DesiredAccess;
}

class PRINTER_DEFAULTSW extends Struct {
  external Pointer<Utf16> pDatatype;
  external Pointer<DEVMODE> pDevMode;
  @Uint32() external int DesiredAccess;
}

class PRINTER_ENUM_VALUESA extends Struct {
  external Pointer<Utf8> pValueName;
  @Uint32() external int cbValueName;
  @Uint32() external int dwType;
  external Pointer<Uint8> pData;
  @Uint32() external int cbData;
}

class PRINTER_ENUM_VALUESW extends Struct {
  external Pointer<Utf16> pValueName;
  @Uint32() external int cbValueName;
  @Uint32() external int dwType;
  external Pointer<Uint8> pData;
  @Uint32() external int cbData;
}

class PRINTER_NOTIFY_OPTIONS_TYPE extends Struct {
  @Uint16() external int Type;
  @Uint16() external int Reserved0;
  @Uint32() external int Reserved1;
  @Uint32() external int Reserved2;
  @Uint32() external int Count;
  external Pointer<Uint16> pFields;
}

class PRINTER_NOTIFY_OPTIONS extends Struct {
  @Uint32() external int Version;
  @Uint32() external int Flags;
  @Uint32() external int Count;
  external Pointer<PRINTER_NOTIFY_OPTIONS_TYPE> pTypes;
}

class PRINTER_NOTIFY_INFO extends Struct {
  @Uint32() external int Version;
  @Uint32() external int Flags;
  @Uint32() external int Count;
  external PRINTER_NOTIFY_INFO_DATA aData;
}

class BINARY_CONTAINER extends Struct {
  @Uint32() external int cbBuf;
  external Pointer<Uint8> pData;
}

class BIDI_REQUEST_DATA extends Struct {
  @Uint32() external int dwReqNumber;
  external Pointer<Utf16> pSchema;
  external BIDI_DATA data;
}

class BIDI_REQUEST_CONTAINER extends Struct {
  @Uint32() external int Version;
  @Uint32() external int Flags;
  @Uint32() external int Count;
  external BIDI_REQUEST_DATA aData;
}

class BIDI_RESPONSE_DATA extends Struct {
  @Uint32() external int dwResult;
  @Uint32() external int dwReqNumber;
  external Pointer<Utf16> pSchema;
  external BIDI_DATA data;
}

class BIDI_RESPONSE_CONTAINER extends Struct {
  @Uint32() external int Version;
  @Uint32() external int Flags;
  @Uint32() external int Count;
  external BIDI_RESPONSE_DATA aData;
}

class PROVIDOR_INFO_1A extends Struct {
  external Pointer<Utf8> pName;
  external Pointer<Utf8> pEnvironment;
  external Pointer<Utf8> pDLLName;
}

class PROVIDOR_INFO_1W extends Struct {
  external Pointer<Utf16> pName;
  external Pointer<Utf16> pEnvironment;
  external Pointer<Utf16> pDLLName;
}

class PROVIDOR_INFO_2A extends Struct {
  external Pointer<Utf8> pOrder;
}

class PROVIDOR_INFO_2W extends Struct {
  external Pointer<Utf16> pOrder;
}

class PRINTER_OPTIONSA extends Struct {
  @Uint32() external int cbSize;
  @Uint32() external int dwFlags;
}

class PRINTER_OPTIONSW extends Struct {
  @Uint32() external int cbSize;
  @Uint32() external int dwFlags;
}

class PRINTER_CONNECTION_INFO_1A extends Struct {
  @Uint32() external int dwFlags;
  external Pointer<Utf8> pszDriverName;
}

class PRINTER_CONNECTION_INFO_1W extends Struct {
  @Uint32() external int dwFlags;
  external Pointer<Utf16> pszDriverName;
}

class CORE_PRINTER_DRIVERA extends Struct {
  external GUID CoreDriverGUID;
  external FILETIME ftDriverDate;
  @Uint64() external int dwlDriverVersion;
  external __byte__ szPackageID;
}

class CORE_PRINTER_DRIVERW extends Struct {
  external GUID CoreDriverGUID;
  external FILETIME ftDriverDate;
  @Uint64() external int dwlDriverVersion;
  external __ushort__ szPackageID;
}

class PrintNamedProperty extends Struct {
  external Pointer<Utf16> propertyName;
  external PrintPropertyValue propertyValue;
}

class PrintPropertiesCollection extends Struct {
  @Uint32() external int numberOfProperties;
  external Pointer<PrintNamedProperty> propertiesCollection;
}

class PRINT_EXECUTION_DATA extends Struct {
  @Uint32() external int context;
  @Uint32() external int clientAppPID;
}

class MODEMDEVCAPS extends Struct {
  @Uint32() external int dwActualSize;
  @Uint32() external int dwRequiredSize;
  @Uint32() external int dwDevSpecificOffset;
  @Uint32() external int dwDevSpecificSize;
  @Uint32() external int dwModemProviderVersion;
  @Uint32() external int dwModemManufacturerOffset;
  @Uint32() external int dwModemManufacturerSize;
  @Uint32() external int dwModemModelOffset;
  @Uint32() external int dwModemModelSize;
  @Uint32() external int dwModemVersionOffset;
  @Uint32() external int dwModemVersionSize;
  @Uint32() external int dwDialOptions;
  @Uint32() external int dwCallSetupFailTimer;
  @Uint32() external int dwInactivityTimeout;
  @Uint32() external int dwSpeakerVolume;
  @Uint32() external int dwSpeakerMode;
  @Uint32() external int dwModemOptions;
  @Uint32() external int dwMaxDTERate;
  @Uint32() external int dwMaxDCERate;
  external __ubyte__ abVariablePortion;
}

class MODEMSETTINGS extends Struct {
  @Uint32() external int dwActualSize;
  @Uint32() external int dwRequiredSize;
  @Uint32() external int dwDevSpecificOffset;
  @Uint32() external int dwDevSpecificSize;
  @Uint32() external int dwCallSetupFailTimer;
  @Uint32() external int dwInactivityTimeout;
  @Uint32() external int dwSpeakerVolume;
  @Uint32() external int dwSpeakerMode;
  @Uint32() external int dwPreferredModemOptions;
  @Uint32() external int dwNegotiatedModemOptions;
  @Uint32() external int dwNegotiatedDCERate;
  external __ubyte__ abVariablePortion;
}

class DispatcherQueueOptions extends Struct {
  @Uint32() external int dwSize;
  @Uint32() external int threadType;
  @Uint32() external int apartmentType;
}

class VDS_STORAGE_IDENTIFIER extends Struct {
  @Uint32() external int m_CodeSet;
  @Uint32() external int m_Type;
  @Uint32() external int m_cbIdentifier;
  external Pointer<Uint8> m_rgbIdentifier;
}

class VDS_STORAGE_DEVICE_ID_DESCRIPTOR extends Struct {
  @Uint32() external int m_version;
  @Uint32() external int m_cIdentifiers;
  external Pointer<VDS_STORAGE_IDENTIFIER> m_rgIdentifiers;
}

class VDS_INTERCONNECT extends Struct {
  @Uint32() external int m_addressType;
  @Uint32() external int m_cbPort;
  external Pointer<Uint8> m_pbPort;
  @Uint32() external int m_cbAddress;
  external Pointer<Uint8> m_pbAddress;
}

class VDS_LUN_INFORMATION extends Struct {
  @Uint32() external int m_version;
  @Uint8() external int m_DeviceType;
  @Uint8() external int m_DeviceTypeModifier;
  @Int32() external int m_bCommandQueueing;
  @Uint32() external int m_BusType;
  external Pointer<Uint8> m_szVendorId;
  external Pointer<Uint8> m_szProductId;
  external Pointer<Uint8> m_szProductRevision;
  external Pointer<Uint8> m_szSerialNumber;
  external GUID m_diskSignature;
  external VDS_STORAGE_DEVICE_ID_DESCRIPTOR m_deviceIdDescriptor;
  @Uint32() external int m_cInterconnects;
  external Pointer<VDS_INTERCONNECT> m_rgInterconnects;
}

class VDS_PACK_NOTIFICATION extends Struct {
  @Uint32() external int ulEvent;
  external GUID packId;
}

class VDS_DISK_NOTIFICATION extends Struct {
  @Uint32() external int ulEvent;
  external GUID diskId;
}

class VDS_VOLUME_NOTIFICATION extends Struct {
  @Uint32() external int ulEvent;
  external GUID volumeId;
  external GUID plexId;
  @Uint32() external int ulPercentCompleted;
}

class VDS_PARTITION_NOTIFICATION extends Struct {
  @Uint32() external int ulEvent;
  external GUID diskId;
  @Uint64() external int ullOffset;
}

class VDS_SERVICE_NOTIFICATION extends Struct {
  @Uint32() external int ulEvent;
  @Uint32() external int action;
}

class VDS_DRIVE_LETTER_NOTIFICATION extends Struct {
  @Uint32() external int ulEvent;
  @Uint16() external int wcLetter;
  external GUID volumeId;
}

class VDS_FILE_SYSTEM_NOTIFICATION extends Struct {
  @Uint32() external int ulEvent;
  external GUID volumeId;
  @Uint32() external int dwPercentCompleted;
}

class VDS_MOUNT_POINT_NOTIFICATION extends Struct {
  @Uint32() external int ulEvent;
  external GUID volumeId;
}

class VDS_SUB_SYSTEM_NOTIFICATION extends Struct {
  @Uint32() external int ulEvent;
  external GUID subSystemId;
}

class VDS_CONTROLLER_NOTIFICATION extends Struct {
  @Uint32() external int ulEvent;
  external GUID controllerId;
}

class VDS_DRIVE_NOTIFICATION extends Struct {
  @Uint32() external int ulEvent;
  external GUID driveId;
}

class VDS_LUN_NOTIFICATION extends Struct {
  @Uint32() external int ulEvent;
  external GUID LunId;
}

class VDS_PORT_NOTIFICATION extends Struct {
  @Uint32() external int ulEvent;
  external GUID portId;
}

class VDS_PORTAL_NOTIFICATION extends Struct {
  @Uint32() external int ulEvent;
  external GUID portalId;
}

class VDS_TARGET_NOTIFICATION extends Struct {
  @Uint32() external int ulEvent;
  external GUID targetId;
}

class VDS_PORTAL_GROUP_NOTIFICATION extends Struct {
  @Uint32() external int ulEvent;
  external GUID portalGroupId;
}

class VDS_PATH_ID extends Struct {
  @Uint64() external int ullSourceId;
  @Uint64() external int ullPathId;
}

class VDS_WWN extends Struct {
  external __ubyte__ rguchWwn;
}

class VDS_IPADDRESS extends Struct {
  @Uint32() external int type;
  @Uint32() external int ipv4Address;
  external __ubyte__ ipv6Address;
  @Uint32() external int ulIpv6FlowInfo;
  @Uint32() external int ulIpv6ScopeId;
  external __ushort__ wszTextAddress;
  @Uint32() external int ulPort;
}

class VDS_ISCSI_IPSEC_KEY extends Struct {
  external Pointer<Uint8> pKey;
  @Uint32() external int ulKeySize;
}

class VDS_ISCSI_SHARED_SECRET extends Struct {
  external Pointer<Uint8> pSharedSecret;
  @Uint32() external int ulSharedSecretSize;
}

class VDS_HBAPORT_PROP extends Struct {
  external GUID id;
  external VDS_WWN wwnNode;
  external VDS_WWN wwnPort;
  @Uint32() external int type;
  @Uint32() external int status;
  @Uint32() external int ulPortSpeed;
  @Uint32() external int ulSupportedPortSpeed;
}

class VDS_ISCSI_INITIATOR_ADAPTER_PROP extends Struct {
  external GUID id;
  external Pointer<Utf16> pwszName;
}

class VDS_ISCSI_INITIATOR_PORTAL_PROP extends Struct {
  external GUID id;
  external VDS_IPADDRESS address;
  @Uint32() external int ulPortIndex;
}

class VDS_PROVIDER_PROP extends Struct {
  external GUID id;
  external Pointer<Utf16> pwszName;
  external GUID guidVersionId;
  external Pointer<Utf16> pwszVersion;
  @Uint32() external int type;
  @Uint32() external int ulFlags;
  @Uint32() external int ulStripeSizeFlags;
  @Int16() external int sRebuildPriority;
}

class VDS_PATH_POLICY extends Struct {
  external VDS_PATH_ID pathId;
  @Int32() external int bPrimaryPath;
  @Uint32() external int ulWeight;
}

class VDS_HINTS extends Struct {
  @Uint64() external int ullHintMask;
  @Uint64() external int ullExpectedMaximumSize;
  @Uint32() external int ulOptimalReadSize;
  @Uint32() external int ulOptimalReadAlignment;
  @Uint32() external int ulOptimalWriteSize;
  @Uint32() external int ulOptimalWriteAlignment;
  @Uint32() external int ulMaximumDriveCount;
  @Uint32() external int ulStripeSize;
  @Int32() external int bFastCrashRecoveryRequired;
  @Int32() external int bMostlyReads;
  @Int32() external int bOptimizeForSequentialReads;
  @Int32() external int bOptimizeForSequentialWrites;
  @Int32() external int bRemapEnabled;
  @Int32() external int bReadBackVerifyEnabled;
  @Int32() external int bWriteThroughCachingEnabled;
  @Int32() external int bHardwareChecksumEnabled;
  @Int32() external int bIsYankable;
  @Int16() external int sRebuildPriority;
}

class VDS_HINTS2 extends Struct {
  @Uint64() external int ullHintMask;
  @Uint64() external int ullExpectedMaximumSize;
  @Uint32() external int ulOptimalReadSize;
  @Uint32() external int ulOptimalReadAlignment;
  @Uint32() external int ulOptimalWriteSize;
  @Uint32() external int ulOptimalWriteAlignment;
  @Uint32() external int ulMaximumDriveCount;
  @Uint32() external int ulStripeSize;
  @Uint32() external int ulReserved1;
  @Uint32() external int ulReserved2;
  @Uint32() external int ulReserved3;
  @Int32() external int bFastCrashRecoveryRequired;
  @Int32() external int bMostlyReads;
  @Int32() external int bOptimizeForSequentialReads;
  @Int32() external int bOptimizeForSequentialWrites;
  @Int32() external int bRemapEnabled;
  @Int32() external int bReadBackVerifyEnabled;
  @Int32() external int bWriteThroughCachingEnabled;
  @Int32() external int bHardwareChecksumEnabled;
  @Int32() external int bIsYankable;
  @Int32() external int bAllocateHotSpare;
  @Int32() external int bUseMirroredCache;
  @Int32() external int bReadCachingEnabled;
  @Int32() external int bWriteCachingEnabled;
  @Int32() external int bMediaScanEnabled;
  @Int32() external int bConsistencyCheckEnabled;
  @Uint32() external int BusType;
  @Int32() external int bReserved1;
  @Int32() external int bReserved2;
  @Int32() external int bReserved3;
  @Int16() external int sRebuildPriority;
}

class VDS_SUB_SYSTEM_PROP extends Struct {
  external GUID id;
  external Pointer<Utf16> pwszFriendlyName;
  external Pointer<Utf16> pwszIdentification;
  @Uint32() external int ulFlags;
  @Uint32() external int ulStripeSizeFlags;
  @Uint32() external int status;
  @Uint32() external int health;
  @Int16() external int sNumberOfInternalBuses;
  @Int16() external int sMaxNumberOfSlotsEachBus;
  @Int16() external int sMaxNumberOfControllers;
  @Int16() external int sRebuildPriority;
}

class VDS_SUB_SYSTEM_PROP2 extends Struct {
  external GUID id;
  external Pointer<Utf16> pwszFriendlyName;
  external Pointer<Utf16> pwszIdentification;
  @Uint32() external int ulFlags;
  @Uint32() external int ulStripeSizeFlags;
  @Uint32() external int ulSupportedRaidTypeFlags;
  @Uint32() external int status;
  @Uint32() external int health;
  @Int16() external int sNumberOfInternalBuses;
  @Int16() external int sMaxNumberOfSlotsEachBus;
  @Int16() external int sMaxNumberOfControllers;
  @Int16() external int sRebuildPriority;
  @Uint32() external int ulNumberOfEnclosures;
}

class VDS_CONTROLLER_PROP extends Struct {
  external GUID id;
  external Pointer<Utf16> pwszFriendlyName;
  external Pointer<Utf16> pwszIdentification;
  @Uint32() external int status;
  @Uint32() external int health;
  @Int16() external int sNumberOfPorts;
}

class VDS_DRIVE_PROP extends Struct {
  external GUID id;
  @Uint64() external int ullSize;
  external Pointer<Utf16> pwszFriendlyName;
  external Pointer<Utf16> pwszIdentification;
  @Uint32() external int ulFlags;
  @Uint32() external int status;
  @Uint32() external int health;
  @Int16() external int sInternalBusNumber;
  @Int16() external int sSlotNumber;
}

class VDS_DRIVE_PROP2 extends Struct {
  external GUID id;
  @Uint64() external int ullSize;
  external Pointer<Utf16> pwszFriendlyName;
  external Pointer<Utf16> pwszIdentification;
  @Uint32() external int ulFlags;
  @Uint32() external int status;
  @Uint32() external int health;
  @Int16() external int sInternalBusNumber;
  @Int16() external int sSlotNumber;
  @Uint32() external int ulEnclosureNumber;
  @Uint32() external int busType;
  @Uint32() external int ulSpindleSpeed;
}

class VDS_DRIVE_EXTENT extends Struct {
  external GUID id;
  external GUID LunId;
  @Uint64() external int ullSize;
  @Int32() external int bUsed;
}

class VDS_LUN_PROP extends Struct {
  external GUID id;
  @Uint64() external int ullSize;
  external Pointer<Utf16> pwszFriendlyName;
  external Pointer<Utf16> pwszIdentification;
  external Pointer<Utf16> pwszUnmaskingList;
  @Uint32() external int ulFlags;
  @Uint32() external int type;
  @Uint32() external int status;
  @Uint32() external int health;
  @Uint32() external int TransitionState;
  @Int16() external int sRebuildPriority;
}

class VDS_LUN_PLEX_PROP extends Struct {
  external GUID id;
  @Uint64() external int ullSize;
  @Uint32() external int type;
  @Uint32() external int status;
  @Uint32() external int health;
  @Uint32() external int TransitionState;
  @Uint32() external int ulFlags;
  @Uint32() external int ulStripeSize;
  @Int16() external int sRebuildPriority;
}

class VDS_PORT_PROP extends Struct {
  external GUID id;
  external Pointer<Utf16> pwszFriendlyName;
  external Pointer<Utf16> pwszIdentification;
  @Uint32() external int status;
}

class VDS_ISCSI_PORTAL_PROP extends Struct {
  external GUID id;
  external VDS_IPADDRESS address;
  @Uint32() external int status;
}

class VDS_ISCSI_TARGET_PROP extends Struct {
  external GUID id;
  external Pointer<Utf16> pwszIscsiName;
  external Pointer<Utf16> pwszFriendlyName;
  @Int32() external int bChapEnabled;
}

class VDS_ISCSI_PORTALGROUP_PROP extends Struct {
  external GUID id;
  @Uint16() external int tag;
}

class VDS_POOL_CUSTOM_ATTRIBUTES extends Struct {
  external Pointer<Utf16> pwszName;
  external Pointer<Utf16> pwszValue;
}

class VDS_POOL_ATTRIBUTES extends Struct {
  @Uint64() external int ullAttributeMask;
  @Uint32() external int raidType;
  @Uint32() external int busType;
  external Pointer<Utf16> pwszIntendedUsage;
  @Int32() external int bSpinDown;
  @Int32() external int bIsThinProvisioned;
  @Uint64() external int ullProvisionedSpace;
  @Int32() external int bNoSinglePointOfFailure;
  @Uint32() external int ulDataRedundancyMax;
  @Uint32() external int ulDataRedundancyMin;
  @Uint32() external int ulDataRedundancyDefault;
  @Uint32() external int ulPackageRedundancyMax;
  @Uint32() external int ulPackageRedundancyMin;
  @Uint32() external int ulPackageRedundancyDefault;
  @Uint32() external int ulStripeSize;
  @Uint32() external int ulStripeSizeMax;
  @Uint32() external int ulStripeSizeMin;
  @Uint32() external int ulDefaultStripeSize;
  @Uint32() external int ulNumberOfColumns;
  @Uint32() external int ulNumberOfColumnsMax;
  @Uint32() external int ulNumberOfColumnsMin;
  @Uint32() external int ulDefaultNumberofColumns;
  @Uint32() external int ulDataAvailabilityHint;
  @Uint32() external int ulAccessRandomnessHint;
  @Uint32() external int ulAccessDirectionHint;
  @Uint32() external int ulAccessSizeHint;
  @Uint32() external int ulAccessLatencyHint;
  @Uint32() external int ulAccessBandwidthWeightHint;
  @Uint32() external int ulStorageCostHint;
  @Uint32() external int ulStorageEfficiencyHint;
  @Uint32() external int ulNumOfCustomAttributes;
  external Pointer<VDS_POOL_CUSTOM_ATTRIBUTES> pPoolCustomAttributes;
  @Int32() external int bReserved1;
  @Int32() external int bReserved2;
  @Uint32() external int ulReserved1;
  @Uint32() external int ulReserved2;
  @Uint64() external int ullReserved1;
  @Uint64() external int ullReserved2;
}

class VDS_STORAGE_POOL_PROP extends Struct {
  external GUID id;
  @Uint32() external int status;
  @Uint32() external int health;
  @Uint32() external int type;
  external Pointer<Utf16> pwszName;
  external Pointer<Utf16> pwszDescription;
  @Uint64() external int ullTotalConsumedSpace;
  @Uint64() external int ullTotalManagedSpace;
  @Uint64() external int ullRemainingFreeSpace;
}

class VDS_STORAGE_POOL_DRIVE_EXTENT extends Struct {
  external GUID id;
  @Uint64() external int ullSize;
  @Int32() external int bUsed;
}

class VSS_SNAPSHOT_PROP extends Struct {
  external GUID m_SnapshotId;
  external GUID m_SnapshotSetId;
  @Int32() external int m_lSnapshotsCount;
  external Pointer<Uint16> m_pwszSnapshotDeviceObject;
  external Pointer<Uint16> m_pwszOriginalVolumeName;
  external Pointer<Uint16> m_pwszOriginatingMachine;
  external Pointer<Uint16> m_pwszServiceMachine;
  external Pointer<Uint16> m_pwszExposedName;
  external Pointer<Uint16> m_pwszExposedPath;
  external GUID m_ProviderId;
  @Int32() external int m_lSnapshotAttributes;
  @Int64() external int m_tsCreationTimestamp;
  @Uint32() external int m_eStatus;
}

class VSS_PROVIDER_PROP extends Struct {
  external GUID m_ProviderId;
  external Pointer<Uint16> m_pwszProviderName;
  @Uint32() external int m_eProviderType;
  external Pointer<Uint16> m_pwszProviderVersion;
  external GUID m_ProviderVersionId;
  external GUID m_ClassId;
}

class VSS_OBJECT_UNION extends Struct {
  external VSS_SNAPSHOT_PROP Snap;
  external VSS_PROVIDER_PROP Prov;
}

class VSS_OBJECT_PROP extends Struct {
  @Uint32() external int Type;
  external VSS_OBJECT_UNION Obj;
}

class IVssExamineWriterMetadata extends Struct {
}

class VssSnapshotMgmt extends Struct {
}

class VSS_VOLUME_PROP extends Struct {
  external Pointer<Uint16> m_pwszVolumeName;
  external Pointer<Uint16> m_pwszVolumeDisplayName;
}

class VSS_DIFF_VOLUME_PROP extends Struct {
  external Pointer<Uint16> m_pwszVolumeName;
  external Pointer<Uint16> m_pwszVolumeDisplayName;
  @Int64() external int m_llVolumeFreeSpace;
  @Int64() external int m_llVolumeTotalSpace;
}

class VSS_DIFF_AREA_PROP extends Struct {
  external Pointer<Uint16> m_pwszVolumeName;
  external Pointer<Uint16> m_pwszDiffAreaVolumeName;
  @Int64() external int m_llMaximumDiffSpace;
  @Int64() external int m_llAllocatedDiffSpace;
  @Int64() external int m_llUsedDiffSpace;
}

class VSS_MGMT_OBJECT_UNION extends Struct {
  external VSS_VOLUME_PROP Vol;
  external VSS_DIFF_VOLUME_PROP DiffVol;
  external VSS_DIFF_AREA_PROP DiffArea;
}

class VSS_MGMT_OBJECT_PROP extends Struct {
  @Uint32() external int Type;
  external VSS_MGMT_OBJECT_UNION Obj;
}

class VSS_VOLUME_PROTECTION_INFO extends Struct {
  @Uint32() external int m_protectionLevel;
  @Int32() external int m_volumeIsOfflineForProtection;
  @Uint32() external int m_protectionFault;
  @Int32() external int m_failureStatus;
  @Int32() external int m_volumeHasUnusedDiffArea;
  @Uint32() external int m_reserved;
}

class VSSCoordinator extends Struct {
}

class IDDVideoPortContainer extends Struct {
}

class IDirectDrawVideoPort extends Struct {
}

class IDirectDrawVideoPortNotify extends Struct {
}

class IDDVideoPortContainerVtbl extends Struct {
}

class IDirectDrawVideoPortVtbl extends Struct {
}

class IDirectDrawVideoPortNotifyVtbl extends Struct {
}

class DDVIDEOPORTSTATUS extends Struct {
  @Uint32() external int dwSize;
  @Int32() external int bInUse;
  @Uint32() external int dwFlags;
  @Uint32() external int dwReserved1;
  external DDVIDEOPORTCONNECT VideoPortType;
  @IntPtr() external int dwReserved2;
  @IntPtr() external int dwReserved3;
}

class DDVIDEOPORTNOTIFY extends Struct {
  @Int64() external int ApproximateTimeStamp;
  @Int32() external int lField;
  @Uint32() external int dwSurfaceIndex;
  @Int32() external int lDone;
}

class _DD_DESTROYDRIVERDATA extends Struct {
}

class _DD_SETMODEDATA extends Struct {
}

class _DD_GETVPORTAUTOFLIPSURFACEDATA extends Struct {
}

class DD_MORECAPS extends Struct {
  @Uint32() external int dwSize;
  @Uint32() external int dwAlphaCaps;
  @Uint32() external int dwSVBAlphaCaps;
  @Uint32() external int dwVSBAlphaCaps;
  @Uint32() external int dwSSBAlphaCaps;
  @Uint32() external int dwFilterCaps;
  @Uint32() external int dwSVBFilterCaps;
  @Uint32() external int dwVSBFilterCaps;
  @Uint32() external int dwSSBFilterCaps;
}

class DDNTCORECAPS extends Struct {
  @Uint32() external int dwSize;
  @Uint32() external int dwCaps;
  @Uint32() external int dwCaps2;
  @Uint32() external int dwCKeyCaps;
  @Uint32() external int dwFXCaps;
  @Uint32() external int dwFXAlphaCaps;
  @Uint32() external int dwPalCaps;
  @Uint32() external int dwSVCaps;
  @Uint32() external int dwAlphaBltConstBitDepths;
  @Uint32() external int dwAlphaBltPixelBitDepths;
  @Uint32() external int dwAlphaBltSurfaceBitDepths;
  @Uint32() external int dwAlphaOverlayConstBitDepths;
  @Uint32() external int dwAlphaOverlayPixelBitDepths;
  @Uint32() external int dwAlphaOverlaySurfaceBitDepths;
  @Uint32() external int dwZBufferBitDepths;
  @Uint32() external int dwVidMemTotal;
  @Uint32() external int dwVidMemFree;
  @Uint32() external int dwMaxVisibleOverlays;
  @Uint32() external int dwCurrVisibleOverlays;
  @Uint32() external int dwNumFourCCCodes;
  @Uint32() external int dwAlignBoundarySrc;
  @Uint32() external int dwAlignSizeSrc;
  @Uint32() external int dwAlignBoundaryDest;
  @Uint32() external int dwAlignSizeDest;
  @Uint32() external int dwAlignStrideAlign;
  external __uint__ dwRops;
  external DDSCAPS ddsCaps;
  @Uint32() external int dwMinOverlayStretch;
  @Uint32() external int dwMaxOverlayStretch;
  @Uint32() external int dwMinLiveVideoStretch;
  @Uint32() external int dwMaxLiveVideoStretch;
  @Uint32() external int dwMinHwCodecStretch;
  @Uint32() external int dwMaxHwCodecStretch;
  @Uint32() external int dwReserved1;
  @Uint32() external int dwReserved2;
  @Uint32() external int dwReserved3;
  @Uint32() external int dwSVBCaps;
  @Uint32() external int dwSVBCKeyCaps;
  @Uint32() external int dwSVBFXCaps;
  external __uint__ dwSVBRops;
  @Uint32() external int dwVSBCaps;
  @Uint32() external int dwVSBCKeyCaps;
  @Uint32() external int dwVSBFXCaps;
  external __uint__ dwVSBRops;
  @Uint32() external int dwSSBCaps;
  @Uint32() external int dwSSBCKeyCaps;
  @Uint32() external int dwSSBFXCaps;
  external __uint__ dwSSBRops;
  @Uint32() external int dwMaxVideoPorts;
  @Uint32() external int dwCurrVideoPorts;
  @Uint32() external int dwSVBCaps2;
}

class DD_HALINFO_V4 extends Struct {
  @Uint32() external int dwSize;
  external VIDEOMEMORYINFO vmiData;
  external DDNTCORECAPS ddCaps;
  external PDD_GETDRIVERINFO GetDriverInfo;
  @Uint32() external int dwFlags;
}

class DD_SETCLIPLISTDATA extends Struct {
  external Pointer<DD_DIRECTDRAW_GLOBAL> lpDD;
  external Pointer<DD_SURFACE_LOCAL> lpDDSurface;
  @Int32() external int ddRVal;
  external Pointer SetClipList;
}

class DD_DRVSETCOLORKEYDATA extends Struct {
  external Pointer<DD_SURFACE_LOCAL> lpDDSurface;
  @Uint32() external int dwFlags;
  external DDCOLORKEY ckNew;
  @Int32() external int ddRVal;
  external Pointer SetColorKey;
}

class DD_DESTROYDDLOCALDATA extends Struct {
  @Uint32() external int dwFlags;
  external Pointer<DD_DIRECTDRAW_LOCAL> pDDLcl;
  @Int32() external int ddRVal;
}

class D3DVIEWPORT extends Struct {
  @Uint32() external int dwSize;
  @Uint32() external int dwX;
  @Uint32() external int dwY;
  @Uint32() external int dwWidth;
  @Uint32() external int dwHeight;
  @Float() external double dvScaleX;
  @Float() external double dvScaleY;
  @Float() external double dvMaxX;
  @Float() external double dvMaxY;
  @Float() external double dvMinZ;
  @Float() external double dvMaxZ;
}

class D3DVIEWPORT2 extends Struct {
  @Uint32() external int dwSize;
  @Uint32() external int dwX;
  @Uint32() external int dwY;
  @Uint32() external int dwWidth;
  @Uint32() external int dwHeight;
  @Float() external double dvClipX;
  @Float() external double dvClipY;
  @Float() external double dvClipWidth;
  @Float() external double dvClipHeight;
  @Float() external double dvMinZ;
  @Float() external double dvMaxZ;
}

class D3DVIEWPORT7 extends Struct {
  @Uint32() external int dwX;
  @Uint32() external int dwY;
  @Uint32() external int dwWidth;
  @Uint32() external int dwHeight;
  @Float() external double dvMinZ;
  @Float() external double dvMaxZ;
}

class D3DTRANSFORMDATA extends Struct {
  @Uint32() external int dwSize;
  external Pointer lpIn;
  @Uint32() external int dwInSize;
  external Pointer lpOut;
  @Uint32() external int dwOutSize;
  external Pointer<D3DHVERTEX> lpHOut;
  @Uint32() external int dwClip;
  @Uint32() external int dwClipIntersection;
  @Uint32() external int dwClipUnion;
  external D3DRECT drExtent;
}

class D3DLIGHTINGELEMENT extends Struct {
  external D3DVECTOR dvPosition;
  external D3DVECTOR dvNormal;
}

class D3DLIGHT extends Struct {
  @Uint32() external int dwSize;
  @Uint32() external int dltType;
  external DXGI_RGBA dcvColor;
  external D3DVECTOR dvPosition;
  external D3DVECTOR dvDirection;
  @Float() external double dvRange;
  @Float() external double dvFalloff;
  @Float() external double dvAttenuation0;
  @Float() external double dvAttenuation1;
  @Float() external double dvAttenuation2;
  @Float() external double dvTheta;
  @Float() external double dvPhi;
}

class D3DLIGHT7 extends Struct {
  @Uint32() external int dltType;
  external DXGI_RGBA dcvDiffuse;
  external DXGI_RGBA dcvSpecular;
  external DXGI_RGBA dcvAmbient;
  external D3DVECTOR dvPosition;
  external D3DVECTOR dvDirection;
  @Float() external double dvRange;
  @Float() external double dvFalloff;
  @Float() external double dvAttenuation0;
  @Float() external double dvAttenuation1;
  @Float() external double dvAttenuation2;
  @Float() external double dvTheta;
  @Float() external double dvPhi;
}

class D3DLIGHT2 extends Struct {
  @Uint32() external int dwSize;
  @Uint32() external int dltType;
  external DXGI_RGBA dcvColor;
  external D3DVECTOR dvPosition;
  external D3DVECTOR dvDirection;
  @Float() external double dvRange;
  @Float() external double dvFalloff;
  @Float() external double dvAttenuation0;
  @Float() external double dvAttenuation1;
  @Float() external double dvAttenuation2;
  @Float() external double dvTheta;
  @Float() external double dvPhi;
  @Uint32() external int dwFlags;
}

class D3DLIGHTDATA extends Struct {
  @Uint32() external int dwSize;
  external Pointer<D3DLIGHTINGELEMENT> lpIn;
  @Uint32() external int dwInSize;
  external Pointer<D3DTLVERTEX> lpOut;
  @Uint32() external int dwOutSize;
}

class D3DINSTRUCTION extends Struct {
  @Uint8() external int bOpcode;
  @Uint8() external int bSize;
  @Uint16() external int wCount;
}

class D3DTEXTURELOAD extends Struct {
  @Uint32() external int hDestTexture;
  @Uint32() external int hSrcTexture;
}

class D3DPICKRECORD extends Struct {
  @Uint8() external int bOpcode;
  @Uint8() external int bPad;
  @Uint32() external int dwOffset;
  @Float() external double dvZ;
}

class D3DLINEPATTERN extends Struct {
  @Uint16() external int wRepeatFactor;
  @Uint16() external int wLinePattern;
}

class D3DMATRIXLOAD extends Struct {
  @Uint32() external int hDestMatrix;
  @Uint32() external int hSrcMatrix;
}

class D3DMATRIXMULTIPLY extends Struct {
  @Uint32() external int hDestMatrix;
  @Uint32() external int hSrcMatrix1;
  @Uint32() external int hSrcMatrix2;
}

class D3DPROCESSVERTICES extends Struct {
  @Uint32() external int dwFlags;
  @Uint16() external int wStart;
  @Uint16() external int wDest;
  @Uint32() external int dwCount;
  @Uint32() external int dwReserved;
}

class D3DSPAN extends Struct {
  @Uint16() external int wCount;
  @Uint16() external int wFirst;
}

class D3DPOINT extends Struct {
  @Uint16() external int wCount;
  @Uint16() external int wFirst;
}

class D3DBRANCH extends Struct {
  @Uint32() external int dwMask;
  @Uint32() external int dwValue;
  @Int32() external int bNegate;
  @Uint32() external int dwOffset;
}

class D3DSTATUS extends Struct {
  @Uint32() external int dwFlags;
  @Uint32() external int dwStatus;
  external D3DRECT drExtent;
}

class D3DCLIPSTATUS extends Struct {
  @Uint32() external int dwFlags;
  @Uint32() external int dwStatus;
  @Float() external double minx;
  @Float() external double maxx;
  @Float() external double miny;
  @Float() external double maxy;
  @Float() external double minz;
  @Float() external double maxz;
}

class D3DSTATS extends Struct {
  @Uint32() external int dwSize;
  @Uint32() external int dwTrianglesDrawn;
  @Uint32() external int dwLinesDrawn;
  @Uint32() external int dwPointsDrawn;
  @Uint32() external int dwSpansDrawn;
  @Uint32() external int dwVerticesProcessed;
}

class D3DEXECUTEDATA extends Struct {
  @Uint32() external int dwSize;
  @Uint32() external int dwVertexOffset;
  @Uint32() external int dwVertexCount;
  @Uint32() external int dwInstructionOffset;
  @Uint32() external int dwInstructionLength;
  @Uint32() external int dwHVertexOffset;
  external D3DSTATUS dsStatus;
}

class D3DVERTEXBUFFERDESC extends Struct {
  @Uint32() external int dwSize;
  @Uint32() external int dwCaps;
  @Uint32() external int dwFVF;
  @Uint32() external int dwNumVertices;
}

class D3DDP_PTRSTRIDE extends Struct {
  external Pointer lpvData;
  @Uint32() external int dwStride;
}

class D3DDRAWPRIMITIVESTRIDEDDATA extends Struct {
  external D3DDP_PTRSTRIDE position;
  external D3DDP_PTRSTRIDE normal;
  external D3DDP_PTRSTRIDE diffuse;
  external D3DDP_PTRSTRIDE specular;
  external D3DDP_PTRSTRIDE textureCoords;
}

class D3DTRANSFORMCAPS extends Struct {
  @Uint32() external int dwSize;
  @Uint32() external int dwCaps;
}

class D3DLIGHTINGCAPS extends Struct {
  @Uint32() external int dwSize;
  @Uint32() external int dwCaps;
  @Uint32() external int dwLightingModel;
  @Uint32() external int dwNumLights;
}

class _D3DPrimCaps extends Struct {
  @Uint32() external int dwSize;
  @Uint32() external int dwMiscCaps;
  @Uint32() external int dwRasterCaps;
  @Uint32() external int dwZCmpCaps;
  @Uint32() external int dwSrcBlendCaps;
  @Uint32() external int dwDestBlendCaps;
  @Uint32() external int dwAlphaCmpCaps;
  @Uint32() external int dwShadeCaps;
  @Uint32() external int dwTextureCaps;
  @Uint32() external int dwTextureFilterCaps;
  @Uint32() external int dwTextureBlendCaps;
  @Uint32() external int dwTextureAddressCaps;
  @Uint32() external int dwStippleWidth;
  @Uint32() external int dwStippleHeight;
}

class _D3DDeviceDesc extends Struct {
  @Uint32() external int dwSize;
  @Uint32() external int dwFlags;
  @Uint32() external int dcmColorModel;
  @Uint32() external int dwDevCaps;
  external D3DTRANSFORMCAPS dtcTransformCaps;
  @Int32() external int bClipping;
  external D3DLIGHTINGCAPS dlcLightingCaps;
  external _D3DPrimCaps dpcLineCaps;
  external _D3DPrimCaps dpcTriCaps;
  @Uint32() external int dwDeviceRenderBitDepth;
  @Uint32() external int dwDeviceZBufferBitDepth;
  @Uint32() external int dwMaxBufferSize;
  @Uint32() external int dwMaxVertexCount;
  @Uint32() external int dwMinTextureWidth;
  @Uint32() external int dwMinTextureHeight;
  @Uint32() external int dwMaxTextureWidth;
  @Uint32() external int dwMaxTextureHeight;
  @Uint32() external int dwMinStippleWidth;
  @Uint32() external int dwMaxStippleWidth;
  @Uint32() external int dwMinStippleHeight;
  @Uint32() external int dwMaxStippleHeight;
  @Uint32() external int dwMaxTextureRepeat;
  @Uint32() external int dwMaxTextureAspectRatio;
  @Uint32() external int dwMaxAnisotropy;
  @Float() external double dvGuardBandLeft;
  @Float() external double dvGuardBandTop;
  @Float() external double dvGuardBandRight;
  @Float() external double dvGuardBandBottom;
  @Float() external double dvExtentsAdjust;
  @Uint32() external int dwStencilCaps;
  @Uint32() external int dwFVFCaps;
  @Uint32() external int dwTextureOpCaps;
  @Uint16() external int wMaxTextureBlendStages;
  @Uint16() external int wMaxSimultaneousTextures;
}

class _D3DDeviceDesc7 extends Struct {
  @Uint32() external int dwDevCaps;
  external _D3DPrimCaps dpcLineCaps;
  external _D3DPrimCaps dpcTriCaps;
  @Uint32() external int dwDeviceRenderBitDepth;
  @Uint32() external int dwDeviceZBufferBitDepth;
  @Uint32() external int dwMinTextureWidth;
  @Uint32() external int dwMinTextureHeight;
  @Uint32() external int dwMaxTextureWidth;
  @Uint32() external int dwMaxTextureHeight;
  @Uint32() external int dwMaxTextureRepeat;
  @Uint32() external int dwMaxTextureAspectRatio;
  @Uint32() external int dwMaxAnisotropy;
  @Float() external double dvGuardBandLeft;
  @Float() external double dvGuardBandTop;
  @Float() external double dvGuardBandRight;
  @Float() external double dvGuardBandBottom;
  @Float() external double dvExtentsAdjust;
  @Uint32() external int dwStencilCaps;
  @Uint32() external int dwFVFCaps;
  @Uint32() external int dwTextureOpCaps;
  @Uint16() external int wMaxTextureBlendStages;
  @Uint16() external int wMaxSimultaneousTextures;
  @Uint32() external int dwMaxActiveLights;
  @Float() external double dvMaxVertexW;
  external GUID deviceGUID;
  @Uint16() external int wMaxUserClipPlanes;
  @Uint16() external int wMaxVertexBlendMatrices;
  @Uint32() external int dwVertexProcessingCaps;
  @Uint32() external int dwReserved1;
  @Uint32() external int dwReserved2;
  @Uint32() external int dwReserved3;
  @Uint32() external int dwReserved4;
}

class D3DFINDDEVICESEARCH extends Struct {
  @Uint32() external int dwSize;
  @Uint32() external int dwFlags;
  @Int32() external int bHardware;
  @Uint32() external int dcmColorModel;
  external GUID guid;
  @Uint32() external int dwCaps;
  external _D3DPrimCaps dpcPrimCaps;
}

class D3DFINDDEVICERESULT extends Struct {
  @Uint32() external int dwSize;
  external GUID guid;
  external _D3DDeviceDesc ddHwDesc;
  external _D3DDeviceDesc ddSwDesc;
}

class _D3DExecuteBufferDesc extends Struct {
  @Uint32() external int dwSize;
  @Uint32() external int dwFlags;
  @Uint32() external int dwCaps;
  @Uint32() external int dwBufferSize;
  external Pointer lpData;
}

class D3DDEVINFO_TEXTUREMANAGER extends Struct {
  @Int32() external int bThrashing;
  @Uint32() external int dwApproxBytesDownloaded;
  @Uint32() external int dwNumEvicts;
  @Uint32() external int dwNumVidCreates;
  @Uint32() external int dwNumTexturesUsed;
  @Uint32() external int dwNumUsedTexInVid;
  @Uint32() external int dwWorkingSet;
  @Uint32() external int dwWorkingSetBytes;
  @Uint32() external int dwTotalManaged;
  @Uint32() external int dwTotalBytes;
  @Uint32() external int dwLastPri;
}

class D3DDEVINFO_TEXTURING extends Struct {
  @Uint32() external int dwNumLoads;
  @Uint32() external int dwApproxBytesLoaded;
  @Uint32() external int dwNumPreLoads;
  @Uint32() external int dwNumSet;
  @Uint32() external int dwNumCreates;
  @Uint32() external int dwNumDestroys;
  @Uint32() external int dwNumSetPriorities;
  @Uint32() external int dwNumSetLODs;
  @Uint32() external int dwNumLocks;
  @Uint32() external int dwNumGetDCs;
}

class _D3DNTHALDeviceDesc_V1 extends Struct {
  @Uint32() external int dwSize;
  @Uint32() external int dwFlags;
  @Uint32() external int dcmColorModel;
  @Uint32() external int dwDevCaps;
  external D3DTRANSFORMCAPS dtcTransformCaps;
  @Int32() external int bClipping;
  external D3DLIGHTINGCAPS dlcLightingCaps;
  external _D3DPrimCaps dpcLineCaps;
  external _D3DPrimCaps dpcTriCaps;
  @Uint32() external int dwDeviceRenderBitDepth;
  @Uint32() external int dwDeviceZBufferBitDepth;
  @Uint32() external int dwMaxBufferSize;
  @Uint32() external int dwMaxVertexCount;
}

class _D3DNTHALDeviceDesc_V2 extends Struct {
  @Uint32() external int dwSize;
  @Uint32() external int dwFlags;
  @Uint32() external int dcmColorModel;
  @Uint32() external int dwDevCaps;
  external D3DTRANSFORMCAPS dtcTransformCaps;
  @Int32() external int bClipping;
  external D3DLIGHTINGCAPS dlcLightingCaps;
  external _D3DPrimCaps dpcLineCaps;
  external _D3DPrimCaps dpcTriCaps;
  @Uint32() external int dwDeviceRenderBitDepth;
  @Uint32() external int dwDeviceZBufferBitDepth;
  @Uint32() external int dwMaxBufferSize;
  @Uint32() external int dwMaxVertexCount;
  @Uint32() external int dwMinTextureWidth;
  @Uint32() external int dwMinTextureHeight;
  @Uint32() external int dwMaxTextureWidth;
  @Uint32() external int dwMaxTextureHeight;
  @Uint32() external int dwMinStippleWidth;
  @Uint32() external int dwMaxStippleWidth;
  @Uint32() external int dwMinStippleHeight;
  @Uint32() external int dwMaxStippleHeight;
}

class _D3DNTDeviceDesc_V3 extends Struct {
  @Uint32() external int dwSize;
  @Uint32() external int dwFlags;
  @Uint32() external int dcmColorModel;
  @Uint32() external int dwDevCaps;
  external D3DTRANSFORMCAPS dtcTransformCaps;
  @Int32() external int bClipping;
  external D3DLIGHTINGCAPS dlcLightingCaps;
  external _D3DPrimCaps dpcLineCaps;
  external _D3DPrimCaps dpcTriCaps;
  @Uint32() external int dwDeviceRenderBitDepth;
  @Uint32() external int dwDeviceZBufferBitDepth;
  @Uint32() external int dwMaxBufferSize;
  @Uint32() external int dwMaxVertexCount;
  @Uint32() external int dwMinTextureWidth;
  @Uint32() external int dwMinTextureHeight;
  @Uint32() external int dwMaxTextureWidth;
  @Uint32() external int dwMaxTextureHeight;
  @Uint32() external int dwMinStippleWidth;
  @Uint32() external int dwMaxStippleWidth;
  @Uint32() external int dwMinStippleHeight;
  @Uint32() external int dwMaxStippleHeight;
  @Uint32() external int dwMaxTextureRepeat;
  @Uint32() external int dwMaxTextureAspectRatio;
  @Uint32() external int dwMaxAnisotropy;
  @Float() external double dvGuardBandLeft;
  @Float() external double dvGuardBandTop;
  @Float() external double dvGuardBandRight;
  @Float() external double dvGuardBandBottom;
  @Float() external double dvExtentsAdjust;
  @Uint32() external int dwStencilCaps;
  @Uint32() external int dwFVFCaps;
  @Uint32() external int dwTextureOpCaps;
  @Uint16() external int wMaxTextureBlendStages;
  @Uint16() external int wMaxSimultaneousTextures;
}

class D3DNTHAL_GLOBALDRIVERDATA extends Struct {
  @Uint32() external int dwSize;
  external _D3DNTHALDeviceDesc_V1 hwCaps;
  @Uint32() external int dwNumVertices;
  @Uint32() external int dwNumClipVertices;
  @Uint32() external int dwNumTextureFormats;
  external Pointer<DDSURFACEDESC> lpTextureFormats;
}

class D3DNTHAL_D3DDX6EXTENDEDCAPS extends Struct {
  @Uint32() external int dwSize;
  @Uint32() external int dwMinTextureWidth;
  @Uint32() external int dwMaxTextureWidth;
  @Uint32() external int dwMinTextureHeight;
  @Uint32() external int dwMaxTextureHeight;
  @Uint32() external int dwMinStippleWidth;
  @Uint32() external int dwMaxStippleWidth;
  @Uint32() external int dwMinStippleHeight;
  @Uint32() external int dwMaxStippleHeight;
  @Uint32() external int dwMaxTextureRepeat;
  @Uint32() external int dwMaxTextureAspectRatio;
  @Uint32() external int dwMaxAnisotropy;
  @Float() external double dvGuardBandLeft;
  @Float() external double dvGuardBandTop;
  @Float() external double dvGuardBandRight;
  @Float() external double dvGuardBandBottom;
  @Float() external double dvExtentsAdjust;
  @Uint32() external int dwStencilCaps;
  @Uint32() external int dwFVFCaps;
  @Uint32() external int dwTextureOpCaps;
  @Uint16() external int wMaxTextureBlendStages;
  @Uint16() external int wMaxSimultaneousTextures;
}

class D3DNTHAL_D3DEXTENDEDCAPS extends Struct {
  @Uint32() external int dwSize;
  @Uint32() external int dwMinTextureWidth;
  @Uint32() external int dwMaxTextureWidth;
  @Uint32() external int dwMinTextureHeight;
  @Uint32() external int dwMaxTextureHeight;
  @Uint32() external int dwMinStippleWidth;
  @Uint32() external int dwMaxStippleWidth;
  @Uint32() external int dwMinStippleHeight;
  @Uint32() external int dwMaxStippleHeight;
  @Uint32() external int dwMaxTextureRepeat;
  @Uint32() external int dwMaxTextureAspectRatio;
  @Uint32() external int dwMaxAnisotropy;
  @Float() external double dvGuardBandLeft;
  @Float() external double dvGuardBandTop;
  @Float() external double dvGuardBandRight;
  @Float() external double dvGuardBandBottom;
  @Float() external double dvExtentsAdjust;
  @Uint32() external int dwStencilCaps;
  @Uint32() external int dwFVFCaps;
  @Uint32() external int dwTextureOpCaps;
  @Uint16() external int wMaxTextureBlendStages;
  @Uint16() external int wMaxSimultaneousTextures;
  @Uint32() external int dwMaxActiveLights;
  @Float() external double dvMaxVertexW;
  @Uint16() external int wMaxUserClipPlanes;
  @Uint16() external int wMaxVertexBlendMatrices;
  @Uint32() external int dwVertexProcessingCaps;
  @Uint32() external int dwReserved1;
  @Uint32() external int dwReserved2;
  @Uint32() external int dwReserved3;
  @Uint32() external int dwReserved4;
}

class D3DNTHAL_CONTEXTDESTROYDATA extends Struct {
  @IntPtr() external int dwhContext;
  @Int32() external int ddrval;
}

class D3DNTHAL_CONTEXTDESTROYALLDATA extends Struct {
  @Uint32() external int dwPID;
  @Int32() external int ddrval;
}

class D3DNTHAL_SCENECAPTUREDATA extends Struct {
  @IntPtr() external int dwhContext;
  @Uint32() external int dwFlag;
  @Int32() external int ddrval;
}

class D3DNTHAL_TEXTURECREATEDATA extends Struct {
  @IntPtr() external int dwhContext;
  @IntPtr() external int hDDS;
  @IntPtr() external int dwHandle;
  @Int32() external int ddrval;
}

class D3DNTHAL_TEXTUREDESTROYDATA extends Struct {
  @IntPtr() external int dwhContext;
  @IntPtr() external int dwHandle;
  @Int32() external int ddrval;
}

class D3DNTHAL_TEXTURESWAPDATA extends Struct {
  @IntPtr() external int dwhContext;
  @IntPtr() external int dwHandle1;
  @IntPtr() external int dwHandle2;
  @Int32() external int ddrval;
}

class D3DNTHAL_TEXTUREGETSURFDATA extends Struct {
  @IntPtr() external int dwhContext;
  @IntPtr() external int hDDS;
  @IntPtr() external int dwHandle;
  @Int32() external int ddrval;
}

class D3DNTHAL_CALLBACKS extends Struct {
  @Uint32() external int dwSize;
  external Pointer<D3DNTHAL_CONTEXTCREATECB> ContextCreate;
  external Pointer<D3DNTHAL_CONTEXTDESTROYCB> ContextDestroy;
  external Pointer<D3DNTHAL_CONTEXTDESTROYALLCB> ContextDestroyAll;
  external Pointer<D3DNTHAL_SCENECAPTURECB> SceneCapture;
  external Pointer dwReserved10;
  external Pointer dwReserved11;
  external Pointer dwReserved22;
  external Pointer dwReserved23;
  @IntPtr() external int dwReserved;
  external Pointer<D3DNTHAL_TEXTURECREATECB> TextureCreate;
  external Pointer<D3DNTHAL_TEXTUREDESTROYCB> TextureDestroy;
  external Pointer<D3DNTHAL_TEXTURESWAPCB> TextureSwap;
  external Pointer<D3DNTHAL_TEXTUREGETSURFCB> TextureGetSurf;
  external Pointer dwReserved12;
  external Pointer dwReserved13;
  external Pointer dwReserved14;
  external Pointer dwReserved15;
  external Pointer dwReserved16;
  external Pointer dwReserved17;
  external Pointer dwReserved18;
  external Pointer dwReserved19;
  external Pointer dwReserved20;
  external Pointer dwReserved21;
  external Pointer dwReserved24;
  @IntPtr() external int dwReserved0;
  @IntPtr() external int dwReserved1;
  @IntPtr() external int dwReserved2;
  @IntPtr() external int dwReserved3;
  @IntPtr() external int dwReserved4;
  @IntPtr() external int dwReserved5;
  @IntPtr() external int dwReserved6;
  @IntPtr() external int dwReserved7;
  @IntPtr() external int dwReserved8;
  @IntPtr() external int dwReserved9;
}

class D3DNTHAL_SETRENDERTARGETDATA extends Struct {
  @IntPtr() external int dwhContext;
  external Pointer<DD_SURFACE_LOCAL> lpDDS;
  external Pointer<DD_SURFACE_LOCAL> lpDDSZ;
  @Int32() external int ddrval;
}

class D3DNTHAL_CALLBACKS2 extends Struct {
  @Uint32() external int dwSize;
  @Uint32() external int dwFlags;
  external Pointer<D3DNTHAL_SETRENDERTARGETCB> SetRenderTarget;
  external Pointer dwReserved1;
  external Pointer dwReserved2;
  external Pointer dwReserved3;
  external Pointer dwReserved4;
}

class D3DNTHAL_CLEAR2DATA extends Struct {
  @IntPtr() external int dwhContext;
  @Uint32() external int dwFlags;
  @Uint32() external int dwFillColor;
  @Float() external double dvFillDepth;
  @Uint32() external int dwFillStencil;
  external Pointer<D3DRECT> lpRects;
  @Uint32() external int dwNumRects;
  @Int32() external int ddrval;
}

class D3DNTHAL_VALIDATETEXTURESTAGESTATEDATA extends Struct {
  @IntPtr() external int dwhContext;
  @Uint32() external int dwFlags;
  @IntPtr() external int dwReserved;
  @Uint32() external int dwNumPasses;
  @Int32() external int ddrval;
}

class D3DNTHAL_DP2POINTS extends Struct {
  @Uint16() external int wCount;
  @Uint16() external int wVStart;
}

class D3DNTHAL_DP2STARTVERTEX extends Struct {
  @Uint16() external int wVStart;
}

class D3DNTHAL_DP2LINELIST extends Struct {
  @Uint16() external int wVStart;
}

class D3DNTHAL_DP2INDEXEDLINELIST extends Struct {
  @Uint16() external int wV1;
  @Uint16() external int wV2;
}

class D3DNTHAL_DP2LINESTRIP extends Struct {
  @Uint16() external int wVStart;
}

class D3DNTHAL_DP2INDEXEDLINESTRIP extends Struct {
  external __ushort__ wV;
}

class D3DNTHAL_DP2TRIANGLELIST extends Struct {
  @Uint16() external int wVStart;
}

class D3DNTHAL_DP2INDEXEDTRIANGLELIST extends Struct {
  @Uint16() external int wV1;
  @Uint16() external int wV2;
  @Uint16() external int wV3;
  @Uint16() external int wFlags;
}

class D3DNTHAL_DP2INDEXEDTRIANGLELIST2 extends Struct {
  @Uint16() external int wV1;
  @Uint16() external int wV2;
  @Uint16() external int wV3;
}

class D3DNTHAL_DP2TRIANGLESTRIP extends Struct {
  @Uint16() external int wVStart;
}

class D3DNTHAL_DP2INDEXEDTRIANGLESTRIP extends Struct {
  external __ushort__ wV;
}

class D3DNTHAL_DP2TRIANGLEFAN extends Struct {
  @Uint16() external int wVStart;
}

class D3DNTHAL_DP2INDEXEDTRIANGLEFAN extends Struct {
  external __ushort__ wV;
}

class D3DNTHAL_DP2TRIANGLEFAN_IMM extends Struct {
  @Uint32() external int dwEdgeFlags;
}

class D3DNTHAL_DP2TEXTURESTAGESTATE extends Struct {
  @Uint16() external int wStage;
  @Uint16() external int TSState;
  @Uint32() external int dwValue;
}

class D3DNTHAL_DP2VIEWPORTINFO extends Struct {
  @Uint32() external int dwX;
  @Uint32() external int dwY;
  @Uint32() external int dwWidth;
  @Uint32() external int dwHeight;
}

class D3DNTHAL_DP2WINFO extends Struct {
  @Float() external double dvWNear;
  @Float() external double dvWFar;
}

class D3DNTHAL_DP2SETPALETTE extends Struct {
  @Uint32() external int dwPaletteHandle;
  @Uint32() external int dwPaletteFlags;
  @Uint32() external int dwSurfaceHandle;
}

class D3DNTHAL_DP2UPDATEPALETTE extends Struct {
  @Uint32() external int dwPaletteHandle;
  @Uint16() external int wStartIndex;
  @Uint16() external int wNumEntries;
}

class D3DNTHAL_DP2SETRENDERTARGET extends Struct {
  @Uint32() external int hRenderTarget;
  @Uint32() external int hZBuffer;
}

class D3DNTHAL_DP2STATESET extends Struct {
  @Uint32() external int dwOperation;
  @Uint32() external int dwParam;
  @Uint32() external int sbType;
}

class D3DNTHAL_DP2ZRANGE extends Struct {
  @Float() external double dvMinZ;
  @Float() external double dvMaxZ;
}

class D3DNTHAL_DP2SETCLIPPLANE extends Struct {
  @Uint32() external int dwIndex;
  external __float__ plane;
}

class D3DNTHAL_DP2CREATELIGHT extends Struct {
  @Uint32() external int dwIndex;
}

class D3DNTHAL_DP2SETTRANSFORM extends Struct {
  @Uint32() external int xfrmType;
  external D3DMATRIX matrix;
}

class D3DNTHAL_DP2EXT extends Struct {
  @Uint32() external int dwExtToken;
  @Uint32() external int dwSize;
}

class D3DNTHAL_DP2TEXBLT extends Struct {
  @Uint32() external int dwDDDestSurface;
  @Uint32() external int dwDDSrcSurface;
  external POINT pDest;
  external RECTL rSrc;
  @Uint32() external int dwFlags;
}

class D3DNTHAL_DP2SETPRIORITY extends Struct {
  @Uint32() external int dwDDDestSurface;
  @Uint32() external int dwPriority;
}

class D3DNTHAL_DP2CLEAR extends Struct {
  @Uint32() external int dwFlags;
  @Uint32() external int dwFillColor;
  @Float() external double dvFillDepth;
  @Uint32() external int dwFillStencil;
  external RECT Rects;
}

class D3DNTHAL_DP2SETTEXLOD extends Struct {
  @Uint32() external int dwDDSurface;
  @Uint32() external int dwLOD;
}

class D3DNTHAL_CALLBACKS3 extends Struct {
  @Uint32() external int dwSize;
  @Uint32() external int dwFlags;
  external Pointer<D3DNTHAL_CLEAR2CB> Clear2;
  external Pointer lpvReserved;
  external Pointer<D3DNTHAL_VALIDATETEXTURESTAGESTATECB> ValidateTextureStageState;
  external Pointer<D3DNTHAL_DRAWPRIMITIVES2CB> DrawPrimitives2;
}

class POINTE extends Struct {
  @Uint32() external int x;
  @Uint32() external int y;
}

class FLOAT_LONG extends Struct {
  @Uint32() external int e;
  @Int32() external int l;
}

class POINTFIX extends Struct {
  @Int32() external int x;
  @Int32() external int y;
}

class RECTFX extends Struct {
  @Int32() external int xLeft;
  @Int32() external int yTop;
  @Int32() external int xRight;
  @Int32() external int yBottom;
}

class LIGATURE extends Struct {
  @Uint32() external int culSize;
  external Pointer<Utf16> pwsz;
  @Uint32() external int chglyph;
  external __uint__ ahglyph;
}

class FD_LIGATURE extends Struct {
  @Uint32() external int culThis;
  @Uint32() external int ulType;
  @Uint32() external int cLigatures;
  external LIGATURE alig;
}

class POINTQF extends Struct {
  @Int64() external int x;
  @Int64() external int y;
}

class CDDDXGK_REDIRBITMAPPRESENTINFO extends Struct {
  @Uint32() external int NumDirtyRects;
  external Pointer<RECT> DirtyRect;
  @Uint32() external int NumContexts;
  external __intptr__ hContext;
  @Uint8() external int bDoNotSynchronizeWithDxContent;
}

class XFORMOBJ extends Struct {
  @Uint32() external int ulReserved;
}

class HSEMAPHORE__ extends Struct {
  @Int32() external int unused;
}

class EMFINFO extends Struct {
  @Uint32() external int nSize;
  @IntPtr() external int hdc;
  external Pointer<Uint8> pvEMF;
  external Pointer<Uint8> pvCurrentRecord;
}

class DRH_APIBITMAPDATA extends Struct {
  external Pointer<SURFOBJ> pso;
  @Int32() external int b;
}

class DEVICE_EVENT_MOUNT extends Struct {
  @Uint32() external int Version;
  @Uint32() external int Flags;
  @Uint32() external int FileSystemNameLength;
  @Uint32() external int FileSystemNameOffset;
}

class DEVICE_EVENT_BECOMING_READY extends Struct {
  @Uint32() external int Version;
  @Uint32() external int Reason;
  @Uint32() external int Estimated100msToReady;
}

class DEVICE_EVENT_EXTERNAL_REQUEST extends Struct {
  @Uint32() external int Version;
  @Uint32() external int DeviceClass;
  @Uint16() external int ButtonStatus;
  @Uint16() external int Request;
  @Int64() external int SystemTime;
}

class DEVICE_EVENT_GENERIC_DATA extends Struct {
  @Uint32() external int EventNumber;
}

class DEVICE_EVENT_RBC_DATA extends Struct {
  @Uint32() external int EventNumber;
  @Uint8() external int SenseQualifier;
  @Uint8() external int SenseCode;
  @Uint8() external int SenseKey;
  @Uint8() external int Reserved;
  @Uint32() external int Information;
}

class GUID_IO_DISK_CLONE_ARRIVAL_INFORMATION extends Struct {
  @Uint32() external int DiskNumber;
}

class DISK_HEALTH_NOTIFICATION_DATA extends Struct {
  external GUID DeviceGuid;
}

class DEVPROPKEY extends Struct {
  external GUID fmtid;
  @Uint32() external int pid;
}

class DEVPROPCOMPKEY extends Struct {
  external DEVPROPKEY Key;
  @Uint32() external int Store;
  external Pointer<Utf16> LocaleName;
}

class DEVPROPERTY extends Struct {
  external DEVPROPCOMPKEY CompKey;
  @Uint32() external int Type;
  @Uint32() external int BufferSize;
  external Pointer Buffer;
}

class REDBOOK_DIGITAL_AUDIO_EXTRACTION_INFO extends Struct {
  @Uint32() external int Version;
  @Uint32() external int Accurate;
  @Uint32() external int Supported;
  @Uint32() external int AccurateMask0;
}

class DEV_BROADCAST_HDR extends Struct {
  @Uint32() external int dbch_size;
  @Uint32() external int dbch_devicetype;
  @Uint32() external int dbch_reserved;
}

class VolLockBroadcast extends Struct {
  external DEV_BROADCAST_HDR vlb_dbh;
  @Uint32() external int vlb_owner;
  @Uint8() external int vlb_perms;
  @Uint8() external int vlb_lockType;
  @Uint8() external int vlb_drive;
  @Uint8() external int vlb_flags;
}

class _DEV_BROADCAST_HEADER extends Struct {
  @Uint32() external int dbcd_size;
  @Uint32() external int dbcd_devicetype;
  @Uint32() external int dbcd_reserved;
}

class DEV_BROADCAST_OEM extends Struct {
  @Uint32() external int dbco_size;
  @Uint32() external int dbco_devicetype;
  @Uint32() external int dbco_reserved;
  @Uint32() external int dbco_identifier;
  @Uint32() external int dbco_suppfunc;
}

class DEV_BROADCAST_DEVNODE extends Struct {
  @Uint32() external int dbcd_size;
  @Uint32() external int dbcd_devicetype;
  @Uint32() external int dbcd_reserved;
  @Uint32() external int dbcd_devnode;
}

class DEV_BROADCAST_VOLUME extends Struct {
  @Uint32() external int dbcv_size;
  @Uint32() external int dbcv_devicetype;
  @Uint32() external int dbcv_reserved;
  @Uint32() external int dbcv_unitmask;
  @Uint32() external int dbcv_flags;
}

class DEV_BROADCAST_PORT_A extends Struct {
  @Uint32() external int dbcp_size;
  @Uint32() external int dbcp_devicetype;
  @Uint32() external int dbcp_reserved;
  external __byte__ dbcp_name;
}

class DEV_BROADCAST_PORT_W extends Struct {
  @Uint32() external int dbcp_size;
  @Uint32() external int dbcp_devicetype;
  @Uint32() external int dbcp_reserved;
  external __ushort__ dbcp_name;
}

class DEV_BROADCAST_NET extends Struct {
  @Uint32() external int dbcn_size;
  @Uint32() external int dbcn_devicetype;
  @Uint32() external int dbcn_reserved;
  @Uint32() external int dbcn_resource;
  @Uint32() external int dbcn_flags;
}

class DEV_BROADCAST_DEVICEINTERFACE_A extends Struct {
  @Uint32() external int dbcc_size;
  @Uint32() external int dbcc_devicetype;
  @Uint32() external int dbcc_reserved;
  external GUID dbcc_classguid;
  external __byte__ dbcc_name;
}

class DEV_BROADCAST_DEVICEINTERFACE_W extends Struct {
  @Uint32() external int dbcc_size;
  @Uint32() external int dbcc_devicetype;
  @Uint32() external int dbcc_reserved;
  external GUID dbcc_classguid;
  external __ushort__ dbcc_name;
}

class DEV_BROADCAST_HANDLE extends Struct {
  @Uint32() external int dbch_size;
  @Uint32() external int dbch_devicetype;
  @Uint32() external int dbch_reserved;
  @IntPtr() external int dbch_handle;
  external Pointer dbch_hdevnotify;
  external GUID dbch_eventguid;
  @Int32() external int dbch_nameoffset;
  external __ubyte__ dbch_data;
}

class DEV_BROADCAST_HANDLE32 extends Struct {
  @Uint32() external int dbch_size;
  @Uint32() external int dbch_devicetype;
  @Uint32() external int dbch_reserved;
  @Uint32() external int dbch_handle;
  @Uint32() external int dbch_hdevnotify;
  external GUID dbch_eventguid;
  @Int32() external int dbch_nameoffset;
  external __ubyte__ dbch_data;
}

class DEV_BROADCAST_HANDLE64 extends Struct {
  @Uint32() external int dbch_size;
  @Uint32() external int dbch_devicetype;
  @Uint32() external int dbch_reserved;
  @Uint64() external int dbch_handle;
  @Uint64() external int dbch_hdevnotify;
  external GUID dbch_eventguid;
  @Int32() external int dbch_nameoffset;
  external __ubyte__ dbch_data;
}

class _DEV_BROADCAST_USERDEFINED extends Struct {
  external DEV_BROADCAST_HDR dbud_dbh;
  external __byte__ dbud_szName;
}

class PWM_CONTROLLER_INFO extends Struct {
  @IntPtr() external int Size;
  @Uint32() external int PinCount;
  @Uint64() external int MinimumPeriod;
  @Uint64() external int MaximumPeriod;
}

class PWM_CONTROLLER_GET_ACTUAL_PERIOD_OUTPUT extends Struct {
  @Uint64() external int ActualPeriod;
}

class PWM_CONTROLLER_SET_DESIRED_PERIOD_INPUT extends Struct {
  @Uint64() external int DesiredPeriod;
}

class PWM_CONTROLLER_SET_DESIRED_PERIOD_OUTPUT extends Struct {
  @Uint64() external int ActualPeriod;
}

class PWM_PIN_GET_ACTIVE_DUTY_CYCLE_PERCENTAGE_OUTPUT extends Struct {
  @Uint64() external int Percentage;
}

class PWM_PIN_SET_ACTIVE_DUTY_CYCLE_PERCENTAGE_INPUT extends Struct {
  @Uint64() external int Percentage;
}

class PWM_PIN_GET_POLARITY_OUTPUT extends Struct {
  @Uint32() external int Polarity;
}

class PWM_PIN_SET_POLARITY_INPUT extends Struct {
  @Uint32() external int Polarity;
}

class PWM_PIN_IS_STARTED_OUTPUT extends Struct {
  @Uint8() external int IsStarted;
}

class AtlThunkData_t extends Struct {
}

class ENCLAVE_IDENTITY extends Struct {
  external __ubyte__ OwnerId;
  external __ubyte__ UniqueId;
  external __ubyte__ AuthorId;
  external __ubyte__ FamilyId;
  external __ubyte__ ImageId;
  @Uint32() external int EnclaveSvn;
  @Uint32() external int SecureKernelSvn;
  @Uint32() external int PlatformSvn;
  @Uint32() external int Flags;
  @Uint32() external int SigningLevel;
  @Uint32() external int EnclaveType;
}

class VBS_ENCLAVE_REPORT_PKG_HEADER extends Struct {
  @Uint32() external int PackageSize;
  @Uint32() external int Version;
  @Uint32() external int SignatureScheme;
  @Uint32() external int SignedStatementSize;
  @Uint32() external int SignatureSize;
  @Uint32() external int Reserved;
}

class VBS_ENCLAVE_REPORT extends Struct {
  @Uint32() external int ReportSize;
  @Uint32() external int ReportVersion;
  external __ubyte__ EnclaveData;
  external ENCLAVE_IDENTITY EnclaveIdentity;
}

class VBS_ENCLAVE_REPORT_VARDATA_HEADER extends Struct {
  @Uint32() external int DataType;
  @Uint32() external int Size;
}

class VBS_ENCLAVE_REPORT_MODULE extends Struct {
  external VBS_ENCLAVE_REPORT_VARDATA_HEADER Header;
  external __ubyte__ UniqueId;
  external __ubyte__ AuthorId;
  external __ubyte__ FamilyId;
  external __ubyte__ ImageId;
  @Uint32() external int Svn;
  external __ushort__ ModuleName;
}

class ENCLAVE_INFORMATION extends Struct {
  @Uint32() external int EnclaveType;
  @Uint32() external int Reserved;
  external Pointer BaseAddress;
  @IntPtr() external int Size;
  external ENCLAVE_IDENTITY Identity;
}

class VBS_BASIC_ENCLAVE_THREAD_DESCRIPTOR32 extends Struct {
  external __uint__ ThreadContext;
  @Uint32() external int EntryPoint;
  @Uint32() external int StackPointer;
  @Uint32() external int ExceptionEntryPoint;
  @Uint32() external int ExceptionStack;
  @Uint32() external int ExceptionActive;
}

class VBS_BASIC_ENCLAVE_THREAD_DESCRIPTOR64 extends Struct {
  external __uint64__ ThreadContext;
  @Uint64() external int EntryPoint;
  @Uint64() external int StackPointer;
  @Uint64() external int ExceptionEntryPoint;
  @Uint64() external int ExceptionStack;
  @Uint32() external int ExceptionActive;
}

class VBS_BASIC_ENCLAVE_EXCEPTION_AMD64 extends Struct {
  @Uint32() external int ExceptionCode;
  @Uint32() external int NumberParameters;
  external __uintptr__ ExceptionInformation;
  @IntPtr() external int ExceptionRAX;
  @IntPtr() external int ExceptionRCX;
  @IntPtr() external int ExceptionRIP;
  @IntPtr() external int ExceptionRFLAGS;
  @IntPtr() external int ExceptionRSP;
}

class ENCLAVE_VBS_BASIC_KEY_REQUEST extends Struct {
  @Uint32() external int RequestSize;
  @Uint32() external int Flags;
  @Uint32() external int EnclaveSVN;
  @Uint32() external int SystemKeyID;
  @Uint32() external int CurrentSystemKeyID;
}

class VBS_BASIC_ENCLAVE_SYSCALL_PAGE extends Struct {
  external VBS_BASIC_ENCLAVE_BASIC_CALL_RETURN_FROM_ENCLAVE ReturnFromEnclave;
  external VBS_BASIC_ENCLAVE_BASIC_CALL_RETURN_FROM_EXCEPTION ReturnFromException;
  external VBS_BASIC_ENCLAVE_BASIC_CALL_TERMINATE_THREAD TerminateThread;
  external VBS_BASIC_ENCLAVE_BASIC_CALL_INTERRUPT_THREAD InterruptThread;
  external VBS_BASIC_ENCLAVE_BASIC_CALL_COMMIT_PAGES CommitPages;
  external VBS_BASIC_ENCLAVE_BASIC_CALL_DECOMMIT_PAGES DecommitPages;
  external VBS_BASIC_ENCLAVE_BASIC_CALL_PROTECT_PAGES ProtectPages;
  external VBS_BASIC_ENCLAVE_BASIC_CALL_CREATE_THREAD CreateThread;
  external VBS_BASIC_ENCLAVE_BASIC_CALL_GET_ENCLAVE_INFORMATION GetEnclaveInformation;
  external VBS_BASIC_ENCLAVE_BASIC_CALL_GENERATE_KEY GenerateKey;
  external VBS_BASIC_ENCLAVE_BASIC_CALL_GENERATE_REPORT GenerateReport;
  external VBS_BASIC_ENCLAVE_BASIC_CALL_VERIFY_REPORT VerifyReport;
  external VBS_BASIC_ENCLAVE_BASIC_CALL_GENERATE_RANDOM_DATA GenerateRandomData;
}

class GLOBAL_MACHINE_POWER_POLICY extends Struct {
  @Uint32() external int Revision;
  @Uint32() external int LidOpenWakeAc;
  @Uint32() external int LidOpenWakeDc;
  @Uint32() external int BroadcastCapacityResolution;
}

class GLOBAL_USER_POWER_POLICY extends Struct {
  @Uint32() external int Revision;
  external POWER_ACTION_POLICY PowerButtonAc;
  external POWER_ACTION_POLICY PowerButtonDc;
  external POWER_ACTION_POLICY SleepButtonAc;
  external POWER_ACTION_POLICY SleepButtonDc;
  external POWER_ACTION_POLICY LidCloseAc;
  external POWER_ACTION_POLICY LidCloseDc;
  external SYSTEM_POWER_LEVEL DischargePolicy;
  @Uint32() external int GlobalFlags;
}

class GLOBAL_POWER_POLICY extends Struct {
  external GLOBAL_USER_POWER_POLICY user;
  external GLOBAL_MACHINE_POWER_POLICY mach;
}

class MACHINE_POWER_POLICY extends Struct {
  @Uint32() external int Revision;
  @Uint32() external int MinSleepAc;
  @Uint32() external int MinSleepDc;
  @Uint32() external int ReducedLatencySleepAc;
  @Uint32() external int ReducedLatencySleepDc;
  @Uint32() external int DozeTimeoutAc;
  @Uint32() external int DozeTimeoutDc;
  @Uint32() external int DozeS4TimeoutAc;
  @Uint32() external int DozeS4TimeoutDc;
  @Uint8() external int MinThrottleAc;
  @Uint8() external int MinThrottleDc;
  external __ubyte__ pad1;
  external POWER_ACTION_POLICY OverThrottledAc;
  external POWER_ACTION_POLICY OverThrottledDc;
}

class MACHINE_PROCESSOR_POWER_POLICY extends Struct {
  @Uint32() external int Revision;
  external PROCESSOR_POWER_POLICY ProcessorPolicyAc;
  external PROCESSOR_POWER_POLICY ProcessorPolicyDc;
}

class USER_POWER_POLICY extends Struct {
  @Uint32() external int Revision;
  external POWER_ACTION_POLICY IdleAc;
  external POWER_ACTION_POLICY IdleDc;
  @Uint32() external int IdleTimeoutAc;
  @Uint32() external int IdleTimeoutDc;
  @Uint8() external int IdleSensitivityAc;
  @Uint8() external int IdleSensitivityDc;
  @Uint8() external int ThrottlePolicyAc;
  @Uint8() external int ThrottlePolicyDc;
  @Uint32() external int MaxSleepAc;
  @Uint32() external int MaxSleepDc;
  external __uint__ Reserved;
  @Uint32() external int VideoTimeoutAc;
  @Uint32() external int VideoTimeoutDc;
  @Uint32() external int SpindownTimeoutAc;
  @Uint32() external int SpindownTimeoutDc;
  @Uint8() external int OptimizeForPowerAc;
  @Uint8() external int OptimizeForPowerDc;
  @Uint8() external int FanThrottleToleranceAc;
  @Uint8() external int FanThrottleToleranceDc;
  @Uint8() external int ForcedThrottleAc;
  @Uint8() external int ForcedThrottleDc;
}

class POWER_POLICY extends Struct {
  external USER_POWER_POLICY user;
  external MACHINE_POWER_POLICY mach;
}

class DEVICE_NOTIFY_SUBSCRIBE_PARAMETERS extends Struct {
  external PDEVICE_NOTIFY_CALLBACK_ROUTINE Callback;
  external Pointer Context;
}

class THERMAL_EVENT extends Struct {
  @Uint32() external int Version;
  @Uint32() external int Size;
  @Uint32() external int Type;
  @Uint32() external int Temperature;
  @Uint32() external int TripPointTemperature;
  external Pointer<Utf16> Initiator;
}

class BATTERY_QUERY_INFORMATION extends Struct {
  @Uint32() external int BatteryTag;
  @Uint32() external int InformationLevel;
  @Uint32() external int AtRate;
}

class BATTERY_INFORMATION extends Struct {
  @Uint32() external int Capabilities;
  @Uint8() external int Technology;
  external __ubyte__ Reserved;
  external __ubyte__ Chemistry;
  @Uint32() external int DesignedCapacity;
  @Uint32() external int FullChargedCapacity;
  @Uint32() external int DefaultAlert1;
  @Uint32() external int DefaultAlert2;
  @Uint32() external int CriticalBias;
  @Uint32() external int CycleCount;
}

class BATTERY_CHARGING_SOURCE extends Struct {
  @Uint32() external int Type;
  @Uint32() external int MaxCurrent;
}

class BATTERY_CHARGING_SOURCE_INFORMATION extends Struct {
  @Uint32() external int Type;
  @Uint8() external int SourceOnline;
}

class BATTERY_SET_INFORMATION extends Struct {
  @Uint32() external int BatteryTag;
  @Uint32() external int InformationLevel;
  external __ubyte__ Buffer;
}

class BATTERY_CHARGER_STATUS extends Struct {
  @Uint32() external int Type;
  external __uint__ VaData;
}

class BATTERY_USB_CHARGER_STATUS extends Struct {
  @Uint32() external int Type;
  @Uint32() external int Reserved;
  @Uint32() external int Flags;
  @Uint32() external int MaxCurrent;
  @Uint32() external int Voltage;
  @Uint32() external int PortType;
  @Uint64() external int PortId;
  external Pointer PowerSourceInformation;
  external GUID OemCharger;
}

class BATTERY_WAIT_STATUS extends Struct {
  @Uint32() external int BatteryTag;
  @Uint32() external int Timeout;
  @Uint32() external int PowerState;
  @Uint32() external int LowCapacity;
  @Uint32() external int HighCapacity;
}

class BATTERY_STATUS extends Struct {
  @Uint32() external int PowerState;
  @Uint32() external int Capacity;
  @Uint32() external int Voltage;
  @Int32() external int Rate;
}

class BATTERY_MANUFACTURE_DATE extends Struct {
  @Uint8() external int Day;
  @Uint8() external int Month;
  @Uint16() external int Year;
}

class THERMAL_INFORMATION extends Struct {
  @Uint32() external int ThermalStamp;
  @Uint32() external int ThermalConstant1;
  @Uint32() external int ThermalConstant2;
  @IntPtr() external int Processors;
  @Uint32() external int SamplingPeriod;
  @Uint32() external int CurrentTemperature;
  @Uint32() external int PassiveTripPoint;
  @Uint32() external int CriticalTripPoint;
  @Uint8() external int ActiveTripPointCount;
  external __uint__ ActiveTripPoint;
}

class THERMAL_WAIT_READ extends Struct {
  @Uint32() external int Timeout;
  @Uint32() external int LowTemperature;
  @Uint32() external int HighTemperature;
}

class THERMAL_POLICY extends Struct {
  @Uint32() external int Version;
  @Uint8() external int WaitForUpdate;
  @Uint8() external int Hibernate;
  @Uint8() external int Critical;
  @Uint8() external int ThermalStandby;
  @Uint32() external int ActivationReasons;
  @Uint32() external int PassiveLimit;
  @Uint32() external int ActiveLevel;
  @Uint8() external int OverThrottled;
}

class PROCESSOR_OBJECT_INFO extends Struct {
  @Uint32() external int PhysicalID;
  @Uint32() external int PBlkAddress;
  @Uint8() external int PBlkLength;
}

class PROCESSOR_OBJECT_INFO_EX extends Struct {
  @Uint32() external int PhysicalID;
  @Uint32() external int PBlkAddress;
  @Uint8() external int PBlkLength;
  @Uint32() external int InitialApicId;
}

class WAKE_ALARM_INFORMATION extends Struct {
  @Uint32() external int TimerIdentifier;
  @Uint32() external int Timeout;
}

class ACPI_REAL_TIME extends Struct {
  @Uint16() external int Year;
  @Uint8() external int Month;
  @Uint8() external int Day;
  @Uint8() external int Hour;
  @Uint8() external int Minute;
  @Uint8() external int Second;
  @Uint8() external int Valid;
  @Uint16() external int Milliseconds;
  @Int16() external int TimeZone;
  @Uint8() external int DayLight;
  external __ubyte__ Reserved1;
}

class INDIRECT_DISPLAY_INFO extends Struct {
  external LUID DisplayAdapterLuid;
  @Uint32() external int Flags;
  @Uint32() external int NumMonitors;
  @Uint32() external int DisplayAdapterTargetBase;
}

class VIDEO_VDM extends Struct {
  @IntPtr() external int ProcessHandle;
}

class VIDEO_REGISTER_VDM extends Struct {
  @Uint32() external int MinimumStateSize;
}

class VIDEO_MONITOR_DESCRIPTOR extends Struct {
  @Uint32() external int DescriptorSize;
  external __ubyte__ Descriptor;
}

class DXGK_WIN32K_PARAM_DATA extends Struct {
  external Pointer PathsArray;
  external Pointer ModesArray;
  @Uint32() external int NumPathArrayElements;
  @Uint32() external int NumModeArrayElements;
  @Uint32() external int SDCFlags;
}

class VIDEO_WIN32K_CALLBACKS_PARAMS extends Struct {
  @Uint32() external int CalloutType;
  external Pointer PhysDisp;
  @IntPtr() external int Param;
  @Int32() external int Status;
  @Uint8() external int LockUserSession;
  @Uint8() external int IsPostDevice;
  @Uint8() external int SurpriseRemoval;
  @Uint8() external int WaitForQueueReady;
}

class VIDEO_WIN32K_CALLBACKS extends Struct {
  external Pointer PhysDisp;
  external PVIDEO_WIN32K_CALLOUT Callout;
  @Uint32() external int bACPI;
  @IntPtr() external int pPhysDeviceObject;
  @Uint32() external int DualviewFlags;
}

class VIDEO_DEVICE_SESSION_STATUS extends Struct {
  @Uint32() external int bEnable;
  @Uint32() external int bSuccess;
}

class VIDEO_HARDWARE_STATE_HEADER extends Struct {
  @Uint32() external int Length;
  external __ubyte__ PortValue;
  @Uint32() external int AttribIndexDataState;
  @Uint32() external int BasicSequencerOffset;
  @Uint32() external int BasicCrtContOffset;
  @Uint32() external int BasicGraphContOffset;
  @Uint32() external int BasicAttribContOffset;
  @Uint32() external int BasicDacOffset;
  @Uint32() external int BasicLatchesOffset;
  @Uint32() external int ExtendedSequencerOffset;
  @Uint32() external int ExtendedCrtContOffset;
  @Uint32() external int ExtendedGraphContOffset;
  @Uint32() external int ExtendedAttribContOffset;
  @Uint32() external int ExtendedDacOffset;
  @Uint32() external int ExtendedValidatorStateOffset;
  @Uint32() external int ExtendedMiscDataOffset;
  @Uint32() external int PlaneLength;
  @Uint32() external int Plane1Offset;
  @Uint32() external int Plane2Offset;
  @Uint32() external int Plane3Offset;
  @Uint32() external int Plane4Offset;
  @Uint32() external int VGAStateFlags;
  @Uint32() external int DIBOffset;
  @Uint32() external int DIBBitsPerPixel;
  @Uint32() external int DIBXResolution;
  @Uint32() external int DIBYResolution;
  @Uint32() external int DIBXlatOffset;
  @Uint32() external int DIBXlatLength;
  @Uint32() external int VesaInfoOffset;
  external Pointer FrameBufferData;
}

class VIDEO_HARDWARE_STATE extends Struct {
  external Pointer<VIDEO_HARDWARE_STATE_HEADER> StateHeader;
  @Uint32() external int StateLength;
}

class VIDEO_NUM_MODES extends Struct {
  @Uint32() external int NumModes;
  @Uint32() external int ModeInformationLength;
}

class VIDEO_MODE extends Struct {
  @Uint32() external int RequestedMode;
}

class VIDEO_MODE_INFORMATION extends Struct {
  @Uint32() external int Length;
  @Uint32() external int ModeIndex;
  @Uint32() external int VisScreenWidth;
  @Uint32() external int VisScreenHeight;
  @Uint32() external int ScreenStride;
  @Uint32() external int NumberOfPlanes;
  @Uint32() external int BitsPerPlane;
  @Uint32() external int Frequency;
  @Uint32() external int XMillimeter;
  @Uint32() external int YMillimeter;
  @Uint32() external int NumberRedBits;
  @Uint32() external int NumberGreenBits;
  @Uint32() external int NumberBlueBits;
  @Uint32() external int RedMask;
  @Uint32() external int GreenMask;
  @Uint32() external int BlueMask;
  @Uint32() external int AttributeFlags;
  @Uint32() external int VideoMemoryBitmapWidth;
  @Uint32() external int VideoMemoryBitmapHeight;
  @Uint32() external int DriverSpecificAttributeFlags;
}

class VIDEO_LOAD_FONT_INFORMATION extends Struct {
  @Uint16() external int WidthInPixels;
  @Uint16() external int HeightInPixels;
  @Uint32() external int FontSize;
  external __ubyte__ Font;
}

class VIDEO_PALETTE_DATA extends Struct {
  @Uint16() external int NumEntries;
  @Uint16() external int FirstEntry;
  external __ushort__ Colors;
}

class VIDEO_CLUTDATA extends Struct {
  @Uint8() external int Red;
  @Uint8() external int Green;
  @Uint8() external int Blue;
  @Uint8() external int Unused;
}

class VIDEO_CURSOR_POSITION extends Struct {
  @Int16() external int Column;
  @Int16() external int Row;
}

class VIDEO_CURSOR_ATTRIBUTES extends Struct {
  @Uint16() external int Width;
  @Uint16() external int Height;
  @Int16() external int Column;
  @Int16() external int Row;
  @Uint8() external int Rate;
  @Uint8() external int Enable;
}

class VIDEO_POINTER_POSITION extends Struct {
  @Int16() external int Column;
  @Int16() external int Row;
}

class VIDEO_POINTER_ATTRIBUTES extends Struct {
  @Uint32() external int Flags;
  @Uint32() external int Width;
  @Uint32() external int Height;
  @Uint32() external int WidthInBytes;
  @Uint32() external int Enable;
  @Int16() external int Column;
  @Int16() external int Row;
  external __ubyte__ Pixels;
}

class VIDEO_POINTER_CAPABILITIES extends Struct {
  @Uint32() external int Flags;
  @Uint32() external int MaxWidth;
  @Uint32() external int MaxHeight;
  @Uint32() external int HWPtrBitmapStart;
  @Uint32() external int HWPtrBitmapEnd;
}

class VIDEO_BANK_SELECT extends Struct {
  @Uint32() external int Length;
  @Uint32() external int Size;
  @Uint32() external int BankingFlags;
  @Uint32() external int BankingType;
  @Uint32() external int PlanarHCBankingType;
  @Uint32() external int BitmapWidthInBytes;
  @Uint32() external int BitmapSize;
  @Uint32() external int Granularity;
  @Uint32() external int PlanarHCGranularity;
  @Uint32() external int CodeOffset;
  @Uint32() external int PlanarHCBankCodeOffset;
  @Uint32() external int PlanarHCEnableCodeOffset;
  @Uint32() external int PlanarHCDisableCodeOffset;
}

class VIDEO_MEMORY extends Struct {
  external Pointer RequestedVirtualAddress;
}

class VIDEO_SHARE_MEMORY extends Struct {
  @IntPtr() external int ProcessHandle;
  @Uint32() external int ViewOffset;
  @Uint32() external int ViewSize;
  external Pointer RequestedVirtualAddress;
}

class VIDEO_SHARE_MEMORY_INFORMATION extends Struct {
  @Uint32() external int SharedViewOffset;
  @Uint32() external int SharedViewSize;
  external Pointer VirtualAddress;
}

class VIDEO_MEMORY_INFORMATION extends Struct {
  external Pointer VideoRamBase;
  @Uint32() external int VideoRamLength;
  external Pointer FrameBufferBase;
  @Uint32() external int FrameBufferLength;
}

class VIDEO_PUBLIC_ACCESS_RANGES extends Struct {
  @Uint32() external int InIoSpace;
  @Uint32() external int MappedInIoSpace;
  external Pointer VirtualAddress;
}

class VIDEO_COLOR_CAPABILITIES extends Struct {
  @Uint32() external int Length;
  @Uint32() external int AttributeFlags;
  @Int32() external int RedPhosphoreDecay;
  @Int32() external int GreenPhosphoreDecay;
  @Int32() external int BluePhosphoreDecay;
  @Int32() external int WhiteChromaticity_x;
  @Int32() external int WhiteChromaticity_y;
  @Int32() external int WhiteChromaticity_Y;
  @Int32() external int RedChromaticity_x;
  @Int32() external int RedChromaticity_y;
  @Int32() external int GreenChromaticity_x;
  @Int32() external int GreenChromaticity_y;
  @Int32() external int BlueChromaticity_x;
  @Int32() external int BlueChromaticity_y;
  @Int32() external int WhiteGamma;
  @Int32() external int RedGamma;
  @Int32() external int GreenGamma;
  @Int32() external int BlueGamma;
}

class VIDEO_POWER_MANAGEMENT extends Struct {
  @Uint32() external int Length;
  @Uint32() external int DPMSVersion;
  @Uint32() external int PowerState;
}

class VIDEO_COLOR_LUT_DATA extends Struct {
  @Uint32() external int Length;
  @Uint32() external int LutDataFormat;
  external __ubyte__ LutData;
}

class VIDEO_LUT_RGB256WORDS extends Struct {
  external __ushort__ Red;
  external __ushort__ Green;
  external __ushort__ Blue;
}

class BANK_POSITION extends Struct {
  @Uint32() external int ReadBankPosition;
  @Uint32() external int WriteBankPosition;
}

class DISPLAY_BRIGHTNESS extends Struct {
  @Uint8() external int ucDisplayPolicy;
  @Uint8() external int ucACBrightness;
  @Uint8() external int ucDCBrightness;
}

class FSCNTL_SCREEN_INFO extends Struct {
  external COORD Position;
  external COORD ScreenSize;
  @Uint32() external int nNumberOfChars;
}

class FONT_IMAGE_INFO extends Struct {
  external COORD FontSize;
  external Pointer<Uint8> ImageBits;
}

class CHAR_IMAGE_INFO extends Struct {
  external CHAR_INFO CharInfo;
  external FONT_IMAGE_INFO FontImageInfo;
}

class VGA_CHAR extends Struct {
  @Int8() external int Char;
  @Int8() external int Attributes;
}

class FSVIDEO_COPY_FRAME_BUFFER extends Struct {
  external FSCNTL_SCREEN_INFO SrcScreen;
  external FSCNTL_SCREEN_INFO DestScreen;
}

class FSVIDEO_WRITE_TO_FRAME_BUFFER extends Struct {
  external Pointer<CHAR_IMAGE_INFO> SrcBuffer;
  external FSCNTL_SCREEN_INFO DestScreen;
}

class FSVIDEO_REVERSE_MOUSE_POINTER extends Struct {
  external FSCNTL_SCREEN_INFO Screen;
  @Uint32() external int dwType;
}

class FSVIDEO_MODE_INFORMATION extends Struct {
  external VIDEO_MODE_INFORMATION VideoMode;
  external VIDEO_MEMORY_INFORMATION VideoMemory;
}

class FSVIDEO_SCREEN_INFORMATION extends Struct {
  external COORD ScreenSize;
  external COORD FontSize;
}

class FSVIDEO_CURSOR_POSITION extends Struct {
  external VIDEO_CURSOR_POSITION Coord;
  @Uint32() external int dwType;
}

class ENG_EVENT extends Struct {
  external Pointer pKEvent;
  @Uint32() external int fFlags;
}

class VIDEO_PERFORMANCE_COUNTER extends Struct {
  external __uint64__ NbOfAllocationEvicted;
  external __uint64__ NbOfAllocationMarked;
  external __uint64__ NbOfAllocationRestored;
  external __uint64__ KBytesEvicted;
  external __uint64__ KBytesMarked;
  external __uint64__ KBytesRestored;
  @Uint64() external int NbProcessCommited;
  @Uint64() external int NbAllocationCommited;
  @Uint64() external int NbAllocationMarked;
  @Uint64() external int KBytesAllocated;
  @Uint64() external int KBytesAvailable;
  @Uint64() external int KBytesCurMarked;
  @Uint64() external int Reference;
  @Uint64() external int Unreference;
  @Uint64() external int TrueReference;
  @Uint64() external int NbOfPageIn;
  @Uint64() external int KBytesPageIn;
  @Uint64() external int NbOfPageOut;
  @Uint64() external int KBytesPageOut;
  @Uint64() external int NbOfRotateOut;
  @Uint64() external int KBytesRotateOut;
}

class VIDEO_QUERY_PERFORMANCE_COUNTER extends Struct {
  @Uint32() external int BufferSize;
  external Pointer<VIDEO_PERFORMANCE_COUNTER> Buffer;
}

class BRIGHTNESS_LEVEL extends Struct {
  @Uint8() external int Count;
  external __ubyte__ Level;
}

class BRIGHTNESS_NIT_RANGE extends Struct {
  @Uint32() external int MinLevelInMillinit;
  @Uint32() external int MaxLevelInMillinit;
  @Uint32() external int StepSizeInMillinit;
}

class BRIGHTNESS_NIT_RANGES extends Struct {
  @Uint32() external int NormalRangeCount;
  @Uint32() external int RangeCount;
  @Uint32() external int PreferredMaximumBrightness;
  external BRIGHTNESS_NIT_RANGE SupportedRanges;
}

class CHROMATICITY_COORDINATE extends Struct {
  @Float() external double x;
  @Float() external double y;
}

class PANEL_SET_BACKLIGHT_OPTIMIZATION extends Struct {
  @Uint32() external int Level;
}

class BACKLIGHT_REDUCTION_GAMMA_RAMP extends Struct {
  external __ushort__ R;
  external __ushort__ G;
  external __ushort__ B;
}

class PANEL_GET_BACKLIGHT_REDUCTION extends Struct {
  @Uint16() external int BacklightUsersetting;
  @Uint16() external int BacklightEffective;
  external BACKLIGHT_REDUCTION_GAMMA_RAMP GammaRamp;
}

class COLORSPACE_TRANSFORM_1DLUT_CAP extends Struct {
  @Uint32() external int NumberOfLUTEntries;
  external COLORSPACE_TRANSFORM_DATA_CAP DataCap;
}

class COLORSPACE_TRANSFORM_TARGET_CAPS extends Struct {
  @Uint32() external int Version;
  external COLORSPACE_TRANSFORM_1DLUT_CAP LookupTable1DDegammaCap;
  external COLORSPACE_TRANSFORM_MATRIX_CAP ColorMatrix3x3Cap;
  external COLORSPACE_TRANSFORM_1DLUT_CAP LookupTable1DRegammaCap;
}

class GAMMA_RAMP_RGB256x3x16 extends Struct {
  external __ushort__ Red;
  external __ushort__ Green;
  external __ushort__ Blue;
}

class GAMMA_RAMP_RGB extends Struct {
  @Float() external double Red;
  @Float() external double Green;
  @Float() external double Blue;
}

class GAMMA_RAMP_DXGI_1 extends Struct {
  external GAMMA_RAMP_RGB Scale;
  external GAMMA_RAMP_RGB Offset;
  external GAMMA_RAMP_RGB GammaCurve;
}

class COLORSPACE_TRANSFORM_3x4 extends Struct {
  external __float__ ColorMatrix3x4;
  @Float() external double ScalarMultiplier;
  external GAMMA_RAMP_RGB LookupTable1D;
}

class OUTPUT_WIRE_FORMAT extends Struct {
  @Uint32() external int ColorEncoding;
  @Uint32() external int BitsPerPixel;
}

class COLORSPACE_TRANSFORM_MATRIX_V2 extends Struct {
  @Uint32() external int StageControlLookupTable1DDegamma;
  external GAMMA_RAMP_RGB LookupTable1DDegamma;
  @Uint32() external int StageControlColorMatrix3x3;
  external __float__ ColorMatrix3x3;
  @Uint32() external int StageControlLookupTable1DRegamma;
  external GAMMA_RAMP_RGB LookupTable1DRegamma;
}

class COLORSPACE_TRANSFORM_SET_INPUT extends Struct {
  @Uint32() external int OutputWireColorSpaceExpected;
  external OUTPUT_WIRE_FORMAT OutputWireFormatExpected;
  external COLORSPACE_TRANSFORM ColorSpaceTransform;
}

class SET_ACTIVE_COLOR_PROFILE_NAME extends Struct {
  external __ushort__ ColorProfileName;
}

class MIPI_DSI_CAPS extends Struct {
  @Uint8() external int DSITypeMajor;
  @Uint8() external int DSITypeMinor;
  @Uint8() external int SpecVersionMajor;
  @Uint8() external int SpecVersionMinor;
  @Uint8() external int SpecVersionPatch;
  @Uint16() external int TargetMaximumReturnPacketSize;
  @Uint8() external int ResultCodeFlags;
  @Uint8() external int ResultCodeStatus;
  @Uint8() external int Revision;
  @Uint8() external int Level;
  @Uint8() external int DeviceClassHi;
  @Uint8() external int DeviceClassLo;
  @Uint8() external int ManufacturerHi;
  @Uint8() external int ManufacturerLo;
  @Uint8() external int ProductHi;
  @Uint8() external int ProductLo;
  @Uint8() external int LengthHi;
  @Uint8() external int LengthLo;
}

class PROCESSOR_NUMBER extends Struct {
  @Uint16() external int Group;
  @Uint8() external int Number;
  @Uint8() external int Reserved;
}

class GROUP_AFFINITY extends Struct {
  @IntPtr() external int Mask;
  @Uint16() external int Group;
  external __ushort__ Reserved;
}

class POWERBROADCAST_SETTING extends Struct {
  external GUID PowerSetting;
  @Uint32() external int DataLength;
  external __ubyte__ Data;
}

