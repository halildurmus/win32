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

class HKEY extends Struct {
  @IntPtr()
  external int Value;
}

class HWINWATCH extends Struct {
  @IntPtr()
  external int Value;
}

class FEATURE_STATE_CHANGE_SUBSCRIPTION extends Struct {
  @IntPtr()
  external int Value;
}

class FH_SERVICE_PIPE_HANDLE extends Struct {
  @IntPtr()
  external int Value;
}

class NETLOGON_INFO_1 extends Struct {
  @Uint32()
  external int netlog1_flags;
  @Uint32()
  external int netlog1_pdc_connection_status;
}

class NETLOGON_INFO_2 extends Struct {
  @Uint32()
  external int netlog2_flags;
  @Uint32()
  external int netlog2_pdc_connection_status;
  external Pointer<Utf16> netlog2_trusted_dc_name;
  @Uint32()
  external int netlog2_tc_connection_status;
}

class NETLOGON_INFO_3 extends Struct {
  @Uint32()
  external int netlog3_flags;
  @Uint32()
  external int netlog3_logon_attempts;
  @Uint32()
  external int netlog3_reserved1;
  @Uint32()
  external int netlog3_reserved2;
  @Uint32()
  external int netlog3_reserved3;
  @Uint32()
  external int netlog3_reserved4;
  @Uint32()
  external int netlog3_reserved5;
}

class NETLOGON_INFO_4 extends Struct {
  external Pointer<Utf16> netlog4_trusted_dc_name;
  external Pointer<Utf16> netlog4_trusted_domain_name;
}

class OSVERSIONINFOA extends Struct {
  @Uint32()
  external int dwOSVersionInfoSize;
  @Uint32()
  external int dwMajorVersion;
  @Uint32()
  external int dwMinorVersion;
  @Uint32()
  external int dwBuildNumber;
  @Uint32()
  external int dwPlatformId;
  @Array(128)
  external Array<Int8> szCSDVersion;
}

class OSVERSIONINFOW extends Struct {
  @Uint32()
  external int dwOSVersionInfoSize;
  @Uint32()
  external int dwMajorVersion;
  @Uint32()
  external int dwMinorVersion;
  @Uint32()
  external int dwBuildNumber;
  @Uint32()
  external int dwPlatformId;
  @Array(128)
  external Array<Uint16> szCSDVersion;
}

class OSVERSIONINFOEXA extends Struct {
  @Uint32()
  external int dwOSVersionInfoSize;
  @Uint32()
  external int dwMajorVersion;
  @Uint32()
  external int dwMinorVersion;
  @Uint32()
  external int dwBuildNumber;
  @Uint32()
  external int dwPlatformId;
  @Array(128)
  external Array<Int8> szCSDVersion;
  @Uint16()
  external int wServicePackMajor;
  @Uint16()
  external int wServicePackMinor;
  @Uint16()
  external int wSuiteMask;
  @Uint8()
  external int wProductType;
  @Uint8()
  external int wReserved;
}

class OSVERSIONINFOEXW extends Struct {
  @Uint32()
  external int dwOSVersionInfoSize;
  @Uint32()
  external int dwMajorVersion;
  @Uint32()
  external int dwMinorVersion;
  @Uint32()
  external int dwBuildNumber;
  @Uint32()
  external int dwPlatformId;
  @Array(128)
  external Array<Uint16> szCSDVersion;
  @Uint16()
  external int wServicePackMajor;
  @Uint16()
  external int wServicePackMinor;
  @Uint16()
  external int wSuiteMask;
  @Uint8()
  external int wProductType;
  @Uint8()
  external int wReserved;
}

class FILETIME extends Struct {
  @Uint32()
  external int dwLowDateTime;
  @Uint32()
  external int dwHighDateTime;
}

class SYSTEMTIME extends Struct {
  @Uint16()
  external int wYear;
  @Uint16()
  external int wMonth;
  @Uint16()
  external int wDayOfWeek;
  @Uint16()
  external int wDay;
  @Uint16()
  external int wHour;
  @Uint16()
  external int wMinute;
  @Uint16()
  external int wSecond;
  @Uint16()
  external int wMilliseconds;
}

class UpdateAssessment extends Struct {
  @Uint32()
  external int status;
  @Uint32()
  external int impact;
  @Uint32()
  external int daysOutOfDate;
}

class OSUpdateAssessment extends Struct {
  @Int32()
  external int isEndOfSupport;
  external UpdateAssessment assessmentForCurrent;
  external UpdateAssessment assessmentForUpToDate;
  @Uint32()
  external int securityStatus;
  external FILETIME assessmentTime;
  external FILETIME releaseInfoTime;
  external Pointer<Utf16> currentOSBuild;
  external FILETIME currentOSReleaseTime;
  external Pointer<Utf16> upToDateOSBuild;
  external FILETIME upToDateOSReleaseTime;
}

class STRING extends Struct {
  @Uint16()
  external int Length;
  @Uint16()
  external int MaximumLength;
  external Pointer<Utf8> Buffer;
}

class SYSTEM_INFO extends Struct {
  @Uint32()
  external int Anonymous;
  @Uint32()
  external int dwPageSize;
  external Pointer lpMinimumApplicationAddress;
  external Pointer lpMaximumApplicationAddress;
  @IntPtr()
  external int dwActiveProcessorMask;
  @Uint32()
  external int dwNumberOfProcessors;
  @Uint32()
  external int dwProcessorType;
  @Uint32()
  external int dwAllocationGranularity;
  @Uint16()
  external int wProcessorLevel;
  @Uint16()
  external int wProcessorRevision;
}

class JIT_DEBUG_INFO extends Struct {
  @Uint32()
  external int dwSize;
  @Uint32()
  external int dwProcessorArchitecture;
  @Uint32()
  external int dwThreadID;
  @Uint32()
  external int dwReserved0;
  @Uint64()
  external int lpExceptionAddress;
  @Uint64()
  external int lpExceptionRecord;
  @Uint64()
  external int lpContextRecord;
}

class HW_PROFILE_INFOA extends Struct {
  @Uint32()
  external int dwDockInfo;
  @Array(39)
  external Array<Int8> szHwProfileGuid;
  @Array(80)
  external Array<Int8> szHwProfileName;
}

class HW_PROFILE_INFOW extends Struct {
  @Uint32()
  external int dwDockInfo;
  @Array(39)
  external Array<Uint16> szHwProfileGuid;
  @Array(80)
  external Array<Uint16> szHwProfileName;
}

class TIME_ZONE_INFORMATION extends Struct {
  @Int32()
  external int Bias;
  @Array(32)
  external Array<Uint16> StandardName;
  external SYSTEMTIME StandardDate;
  @Int32()
  external int StandardBias;
  @Array(32)
  external Array<Uint16> DaylightName;
  external SYSTEMTIME DaylightDate;
  @Int32()
  external int DaylightBias;
}

class DYNAMIC_TIME_ZONE_INFORMATION extends Struct {
  @Int32()
  external int Bias;
  @Array(32)
  external Array<Uint16> StandardName;
  external SYSTEMTIME StandardDate;
  @Int32()
  external int StandardBias;
  @Array(32)
  external Array<Uint16> DaylightName;
  external SYSTEMTIME DaylightDate;
  @Int32()
  external int DaylightBias;
  @Array(128)
  external Array<Uint16> TimeZoneKeyName;
  @Uint8()
  external int DynamicDaylightTimeDisabled;
}

class ACTCTX_SECTION_KEYED_DATA_2600 extends Struct {
  @Uint32()
  external int cbSize;
  @Uint32()
  external int ulDataFormatVersion;
  external Pointer lpData;
  @Uint32()
  external int ulLength;
  external Pointer lpSectionGlobalData;
  @Uint32()
  external int ulSectionGlobalDataLength;
  external Pointer lpSectionBase;
  @Uint32()
  external int ulSectionTotalLength;
  @IntPtr()
  external int hActCtx;
  @Uint32()
  external int ulAssemblyRosterIndex;
}

class ACTCTX_SECTION_KEYED_DATA_ASSEMBLY_METADATA extends Struct {
  external Pointer lpInformation;
  external Pointer lpSectionBase;
  @Uint32()
  external int ulSectionLength;
  external Pointer lpSectionGlobalDataBase;
  @Uint32()
  external int ulSectionGlobalDataLength;
}

class ACTIVATION_CONTEXT_BASIC_INFORMATION extends Struct {
  @IntPtr()
  external int hActCtx;
  @Uint32()
  external int dwFlags;
}

class FILE_CASE_SENSITIVE_INFO extends Struct {
  @Uint32()
  external int Flags;
}

class FILE_DISPOSITION_INFO_EX extends Struct {
  @Uint32()
  external int Flags;
}

class val_context extends Struct {
  @Int32()
  external int valuelen;
  external Pointer value_context;
  external Pointer val_buff_ptr;
}

class pvalueA extends Struct {
  external Pointer<Utf8> pv_valuename;
  @Int32()
  external int pv_valuelen;
  external Pointer pv_value_context;
  @Uint32()
  external int pv_type;
}

class pvalueW extends Struct {
  external Pointer<Utf16> pv_valuename;
  @Int32()
  external int pv_valuelen;
  external Pointer pv_value_context;
  @Uint32()
  external int pv_type;
}

class provider_info extends Struct {
  external PQUERYHANDLER pi_R0_1val;
  external PQUERYHANDLER pi_R0_allvals;
  external PQUERYHANDLER pi_R3_1val;
  external PQUERYHANDLER pi_R3_allvals;
  @Uint32()
  external int pi_flags;
  external Pointer pi_key_context;
}

class VALENTA extends Struct {
  external Pointer<Utf8> ve_valuename;
  @Uint32()
  external int ve_valuelen;
  @IntPtr()
  external int ve_valueptr;
  @Uint32()
  external int ve_type;
}

class VALENTW extends Struct {
  external Pointer<Utf16> ve_valuename;
  @Uint32()
  external int ve_valuelen;
  @IntPtr()
  external int ve_valueptr;
  @Uint32()
  external int ve_type;
}

class DOMDocument extends Struct {}

class DOMFreeThreadedDocument extends Struct {}

class XMLHTTPRequest extends Struct {}

class XMLDSOControl extends Struct {}

class XMLDocument extends Struct {}

class XML_ERROR extends Struct {
  @Uint32()
  external int _nLine;
  external Pointer<Utf16> _pchBuf;
  @Uint32()
  external int _cchBuf;
  @Uint32()
  external int _ich;
  external Pointer<Utf16> _pszFound;
  external Pointer<Utf16> _pszExpected;
  @Uint32()
  external int _reserved1;
  @Uint32()
  external int _reserved2;
}

class CLIENT_ID extends Struct {
  @IntPtr()
  external int UniqueProcess;
  @IntPtr()
  external int UniqueThread;
}

class LDR_DATA_TABLE_ENTRY extends Struct {
  @Array(2)
  external Array<Pointer> Reserved1;
  external LIST_ENTRY InMemoryOrderLinks;
  @Array(2)
  external Array<Pointer> Reserved2;
  external Pointer DllBase;
  @Array(2)
  external Array<Pointer> Reserved3;
  external UNICODE_STRING FullDllName;
  @Array(8)
  external Array<Uint8> Reserved4;
  @Array(3)
  external Array<Pointer> Reserved5;
  @Uint32()
  external int Anonymous;
  @Uint32()
  external int TimeDateStamp;
}

class OBJECT_ATTRIBUTES extends Struct {
  @Uint32()
  external int Length;
  @IntPtr()
  external int RootDirectory;
  external Pointer<UNICODE_STRING> ObjectName;
  @Uint32()
  external int Attributes;
  external Pointer SecurityDescriptor;
  external Pointer SecurityQualityOfService;
}

class IO_STATUS_BLOCK extends Struct {
  @Uint32()
  external int Anonymous;
  @IntPtr()
  external int Information;
}

class PROCESS_BASIC_INFORMATION extends Struct {
  external Pointer Reserved1;
  external Pointer<PEB> PebBaseAddress;
  @Array(2)
  external Array<Pointer> Reserved2;
  @IntPtr()
  external int UniqueProcessId;
  external Pointer Reserved3;
}

class SYSTEM_PROCESSOR_PERFORMANCE_INFORMATION extends Struct {
  @Int64()
  external int IdleTime;
  @Int64()
  external int KernelTime;
  @Int64()
  external int UserTime;
  @Array(2)
  external Array<Int64> Reserved1;
  @Uint32()
  external int Reserved2;
}

class SYSTEM_PROCESS_INFORMATION extends Struct {
  @Uint32()
  external int NextEntryOffset;
  @Uint32()
  external int NumberOfThreads;
  @Array(48)
  external Array<Uint8> Reserved1;
  external UNICODE_STRING ImageName;
  @Int32()
  external int BasePriority;
  @IntPtr()
  external int UniqueProcessId;
  external Pointer Reserved2;
  @Uint32()
  external int HandleCount;
  @Uint32()
  external int SessionId;
  external Pointer Reserved3;
  @IntPtr()
  external int PeakVirtualSize;
  @IntPtr()
  external int VirtualSize;
  @Uint32()
  external int Reserved4;
  @IntPtr()
  external int PeakWorkingSetSize;
  @IntPtr()
  external int WorkingSetSize;
  external Pointer Reserved5;
  @IntPtr()
  external int QuotaPagedPoolUsage;
  external Pointer Reserved6;
  @IntPtr()
  external int QuotaNonPagedPoolUsage;
  @IntPtr()
  external int PagefileUsage;
  @IntPtr()
  external int PeakPagefileUsage;
  @IntPtr()
  external int PrivatePageCount;
  @Array(6)
  external Array<Int64> Reserved7;
}

class SYSTEM_THREAD_INFORMATION extends Struct {
  @Array(3)
  external Array<Int64> Reserved1;
  @Uint32()
  external int Reserved2;
  external Pointer StartAddress;
  external CLIENT_ID ClientId;
  @Int32()
  external int Priority;
  @Int32()
  external int BasePriority;
  @Uint32()
  external int Reserved3;
  @Uint32()
  external int ThreadState;
  @Uint32()
  external int WaitReason;
}

class SYSTEM_REGISTRY_QUOTA_INFORMATION extends Struct {
  @Uint32()
  external int RegistryQuotaAllowed;
  @Uint32()
  external int RegistryQuotaUsed;
  external Pointer Reserved1;
}

class SYSTEM_BASIC_INFORMATION extends Struct {
  @Array(24)
  external Array<Uint8> Reserved1;
  @Array(4)
  external Array<Pointer> Reserved2;
  @Int8()
  external int NumberOfProcessors;
}

class SYSTEM_TIMEOFDAY_INFORMATION extends Struct {
  @Array(48)
  external Array<Uint8> Reserved1;
}

class SYSTEM_PERFORMANCE_INFORMATION extends Struct {
  @Array(129)
  external Array<Uint8> Reserved1;
}

class SYSTEM_EXCEPTION_INFORMATION extends Struct {
  @Array(16)
  external Array<Uint8> Reserved1;
}

class SYSTEM_LOOKASIDE_INFORMATION extends Struct {
  @Array(32)
  external Array<Uint8> Reserved1;
}

class SYSTEM_INTERRUPT_INFORMATION extends Struct {
  @Array(24)
  external Array<Uint8> Reserved1;
}

class SYSTEM_POLICY_INFORMATION extends Struct {
  @Array(2)
  external Array<Pointer> Reserved1;
  @Array(3)
  external Array<Uint32> Reserved2;
}

class SYSTEM_CODEINTEGRITY_INFORMATION extends Struct {
  @Uint32()
  external int Length;
  @Uint32()
  external int CodeIntegrityOptions;
}

class PUBLIC_OBJECT_BASIC_INFORMATION extends Struct {
  @Uint32()
  external int Attributes;
  @Uint32()
  external int GrantedAccess;
  @Uint32()
  external int HandleCount;
  @Uint32()
  external int PointerCount;
  @Array(10)
  external Array<Uint32> Reserved;
}

class PUBLIC_OBJECT_TYPE_INFORMATION extends Struct {
  external UNICODE_STRING TypeName;
  @Array(22)
  external Array<Uint32> Reserved;
}

class KEY_VALUE_ENTRY extends Struct {
  external Pointer<UNICODE_STRING> ValueName;
  @Uint32()
  external int DataLength;
  @Uint32()
  external int DataOffset;
  @Uint32()
  external int Type;
}

class WINSTATIONINFORMATIONW extends Struct {
  @Array(70)
  external Array<Uint8> Reserved2;
  @Uint32()
  external int LogonId;
  @Array(132)
  external Array<Uint8> Reserved3;
}

class AVRF_BACKTRACE_INFORMATION extends Struct {
  @Uint32()
  external int Depth;
  @Uint32()
  external int Index;
  @Array(32)
  external Array<Uint64> ReturnAddresses;
}

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

class AVRF_HANDLE_OPERATION extends Struct {
  @Uint64()
  external int Handle;
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

class CameraUIControl extends Struct {}

class ERF extends Struct {
  @Int32()
  external int erfOper;
  @Int32()
  external int erfType;
  @Int32()
  external int fError;
}

class CCAB extends Struct {
  @Uint32()
  external int cb;
  @Uint32()
  external int cbFolderThresh;
  @Uint32()
  external int cbReserveCFHeader;
  @Uint32()
  external int cbReserveCFFolder;
  @Uint32()
  external int cbReserveCFData;
  @Int32()
  external int iCab;
  @Int32()
  external int iDisk;
  @Int32()
  external int fFailOnIncompressible;
  @Uint16()
  external int setID;
  @Array(129)
  external Array<Int8> szDisk;
  @Array(129)
  external Array<Int8> szCab;
  @Array(129)
  external Array<Int8> szCabPath;
}

class FDICABINETINFO extends Struct {
  @Int32()
  external int cbCabinet;
  @Uint16()
  external int cFolders;
  @Uint16()
  external int cFiles;
  @Uint16()
  external int setID;
  @Uint16()
  external int iCabinet;
  @Int32()
  external int fReserve;
  @Int32()
  external int hasprev;
  @Int32()
  external int hasnext;
}

class FDIDECRYPT extends Struct {
  @Uint32()
  external int fdidt;
  external Pointer pvUser;
  @Uint32()
  external int Anonymous;
}

class FDINOTIFICATION extends Struct {
  @Int32()
  external int cb;
  external Pointer<Utf8> psz1;
  external Pointer<Utf8> psz2;
  external Pointer<Utf8> psz3;
  external Pointer pv;
  @IntPtr()
  external int hf;
  @Uint16()
  external int date;
  @Uint16()
  external int time;
  @Uint16()
  external int attribs;
  @Uint16()
  external int setID;
  @Uint16()
  external int iCabinet;
  @Uint16()
  external int iFolder;
  @Uint32()
  external int fdie;
}

class FDISPILLFILE extends Struct {
  @Array(2)
  external Array<Int8> ach;
  @Int32()
  external int cbFile;
}

class FLOATING_SAVE_AREA extends Struct {
  @Uint32()
  external int ControlWord;
  @Uint32()
  external int StatusWord;
  @Uint32()
  external int TagWord;
  @Uint32()
  external int ErrorOffset;
  @Uint32()
  external int ErrorSelector;
  @Uint32()
  external int DataOffset;
  @Uint32()
  external int DataSelector;
  @Array(80)
  external Array<Uint8> RegisterArea;
  @Uint32()
  external int Cr0NpxState;
}

class VDMCONTEXT extends Struct {
  @Uint32()
  external int ContextFlags;
  @Uint32()
  external int Dr0;
  @Uint32()
  external int Dr1;
  @Uint32()
  external int Dr2;
  @Uint32()
  external int Dr3;
  @Uint32()
  external int Dr6;
  @Uint32()
  external int Dr7;
  external FLOATING_SAVE_AREA FloatSave;
  @Uint32()
  external int SegGs;
  @Uint32()
  external int SegFs;
  @Uint32()
  external int SegEs;
  @Uint32()
  external int SegDs;
  @Uint32()
  external int Edi;
  @Uint32()
  external int Esi;
  @Uint32()
  external int Ebx;
  @Uint32()
  external int Edx;
  @Uint32()
  external int Ecx;
  @Uint32()
  external int Eax;
  @Uint32()
  external int Ebp;
  @Uint32()
  external int Eip;
  @Uint32()
  external int SegCs;
  @Uint32()
  external int EFlags;
  @Uint32()
  external int Esp;
  @Uint32()
  external int SegSs;
  @Array(130)
  external Array<Uint8> ExtendedRegisters;
}

class VDMLDT_ENTRY extends Struct {
  @Uint16()
  external int LimitLow;
  @Uint16()
  external int BaseLow;
  @Uint32()
  external int HighWord;
}

class VDMCONTEXT_WITHOUT_XSAVE extends Struct {
  @Uint32()
  external int ContextFlags;
  @Uint32()
  external int Dr0;
  @Uint32()
  external int Dr1;
  @Uint32()
  external int Dr2;
  @Uint32()
  external int Dr3;
  @Uint32()
  external int Dr6;
  @Uint32()
  external int Dr7;
  external FLOATING_SAVE_AREA FloatSave;
  @Uint32()
  external int SegGs;
  @Uint32()
  external int SegFs;
  @Uint32()
  external int SegEs;
  @Uint32()
  external int SegDs;
  @Uint32()
  external int Edi;
  @Uint32()
  external int Esi;
  @Uint32()
  external int Ebx;
  @Uint32()
  external int Edx;
  @Uint32()
  external int Ecx;
  @Uint32()
  external int Eax;
  @Uint32()
  external int Ebp;
  @Uint32()
  external int Eip;
  @Uint32()
  external int SegCs;
  @Uint32()
  external int EFlags;
  @Uint32()
  external int Esp;
  @Uint32()
  external int SegSs;
}

class SEGMENT_NOTE extends Struct {
  @Uint16()
  external int Selector1;
  @Uint16()
  external int Selector2;
  @Uint16()
  external int Segment;
  @Array(10)
  external Array<Int8> Module;
  @Array(129)
  external Array<Int8> FileName;
  @Uint16()
  external int Type;
  @Uint32()
  external int Length;
}

class IMAGE_NOTE extends Struct {
  @Array(10)
  external Array<Int8> Module;
  @Array(129)
  external Array<Int8> FileName;
  @Uint16()
  external int hModule;
  @Uint16()
  external int hTask;
}

class MODULEENTRY extends Struct {
  @Uint32()
  external int dwSize;
  @Array(10)
  external Array<Int8> szModule;
  @IntPtr()
  external int hModule;
  @Uint16()
  external int wcUsage;
  @Array(129)
  external Array<Int8> szExePath;
  @Uint16()
  external int wNext;
}

class TEMP_BP_NOTE extends Struct {
  @Uint16()
  external int Seg;
  @Uint32()
  external int Offset;
  @Int32()
  external int bPM;
}

class VDM_SEGINFO extends Struct {
  @Uint16()
  external int Selector;
  @Uint16()
  external int SegNumber;
  @Uint32()
  external int Length;
  @Uint16()
  external int Type;
  @Array(9)
  external Array<Int8> ModuleName;
  @Array(128)
  external Array<Int8> FileName;
}

class GLOBALENTRY extends Struct {
  @Uint32()
  external int dwSize;
  @Uint32()
  external int dwAddress;
  @Uint32()
  external int dwBlockSize;
  @IntPtr()
  external int hBlock;
  @Uint16()
  external int wcLock;
  @Uint16()
  external int wcPageLock;
  @Uint16()
  external int wFlags;
  @Int32()
  external int wHeapPresent;
  @IntPtr()
  external int hOwner;
  @Uint16()
  external int wType;
  @Uint16()
  external int wData;
  @Uint32()
  external int dwNext;
  @Uint32()
  external int dwNextAlt;
}

class EditionUpgradeHelper extends Struct {}

class EditionUpgradeBroker extends Struct {}

class FEATURE_ERROR extends Struct {
  @Int32()
  external int hr;
  @Uint16()
  external int lineNumber;
  external Pointer<Utf8> file;
  external Pointer<Utf8> process;
  external Pointer<Utf8> module;
  @Uint32()
  external int callerReturnAddressOffset;
  external Pointer<Utf8> callerModule;
  external Pointer<Utf8> message;
  @Uint16()
  external int originLineNumber;
  external Pointer<Utf8> originFile;
  external Pointer<Utf8> originModule;
  @Uint32()
  external int originCallerReturnAddressOffset;
  external Pointer<Utf8> originCallerModule;
  external Pointer<Utf8> originName;
}

class FhConfigMgr extends Struct {}

class FhReassociation extends Struct {}

class DCICMD extends Struct {
  @Uint32()
  external int dwCommand;
  @Uint32()
  external int dwParam1;
  @Uint32()
  external int dwParam2;
  @Uint32()
  external int dwVersion;
  @Uint32()
  external int dwReserved;
}

class DCICREATEINPUT extends Struct {
  external DCICMD cmd;
  @Uint32()
  external int dwCompression;
  @Array(3)
  external Array<Uint32> dwMask;
  @Uint32()
  external int dwWidth;
  @Uint32()
  external int dwHeight;
  @Uint32()
  external int dwDCICaps;
  @Uint32()
  external int dwBitCount;
  external Pointer lpSurface;
}

class DCISURFACEINFO extends Struct {
  @Uint32()
  external int dwSize;
  @Uint32()
  external int dwDCICaps;
  @Uint32()
  external int dwCompression;
  @Array(3)
  external Array<Uint32> dwMask;
  @Uint32()
  external int dwWidth;
  @Uint32()
  external int dwHeight;
  @Int32()
  external int lStride;
  @Uint32()
  external int dwBitCount;
  @IntPtr()
  external int dwOffSurface;
  @Uint16()
  external int wSelSurface;
  @Uint16()
  external int wReserved;
  @Uint32()
  external int dwReserved1;
  @Uint32()
  external int dwReserved2;
  @Uint32()
  external int dwReserved3;
  @IntPtr()
  external int BeginAccess;
  @IntPtr()
  external int EndAccess;
  @IntPtr()
  external int DestroySurface;
}

class DCIENUMINPUT extends Struct {
  external DCICMD cmd;
  external RECT rSrc;
  external RECT rDst;
  @IntPtr()
  external int EnumCallback;
  external Pointer lpContext;
}

class DCIOFFSCREEN extends Struct {
  external DCISURFACEINFO dciInfo;
  @IntPtr()
  external int Draw;
  @IntPtr()
  external int SetClipList;
  @IntPtr()
  external int SetDestination;
}

class DCIOVERLAY extends Struct {
  external DCISURFACEINFO dciInfo;
  @Uint32()
  external int dwChromakeyValue;
  @Uint32()
  external int dwChromakeyMask;
}

class WaaSAssessor extends Struct {}

class VMEML extends Struct {
  external Pointer<VMEML> next;
  @IntPtr()
  external int ptr;
  @Uint32()
  external int size;
  @Int32()
  external int bDiscardable;
}

class VMEMR extends Struct {
  external Pointer<VMEMR> next;
  external Pointer<VMEMR> prev;
  external Pointer<VMEMR> pUp;
  external Pointer<VMEMR> pDown;
  external Pointer<VMEMR> pLeft;
  external Pointer<VMEMR> pRight;
  @IntPtr()
  external int ptr;
  @Uint32()
  external int size;
  @Uint32()
  external int x;
  @Uint32()
  external int y;
  @Uint32()
  external int cx;
  @Uint32()
  external int cy;
  @Uint32()
  external int flags;
  @IntPtr()
  external int pBits;
  @Int32()
  external int bDiscardable;
}

class PROCESS_LIST extends Struct {
  external Pointer<PROCESS_LIST> lpLink;
  @Uint32()
  external int dwProcessId;
  @Uint32()
  external int dwRefCnt;
  @Uint32()
  external int dwAlphaDepth;
  @Uint32()
  external int dwZDepth;
}

class DDMONITORINFO extends Struct {
  @Uint16()
  external int Manufacturer;
  @Uint16()
  external int Product;
  @Uint32()
  external int SerialNumber;
  external GUID DeviceIdentifier;
  @Int32()
  external int Mode640x480;
  @Int32()
  external int Mode800x600;
  @Int32()
  external int Mode1024x768;
  @Int32()
  external int Mode1280x1024;
  @Int32()
  external int Mode1600x1200;
  @Int32()
  external int ModeReserved1;
  @Int32()
  external int ModeReserved2;
  @Int32()
  external int ModeReserved3;
}

class IDirectDrawClipperVtbl extends Struct {}

class IDirectDrawPaletteVtbl extends Struct {}

class IDirectDrawSurfaceVtbl extends Struct {}

class IDirectDrawSurface2Vtbl extends Struct {}

class IDirectDrawSurface3Vtbl extends Struct {}

class IDirectDrawSurface4Vtbl extends Struct {}

class IDirectDrawSurface7Vtbl extends Struct {}

class IDirectDrawColorControlVtbl extends Struct {}

class IDirectDrawVtbl extends Struct {}

class IDirectDraw2Vtbl extends Struct {}

class IDirectDraw4Vtbl extends Struct {}

class IDirectDraw7Vtbl extends Struct {}

class IDirectDrawKernelVtbl extends Struct {}

class IDirectDrawSurfaceKernelVtbl extends Struct {}

class IDirectDrawGammaControlVtbl extends Struct {}

class DD32BITDRIVERDATA extends Struct {
  @Array(129)
  external Array<Int8> szName;
  @Array(64)
  external Array<Int8> szEntryPoint;
  @Uint32()
  external int dwContext;
}

class DDVERSIONDATA extends Struct {
  @Uint32()
  external int dwHALVersion;
  @IntPtr()
  external int dwReserved1;
  @IntPtr()
  external int dwReserved2;
}

class VIDMEM extends Struct {
  @Uint32()
  external int dwFlags;
  @IntPtr()
  external int fpStart;
  @Uint32()
  external int Anonymous1;
  external DDSCAPS ddsCaps;
  external DDSCAPS ddsCapsAlt;
  @Uint32()
  external int Anonymous2;
}

class VIDMEMINFO extends Struct {
  @IntPtr()
  external int fpPrimary;
  @Uint32()
  external int dwFlags;
  @Uint32()
  external int dwDisplayWidth;
  @Uint32()
  external int dwDisplayHeight;
  @Int32()
  external int lDisplayPitch;
  external DDPIXELFORMAT ddpfDisplay;
  @Uint32()
  external int dwOffscreenAlign;
  @Uint32()
  external int dwOverlayAlign;
  @Uint32()
  external int dwTextureAlign;
  @Uint32()
  external int dwZBufferAlign;
  @Uint32()
  external int dwAlphaAlign;
  @Uint32()
  external int dwNumHeaps;
  external Pointer<VIDMEM> pvmList;
}

class HEAPALIAS extends Struct {
  @IntPtr()
  external int fpVidMem;
  external Pointer lpAlias;
  @Uint32()
  external int dwAliasSize;
}

class HEAPALIASINFO extends Struct {
  @Uint32()
  external int dwRefCnt;
  @Uint32()
  external int dwFlags;
  @Uint32()
  external int dwNumHeaps;
  external Pointer<HEAPALIAS> lpAliases;
}

class IUNKNOWN_LIST extends Struct {
  external Pointer<IUNKNOWN_LIST> lpLink;
  external Pointer<GUID> lpGuid;
  external Pointer lpIUnknown;
}

class DDHAL_DDCALLBACKS extends Struct {
  @Uint32()
  external int dwSize;
  @Uint32()
  external int dwFlags;
  external Pointer<DDHAL_DESTROYDRIVER> DestroyDriver;
  external Pointer<DDHAL_CREATESURFACE> CreateSurface;
  external Pointer<DDHAL_SETCOLORKEY> SetColorKey;
  external Pointer<DDHAL_SETMODE> SetMode;
  external Pointer<DDHAL_WAITFORVERTICALBLANK> WaitForVerticalBlank;
  external Pointer<DDHAL_CANCREATESURFACE> CanCreateSurface;
  external Pointer<DDHAL_CREATEPALETTE> CreatePalette;
  external Pointer<DDHAL_GETSCANLINE> GetScanLine;
  external Pointer<DDHAL_SETEXCLUSIVEMODE> SetExclusiveMode;
  external Pointer<DDHAL_FLIPTOGDISURFACE> FlipToGDISurface;
}

class DDHAL_DDPALETTECALLBACKS extends Struct {
  @Uint32()
  external int dwSize;
  @Uint32()
  external int dwFlags;
  external Pointer<DDHALPALCB_DESTROYPALETTE> DestroyPalette;
  external Pointer<DDHALPALCB_SETENTRIES> SetEntries;
}

class DDHAL_DDSURFACECALLBACKS extends Struct {
  @Uint32()
  external int dwSize;
  @Uint32()
  external int dwFlags;
  external Pointer<DDHALSURFCB_DESTROYSURFACE> DestroySurface;
  external Pointer<DDHALSURFCB_FLIP> Flip;
  external Pointer<DDHALSURFCB_SETCLIPLIST> SetClipList;
  external Pointer<DDHALSURFCB_LOCK> Lock;
  external Pointer<DDHALSURFCB_UNLOCK> Unlock;
  external Pointer<DDHALSURFCB_BLT> Blt;
  external Pointer<DDHALSURFCB_SETCOLORKEY> SetColorKey;
  external Pointer<DDHALSURFCB_ADDATTACHEDSURFACE> AddAttachedSurface;
  external Pointer<DDHALSURFCB_GETBLTSTATUS> GetBltStatus;
  external Pointer<DDHALSURFCB_GETFLIPSTATUS> GetFlipStatus;
  external Pointer<DDHALSURFCB_UPDATEOVERLAY> UpdateOverlay;
  external Pointer<DDHALSURFCB_SETOVERLAYPOSITION> SetOverlayPosition;
  external Pointer reserved4;
  external Pointer<DDHALSURFCB_SETPALETTE> SetPalette;
}

class DDHAL_DDMISCELLANEOUSCALLBACKS extends Struct {
  @Uint32()
  external int dwSize;
  @Uint32()
  external int dwFlags;
  external Pointer<DDHAL_GETAVAILDRIVERMEMORY> GetAvailDriverMemory;
  external Pointer<DDHAL_UPDATENONLOCALHEAP> UpdateNonLocalHeap;
  external Pointer<DDHAL_GETHEAPALIGNMENT> GetHeapAlignment;
  external Pointer<DDHALSURFCB_GETBLTSTATUS> GetSysmemBltStatus;
}

class DDHAL_DDMISCELLANEOUS2CALLBACKS extends Struct {
  @Uint32()
  external int dwSize;
  @Uint32()
  external int dwFlags;
  external Pointer Reserved;
  external Pointer<DDHAL_CREATESURFACEEX> CreateSurfaceEx;
  external Pointer<DDHAL_GETDRIVERSTATE> GetDriverState;
  external Pointer<DDHAL_DESTROYDDLOCAL> DestroyDDLocal;
}

class DDHAL_DDEXEBUFCALLBACKS extends Struct {
  @Uint32()
  external int dwSize;
  @Uint32()
  external int dwFlags;
  external Pointer<DDHALEXEBUFCB_CANCREATEEXEBUF> CanCreateExecuteBuffer;
  external Pointer<DDHALEXEBUFCB_CREATEEXEBUF> CreateExecuteBuffer;
  external Pointer<DDHALEXEBUFCB_DESTROYEXEBUF> DestroyExecuteBuffer;
  external Pointer<DDHALEXEBUFCB_LOCKEXEBUF> LockExecuteBuffer;
  external Pointer<DDHALEXEBUFCB_UNLOCKEXEBUF> UnlockExecuteBuffer;
}

class DDHAL_DDVIDEOPORTCALLBACKS extends Struct {
  @Uint32()
  external int dwSize;
  @Uint32()
  external int dwFlags;
  external Pointer<DDHALVPORTCB_CANCREATEVIDEOPORT> CanCreateVideoPort;
  external Pointer<DDHALVPORTCB_CREATEVIDEOPORT> CreateVideoPort;
  external Pointer<DDHALVPORTCB_FLIP> FlipVideoPort;
  external Pointer<DDHALVPORTCB_GETBANDWIDTH> GetVideoPortBandwidth;
  external Pointer<DDHALVPORTCB_GETINPUTFORMATS> GetVideoPortInputFormats;
  external Pointer<DDHALVPORTCB_GETOUTPUTFORMATS> GetVideoPortOutputFormats;
  external Pointer lpReserved1;
  external Pointer<DDHALVPORTCB_GETFIELD> GetVideoPortField;
  external Pointer<DDHALVPORTCB_GETLINE> GetVideoPortLine;
  external Pointer<DDHALVPORTCB_GETVPORTCONNECT> GetVideoPortConnectInfo;
  external Pointer<DDHALVPORTCB_DESTROYVPORT> DestroyVideoPort;
  external Pointer<DDHALVPORTCB_GETFLIPSTATUS> GetVideoPortFlipStatus;
  external Pointer<DDHALVPORTCB_UPDATE> UpdateVideoPort;
  external Pointer<DDHALVPORTCB_WAITFORSYNC> WaitForVideoPortSync;
  external Pointer<DDHALVPORTCB_GETSIGNALSTATUS> GetVideoSignalStatus;
  external Pointer<DDHALVPORTCB_COLORCONTROL> ColorControl;
}

class DDHAL_DDCOLORCONTROLCALLBACKS extends Struct {
  @Uint32()
  external int dwSize;
  @Uint32()
  external int dwFlags;
  external Pointer<DDHALCOLORCB_COLORCONTROL> ColorControl;
}

class DDHAL_DDKERNELCALLBACKS extends Struct {
  @Uint32()
  external int dwSize;
  @Uint32()
  external int dwFlags;
  external Pointer<DDHALKERNELCB_SYNCSURFACE> SyncSurfaceData;
  external Pointer<DDHALKERNELCB_SYNCVIDEOPORT> SyncVideoPortData;
}

class DDHAL_DDMOTIONCOMPCALLBACKS extends Struct {
  @Uint32()
  external int dwSize;
  @Uint32()
  external int dwFlags;
  external Pointer<DDHALMOCOMPCB_GETGUIDS> GetMoCompGuids;
  external Pointer<DDHALMOCOMPCB_GETFORMATS> GetMoCompFormats;
  external Pointer<DDHALMOCOMPCB_CREATE> CreateMoComp;
  external Pointer<DDHALMOCOMPCB_GETCOMPBUFFINFO> GetMoCompBuffInfo;
  external Pointer<DDHALMOCOMPCB_GETINTERNALINFO> GetInternalMoCompInfo;
  external Pointer<DDHALMOCOMPCB_BEGINFRAME> BeginMoCompFrame;
  external Pointer<DDHALMOCOMPCB_ENDFRAME> EndMoCompFrame;
  external Pointer<DDHALMOCOMPCB_RENDER> RenderMoComp;
  external Pointer<DDHALMOCOMPCB_QUERYSTATUS> QueryMoCompStatus;
  external Pointer<DDHALMOCOMPCB_DESTROY> DestroyMoComp;
}

class DDNONLOCALVIDMEMCAPS extends Struct {
  @Uint32()
  external int dwSize;
  @Uint32()
  external int dwNLVBCaps;
  @Uint32()
  external int dwNLVBCaps2;
  @Uint32()
  external int dwNLVBCKeyCaps;
  @Uint32()
  external int dwNLVBFXCaps;
  @Array(8)
  external Array<Uint32> dwNLVBRops;
}

class DDMORESURFACECAPS extends Struct {
  @Uint32()
  external int dwSize;
  external DDSCAPSEX ddsCapsMore;
  @Array(1)
  external Array<Uint32> ddsExtendedHeapRestrictions;
}

class DDSTEREOMODE extends Struct {
  @Uint32()
  external int dwSize;
  @Uint32()
  external int dwHeight;
  @Uint32()
  external int dwWidth;
  @Uint32()
  external int dwBpp;
  @Uint32()
  external int dwRefreshRate;
  @Int32()
  external int bSupported;
}

class DDRAWI_DDRAWPALETTE_INT extends Struct {
  external Pointer lpVtbl;
  external Pointer<DDRAWI_DDRAWPALETTE_LCL> lpLcl;
  external Pointer<DDRAWI_DDRAWPALETTE_INT> lpLink;
  @Uint32()
  external int dwIntRefCnt;
}

class DDRAWI_DDRAWPALETTE_GBL extends Struct {
  @Uint32()
  external int dwRefCnt;
  @Uint32()
  external int dwFlags;
  external Pointer<DDRAWI_DIRECTDRAW_LCL> lpDD_lcl;
  @Uint32()
  external int dwProcessId;
  external Pointer<PALETTEENTRY> lpColorTable;
  @Uint32()
  external int Anonymous;
  @Uint32()
  external int dwDriverReserved;
  @Uint32()
  external int dwContentsStamp;
  @Uint32()
  external int dwSaveStamp;
  @Uint32()
  external int dwHandle;
}

class DDRAWI_DDRAWPALETTE_LCL extends Struct {
  @Uint32()
  external int lpPalMore;
  external Pointer<DDRAWI_DDRAWPALETTE_GBL> lpGbl;
  @IntPtr()
  external int dwUnused0;
  @Uint32()
  external int dwLocalRefCnt;
  external Pointer pUnkOuter;
  external Pointer<DDRAWI_DIRECTDRAW_LCL> lpDD_lcl;
  @IntPtr()
  external int dwReserved1;
  @IntPtr()
  external int dwDDRAWReserved1;
  @IntPtr()
  external int dwDDRAWReserved2;
  @IntPtr()
  external int dwDDRAWReserved3;
}

class DDRAWI_DDRAWCLIPPER_INT extends Struct {
  external Pointer lpVtbl;
  external Pointer<DDRAWI_DDRAWCLIPPER_LCL> lpLcl;
  external Pointer<DDRAWI_DDRAWCLIPPER_INT> lpLink;
  @Uint32()
  external int dwIntRefCnt;
}

class DDRAWI_DDRAWCLIPPER_GBL extends Struct {
  @Uint32()
  external int dwRefCnt;
  @Uint32()
  external int dwFlags;
  external Pointer<DDRAWI_DIRECTDRAW_GBL> lpDD;
  @Uint32()
  external int dwProcessId;
  @IntPtr()
  external int dwReserved1;
  @IntPtr()
  external int hWnd;
  external Pointer<RGNDATA> lpStaticClipList;
}

class DDRAWI_DDRAWCLIPPER_LCL extends Struct {
  @Uint32()
  external int lpClipMore;
  external Pointer<DDRAWI_DDRAWCLIPPER_GBL> lpGbl;
  external Pointer<DDRAWI_DIRECTDRAW_LCL> lpDD_lcl;
  @Uint32()
  external int dwLocalRefCnt;
  external Pointer pUnkOuter;
  external Pointer<DDRAWI_DIRECTDRAW_INT> lpDD_int;
  @IntPtr()
  external int dwReserved1;
  external Pointer pAddrefedThisOwner;
}

class ATTACHLIST extends Struct {
  @Uint32()
  external int dwFlags;
  external Pointer<ATTACHLIST> lpLink;
  external Pointer<DDRAWI_DDRAWSURFACE_LCL> lpAttached;
  external Pointer<DDRAWI_DDRAWSURFACE_INT> lpIAttached;
}

class DBLNODE extends Struct {
  external Pointer<DBLNODE> next;
  external Pointer<DBLNODE> prev;
  external Pointer<DDRAWI_DDRAWSURFACE_LCL> object;
  external Pointer<DDRAWI_DDRAWSURFACE_INT> object_int;
}

class ACCESSRECTLIST extends Struct {
  external Pointer<ACCESSRECTLIST> lpLink;
  external RECT rDest;
  external Pointer<DDRAWI_DIRECTDRAW_LCL> lpOwner;
  external Pointer lpSurfaceData;
  @Uint32()
  external int dwFlags;
  external Pointer<HEAPALIASINFO> lpHeapAliasInfo;
}

class DDRAWI_DDRAWSURFACE_INT extends Struct {
  external Pointer lpVtbl;
  external Pointer<DDRAWI_DDRAWSURFACE_LCL> lpLcl;
  external Pointer<DDRAWI_DDRAWSURFACE_INT> lpLink;
  @Uint32()
  external int dwIntRefCnt;
}

class DDRAWI_DDRAWSURFACE_GBL extends Struct {
  @Uint32()
  external int dwRefCnt;
  @Uint32()
  external int dwGlobalFlags;
  @Uint32()
  external int Anonymous1;
  @Uint32()
  external int Anonymous2;
  @Uint32()
  external int Anonymous3;
  @IntPtr()
  external int fpVidMem;
  @Uint32()
  external int Anonymous4;
  @Uint16()
  external int wHeight;
  @Uint16()
  external int wWidth;
  @Uint32()
  external int dwUsageCount;
  @IntPtr()
  external int dwReserved1;
  external DDPIXELFORMAT ddpfSurface;
}

class DDRAWI_DDRAWSURFACE_GBL_MORE extends Struct {
  @Uint32()
  external int dwSize;
  @Uint32()
  external int Anonymous;
  external Pointer<Uint32> pPageTable;
  @Uint32()
  external int cPages;
  @IntPtr()
  external int dwSavedDCContext;
  @IntPtr()
  external int fpAliasedVidMem;
  @IntPtr()
  external int dwDriverReserved;
  @IntPtr()
  external int dwHELReserved;
  @Uint32()
  external int cPageUnlocks;
  @IntPtr()
  external int hKernelSurface;
  @Uint32()
  external int dwKernelRefCnt;
  external Pointer<DDCOLORCONTROL> lpColorInfo;
  @IntPtr()
  external int fpNTAlias;
  @Uint32()
  external int dwContentsStamp;
  external Pointer lpvUnswappedDriverReserved;
  external Pointer lpDDRAWReserved2;
  @Uint32()
  external int dwDDRAWReserved1;
  @Uint32()
  external int dwDDRAWReserved2;
  @IntPtr()
  external int fpAliasOfVidMem;
}

class DDRAWI_DDRAWSURFACE_MORE extends Struct {
  @Uint32()
  external int dwSize;
  external Pointer<IUNKNOWN_LIST> lpIUnknowns;
  external Pointer<DDRAWI_DIRECTDRAW_LCL> lpDD_lcl;
  @Uint32()
  external int dwPageLockCount;
  @Uint32()
  external int dwBytesAllocated;
  external Pointer<DDRAWI_DIRECTDRAW_INT> lpDD_int;
  @Uint32()
  external int dwMipMapCount;
  external Pointer<DDRAWI_DDRAWCLIPPER_INT> lpDDIClipper;
  external Pointer<HEAPALIASINFO> lpHeapAliasInfo;
  @Uint32()
  external int dwOverlayFlags;
  external Pointer rgjunc;
  external Pointer<DDRAWI_DDVIDEOPORT_LCL> lpVideoPort;
  external Pointer<DDOVERLAYFX> lpddOverlayFX;
  external DDSCAPSEX ddsCapsEx;
  @Uint32()
  external int dwTextureStage;
  external Pointer lpDDRAWReserved;
  external Pointer lpDDRAWReserved2;
  external Pointer lpDDrawReserved3;
  @Uint32()
  external int dwDDrawReserved4;
  external Pointer lpDDrawReserved5;
  external Pointer<Uint32> lpGammaRamp;
  external Pointer<Uint32> lpOriginalGammaRamp;
  external Pointer lpDDrawReserved6;
  @Uint32()
  external int dwSurfaceHandle;
  @Array(2)
  external Array<Uint32> qwDDrawReserved8;
  external Pointer lpDDrawReserved9;
  @Uint32()
  external int cSurfaces;
  external Pointer<DDSURFACEDESC2> pCreatedDDSurfaceDesc2;
  external Pointer<Pointer<DDRAWI_DDRAWSURFACE_LCL>> slist;
  @Uint32()
  external int dwFVF;
  external Pointer lpVB;
}

class DDRAWI_DDRAWSURFACE_LCL extends Struct {
  external Pointer<DDRAWI_DDRAWSURFACE_MORE> lpSurfMore;
  external Pointer<DDRAWI_DDRAWSURFACE_GBL> lpGbl;
  @IntPtr()
  external int hDDSurface;
  external Pointer<ATTACHLIST> lpAttachList;
  external Pointer<ATTACHLIST> lpAttachListFrom;
  @Uint32()
  external int dwLocalRefCnt;
  @Uint32()
  external int dwProcessId;
  @Uint32()
  external int dwFlags;
  external DDSCAPS ddsCaps;
  @Uint32()
  external int Anonymous1;
  @Uint32()
  external int Anonymous2;
  @Uint32()
  external int dwModeCreatedIn;
  @Uint32()
  external int dwBackBufferCount;
  external DDCOLORKEY ddckCKDestBlt;
  external DDCOLORKEY ddckCKSrcBlt;
  @IntPtr()
  external int hDC;
  @IntPtr()
  external int dwReserved1;
  external DDCOLORKEY ddckCKSrcOverlay;
  external DDCOLORKEY ddckCKDestOverlay;
  external Pointer<DDRAWI_DDRAWSURFACE_INT> lpSurfaceOverlaying;
  external DBLNODE dbnOverlayNode;
  external RECT rcOverlaySrc;
  external RECT rcOverlayDest;
  @Uint32()
  external int dwClrXparent;
  @Uint32()
  external int dwAlpha;
  @Int32()
  external int lOverlayX;
  @Int32()
  external int lOverlayY;
}

class DDHALMODEINFO extends Struct {
  @Uint32()
  external int dwWidth;
  @Uint32()
  external int dwHeight;
  @Int32()
  external int lPitch;
  @Uint32()
  external int dwBPP;
  @Uint16()
  external int wFlags;
  @Uint16()
  external int wRefreshRate;
  @Uint32()
  external int dwRBitMask;
  @Uint32()
  external int dwGBitMask;
  @Uint32()
  external int dwBBitMask;
  @Uint32()
  external int dwAlphaBitMask;
}

class DDRAWI_DIRECTDRAW_INT extends Struct {
  external Pointer lpVtbl;
  external Pointer<DDRAWI_DIRECTDRAW_LCL> lpLcl;
  external Pointer<DDRAWI_DIRECTDRAW_INT> lpLink;
  @Uint32()
  external int dwIntRefCnt;
}

class DDHAL_CALLBACKS extends Struct {
  external DDHAL_DDCALLBACKS cbDDCallbacks;
  external DDHAL_DDSURFACECALLBACKS cbDDSurfaceCallbacks;
  external DDHAL_DDPALETTECALLBACKS cbDDPaletteCallbacks;
  external DDHAL_DDCALLBACKS HALDD;
  external DDHAL_DDSURFACECALLBACKS HALDDSurface;
  external DDHAL_DDPALETTECALLBACKS HALDDPalette;
  external DDHAL_DDCALLBACKS HELDD;
  external DDHAL_DDSURFACECALLBACKS HELDDSurface;
  external DDHAL_DDPALETTECALLBACKS HELDDPalette;
  external DDHAL_DDEXEBUFCALLBACKS cbDDExeBufCallbacks;
  external DDHAL_DDEXEBUFCALLBACKS HALDDExeBuf;
  external DDHAL_DDEXEBUFCALLBACKS HELDDExeBuf;
  external DDHAL_DDVIDEOPORTCALLBACKS cbDDVideoPortCallbacks;
  external DDHAL_DDVIDEOPORTCALLBACKS HALDDVideoPort;
  external DDHAL_DDCOLORCONTROLCALLBACKS cbDDColorControlCallbacks;
  external DDHAL_DDCOLORCONTROLCALLBACKS HALDDColorControl;
  external DDHAL_DDMISCELLANEOUSCALLBACKS cbDDMiscellaneousCallbacks;
  external DDHAL_DDMISCELLANEOUSCALLBACKS HALDDMiscellaneous;
  external DDHAL_DDKERNELCALLBACKS cbDDKernelCallbacks;
  external DDHAL_DDKERNELCALLBACKS HALDDKernel;
  external DDHAL_DDMOTIONCOMPCALLBACKS cbDDMotionCompCallbacks;
  external DDHAL_DDMOTIONCOMPCALLBACKS HALDDMotionComp;
}

class DDRAWI_DIRECTDRAW_GBL extends Struct {
  @Uint32()
  external int dwRefCnt;
  @Uint32()
  external int dwFlags;
  @IntPtr()
  external int fpPrimaryOrig;
  external DDCORECAPS ddCaps;
  @Uint32()
  external int dwInternal1;
  @Array(9)
  external Array<Uint32> dwUnused1;
  external Pointer<DDHAL_CALLBACKS> lpDDCBtmp;
  external Pointer<DDRAWI_DDRAWSURFACE_INT> dsList;
  external Pointer<DDRAWI_DDRAWPALETTE_INT> palList;
  external Pointer<DDRAWI_DDRAWCLIPPER_INT> clipperList;
  external Pointer<DDRAWI_DIRECTDRAW_GBL> lp16DD;
  @Uint32()
  external int dwMaxOverlays;
  @Uint32()
  external int dwCurrOverlays;
  @Uint32()
  external int dwMonitorFrequency;
  external DDCORECAPS ddHELCaps;
  @Array(50)
  external Array<Uint32> dwUnused2;
  external DDCOLORKEY ddckCKDestOverlay;
  external DDCOLORKEY ddckCKSrcOverlay;
  external VIDMEMINFO vmiData;
  external Pointer lpDriverHandle;
  external Pointer<DDRAWI_DIRECTDRAW_LCL> lpExclusiveOwner;
  @Uint32()
  external int dwModeIndex;
  @Uint32()
  external int dwModeIndexOrig;
  @Uint32()
  external int dwNumFourCC;
  external Pointer<Uint32> lpdwFourCC;
  @Uint32()
  external int dwNumModes;
  external Pointer<DDHALMODEINFO> lpModeInfo;
  external PROCESS_LIST plProcessList;
  @Uint32()
  external int dwSurfaceLockCount;
  @Uint32()
  external int dwAliasedLockCnt;
  @IntPtr()
  external int dwReserved3;
  @IntPtr()
  external int hDD;
  @Array(12)
  external Array<Int8> cObsolete;
  @Uint32()
  external int dwReserved1;
  @Uint32()
  external int dwReserved2;
  external DBLNODE dbnOverlayRoot;
  external Pointer<Uint16> lpwPDeviceFlags;
  @Uint32()
  external int dwPDevice;
  @Uint32()
  external int dwWin16LockCnt;
  @Uint32()
  external int dwUnused3;
  @Uint32()
  external int hInstance;
  @Uint32()
  external int dwEvent16;
  @Uint32()
  external int dwSaveNumModes;
  @IntPtr()
  external int lpD3DGlobalDriverData;
  @IntPtr()
  external int lpD3DHALCallbacks;
  external DDCORECAPS ddBothCaps;
  external Pointer<DDVIDEOPORTCAPS> lpDDVideoPortCaps;
  external Pointer<DDRAWI_DDVIDEOPORT_INT> dvpList;
  @IntPtr()
  external int lpD3DHALCallbacks2;
  external RECT rectDevice;
  @Uint32()
  external int cMonitors;
  external Pointer gpbmiSrc;
  external Pointer gpbmiDest;
  external Pointer<HEAPALIASINFO> phaiHeapAliases;
  @IntPtr()
  external int hKernelHandle;
  @IntPtr()
  external int pfnNotifyProc;
  external Pointer<DDKERNELCAPS> lpDDKernelCaps;
  external Pointer<DDNONLOCALVIDMEMCAPS> lpddNLVCaps;
  external Pointer<DDNONLOCALVIDMEMCAPS> lpddNLVHELCaps;
  external Pointer<DDNONLOCALVIDMEMCAPS> lpddNLVBothCaps;
  @IntPtr()
  external int lpD3DExtendedCaps;
  @Uint32()
  external int dwDOSBoxEvent;
  external RECT rectDesktop;
  @Array(32)
  external Array<Int8> cDriverName;
  @IntPtr()
  external int lpD3DHALCallbacks3;
  @Uint32()
  external int dwNumZPixelFormats;
  external Pointer<DDPIXELFORMAT> lpZPixelFormats;
  external Pointer<DDRAWI_DDMOTIONCOMP_INT> mcList;
  @Uint32()
  external int hDDVxd;
  external DDSCAPSEX ddsCapsMore;
}

class DDRAWI_DIRECTDRAW_LCL extends Struct {
  @Uint32()
  external int lpDDMore;
  external Pointer<DDRAWI_DIRECTDRAW_GBL> lpGbl;
  @Uint32()
  external int dwUnused0;
  @Uint32()
  external int dwLocalFlags;
  @Uint32()
  external int dwLocalRefCnt;
  @Uint32()
  external int dwProcessId;
  external Pointer pUnkOuter;
  @Uint32()
  external int dwObsolete1;
  @IntPtr()
  external int hWnd;
  @IntPtr()
  external int hDC;
  @Uint32()
  external int dwErrorMode;
  external Pointer<DDRAWI_DDRAWSURFACE_INT> lpPrimary;
  external Pointer<DDRAWI_DDRAWSURFACE_INT> lpCB;
  @Uint32()
  external int dwPreferredMode;
  @IntPtr()
  external int hD3DInstance;
  external Pointer pD3DIUnknown;
  external Pointer<DDHAL_CALLBACKS> lpDDCB;
  @IntPtr()
  external int hDDVxd;
  @Uint32()
  external int dwAppHackFlags;
  @IntPtr()
  external int hFocusWnd;
  @Uint32()
  external int dwHotTracking;
  @Uint32()
  external int dwIMEState;
  @IntPtr()
  external int hWndPopup;
  @IntPtr()
  external int hDD;
  @IntPtr()
  external int hGammaCalibrator;
  external Pointer<DDGAMMACALIBRATORPROC> lpGammaCalibrator;
}

class DDRAWI_DDVIDEOPORT_INT extends Struct {
  external Pointer lpVtbl;
  external Pointer<DDRAWI_DDVIDEOPORT_LCL> lpLcl;
  external Pointer<DDRAWI_DDVIDEOPORT_INT> lpLink;
  @Uint32()
  external int dwIntRefCnt;
  @Uint32()
  external int dwFlags;
}

class DDRAWI_DDVIDEOPORT_LCL extends Struct {
  external Pointer<DDRAWI_DIRECTDRAW_LCL> lpDD;
  external DDVIDEOPORTDESC ddvpDesc;
  external DDVIDEOPORTINFO ddvpInfo;
  external Pointer<DDRAWI_DDRAWSURFACE_INT> lpSurface;
  external Pointer<DDRAWI_DDRAWSURFACE_INT> lpVBISurface;
  external Pointer<Pointer<DDRAWI_DDRAWSURFACE_INT>> lpFlipInts;
  @Uint32()
  external int dwNumAutoflip;
  @Uint32()
  external int dwProcessID;
  @Uint32()
  external int dwStateFlags;
  @Uint32()
  external int dwFlags;
  @Uint32()
  external int dwRefCnt;
  @IntPtr()
  external int fpLastFlip;
  @IntPtr()
  external int dwReserved1;
  @IntPtr()
  external int dwReserved2;
  @IntPtr()
  external int hDDVideoPort;
  @Uint32()
  external int dwNumVBIAutoflip;
  external Pointer<DDVIDEOPORTDESC> lpVBIDesc;
  external Pointer<DDVIDEOPORTDESC> lpVideoDesc;
  external Pointer<DDVIDEOPORTINFO> lpVBIInfo;
  external Pointer<DDVIDEOPORTINFO> lpVideoInfo;
  @Uint32()
  external int dwVBIProcessID;
  external Pointer<DDRAWI_DDVIDEOPORT_INT> lpVPNotify;
}

class DDRAWI_DDMOTIONCOMP_INT extends Struct {
  external Pointer lpVtbl;
  external Pointer<DDRAWI_DDMOTIONCOMP_LCL> lpLcl;
  external Pointer<DDRAWI_DDMOTIONCOMP_INT> lpLink;
  @Uint32()
  external int dwIntRefCnt;
}

class DDRAWI_DDMOTIONCOMP_LCL extends Struct {
  external Pointer<DDRAWI_DIRECTDRAW_LCL> lpDD;
  external GUID guid;
  @Uint32()
  external int dwUncompWidth;
  @Uint32()
  external int dwUncompHeight;
  external DDPIXELFORMAT ddUncompPixelFormat;
  @Uint32()
  external int dwInternalFlags;
  @Uint32()
  external int dwRefCnt;
  @Uint32()
  external int dwProcessId;
  @IntPtr()
  external int hMoComp;
  @Uint32()
  external int dwDriverReserved1;
  @Uint32()
  external int dwDriverReserved2;
  @Uint32()
  external int dwDriverReserved3;
  external Pointer lpDriverReserved1;
  external Pointer lpDriverReserved2;
  external Pointer lpDriverReserved3;
}

class DDHALINFO extends Struct {
  @Uint32()
  external int dwSize;
  external Pointer<DDHAL_DDCALLBACKS> lpDDCallbacks;
  external Pointer<DDHAL_DDSURFACECALLBACKS> lpDDSurfaceCallbacks;
  external Pointer<DDHAL_DDPALETTECALLBACKS> lpDDPaletteCallbacks;
  external VIDMEMINFO vmiData;
  external DDCORECAPS ddCaps;
  @Uint32()
  external int dwMonitorFrequency;
  external Pointer<DDHAL_GETDRIVERINFO> GetDriverInfo;
  @Uint32()
  external int dwModeIndex;
  external Pointer<Uint32> lpdwFourCC;
  @Uint32()
  external int dwNumModes;
  external Pointer<DDHALMODEINFO> lpModeInfo;
  @Uint32()
  external int dwFlags;
  external Pointer lpPDevice;
  @Uint32()
  external int hInstance;
  @IntPtr()
  external int lpD3DGlobalDriverData;
  @IntPtr()
  external int lpD3DHALCallbacks;
  external Pointer<DDHAL_DDEXEBUFCALLBACKS> lpDDExeBufCallbacks;
}

class DDHALDDRAWFNS extends Struct {
  @Uint32()
  external int dwSize;
  external Pointer<DDHAL_SETINFO> lpSetInfo;
  external Pointer<DDHAL_VIDMEMALLOC> lpVidMemAlloc;
  external Pointer<DDHAL_VIDMEMFREE> lpVidMemFree;
}

class DDHAL_BLTDATA extends Struct {
  external Pointer<DDRAWI_DIRECTDRAW_GBL> lpDD;
  external Pointer<DDRAWI_DDRAWSURFACE_LCL> lpDDDestSurface;
  external RECTL rDest;
  external Pointer<DDRAWI_DDRAWSURFACE_LCL> lpDDSrcSurface;
  external RECTL rSrc;
  @Uint32()
  external int dwFlags;
  @Uint32()
  external int dwROPFlags;
  external DDBLTFX bltFX;
  @Int32()
  external int ddRVal;
  external Pointer<DDHALSURFCB_BLT> Blt;
  @Int32()
  external int IsClipped;
  external RECTL rOrigDest;
  external RECTL rOrigSrc;
  @Uint32()
  external int dwRectCnt;
  external Pointer<RECT> prDestRects;
}

class DDHAL_LOCKDATA extends Struct {
  external Pointer<DDRAWI_DIRECTDRAW_GBL> lpDD;
  external Pointer<DDRAWI_DDRAWSURFACE_LCL> lpDDSurface;
  @Uint32()
  external int bHasRect;
  external RECTL rArea;
  external Pointer lpSurfData;
  @Int32()
  external int ddRVal;
  external Pointer<DDHALSURFCB_LOCK> Lock;
  @Uint32()
  external int dwFlags;
}

class DDHAL_UNLOCKDATA extends Struct {
  external Pointer<DDRAWI_DIRECTDRAW_GBL> lpDD;
  external Pointer<DDRAWI_DDRAWSURFACE_LCL> lpDDSurface;
  @Int32()
  external int ddRVal;
  external Pointer<DDHALSURFCB_UNLOCK> Unlock;
}

class DDHAL_UPDATEOVERLAYDATA extends Struct {
  external Pointer<DDRAWI_DIRECTDRAW_GBL> lpDD;
  external Pointer<DDRAWI_DDRAWSURFACE_LCL> lpDDDestSurface;
  external RECTL rDest;
  external Pointer<DDRAWI_DDRAWSURFACE_LCL> lpDDSrcSurface;
  external RECTL rSrc;
  @Uint32()
  external int dwFlags;
  external DDOVERLAYFX overlayFX;
  @Int32()
  external int ddRVal;
  external Pointer<DDHALSURFCB_UPDATEOVERLAY> UpdateOverlay;
}

class DDHAL_SETOVERLAYPOSITIONDATA extends Struct {
  external Pointer<DDRAWI_DIRECTDRAW_GBL> lpDD;
  external Pointer<DDRAWI_DDRAWSURFACE_LCL> lpDDSrcSurface;
  external Pointer<DDRAWI_DDRAWSURFACE_LCL> lpDDDestSurface;
  @Int32()
  external int lXPos;
  @Int32()
  external int lYPos;
  @Int32()
  external int ddRVal;
  external Pointer<DDHALSURFCB_SETOVERLAYPOSITION> SetOverlayPosition;
}

class DDHAL_SETPALETTEDATA extends Struct {
  external Pointer<DDRAWI_DIRECTDRAW_GBL> lpDD;
  external Pointer<DDRAWI_DDRAWSURFACE_LCL> lpDDSurface;
  external Pointer<DDRAWI_DDRAWPALETTE_GBL> lpDDPalette;
  @Int32()
  external int ddRVal;
  external Pointer<DDHALSURFCB_SETPALETTE> SetPalette;
  @Int32()
  external int Attach;
}

class DDHAL_FLIPDATA extends Struct {
  external Pointer<DDRAWI_DIRECTDRAW_GBL> lpDD;
  external Pointer<DDRAWI_DDRAWSURFACE_LCL> lpSurfCurr;
  external Pointer<DDRAWI_DDRAWSURFACE_LCL> lpSurfTarg;
  @Uint32()
  external int dwFlags;
  @Int32()
  external int ddRVal;
  external Pointer<DDHALSURFCB_FLIP> Flip;
  external Pointer<DDRAWI_DDRAWSURFACE_LCL> lpSurfCurrLeft;
  external Pointer<DDRAWI_DDRAWSURFACE_LCL> lpSurfTargLeft;
}

class DDHAL_DESTROYSURFACEDATA extends Struct {
  external Pointer<DDRAWI_DIRECTDRAW_GBL> lpDD;
  external Pointer<DDRAWI_DDRAWSURFACE_LCL> lpDDSurface;
  @Int32()
  external int ddRVal;
  external Pointer<DDHALSURFCB_DESTROYSURFACE> DestroySurface;
}

class DDHAL_SETCLIPLISTDATA extends Struct {
  external Pointer<DDRAWI_DIRECTDRAW_GBL> lpDD;
  external Pointer<DDRAWI_DDRAWSURFACE_LCL> lpDDSurface;
  @Int32()
  external int ddRVal;
  external Pointer<DDHALSURFCB_SETCLIPLIST> SetClipList;
}

class DDHAL_ADDATTACHEDSURFACEDATA extends Struct {
  external Pointer<DDRAWI_DIRECTDRAW_GBL> lpDD;
  external Pointer<DDRAWI_DDRAWSURFACE_LCL> lpDDSurface;
  external Pointer<DDRAWI_DDRAWSURFACE_LCL> lpSurfAttached;
  @Int32()
  external int ddRVal;
  external Pointer<DDHALSURFCB_ADDATTACHEDSURFACE> AddAttachedSurface;
}

class DDHAL_SETCOLORKEYDATA extends Struct {
  external Pointer<DDRAWI_DIRECTDRAW_GBL> lpDD;
  external Pointer<DDRAWI_DDRAWSURFACE_LCL> lpDDSurface;
  @Uint32()
  external int dwFlags;
  external DDCOLORKEY ckNew;
  @Int32()
  external int ddRVal;
  external Pointer<DDHALSURFCB_SETCOLORKEY> SetColorKey;
}

class DDHAL_GETBLTSTATUSDATA extends Struct {
  external Pointer<DDRAWI_DIRECTDRAW_GBL> lpDD;
  external Pointer<DDRAWI_DDRAWSURFACE_LCL> lpDDSurface;
  @Uint32()
  external int dwFlags;
  @Int32()
  external int ddRVal;
  external Pointer<DDHALSURFCB_GETBLTSTATUS> GetBltStatus;
}

class DDHAL_GETFLIPSTATUSDATA extends Struct {
  external Pointer<DDRAWI_DIRECTDRAW_GBL> lpDD;
  external Pointer<DDRAWI_DDRAWSURFACE_LCL> lpDDSurface;
  @Uint32()
  external int dwFlags;
  @Int32()
  external int ddRVal;
  external Pointer<DDHALSURFCB_GETFLIPSTATUS> GetFlipStatus;
}

class DDHAL_DESTROYPALETTEDATA extends Struct {
  external Pointer<DDRAWI_DIRECTDRAW_GBL> lpDD;
  external Pointer<DDRAWI_DDRAWPALETTE_GBL> lpDDPalette;
  @Int32()
  external int ddRVal;
  external Pointer<DDHALPALCB_DESTROYPALETTE> DestroyPalette;
}

class DDHAL_SETENTRIESDATA extends Struct {
  external Pointer<DDRAWI_DIRECTDRAW_GBL> lpDD;
  external Pointer<DDRAWI_DDRAWPALETTE_GBL> lpDDPalette;
  @Uint32()
  external int dwBase;
  @Uint32()
  external int dwNumEntries;
  external Pointer<PALETTEENTRY> lpEntries;
  @Int32()
  external int ddRVal;
  external Pointer<DDHALPALCB_SETENTRIES> SetEntries;
}

class DDHAL_CREATESURFACEDATA extends Struct {
  external Pointer<DDRAWI_DIRECTDRAW_GBL> lpDD;
  external Pointer<DDSURFACEDESC> lpDDSurfaceDesc;
  external Pointer<Pointer<DDRAWI_DDRAWSURFACE_LCL>> lplpSList;
  @Uint32()
  external int dwSCnt;
  @Int32()
  external int ddRVal;
  external Pointer<DDHAL_CREATESURFACE> CreateSurface;
}

class DDHAL_CANCREATESURFACEDATA extends Struct {
  external Pointer<DDRAWI_DIRECTDRAW_GBL> lpDD;
  external Pointer<DDSURFACEDESC> lpDDSurfaceDesc;
  @Uint32()
  external int bIsDifferentPixelFormat;
  @Int32()
  external int ddRVal;
  external Pointer<DDHAL_CANCREATESURFACE> CanCreateSurface;
}

class DDHAL_CREATEPALETTEDATA extends Struct {
  external Pointer<DDRAWI_DIRECTDRAW_GBL> lpDD;
  external Pointer<DDRAWI_DDRAWPALETTE_GBL> lpDDPalette;
  external Pointer<PALETTEENTRY> lpColorTable;
  @Int32()
  external int ddRVal;
  external Pointer<DDHAL_CREATEPALETTE> CreatePalette;
  @Int32()
  external int is_excl;
}

class DDHAL_DESTROYDRIVERDATA extends Struct {
  external Pointer<DDRAWI_DIRECTDRAW_GBL> lpDD;
  @Int32()
  external int ddRVal;
  external Pointer<DDHAL_DESTROYDRIVER> DestroyDriver;
}

class DDHAL_SETMODEDATA extends Struct {
  external Pointer<DDRAWI_DIRECTDRAW_GBL> lpDD;
  @Uint32()
  external int dwModeIndex;
  @Int32()
  external int ddRVal;
  external Pointer<DDHAL_SETMODE> SetMode;
  @Int32()
  external int inexcl;
  @Int32()
  external int useRefreshRate;
}

class DDHAL_DRVSETCOLORKEYDATA extends Struct {
  external Pointer<DDRAWI_DDRAWSURFACE_LCL> lpDDSurface;
  @Uint32()
  external int dwFlags;
  external DDCOLORKEY ckNew;
  @Int32()
  external int ddRVal;
  external Pointer<DDHAL_SETCOLORKEY> SetColorKey;
}

class DDHAL_GETSCANLINEDATA extends Struct {
  external Pointer<DDRAWI_DIRECTDRAW_GBL> lpDD;
  @Uint32()
  external int dwScanLine;
  @Int32()
  external int ddRVal;
  external Pointer<DDHAL_GETSCANLINE> GetScanLine;
}

class DDHAL_SETEXCLUSIVEMODEDATA extends Struct {
  external Pointer<DDRAWI_DIRECTDRAW_GBL> lpDD;
  @Uint32()
  external int dwEnterExcl;
  @Uint32()
  external int dwReserved;
  @Int32()
  external int ddRVal;
  external Pointer<DDHAL_SETEXCLUSIVEMODE> SetExclusiveMode;
}

class DDHAL_FLIPTOGDISURFACEDATA extends Struct {
  external Pointer<DDRAWI_DIRECTDRAW_GBL> lpDD;
  @Uint32()
  external int dwToGDI;
  @Uint32()
  external int dwReserved;
  @Int32()
  external int ddRVal;
  external Pointer<DDHAL_FLIPTOGDISURFACE> FlipToGDISurface;
}

class DDHAL_CANCREATEVPORTDATA extends Struct {
  external Pointer<DDRAWI_DIRECTDRAW_LCL> lpDD;
  external Pointer<DDVIDEOPORTDESC> lpDDVideoPortDesc;
  @Int32()
  external int ddRVal;
  external Pointer<DDHALVPORTCB_CANCREATEVIDEOPORT> CanCreateVideoPort;
}

class DDHAL_CREATEVPORTDATA extends Struct {
  external Pointer<DDRAWI_DIRECTDRAW_LCL> lpDD;
  external Pointer<DDVIDEOPORTDESC> lpDDVideoPortDesc;
  external Pointer<DDRAWI_DDVIDEOPORT_LCL> lpVideoPort;
  @Int32()
  external int ddRVal;
  external Pointer<DDHALVPORTCB_CREATEVIDEOPORT> CreateVideoPort;
}

class DDHAL_FLIPVPORTDATA extends Struct {
  external Pointer<DDRAWI_DIRECTDRAW_LCL> lpDD;
  external Pointer<DDRAWI_DDVIDEOPORT_LCL> lpVideoPort;
  external Pointer<DDRAWI_DDRAWSURFACE_LCL> lpSurfCurr;
  external Pointer<DDRAWI_DDRAWSURFACE_LCL> lpSurfTarg;
  @Int32()
  external int ddRVal;
  external Pointer<DDHALVPORTCB_FLIP> FlipVideoPort;
}

class DDHAL_GETVPORTBANDWIDTHDATA extends Struct {
  external Pointer<DDRAWI_DIRECTDRAW_LCL> lpDD;
  external Pointer<DDRAWI_DDVIDEOPORT_LCL> lpVideoPort;
  external Pointer<DDPIXELFORMAT> lpddpfFormat;
  @Uint32()
  external int dwWidth;
  @Uint32()
  external int dwHeight;
  @Uint32()
  external int dwFlags;
  external Pointer<DDVIDEOPORTBANDWIDTH> lpBandwidth;
  @Int32()
  external int ddRVal;
  external Pointer<DDHALVPORTCB_GETBANDWIDTH> GetVideoPortBandwidth;
}

class DDHAL_GETVPORTINPUTFORMATDATA extends Struct {
  external Pointer<DDRAWI_DIRECTDRAW_LCL> lpDD;
  external Pointer<DDRAWI_DDVIDEOPORT_LCL> lpVideoPort;
  @Uint32()
  external int dwFlags;
  external Pointer<DDPIXELFORMAT> lpddpfFormat;
  @Uint32()
  external int dwNumFormats;
  @Int32()
  external int ddRVal;
  external Pointer<DDHALVPORTCB_GETINPUTFORMATS> GetVideoPortInputFormats;
}

class DDHAL_GETVPORTOUTPUTFORMATDATA extends Struct {
  external Pointer<DDRAWI_DIRECTDRAW_LCL> lpDD;
  external Pointer<DDRAWI_DDVIDEOPORT_LCL> lpVideoPort;
  @Uint32()
  external int dwFlags;
  external Pointer<DDPIXELFORMAT> lpddpfInputFormat;
  external Pointer<DDPIXELFORMAT> lpddpfOutputFormats;
  @Uint32()
  external int dwNumFormats;
  @Int32()
  external int ddRVal;
  external Pointer<DDHALVPORTCB_GETOUTPUTFORMATS> GetVideoPortOutputFormats;
}

class DDHAL_GETVPORTFIELDDATA extends Struct {
  external Pointer<DDRAWI_DIRECTDRAW_LCL> lpDD;
  external Pointer<DDRAWI_DDVIDEOPORT_LCL> lpVideoPort;
  @Int32()
  external int bField;
  @Int32()
  external int ddRVal;
  external Pointer<DDHALVPORTCB_GETFIELD> GetVideoPortField;
}

class DDHAL_GETVPORTLINEDATA extends Struct {
  external Pointer<DDRAWI_DIRECTDRAW_LCL> lpDD;
  external Pointer<DDRAWI_DDVIDEOPORT_LCL> lpVideoPort;
  @Uint32()
  external int dwLine;
  @Int32()
  external int ddRVal;
  external Pointer<DDHALVPORTCB_GETLINE> GetVideoPortLine;
}

class DDHAL_GETVPORTCONNECTDATA extends Struct {
  external Pointer<DDRAWI_DIRECTDRAW_LCL> lpDD;
  @Uint32()
  external int dwPortId;
  external Pointer<DDVIDEOPORTCONNECT> lpConnect;
  @Uint32()
  external int dwNumEntries;
  @Int32()
  external int ddRVal;
  external Pointer<DDHALVPORTCB_GETVPORTCONNECT> GetVideoPortConnectInfo;
}

class DDHAL_DESTROYVPORTDATA extends Struct {
  external Pointer<DDRAWI_DIRECTDRAW_LCL> lpDD;
  external Pointer<DDRAWI_DDVIDEOPORT_LCL> lpVideoPort;
  @Int32()
  external int ddRVal;
  external Pointer<DDHALVPORTCB_DESTROYVPORT> DestroyVideoPort;
}

class DDHAL_GETVPORTFLIPSTATUSDATA extends Struct {
  external Pointer<DDRAWI_DIRECTDRAW_LCL> lpDD;
  @IntPtr()
  external int fpSurface;
  @Int32()
  external int ddRVal;
  external Pointer<DDHALVPORTCB_GETFLIPSTATUS> GetVideoPortFlipStatus;
}

class DDHAL_UPDATEVPORTDATA extends Struct {
  external Pointer<DDRAWI_DIRECTDRAW_LCL> lpDD;
  external Pointer<DDRAWI_DDVIDEOPORT_LCL> lpVideoPort;
  external Pointer<Pointer<DDRAWI_DDRAWSURFACE_INT>> lplpDDSurface;
  external Pointer<Pointer<DDRAWI_DDRAWSURFACE_INT>> lplpDDVBISurface;
  external Pointer<DDVIDEOPORTINFO> lpVideoInfo;
  @Uint32()
  external int dwFlags;
  @Uint32()
  external int dwNumAutoflip;
  @Uint32()
  external int dwNumVBIAutoflip;
  @Int32()
  external int ddRVal;
  external Pointer<DDHALVPORTCB_UPDATE> UpdateVideoPort;
}

class DDHAL_WAITFORVPORTSYNCDATA extends Struct {
  external Pointer<DDRAWI_DIRECTDRAW_LCL> lpDD;
  external Pointer<DDRAWI_DDVIDEOPORT_LCL> lpVideoPort;
  @Uint32()
  external int dwFlags;
  @Uint32()
  external int dwLine;
  @Uint32()
  external int dwTimeOut;
  @Int32()
  external int ddRVal;
  external Pointer<DDHALVPORTCB_WAITFORSYNC> WaitForVideoPortSync;
}

class DDHAL_GETVPORTSIGNALDATA extends Struct {
  external Pointer<DDRAWI_DIRECTDRAW_LCL> lpDD;
  external Pointer<DDRAWI_DDVIDEOPORT_LCL> lpVideoPort;
  @Uint32()
  external int dwStatus;
  @Int32()
  external int ddRVal;
  external Pointer<DDHALVPORTCB_GETSIGNALSTATUS> GetVideoSignalStatus;
}

class DDHAL_VPORTCOLORDATA extends Struct {
  external Pointer<DDRAWI_DIRECTDRAW_LCL> lpDD;
  external Pointer<DDRAWI_DDVIDEOPORT_LCL> lpVideoPort;
  @Uint32()
  external int dwFlags;
  external Pointer<DDCOLORCONTROL> lpColorData;
  @Int32()
  external int ddRVal;
  external Pointer<DDHALVPORTCB_COLORCONTROL> ColorControl;
}

class DDHAL_COLORCONTROLDATA extends Struct {
  external Pointer<DDRAWI_DIRECTDRAW_GBL> lpDD;
  external Pointer<DDRAWI_DDRAWSURFACE_LCL> lpDDSurface;
  external Pointer<DDCOLORCONTROL> lpColorData;
  @Uint32()
  external int dwFlags;
  @Int32()
  external int ddRVal;
  external Pointer<DDHALCOLORCB_COLORCONTROL> ColorControl;
}

class DDHAL_GETDRIVERINFODATA extends Struct {
  @Uint32()
  external int dwSize;
  @Uint32()
  external int dwFlags;
  external GUID guidInfo;
  @Uint32()
  external int dwExpectedSize;
  external Pointer lpvData;
  @Uint32()
  external int dwActualSize;
  @Int32()
  external int ddRVal;
  @IntPtr()
  external int dwContext;
}

class DDHAL_GETAVAILDRIVERMEMORYDATA extends Struct {
  external Pointer<DDRAWI_DIRECTDRAW_GBL> lpDD;
  external DDSCAPS DDSCaps;
  @Uint32()
  external int dwTotal;
  @Uint32()
  external int dwFree;
  @Int32()
  external int ddRVal;
  external Pointer<DDHAL_GETAVAILDRIVERMEMORY> GetAvailDriverMemory;
  external DDSCAPSEX ddsCapsEx;
}

class DDHAL_UPDATENONLOCALHEAPDATA extends Struct {
  external Pointer<DDRAWI_DIRECTDRAW_GBL> lpDD;
  @Uint32()
  external int dwHeap;
  @IntPtr()
  external int fpGARTLin;
  @IntPtr()
  external int fpGARTDev;
  @IntPtr()
  external int ulPolicyMaxBytes;
  @Int32()
  external int ddRVal;
  external Pointer<DDHAL_UPDATENONLOCALHEAP> UpdateNonLocalHeap;
}

class DDHAL_GETHEAPALIGNMENTDATA extends Struct {
  @IntPtr()
  external int dwInstance;
  @Uint32()
  external int dwHeap;
  @Int32()
  external int ddRVal;
  external Pointer<DDHAL_GETHEAPALIGNMENT> GetHeapAlignment;
  external HEAPALIGNMENT Alignment;
}

class DDHAL_CREATESURFACEEXDATA extends Struct {
  @Uint32()
  external int dwFlags;
  external Pointer<DDRAWI_DIRECTDRAW_LCL> lpDDLcl;
  external Pointer<DDRAWI_DDRAWSURFACE_LCL> lpDDSLcl;
  @Int32()
  external int ddRVal;
}

class DDHAL_GETDRIVERSTATEDATA extends Struct {
  @Uint32()
  external int dwFlags;
  @Uint32()
  external int Anonymous;
  external Pointer<Uint32> lpdwStates;
  @Uint32()
  external int dwLength;
  @Int32()
  external int ddRVal;
}

class DDHAL_SYNCSURFACEDATA extends Struct {
  @Uint32()
  external int dwSize;
  external Pointer<DDRAWI_DIRECTDRAW_LCL> lpDD;
  external Pointer<DDRAWI_DDRAWSURFACE_LCL> lpDDSurface;
  @Uint32()
  external int dwSurfaceOffset;
  @IntPtr()
  external int fpLockPtr;
  @Int32()
  external int lPitch;
  @Uint32()
  external int dwOverlayOffset;
  @Uint32()
  external int dwOverlaySrcWidth;
  @Uint32()
  external int dwOverlaySrcHeight;
  @Uint32()
  external int dwOverlayDestWidth;
  @Uint32()
  external int dwOverlayDestHeight;
  @IntPtr()
  external int dwDriverReserved1;
  @IntPtr()
  external int dwDriverReserved2;
  @IntPtr()
  external int dwDriverReserved3;
  @Int32()
  external int ddRVal;
}

class DDHAL_SYNCVIDEOPORTDATA extends Struct {
  @Uint32()
  external int dwSize;
  external Pointer<DDRAWI_DIRECTDRAW_LCL> lpDD;
  external Pointer<DDRAWI_DDVIDEOPORT_LCL> lpVideoPort;
  @Uint32()
  external int dwOriginOffset;
  @Uint32()
  external int dwHeight;
  @Uint32()
  external int dwVBIHeight;
  @IntPtr()
  external int dwDriverReserved1;
  @IntPtr()
  external int dwDriverReserved2;
  @IntPtr()
  external int dwDriverReserved3;
  @Int32()
  external int ddRVal;
}

class DDHAL_GETMOCOMPGUIDSDATA extends Struct {
  external Pointer<DDRAWI_DIRECTDRAW_LCL> lpDD;
  @Uint32()
  external int dwNumGuids;
  external Pointer<GUID> lpGuids;
  @Int32()
  external int ddRVal;
  external Pointer<DDHALMOCOMPCB_GETGUIDS> GetMoCompGuids;
}

class DDHAL_GETMOCOMPFORMATSDATA extends Struct {
  external Pointer<DDRAWI_DIRECTDRAW_LCL> lpDD;
  external Pointer<GUID> lpGuid;
  @Uint32()
  external int dwNumFormats;
  external Pointer<DDPIXELFORMAT> lpFormats;
  @Int32()
  external int ddRVal;
  external Pointer<DDHALMOCOMPCB_GETFORMATS> GetMoCompFormats;
}

class DDHAL_CREATEMOCOMPDATA extends Struct {
  external Pointer<DDRAWI_DIRECTDRAW_LCL> lpDD;
  external Pointer<DDRAWI_DDMOTIONCOMP_LCL> lpMoComp;
  external Pointer<GUID> lpGuid;
  @Uint32()
  external int dwUncompWidth;
  @Uint32()
  external int dwUncompHeight;
  external DDPIXELFORMAT ddUncompPixelFormat;
  external Pointer lpData;
  @Uint32()
  external int dwDataSize;
  @Int32()
  external int ddRVal;
  external Pointer<DDHALMOCOMPCB_CREATE> CreateMoComp;
}

class DDMCCOMPBUFFERINFO extends Struct {
  @Uint32()
  external int dwSize;
  @Uint32()
  external int dwNumCompBuffers;
  @Uint32()
  external int dwWidthToCreate;
  @Uint32()
  external int dwHeightToCreate;
  @Uint32()
  external int dwBytesToAllocate;
  external DDSCAPS2 ddCompCaps;
  external DDPIXELFORMAT ddPixelFormat;
}

class DDHAL_GETMOCOMPCOMPBUFFDATA extends Struct {
  external Pointer<DDRAWI_DIRECTDRAW_LCL> lpDD;
  external Pointer<GUID> lpGuid;
  @Uint32()
  external int dwWidth;
  @Uint32()
  external int dwHeight;
  external DDPIXELFORMAT ddPixelFormat;
  @Uint32()
  external int dwNumTypesCompBuffs;
  external Pointer<DDMCCOMPBUFFERINFO> lpCompBuffInfo;
  @Int32()
  external int ddRVal;
  external Pointer<DDHALMOCOMPCB_GETCOMPBUFFINFO> GetMoCompBuffInfo;
}

class DDHAL_GETINTERNALMOCOMPDATA extends Struct {
  external Pointer<DDRAWI_DIRECTDRAW_LCL> lpDD;
  external Pointer<GUID> lpGuid;
  @Uint32()
  external int dwWidth;
  @Uint32()
  external int dwHeight;
  external DDPIXELFORMAT ddPixelFormat;
  @Uint32()
  external int dwScratchMemAlloc;
  @Int32()
  external int ddRVal;
  external Pointer<DDHALMOCOMPCB_GETINTERNALINFO> GetInternalMoCompInfo;
}

class DDHAL_BEGINMOCOMPFRAMEDATA extends Struct {
  external Pointer<DDRAWI_DIRECTDRAW_LCL> lpDD;
  external Pointer<DDRAWI_DDMOTIONCOMP_LCL> lpMoComp;
  external Pointer<DDRAWI_DDRAWSURFACE_LCL> lpDestSurface;
  @Uint32()
  external int dwInputDataSize;
  external Pointer lpInputData;
  @Uint32()
  external int dwOutputDataSize;
  external Pointer lpOutputData;
  @Int32()
  external int ddRVal;
  external Pointer<DDHALMOCOMPCB_BEGINFRAME> BeginMoCompFrame;
}

class DDHAL_ENDMOCOMPFRAMEDATA extends Struct {
  external Pointer<DDRAWI_DIRECTDRAW_LCL> lpDD;
  external Pointer<DDRAWI_DDMOTIONCOMP_LCL> lpMoComp;
  external Pointer lpInputData;
  @Uint32()
  external int dwInputDataSize;
  @Int32()
  external int ddRVal;
  external Pointer<DDHALMOCOMPCB_ENDFRAME> EndMoCompFrame;
}

class DDMCBUFFERINFO extends Struct {
  @Uint32()
  external int dwSize;
  external Pointer<DDRAWI_DDRAWSURFACE_LCL> lpCompSurface;
  @Uint32()
  external int dwDataOffset;
  @Uint32()
  external int dwDataSize;
  external Pointer lpPrivate;
}

class DDHAL_RENDERMOCOMPDATA extends Struct {
  external Pointer<DDRAWI_DIRECTDRAW_LCL> lpDD;
  external Pointer<DDRAWI_DDMOTIONCOMP_LCL> lpMoComp;
  @Uint32()
  external int dwNumBuffers;
  external Pointer<DDMCBUFFERINFO> lpBufferInfo;
  @Uint32()
  external int dwFunction;
  external Pointer lpInputData;
  @Uint32()
  external int dwInputDataSize;
  external Pointer lpOutputData;
  @Uint32()
  external int dwOutputDataSize;
  @Int32()
  external int ddRVal;
  external Pointer<DDHALMOCOMPCB_RENDER> RenderMoComp;
}

class DDHAL_QUERYMOCOMPSTATUSDATA extends Struct {
  external Pointer<DDRAWI_DIRECTDRAW_LCL> lpDD;
  external Pointer<DDRAWI_DDMOTIONCOMP_LCL> lpMoComp;
  external Pointer<DDRAWI_DDRAWSURFACE_LCL> lpSurface;
  @Uint32()
  external int dwFlags;
  @Int32()
  external int ddRVal;
  external Pointer<DDHALMOCOMPCB_QUERYSTATUS> QueryMoCompStatus;
}

class DDHAL_DESTROYMOCOMPDATA extends Struct {
  external Pointer<DDRAWI_DIRECTDRAW_LCL> lpDD;
  external Pointer<DDRAWI_DDMOTIONCOMP_LCL> lpMoComp;
  @Int32()
  external int ddRVal;
  external Pointer<DDHALMOCOMPCB_DESTROY> DestroyMoComp;
}

class _D3DHAL_CALLBACKS extends Struct {}

class _D3DHAL_GLOBALDRIVERDATA extends Struct {}

class STRENTRYA extends Struct {
  external Pointer<Utf8> pszName;
  external Pointer<Utf8> pszValue;
}

class STRENTRYW extends Struct {
  external Pointer<Utf16> pszName;
  external Pointer<Utf16> pszValue;
}

class STRTABLEA extends Struct {
  @Uint32()
  external int cEntries;
  external Pointer<STRENTRYA> pse;
}

class STRTABLEW extends Struct {
  @Uint32()
  external int cEntries;
  external Pointer<STRENTRY> pse;
}

class CABINFOA extends Struct {
  external Pointer<Utf8> pszCab;
  external Pointer<Utf8> pszInf;
  external Pointer<Utf8> pszSection;
  @Array(129)
  external Array<Int8> szSrcPath;
  @Uint32()
  external int dwFlags;
}

class CABINFOW extends Struct {
  external Pointer<Utf16> pszCab;
  external Pointer<Utf16> pszInf;
  external Pointer<Utf16> pszSection;
  @Array(129)
  external Array<Uint16> szSrcPath;
  @Uint32()
  external int dwFlags;
}

class PERUSERSECTIONA extends Struct {
  @Array(59)
  external Array<Int8> szGUID;
  @Array(128)
  external Array<Int8> szDispName;
  @Array(10)
  external Array<Int8> szLocale;
  @Array(132)
  external Array<Int8> szStub;
  @Array(32)
  external Array<Int8> szVersion;
  @Array(128)
  external Array<Int8> szCompID;
  @Uint32()
  external int dwIsInstalled;
  @Int32()
  external int bRollback;
}

class PERUSERSECTIONW extends Struct {
  @Array(59)
  external Array<Uint16> szGUID;
  @Array(128)
  external Array<Uint16> szDispName;
  @Array(10)
  external Array<Uint16> szLocale;
  @Array(132)
  external Array<Uint16> szStub;
  @Array(32)
  external Array<Uint16> szVersion;
  @Array(128)
  external Array<Uint16> szCompID;
  @Uint32()
  external int dwIsInstalled;
  @Int32()
  external int bRollback;
}

class IMESTRUCT extends Struct {
  @Uint32()
  external int fnc;
  @IntPtr()
  external int wParam;
  @Uint32()
  external int wCount;
  @Uint32()
  external int dchSource;
  @Uint32()
  external int dchDest;
  @IntPtr()
  external int lParam1;
  @IntPtr()
  external int lParam2;
  @IntPtr()
  external int lParam3;
}

class UNDETERMINESTRUCT extends Struct {
  @Uint32()
  external int dwSize;
  @Uint32()
  external int uDefIMESize;
  @Uint32()
  external int uDefIMEPos;
  @Uint32()
  external int uUndetTextLen;
  @Uint32()
  external int uUndetTextPos;
  @Uint32()
  external int uUndetAttrPos;
  @Uint32()
  external int uCursorPos;
  @Uint32()
  external int uDeltaStart;
  @Uint32()
  external int uDetermineTextLen;
  @Uint32()
  external int uDetermineTextPos;
  @Uint32()
  external int uDetermineDelimPos;
  @Uint32()
  external int uYomiTextLen;
  @Uint32()
  external int uYomiTextPos;
  @Uint32()
  external int uYomiDelimPos;
}

class STRINGEXSTRUCT extends Struct {
  @Uint32()
  external int dwSize;
  @Uint32()
  external int uDeterminePos;
  @Uint32()
  external int uDetermineDelimPos;
  @Uint32()
  external int uYomiPos;
  @Uint32()
  external int uYomiDelimPos;
}

class DATETIME extends Struct {
  @Uint16()
  external int year;
  @Uint16()
  external int month;
  @Uint16()
  external int day;
  @Uint16()
  external int hour;
  @Uint16()
  external int min;
  @Uint16()
  external int sec;
}

class IMEPROA extends Struct {
  @IntPtr()
  external int hWnd;
  external DATETIME InstDate;
  @Uint32()
  external int wVersion;
  @Array(50)
  external Array<Uint8> szDescription;
  @Array(80)
  external Array<Uint8> szName;
  @Array(30)
  external Array<Uint8> szOptions;
}

class IMEPROW extends Struct {
  @IntPtr()
  external int hWnd;
  external DATETIME InstDate;
  @Uint32()
  external int wVersion;
  @Array(50)
  external Array<Uint16> szDescription;
  @Array(80)
  external Array<Uint16> szName;
  @Array(30)
  external Array<Uint16> szOptions;
}

class WebBrowser_V1 extends Struct {}

class WebBrowser extends Struct {}

class InternetExplorer extends Struct {}

class InternetExplorerMedium extends Struct {}

class ShellBrowserWindow extends Struct {}

class ShellWindows extends Struct {}

class ShellUIHelper extends Struct {}

class ShellNameSpace extends Struct {}

class CScriptErrorList extends Struct {}

class JAVA_TRUST extends Struct {
  @Uint32()
  external int cbSize;
  @Uint32()
  external int flag;
  @Int32()
  external int fAllActiveXPermissions;
  @Int32()
  external int fAllPermissions;
  @Uint32()
  external int dwEncodingType;
  external Pointer<Uint8> pbJavaPermissions;
  @Uint32()
  external int cbJavaPermissions;
  external Pointer<Uint8> pbSigner;
  @Uint32()
  external int cbSigner;
  external Pointer<Utf16> pwszZone;
  external GUID guidZone;
  @Int32()
  external int hVerify;
}

class IsolatedAppLauncher extends Struct {}

class IsolatedAppLauncherTelemetryParameters extends Struct {
  @Int32()
  external int EnableForLaunch;
  external GUID CorrelationGUID;
}

class WSCProductList extends Struct {}

class WSCDefaultProduct extends Struct {}

class FH_OVERLAPPED extends Struct {
  @IntPtr()
  external int Internal;
  @IntPtr()
  external int InternalHigh;
  @Uint32()
  external int Offset;
  @Uint32()
  external int OffsetHigh;
  @IntPtr()
  external int hEvent;
  external PFN_IO_COMPLETION pfnCompletion;
  @IntPtr()
  external int Reserved1;
  @IntPtr()
  external int Reserved2;
  @IntPtr()
  external int Reserved3;
  @IntPtr()
  external int Reserved4;
}

class FIO_CONTEXT extends Struct {
  @Uint32()
  external int m_dwTempHack;
  @Uint32()
  external int m_dwSignature;
  @IntPtr()
  external int m_hFile;
  @Uint32()
  external int m_dwLinesOffset;
  @Uint32()
  external int m_dwHeaderLength;
}

class NAME_CACHE_CONTEXT extends Struct {
  @Uint32()
  external int m_dwSignature;
}

class TDIEntityID extends Struct {
  @Uint32()
  external int tei_entity;
  @Uint32()
  external int tei_instance;
}

class TDIObjectID extends Struct {
  external TDIEntityID toi_entity;
  @Uint32()
  external int toi_class;
  @Uint32()
  external int toi_type;
  @Uint32()
  external int toi_id;
}

class tcp_request_query_information_ex_xp extends Struct {
  external TDIObjectID ID;
  @Array(2)
  external Array<IntPtr> Context;
}

class tcp_request_query_information_ex32_xp extends Struct {
  external TDIObjectID ID;
  @Array(4)
  external Array<Uint32> Context;
}

class tcp_request_query_information_ex_w2k extends Struct {
  external TDIObjectID ID;
  @Array(16)
  external Array<Uint8> Context;
}

class tcp_request_set_information_ex extends Struct {
  external TDIObjectID ID;
  @Uint32()
  external int BufferSize;
  @Array(1)
  external Array<Uint8> Buffer;
}

class TDI_TL_IO_CONTROL_ENDPOINT extends Struct {
  @Uint32()
  external int Type;
  @Uint32()
  external int Level;
  @Uint32()
  external int Anonymous;
  external Pointer InputBuffer;
  @Uint32()
  external int InputBufferLength;
  external Pointer OutputBuffer;
  @Uint32()
  external int OutputBufferLength;
}

class WLDP_HOST_INFORMATION extends Struct {
  @Uint32()
  external int dwRevision;
  @Uint32()
  external int dwHostId;
  external Pointer<Utf16> szSource;
  @IntPtr()
  external int hSource;
}

class DEVPROP_FILTER_EXPRESSION extends Struct {
  @Uint32()
  external int Operator;
  external DEVPROPERTY Property;
}

class DEV_OBJECT extends Struct {
  @Uint32()
  external int ObjectType;
  external Pointer<Utf16> pszObjectId;
  @Uint32()
  external int cPropertyCount;
  external Pointer<DEVPROPERTY> pProperties;
}

class DEV_QUERY_RESULT_ACTION_DATA extends Struct {
  @Uint32()
  external int Action;
  @Uint32()
  external int Data;
}

class DEV_QUERY_PARAMETER extends Struct {
  external DEVPROPKEY Key;
  @Uint32()
  external int Type;
  @Uint32()
  external int BufferSize;
  external Pointer Buffer;
}

class HDEVQUERY__ extends Struct {
  @Int32()
  external int unused;
}

class PF_FILTER_DESCRIPTOR extends Struct {
  @Uint32()
  external int dwFilterFlags;
  @Uint32()
  external int dwRule;
  @Uint32()
  external int pfatType;
  external Pointer<Uint8> SrcAddr;
  external Pointer<Uint8> SrcMask;
  external Pointer<Uint8> DstAddr;
  external Pointer<Uint8> DstMask;
  @Uint32()
  external int dwProtocol;
  @Uint32()
  external int fLateBound;
  @Uint16()
  external int wSrcPort;
  @Uint16()
  external int wDstPort;
  @Uint16()
  external int wSrcPortHighRange;
  @Uint16()
  external int wDstPortHighRange;
}

class PF_FILTER_STATS extends Struct {
  @Uint32()
  external int dwNumPacketsFiltered;
  external PF_FILTER_DESCRIPTOR info;
}

class PF_INTERFACE_STATS extends Struct {
  external Pointer pvDriverContext;
  @Uint32()
  external int dwFlags;
  @Uint32()
  external int dwInDrops;
  @Uint32()
  external int dwOutDrops;
  @Uint32()
  external int eaInAction;
  @Uint32()
  external int eaOutAction;
  @Uint32()
  external int dwNumInFilters;
  @Uint32()
  external int dwNumOutFilters;
  @Uint32()
  external int dwFrag;
  @Uint32()
  external int dwSpoof;
  @Uint32()
  external int dwReserved1;
  @Uint32()
  external int dwReserved2;
  @Int64()
  external int liSYN;
  @Int64()
  external int liTotalLogged;
  @Uint32()
  external int dwLostLogEntries;
  @Array(1)
  external Array<PF_FILTER_STATS> FilterInfo;
}

class PF_LATEBIND_INFO extends Struct {
  external Pointer<Uint8> SrcAddr;
  external Pointer<Uint8> DstAddr;
  external Pointer<Uint8> Mask;
}

class PFLOGFRAME extends Struct {
  @Int64()
  external int Timestamp;
  @Uint32()
  external int pfeTypeOfFrame;
  @Uint32()
  external int dwTotalSizeUsed;
  @Uint32()
  external int dwFilterRule;
  @Uint16()
  external int wSizeOfAdditionalData;
  @Uint16()
  external int wSizeOfIpHeader;
  @Uint32()
  external int dwInterfaceName;
  @Uint32()
  external int dwIPIndex;
  @Array(1)
  external Array<Uint8> bPacketData;
}
