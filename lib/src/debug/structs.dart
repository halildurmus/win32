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

class CONTEXT extends Struct {
  @Uint64() external int P1Home;
  @Uint64() external int P2Home;
  @Uint64() external int P3Home;
  @Uint64() external int P4Home;
  @Uint64() external int P5Home;
  @Uint64() external int P6Home;
  @Uint32() external int ContextFlags;
  @Uint32() external int MxCsr;
  @Uint16() external int SegCs;
  @Uint16() external int SegDs;
  @Uint16() external int SegEs;
  @Uint16() external int SegFs;
  @Uint16() external int SegGs;
  @Uint16() external int SegSs;
  @Uint32() external int EFlags;
  @Uint64() external int Dr0;
  @Uint64() external int Dr1;
  @Uint64() external int Dr2;
  @Uint64() external int Dr3;
  @Uint64() external int Dr6;
  @Uint64() external int Dr7;
  @Uint64() external int Rax;
  @Uint64() external int Rcx;
  @Uint64() external int Rdx;
  @Uint64() external int Rbx;
  @Uint64() external int Rsp;
  @Uint64() external int Rbp;
  @Uint64() external int Rsi;
  @Uint64() external int Rdi;
  @Uint64() external int R8;
  @Uint64() external int R9;
  @Uint64() external int R10;
  @Uint64() external int R11;
  @Uint64() external int R12;
  @Uint64() external int R13;
  @Uint64() external int R14;
  @Uint64() external int R15;
  @Uint64() external int Rip;
  @Uint32() external int Anonymous;
  external M128A VectorRegister;
  @Uint64() external int VectorControl;
  @Uint64() external int DebugControl;
  @Uint64() external int LastBranchToRip;
  @Uint64() external int LastBranchFromRip;
  @Uint64() external int LastExceptionToRip;
  @Uint64() external int LastExceptionFromRip;
}

class LDT_ENTRY extends Struct {
  @Uint16() external int LimitLow;
  @Uint16() external int BaseLow;
  @Uint32() external int HighWord;
}

class WOW64_FLOATING_SAVE_AREA extends Struct {
  @Uint32() external int ControlWord;
  @Uint32() external int StatusWord;
  @Uint32() external int TagWord;
  @Uint32() external int ErrorOffset;
  @Uint32() external int ErrorSelector;
  @Uint32() external int DataOffset;
  @Uint32() external int DataSelector;
  external __ubyte__ RegisterArea;
  @Uint32() external int Cr0NpxState;
}

class WOW64_CONTEXT extends Struct {
  @Uint32() external int ContextFlags;
  @Uint32() external int Dr0;
  @Uint32() external int Dr1;
  @Uint32() external int Dr2;
  @Uint32() external int Dr3;
  @Uint32() external int Dr6;
  @Uint32() external int Dr7;
  external WOW64_FLOATING_SAVE_AREA FloatSave;
  @Uint32() external int SegGs;
  @Uint32() external int SegFs;
  @Uint32() external int SegEs;
  @Uint32() external int SegDs;
  @Uint32() external int Edi;
  @Uint32() external int Esi;
  @Uint32() external int Ebx;
  @Uint32() external int Edx;
  @Uint32() external int Ecx;
  @Uint32() external int Eax;
  @Uint32() external int Ebp;
  @Uint32() external int Eip;
  @Uint32() external int SegCs;
  @Uint32() external int EFlags;
  @Uint32() external int Esp;
  @Uint32() external int SegSs;
  external __ubyte__ ExtendedRegisters;
}

class WOW64_LDT_ENTRY extends Struct {
  @Uint16() external int LimitLow;
  @Uint16() external int BaseLow;
  @Uint32() external int HighWord;
}

class EXCEPTION_RECORD extends Struct {
  @Uint32() external int ExceptionCode;
  @Uint32() external int ExceptionFlags;
  external Pointer<EXCEPTION_RECORD> ExceptionRecord;
  external Pointer ExceptionAddress;
  @Uint32() external int NumberParameters;
  external __uintptr__ ExceptionInformation;
}

class EXCEPTION_RECORD64 extends Struct {
  @Uint32() external int ExceptionCode;
  @Uint32() external int ExceptionFlags;
  @Uint64() external int ExceptionRecord;
  @Uint64() external int ExceptionAddress;
  @Uint32() external int NumberParameters;
  @Uint32() external int __unusedAlignment;
  external __uint64__ ExceptionInformation;
}

class EXCEPTION_POINTERS extends Struct {
  external Pointer<EXCEPTION_RECORD> ExceptionRecord;
  external Pointer<CONTEXT> ContextRecord;
}

class IMAGE_FILE_HEADER extends Struct {
  @Uint32() external int Machine;
  @Uint16() external int NumberOfSections;
  @Uint32() external int TimeDateStamp;
  @Uint32() external int PointerToSymbolTable;
  @Uint32() external int NumberOfSymbols;
  @Uint16() external int SizeOfOptionalHeader;
  @Uint32() external int Characteristics;
}

class IMAGE_DATA_DIRECTORY extends Struct {
  @Uint32() external int VirtualAddress;
  @Uint32() external int Size;
}

class IMAGE_OPTIONAL_HEADER64 extends Struct {
  @Uint32() external int Magic;
  @Uint8() external int MajorLinkerVersion;
  @Uint8() external int MinorLinkerVersion;
  @Uint32() external int SizeOfCode;
  @Uint32() external int SizeOfInitializedData;
  @Uint32() external int SizeOfUninitializedData;
  @Uint32() external int AddressOfEntryPoint;
  @Uint32() external int BaseOfCode;
  @Uint64() external int ImageBase;
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
  @Uint64() external int SizeOfStackReserve;
  @Uint64() external int SizeOfStackCommit;
  @Uint64() external int SizeOfHeapReserve;
  @Uint64() external int SizeOfHeapCommit;
  @Uint32() external int LoaderFlags;
  @Uint32() external int NumberOfRvaAndSizes;
  external IMAGE_DATA_DIRECTORY DataDirectory;
}

class IMAGE_NT_HEADERS64 extends Struct {
  @Uint32() external int Signature;
  external IMAGE_FILE_HEADER FileHeader;
  external IMAGE_OPTIONAL_HEADER64 OptionalHeader;
}

class IMAGE_SECTION_HEADER extends Struct {
  external __ubyte__ Name;
  @Uint32() external int Misc;
  @Uint32() external int VirtualAddress;
  @Uint32() external int SizeOfRawData;
  @Uint32() external int PointerToRawData;
  @Uint32() external int PointerToRelocations;
  @Uint32() external int PointerToLinenumbers;
  @Uint16() external int NumberOfRelocations;
  @Uint16() external int NumberOfLinenumbers;
  @Uint32() external int Characteristics;
}

class IMAGE_LOAD_CONFIG_DIRECTORY32 extends Struct {
  @Uint32() external int Size;
  @Uint32() external int TimeDateStamp;
  @Uint16() external int MajorVersion;
  @Uint16() external int MinorVersion;
  @Uint32() external int GlobalFlagsClear;
  @Uint32() external int GlobalFlagsSet;
  @Uint32() external int CriticalSectionDefaultTimeout;
  @Uint32() external int DeCommitFreeBlockThreshold;
  @Uint32() external int DeCommitTotalFreeThreshold;
  @Uint32() external int LockPrefixTable;
  @Uint32() external int MaximumAllocationSize;
  @Uint32() external int VirtualMemoryThreshold;
  @Uint32() external int ProcessHeapFlags;
  @Uint32() external int ProcessAffinityMask;
  @Uint16() external int CSDVersion;
  @Uint16() external int DependentLoadFlags;
  @Uint32() external int EditList;
  @Uint32() external int SecurityCookie;
  @Uint32() external int SEHandlerTable;
  @Uint32() external int SEHandlerCount;
  @Uint32() external int GuardCFCheckFunctionPointer;
  @Uint32() external int GuardCFDispatchFunctionPointer;
  @Uint32() external int GuardCFFunctionTable;
  @Uint32() external int GuardCFFunctionCount;
  @Uint32() external int GuardFlags;
  external IMAGE_LOAD_CONFIG_CODE_INTEGRITY CodeIntegrity;
  @Uint32() external int GuardAddressTakenIatEntryTable;
  @Uint32() external int GuardAddressTakenIatEntryCount;
  @Uint32() external int GuardLongJumpTargetTable;
  @Uint32() external int GuardLongJumpTargetCount;
  @Uint32() external int DynamicValueRelocTable;
  @Uint32() external int CHPEMetadataPointer;
  @Uint32() external int GuardRFFailureRoutine;
  @Uint32() external int GuardRFFailureRoutineFunctionPointer;
  @Uint32() external int DynamicValueRelocTableOffset;
  @Uint16() external int DynamicValueRelocTableSection;
  @Uint16() external int Reserved2;
  @Uint32() external int GuardRFVerifyStackPointerFunctionPointer;
  @Uint32() external int HotPatchTableOffset;
  @Uint32() external int Reserved3;
  @Uint32() external int EnclaveConfigurationPointer;
  @Uint32() external int VolatileMetadataPointer;
  @Uint32() external int GuardEHContinuationTable;
  @Uint32() external int GuardEHContinuationCount;
}

class IMAGE_LOAD_CONFIG_DIRECTORY64 extends Struct {
  @Uint32() external int Size;
  @Uint32() external int TimeDateStamp;
  @Uint16() external int MajorVersion;
  @Uint16() external int MinorVersion;
  @Uint32() external int GlobalFlagsClear;
  @Uint32() external int GlobalFlagsSet;
  @Uint32() external int CriticalSectionDefaultTimeout;
  @Uint64() external int DeCommitFreeBlockThreshold;
  @Uint64() external int DeCommitTotalFreeThreshold;
  @Uint64() external int LockPrefixTable;
  @Uint64() external int MaximumAllocationSize;
  @Uint64() external int VirtualMemoryThreshold;
  @Uint64() external int ProcessAffinityMask;
  @Uint32() external int ProcessHeapFlags;
  @Uint16() external int CSDVersion;
  @Uint16() external int DependentLoadFlags;
  @Uint64() external int EditList;
  @Uint64() external int SecurityCookie;
  @Uint64() external int SEHandlerTable;
  @Uint64() external int SEHandlerCount;
  @Uint64() external int GuardCFCheckFunctionPointer;
  @Uint64() external int GuardCFDispatchFunctionPointer;
  @Uint64() external int GuardCFFunctionTable;
  @Uint64() external int GuardCFFunctionCount;
  @Uint32() external int GuardFlags;
  external IMAGE_LOAD_CONFIG_CODE_INTEGRITY CodeIntegrity;
  @Uint64() external int GuardAddressTakenIatEntryTable;
  @Uint64() external int GuardAddressTakenIatEntryCount;
  @Uint64() external int GuardLongJumpTargetTable;
  @Uint64() external int GuardLongJumpTargetCount;
  @Uint64() external int DynamicValueRelocTable;
  @Uint64() external int CHPEMetadataPointer;
  @Uint64() external int GuardRFFailureRoutine;
  @Uint64() external int GuardRFFailureRoutineFunctionPointer;
  @Uint32() external int DynamicValueRelocTableOffset;
  @Uint16() external int DynamicValueRelocTableSection;
  @Uint16() external int Reserved2;
  @Uint64() external int GuardRFVerifyStackPointerFunctionPointer;
  @Uint32() external int HotPatchTableOffset;
  @Uint32() external int Reserved3;
  @Uint64() external int EnclaveConfigurationPointer;
  @Uint64() external int VolatileMetadataPointer;
  @Uint64() external int GuardEHContinuationTable;
  @Uint64() external int GuardEHContinuationCount;
}

class IMAGE_DEBUG_DIRECTORY extends Struct {
  @Uint32() external int Characteristics;
  @Uint32() external int TimeDateStamp;
  @Uint16() external int MajorVersion;
  @Uint16() external int MinorVersion;
  @Uint32() external int Type;
  @Uint32() external int SizeOfData;
  @Uint32() external int AddressOfRawData;
  @Uint32() external int PointerToRawData;
}

class IMAGE_COFF_SYMBOLS_HEADER extends Struct {
  @Uint32() external int NumberOfSymbols;
  @Uint32() external int LvaToFirstSymbol;
  @Uint32() external int NumberOfLinenumbers;
  @Uint32() external int LvaToFirstLinenumber;
  @Uint32() external int RvaToFirstByteOfCode;
  @Uint32() external int RvaToLastByteOfCode;
  @Uint32() external int RvaToFirstByteOfData;
  @Uint32() external int RvaToLastByteOfData;
}

class FPO_DATA extends Struct {
  @Uint32() external int ulOffStart;
  @Uint32() external int cbProcSize;
  @Uint32() external int cdwLocals;
  @Uint16() external int cdwParams;
  @Uint16() external int _bitfield;
}

class IMAGE_FUNCTION_ENTRY extends Struct {
  @Uint32() external int StartingAddress;
  @Uint32() external int EndingAddress;
  @Uint32() external int EndOfPrologue;
}

class IMAGE_FUNCTION_ENTRY64 extends Struct {
  @Uint64() external int StartingAddress;
  @Uint64() external int EndingAddress;
  @Uint32() external int Anonymous;
}

class EXCEPTION_DEBUG_INFO extends Struct {
  external EXCEPTION_RECORD ExceptionRecord;
  @Uint32() external int dwFirstChance;
}

class CREATE_THREAD_DEBUG_INFO extends Struct {
  @IntPtr() external int hThread;
  external Pointer lpThreadLocalBase;
  external Pointer<THREAD_START_ROUTINE> lpStartAddress;
}

class CREATE_PROCESS_DEBUG_INFO extends Struct {
  @IntPtr() external int hFile;
  @IntPtr() external int hProcess;
  @IntPtr() external int hThread;
  external Pointer lpBaseOfImage;
  @Uint32() external int dwDebugInfoFileOffset;
  @Uint32() external int nDebugInfoSize;
  external Pointer lpThreadLocalBase;
  external Pointer<THREAD_START_ROUTINE> lpStartAddress;
  external Pointer lpImageName;
  @Uint16() external int fUnicode;
}

class EXIT_THREAD_DEBUG_INFO extends Struct {
  @Uint32() external int dwExitCode;
}

class EXIT_PROCESS_DEBUG_INFO extends Struct {
  @Uint32() external int dwExitCode;
}

class LOAD_DLL_DEBUG_INFO extends Struct {
  @IntPtr() external int hFile;
  external Pointer lpBaseOfDll;
  @Uint32() external int dwDebugInfoFileOffset;
  @Uint32() external int nDebugInfoSize;
  external Pointer lpImageName;
  @Uint16() external int fUnicode;
}

class UNLOAD_DLL_DEBUG_INFO extends Struct {
  external Pointer lpBaseOfDll;
}

class OUTPUT_DEBUG_STRING_INFO extends Struct {
  external Pointer<Utf8> lpDebugStringData;
  @Uint16() external int fUnicode;
  @Uint16() external int nDebugStringLength;
}

class RIP_INFO extends Struct {
  @Uint32() external int dwError;
  @Uint32() external int dwType;
}

class DEBUG_EVENT extends Struct {
  @Uint32() external int dwDebugEventCode;
  @Uint32() external int dwProcessId;
  @Uint32() external int dwThreadId;
  @Uint32() external int u;
}

class FLASHWINFO extends Struct {
  @Uint32() external int cbSize;
  @IntPtr() external int hwnd;
  @Uint32() external int dwFlags;
  @Uint32() external int uCount;
  @Uint32() external int dwTimeout;
}

class WAITCHAIN_NODE_INFO extends Struct {
  @Uint32() external int ObjectType;
  @Uint32() external int ObjectStatus;
  @Uint32() external int Anonymous;
}

class MINIDUMP_LOCATION_DESCRIPTOR extends Struct {
  @Uint32() external int DataSize;
  @Uint32() external int Rva;
}

class MINIDUMP_LOCATION_DESCRIPTOR64 extends Struct {
  @Uint64() external int DataSize;
  @Uint64() external int Rva;
}

class MINIDUMP_MEMORY_DESCRIPTOR extends Struct {
  @Uint64() external int StartOfMemoryRange;
  external MINIDUMP_LOCATION_DESCRIPTOR Memory;
}

class MINIDUMP_MEMORY_DESCRIPTOR64 extends Struct {
  @Uint64() external int StartOfMemoryRange;
  @Uint64() external int DataSize;
}

class MINIDUMP_HEADER extends Struct {
  @Uint32() external int Signature;
  @Uint32() external int Version;
  @Uint32() external int NumberOfStreams;
  @Uint32() external int StreamDirectoryRva;
  @Uint32() external int CheckSum;
  @Uint32() external int Anonymous;
  @Uint64() external int Flags;
}

class MINIDUMP_DIRECTORY extends Struct {
  @Uint32() external int StreamType;
  external MINIDUMP_LOCATION_DESCRIPTOR Location;
}

class MINIDUMP_STRING extends Struct {
  @Uint32() external int Length;
  external __ushort__ Buffer;
}

class CPU_INFORMATION extends Struct {
  @Uint32() external int X86CpuInfo;
  @Uint32() external int OtherCpuInfo;
}

class MINIDUMP_SYSTEM_INFO extends Struct {
  @Uint32() external int ProcessorArchitecture;
  @Uint16() external int ProcessorLevel;
  @Uint16() external int ProcessorRevision;
  @Uint32() external int Anonymous1;
  @Uint32() external int MajorVersion;
  @Uint32() external int MinorVersion;
  @Uint32() external int BuildNumber;
  @Uint32() external int PlatformId;
  @Uint32() external int CSDVersionRva;
  @Uint32() external int Anonymous2;
  external CPU_INFORMATION Cpu;
}

class MINIDUMP_THREAD extends Struct {
  @Uint32() external int ThreadId;
  @Uint32() external int SuspendCount;
  @Uint32() external int PriorityClass;
  @Uint32() external int Priority;
  @Uint64() external int Teb;
  external MINIDUMP_MEMORY_DESCRIPTOR Stack;
  external MINIDUMP_LOCATION_DESCRIPTOR ThreadContext;
}

class MINIDUMP_THREAD_LIST extends Struct {
  @Uint32() external int NumberOfThreads;
  external MINIDUMP_THREAD Threads;
}

class MINIDUMP_THREAD_EX extends Struct {
  @Uint32() external int ThreadId;
  @Uint32() external int SuspendCount;
  @Uint32() external int PriorityClass;
  @Uint32() external int Priority;
  @Uint64() external int Teb;
  external MINIDUMP_MEMORY_DESCRIPTOR Stack;
  external MINIDUMP_LOCATION_DESCRIPTOR ThreadContext;
  external MINIDUMP_MEMORY_DESCRIPTOR BackingStore;
}

class MINIDUMP_THREAD_EX_LIST extends Struct {
  @Uint32() external int NumberOfThreads;
  external MINIDUMP_THREAD_EX Threads;
}

class MINIDUMP_EXCEPTION extends Struct {
  @Uint32() external int ExceptionCode;
  @Uint32() external int ExceptionFlags;
  @Uint64() external int ExceptionRecord;
  @Uint64() external int ExceptionAddress;
  @Uint32() external int NumberParameters;
  @Uint32() external int __unusedAlignment;
  external __uint64__ ExceptionInformation;
}

class MINIDUMP_EXCEPTION_STREAM extends Struct {
  @Uint32() external int ThreadId;
  @Uint32() external int __alignment;
  external MINIDUMP_EXCEPTION ExceptionRecord;
  external MINIDUMP_LOCATION_DESCRIPTOR ThreadContext;
}

class MINIDUMP_MODULE extends Struct {
  @Uint64() external int BaseOfImage;
  @Uint32() external int SizeOfImage;
  @Uint32() external int CheckSum;
  @Uint32() external int TimeDateStamp;
  @Uint32() external int ModuleNameRva;
  external VS_FIXEDFILEINFO VersionInfo;
  external MINIDUMP_LOCATION_DESCRIPTOR CvRecord;
  external MINIDUMP_LOCATION_DESCRIPTOR MiscRecord;
  @Uint64() external int Reserved0;
  @Uint64() external int Reserved1;
}

class MINIDUMP_MODULE_LIST extends Struct {
  @Uint32() external int NumberOfModules;
  external MINIDUMP_MODULE Modules;
}

class MINIDUMP_MEMORY_LIST extends Struct {
  @Uint32() external int NumberOfMemoryRanges;
  external MINIDUMP_MEMORY_DESCRIPTOR MemoryRanges;
}

class MINIDUMP_MEMORY64_LIST extends Struct {
  @Uint64() external int NumberOfMemoryRanges;
  @Uint64() external int BaseRva;
  external MINIDUMP_MEMORY_DESCRIPTOR64 MemoryRanges;
}

class MINIDUMP_EXCEPTION_INFORMATION extends Struct {
  @Uint32() external int ThreadId;
  external Pointer<EXCEPTION_POINTERS> ExceptionPointers;
  @Int32() external int ClientPointers;
}

class MINIDUMP_EXCEPTION_INFORMATION64 extends Struct {
  @Uint32() external int ThreadId;
  @Uint64() external int ExceptionRecord;
  @Uint64() external int ContextRecord;
  @Int32() external int ClientPointers;
}

class MINIDUMP_HANDLE_OBJECT_INFORMATION extends Struct {
  @Uint32() external int NextInfoRva;
  @Uint32() external int InfoType;
  @Uint32() external int SizeOfInfo;
}

class MINIDUMP_HANDLE_DESCRIPTOR extends Struct {
  @Uint64() external int Handle;
  @Uint32() external int TypeNameRva;
  @Uint32() external int ObjectNameRva;
  @Uint32() external int Attributes;
  @Uint32() external int GrantedAccess;
  @Uint32() external int HandleCount;
  @Uint32() external int PointerCount;
}

class MINIDUMP_HANDLE_DESCRIPTOR_2 extends Struct {
  @Uint64() external int Handle;
  @Uint32() external int TypeNameRva;
  @Uint32() external int ObjectNameRva;
  @Uint32() external int Attributes;
  @Uint32() external int GrantedAccess;
  @Uint32() external int HandleCount;
  @Uint32() external int PointerCount;
  @Uint32() external int ObjectInfoRva;
  @Uint32() external int Reserved0;
}

class MINIDUMP_HANDLE_DATA_STREAM extends Struct {
  @Uint32() external int SizeOfHeader;
  @Uint32() external int SizeOfDescriptor;
  @Uint32() external int NumberOfDescriptors;
  @Uint32() external int Reserved;
}

class MINIDUMP_HANDLE_OPERATION_LIST extends Struct {
  @Uint32() external int SizeOfHeader;
  @Uint32() external int SizeOfEntry;
  @Uint32() external int NumberOfEntries;
  @Uint32() external int Reserved;
}

class MINIDUMP_FUNCTION_TABLE_DESCRIPTOR extends Struct {
  @Uint64() external int MinimumAddress;
  @Uint64() external int MaximumAddress;
  @Uint64() external int BaseAddress;
  @Uint32() external int EntryCount;
  @Uint32() external int SizeOfAlignPad;
}

class MINIDUMP_FUNCTION_TABLE_STREAM extends Struct {
  @Uint32() external int SizeOfHeader;
  @Uint32() external int SizeOfDescriptor;
  @Uint32() external int SizeOfNativeDescriptor;
  @Uint32() external int SizeOfFunctionEntry;
  @Uint32() external int NumberOfDescriptors;
  @Uint32() external int SizeOfAlignPad;
}

class MINIDUMP_UNLOADED_MODULE extends Struct {
  @Uint64() external int BaseOfImage;
  @Uint32() external int SizeOfImage;
  @Uint32() external int CheckSum;
  @Uint32() external int TimeDateStamp;
  @Uint32() external int ModuleNameRva;
}

class MINIDUMP_UNLOADED_MODULE_LIST extends Struct {
  @Uint32() external int SizeOfHeader;
  @Uint32() external int SizeOfEntry;
  @Uint32() external int NumberOfEntries;
}

class XSTATE_CONFIG_FEATURE_MSC_INFO extends Struct {
  @Uint32() external int SizeOfInfo;
  @Uint32() external int ContextSize;
  @Uint64() external int EnabledFeatures;
  external XSTATE_FEATURE Features;
}

class MINIDUMP_MISC_INFO extends Struct {
  @Uint32() external int SizeOfInfo;
  @Uint32() external int Flags1;
  @Uint32() external int ProcessId;
  @Uint32() external int ProcessCreateTime;
  @Uint32() external int ProcessUserTime;
  @Uint32() external int ProcessKernelTime;
}

class MINIDUMP_MISC_INFO_2 extends Struct {
  @Uint32() external int SizeOfInfo;
  @Uint32() external int Flags1;
  @Uint32() external int ProcessId;
  @Uint32() external int ProcessCreateTime;
  @Uint32() external int ProcessUserTime;
  @Uint32() external int ProcessKernelTime;
  @Uint32() external int ProcessorMaxMhz;
  @Uint32() external int ProcessorCurrentMhz;
  @Uint32() external int ProcessorMhzLimit;
  @Uint32() external int ProcessorMaxIdleState;
  @Uint32() external int ProcessorCurrentIdleState;
}

class MINIDUMP_MISC_INFO_3 extends Struct {
  @Uint32() external int SizeOfInfo;
  @Uint32() external int Flags1;
  @Uint32() external int ProcessId;
  @Uint32() external int ProcessCreateTime;
  @Uint32() external int ProcessUserTime;
  @Uint32() external int ProcessKernelTime;
  @Uint32() external int ProcessorMaxMhz;
  @Uint32() external int ProcessorCurrentMhz;
  @Uint32() external int ProcessorMhzLimit;
  @Uint32() external int ProcessorMaxIdleState;
  @Uint32() external int ProcessorCurrentIdleState;
  @Uint32() external int ProcessIntegrityLevel;
  @Uint32() external int ProcessExecuteFlags;
  @Uint32() external int ProtectedProcess;
  @Uint32() external int TimeZoneId;
  external TIME_ZONE_INFORMATION TimeZone;
}

class MINIDUMP_MISC_INFO_4 extends Struct {
  @Uint32() external int SizeOfInfo;
  @Uint32() external int Flags1;
  @Uint32() external int ProcessId;
  @Uint32() external int ProcessCreateTime;
  @Uint32() external int ProcessUserTime;
  @Uint32() external int ProcessKernelTime;
  @Uint32() external int ProcessorMaxMhz;
  @Uint32() external int ProcessorCurrentMhz;
  @Uint32() external int ProcessorMhzLimit;
  @Uint32() external int ProcessorMaxIdleState;
  @Uint32() external int ProcessorCurrentIdleState;
  @Uint32() external int ProcessIntegrityLevel;
  @Uint32() external int ProcessExecuteFlags;
  @Uint32() external int ProtectedProcess;
  @Uint32() external int TimeZoneId;
  external TIME_ZONE_INFORMATION TimeZone;
  external __ushort__ BuildString;
  external __ushort__ DbgBldStr;
}

class MINIDUMP_MISC_INFO_5 extends Struct {
  @Uint32() external int SizeOfInfo;
  @Uint32() external int Flags1;
  @Uint32() external int ProcessId;
  @Uint32() external int ProcessCreateTime;
  @Uint32() external int ProcessUserTime;
  @Uint32() external int ProcessKernelTime;
  @Uint32() external int ProcessorMaxMhz;
  @Uint32() external int ProcessorCurrentMhz;
  @Uint32() external int ProcessorMhzLimit;
  @Uint32() external int ProcessorMaxIdleState;
  @Uint32() external int ProcessorCurrentIdleState;
  @Uint32() external int ProcessIntegrityLevel;
  @Uint32() external int ProcessExecuteFlags;
  @Uint32() external int ProtectedProcess;
  @Uint32() external int TimeZoneId;
  external TIME_ZONE_INFORMATION TimeZone;
  external __ushort__ BuildString;
  external __ushort__ DbgBldStr;
  external XSTATE_CONFIG_FEATURE_MSC_INFO XStateData;
  @Uint32() external int ProcessCookie;
}

class MINIDUMP_MEMORY_INFO extends Struct {
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

class MINIDUMP_MEMORY_INFO_LIST extends Struct {
  @Uint32() external int SizeOfHeader;
  @Uint32() external int SizeOfEntry;
  @Uint64() external int NumberOfEntries;
}

class MINIDUMP_THREAD_NAME extends Struct {
  @Uint32() external int ThreadId;
  @Uint64() external int RvaOfThreadName;
}

class MINIDUMP_THREAD_NAME_LIST extends Struct {
  @Uint32() external int NumberOfThreadNames;
  external MINIDUMP_THREAD_NAME ThreadNames;
}

class MINIDUMP_THREAD_INFO extends Struct {
  @Uint32() external int ThreadId;
  @Uint32() external int DumpFlags;
  @Uint32() external int DumpError;
  @Uint32() external int ExitStatus;
  @Uint64() external int CreateTime;
  @Uint64() external int ExitTime;
  @Uint64() external int KernelTime;
  @Uint64() external int UserTime;
  @Uint64() external int StartAddress;
  @Uint64() external int Affinity;
}

class MINIDUMP_THREAD_INFO_LIST extends Struct {
  @Uint32() external int SizeOfHeader;
  @Uint32() external int SizeOfEntry;
  @Uint32() external int NumberOfEntries;
}

class MINIDUMP_TOKEN_INFO_HEADER extends Struct {
  @Uint32() external int TokenSize;
  @Uint32() external int TokenId;
  @Uint64() external int TokenHandle;
}

class MINIDUMP_TOKEN_INFO_LIST extends Struct {
  @Uint32() external int TokenListSize;
  @Uint32() external int TokenListEntries;
  @Uint32() external int ListHeaderSize;
  @Uint32() external int ElementHeaderSize;
}

class MINIDUMP_SYSTEM_BASIC_INFORMATION extends Struct {
  @Uint32() external int TimerResolution;
  @Uint32() external int PageSize;
  @Uint32() external int NumberOfPhysicalPages;
  @Uint32() external int LowestPhysicalPageNumber;
  @Uint32() external int HighestPhysicalPageNumber;
  @Uint32() external int AllocationGranularity;
  @Uint64() external int MinimumUserModeAddress;
  @Uint64() external int MaximumUserModeAddress;
  @Uint64() external int ActiveProcessorsAffinityMask;
  @Uint32() external int NumberOfProcessors;
}

class MINIDUMP_SYSTEM_FILECACHE_INFORMATION extends Struct {
  @Uint64() external int CurrentSize;
  @Uint64() external int PeakSize;
  @Uint32() external int PageFaultCount;
  @Uint64() external int MinimumWorkingSet;
  @Uint64() external int MaximumWorkingSet;
  @Uint64() external int CurrentSizeIncludingTransitionInPages;
  @Uint64() external int PeakSizeIncludingTransitionInPages;
  @Uint32() external int TransitionRePurposeCount;
  @Uint32() external int Flags;
}

class MINIDUMP_SYSTEM_BASIC_PERFORMANCE_INFORMATION extends Struct {
  @Uint64() external int AvailablePages;
  @Uint64() external int CommittedPages;
  @Uint64() external int CommitLimit;
  @Uint64() external int PeakCommitment;
}

class MINIDUMP_SYSTEM_PERFORMANCE_INFORMATION extends Struct {
  @Uint64() external int IdleProcessTime;
  @Uint64() external int IoReadTransferCount;
  @Uint64() external int IoWriteTransferCount;
  @Uint64() external int IoOtherTransferCount;
  @Uint32() external int IoReadOperationCount;
  @Uint32() external int IoWriteOperationCount;
  @Uint32() external int IoOtherOperationCount;
  @Uint32() external int AvailablePages;
  @Uint32() external int CommittedPages;
  @Uint32() external int CommitLimit;
  @Uint32() external int PeakCommitment;
  @Uint32() external int PageFaultCount;
  @Uint32() external int CopyOnWriteCount;
  @Uint32() external int TransitionCount;
  @Uint32() external int CacheTransitionCount;
  @Uint32() external int DemandZeroCount;
  @Uint32() external int PageReadCount;
  @Uint32() external int PageReadIoCount;
  @Uint32() external int CacheReadCount;
  @Uint32() external int CacheIoCount;
  @Uint32() external int DirtyPagesWriteCount;
  @Uint32() external int DirtyWriteIoCount;
  @Uint32() external int MappedPagesWriteCount;
  @Uint32() external int MappedWriteIoCount;
  @Uint32() external int PagedPoolPages;
  @Uint32() external int NonPagedPoolPages;
  @Uint32() external int PagedPoolAllocs;
  @Uint32() external int PagedPoolFrees;
  @Uint32() external int NonPagedPoolAllocs;
  @Uint32() external int NonPagedPoolFrees;
  @Uint32() external int FreeSystemPtes;
  @Uint32() external int ResidentSystemCodePage;
  @Uint32() external int TotalSystemDriverPages;
  @Uint32() external int TotalSystemCodePages;
  @Uint32() external int NonPagedPoolLookasideHits;
  @Uint32() external int PagedPoolLookasideHits;
  @Uint32() external int AvailablePagedPoolPages;
  @Uint32() external int ResidentSystemCachePage;
  @Uint32() external int ResidentPagedPoolPage;
  @Uint32() external int ResidentSystemDriverPage;
  @Uint32() external int CcFastReadNoWait;
  @Uint32() external int CcFastReadWait;
  @Uint32() external int CcFastReadResourceMiss;
  @Uint32() external int CcFastReadNotPossible;
  @Uint32() external int CcFastMdlReadNoWait;
  @Uint32() external int CcFastMdlReadWait;
  @Uint32() external int CcFastMdlReadResourceMiss;
  @Uint32() external int CcFastMdlReadNotPossible;
  @Uint32() external int CcMapDataNoWait;
  @Uint32() external int CcMapDataWait;
  @Uint32() external int CcMapDataNoWaitMiss;
  @Uint32() external int CcMapDataWaitMiss;
  @Uint32() external int CcPinMappedDataCount;
  @Uint32() external int CcPinReadNoWait;
  @Uint32() external int CcPinReadWait;
  @Uint32() external int CcPinReadNoWaitMiss;
  @Uint32() external int CcPinReadWaitMiss;
  @Uint32() external int CcCopyReadNoWait;
  @Uint32() external int CcCopyReadWait;
  @Uint32() external int CcCopyReadNoWaitMiss;
  @Uint32() external int CcCopyReadWaitMiss;
  @Uint32() external int CcMdlReadNoWait;
  @Uint32() external int CcMdlReadWait;
  @Uint32() external int CcMdlReadNoWaitMiss;
  @Uint32() external int CcMdlReadWaitMiss;
  @Uint32() external int CcReadAheadIos;
  @Uint32() external int CcLazyWriteIos;
  @Uint32() external int CcLazyWritePages;
  @Uint32() external int CcDataFlushes;
  @Uint32() external int CcDataPages;
  @Uint32() external int ContextSwitches;
  @Uint32() external int FirstLevelTbFills;
  @Uint32() external int SecondLevelTbFills;
  @Uint32() external int SystemCalls;
  @Uint64() external int CcTotalDirtyPages;
  @Uint64() external int CcDirtyPageThreshold;
  @Int64() external int ResidentAvailablePages;
  @Uint64() external int SharedCommittedPages;
}

class MINIDUMP_SYSTEM_MEMORY_INFO_1 extends Struct {
  @Uint16() external int Revision;
  @Uint16() external int Flags;
  external MINIDUMP_SYSTEM_BASIC_INFORMATION BasicInfo;
  external MINIDUMP_SYSTEM_FILECACHE_INFORMATION FileCacheInfo;
  external MINIDUMP_SYSTEM_BASIC_PERFORMANCE_INFORMATION BasicPerfInfo;
  external MINIDUMP_SYSTEM_PERFORMANCE_INFORMATION PerfInfo;
}

class MINIDUMP_PROCESS_VM_COUNTERS_1 extends Struct {
  @Uint16() external int Revision;
  @Uint32() external int PageFaultCount;
  @Uint64() external int PeakWorkingSetSize;
  @Uint64() external int WorkingSetSize;
  @Uint64() external int QuotaPeakPagedPoolUsage;
  @Uint64() external int QuotaPagedPoolUsage;
  @Uint64() external int QuotaPeakNonPagedPoolUsage;
  @Uint64() external int QuotaNonPagedPoolUsage;
  @Uint64() external int PagefileUsage;
  @Uint64() external int PeakPagefileUsage;
  @Uint64() external int PrivateUsage;
}

class MINIDUMP_PROCESS_VM_COUNTERS_2 extends Struct {
  @Uint16() external int Revision;
  @Uint16() external int Flags;
  @Uint32() external int PageFaultCount;
  @Uint64() external int PeakWorkingSetSize;
  @Uint64() external int WorkingSetSize;
  @Uint64() external int QuotaPeakPagedPoolUsage;
  @Uint64() external int QuotaPagedPoolUsage;
  @Uint64() external int QuotaPeakNonPagedPoolUsage;
  @Uint64() external int QuotaNonPagedPoolUsage;
  @Uint64() external int PagefileUsage;
  @Uint64() external int PeakPagefileUsage;
  @Uint64() external int PeakVirtualSize;
  @Uint64() external int VirtualSize;
  @Uint64() external int PrivateUsage;
  @Uint64() external int PrivateWorkingSetSize;
  @Uint64() external int SharedCommitUsage;
  @Uint64() external int JobSharedCommitUsage;
  @Uint64() external int JobPrivateCommitUsage;
  @Uint64() external int JobPeakPrivateCommitUsage;
  @Uint64() external int JobPrivateCommitLimit;
  @Uint64() external int JobTotalCommitLimit;
}

class MINIDUMP_USER_RECORD extends Struct {
  @Uint32() external int Type;
  external MINIDUMP_LOCATION_DESCRIPTOR Memory;
}

class MINIDUMP_USER_STREAM extends Struct {
  @Uint32() external int Type;
  @Uint32() external int BufferSize;
  external Pointer Buffer;
}

class MINIDUMP_USER_STREAM_INFORMATION extends Struct {
  @Uint32() external int UserStreamCount;
  external Pointer<MINIDUMP_USER_STREAM> UserStreamArray;
}

class MINIDUMP_THREAD_CALLBACK extends Struct {
  @Uint32() external int ThreadId;
  @IntPtr() external int ThreadHandle;
  external CONTEXT Context;
  @Uint32() external int SizeOfContext;
  @Uint64() external int StackBase;
  @Uint64() external int StackEnd;
}

class MINIDUMP_THREAD_EX_CALLBACK extends Struct {
  @Uint32() external int ThreadId;
  @IntPtr() external int ThreadHandle;
  external CONTEXT Context;
  @Uint32() external int SizeOfContext;
  @Uint64() external int StackBase;
  @Uint64() external int StackEnd;
  @Uint64() external int BackingStoreBase;
  @Uint64() external int BackingStoreEnd;
}

class MINIDUMP_INCLUDE_THREAD_CALLBACK extends Struct {
  @Uint32() external int ThreadId;
}

class MINIDUMP_MODULE_CALLBACK extends Struct {
  external Pointer<Utf16> FullPath;
  @Uint64() external int BaseOfImage;
  @Uint32() external int SizeOfImage;
  @Uint32() external int CheckSum;
  @Uint32() external int TimeDateStamp;
  external VS_FIXEDFILEINFO VersionInfo;
  external Pointer CvRecord;
  @Uint32() external int SizeOfCvRecord;
  external Pointer MiscRecord;
  @Uint32() external int SizeOfMiscRecord;
}

class MINIDUMP_INCLUDE_MODULE_CALLBACK extends Struct {
  @Uint64() external int BaseOfImage;
}

class MINIDUMP_IO_CALLBACK extends Struct {
  @IntPtr() external int Handle;
  @Uint64() external int Offset;
  external Pointer Buffer;
  @Uint32() external int BufferBytes;
}

class MINIDUMP_READ_MEMORY_FAILURE_CALLBACK extends Struct {
  @Uint64() external int Offset;
  @Uint32() external int Bytes;
  @Int32() external int FailureStatus;
}

class MINIDUMP_VM_QUERY_CALLBACK extends Struct {
  @Uint64() external int Offset;
}

class MINIDUMP_VM_PRE_READ_CALLBACK extends Struct {
  @Uint64() external int Offset;
  external Pointer Buffer;
  @Uint32() external int Size;
}

class MINIDUMP_VM_POST_READ_CALLBACK extends Struct {
  @Uint64() external int Offset;
  external Pointer Buffer;
  @Uint32() external int Size;
  @Uint32() external int Completed;
  @Int32() external int Status;
}

class MINIDUMP_CALLBACK_INPUT extends Struct {
  @Uint32() external int ProcessId;
  @IntPtr() external int ProcessHandle;
  @Uint32() external int CallbackType;
  @Uint32() external int Anonymous;
}

class MINIDUMP_CALLBACK_OUTPUT extends Struct {
  @Uint32() external int Anonymous;
}

class MINIDUMP_CALLBACK_INFORMATION extends Struct {
  external MINIDUMP_CALLBACK_ROUTINE CallbackRoutine;
  external Pointer CallbackParam;
}

class ProcessDebugManager extends Struct {
}

class DebugHelper extends Struct {
}

class CDebugDocumentHelper extends Struct {
}

class MachineDebugManager_RETAIL extends Struct {
}

class MachineDebugManager_DEBUG extends Struct {
}

class DefaultDebugSessionProvider extends Struct {
}

class DebugPropertyInfo extends Struct {
  @Uint32() external int m_dwValidFields;
  external Pointer<Utf16> m_bstrName;
  external Pointer<Utf16> m_bstrType;
  external Pointer<Utf16> m_bstrValue;
  external Pointer<Utf16> m_bstrFullName;
  @Uint32() external int m_dwAttrib;
  external Pointer m_pDebugProp;
}

class ExtendedDebugPropertyInfo extends Struct {
  @Uint32() external int dwValidFields;
  external Pointer<Utf16> pszName;
  external Pointer<Utf16> pszType;
  external Pointer<Utf16> pszValue;
  external Pointer<Utf16> pszFullName;
  @Uint32() external int dwAttrib;
  external Pointer pDebugProp;
  @Uint32() external int nDISPID;
  @Uint32() external int nType;
  external VARIANT varValue;
  external Pointer plbValue;
  external IDebugExtendedProperty pDebugExtProp;
}

class DebugStackFrameDescriptor extends Struct {
  external Pointer pdsf;
  @Uint32() external int dwMin;
  @Uint32() external int dwLim;
  @Int32() external int fFinal;
  external Pointer punkFinal;
}

class DebugStackFrameDescriptor64 extends Struct {
  external Pointer pdsf;
  @Uint64() external int dwMin;
  @Uint64() external int dwLim;
  @Int32() external int fFinal;
  external Pointer punkFinal;
}

class PROFILER_HEAP_OBJECT_SCOPE_LIST extends Struct {
  @Uint32() external int count;
  external __uintptr__ scopes;
}

class PROFILER_PROPERTY_TYPE_SUBSTRING_INFO extends Struct {
  @Uint32() external int length;
  external Pointer<Utf16> value;
}

class PROFILER_HEAP_OBJECT_RELATIONSHIP extends Struct {
  @Uint32() external int relationshipId;
  @Uint32() external int relationshipInfo;
  @Uint32() external int Anonymous;
}

class PROFILER_HEAP_OBJECT_RELATIONSHIP_LIST extends Struct {
  @Uint32() external int count;
  external PROFILER_HEAP_OBJECT_RELATIONSHIP elements;
}

class PROFILER_HEAP_OBJECT_OPTIONAL_INFO extends Struct {
  @Uint32() external int infoType;
  @Uint32() external int Anonymous;
}

class PROFILER_HEAP_OBJECT extends Struct {
  @Uint32() external int size;
  @Uint32() external int Anonymous;
  @Uint32() external int typeNameId;
  @Uint32() external int flags;
  @Uint16() external int unused;
  @Uint16() external int optionalInfoCount;
}

class PROFILER_HEAP_SUMMARY extends Struct {
  @Uint32() external int version;
  @Uint32() external int totalHeapSize;
}

class HTMLCSSStyleDeclaration extends Struct {
}

class HTMLStyle extends Struct {
}

class HTMLRuleStyle extends Struct {
}

class HTMLCSSRule extends Struct {
}

class HTMLCSSImportRule extends Struct {
}

class HTMLCSSMediaRule extends Struct {
}

class HTMLCSSMediaList extends Struct {
}

class HTMLCSSNamespaceRule extends Struct {
}

class HTMLMSCSSKeyframeRule extends Struct {
}

class HTMLMSCSSKeyframesRule extends Struct {
}

class HTMLRenderStyle extends Struct {
}

class HTMLCurrentStyle extends Struct {
}

class HTMLDOMAttribute extends Struct {
}

class HTMLDOMTextNode extends Struct {
}

class HTMLDOMImplementation extends Struct {
}

class HTMLAttributeCollection extends Struct {
}

class StaticNodeList extends Struct {
}

class DOMChildrenCollection extends Struct {
}

class HTMLDefaults extends Struct {
}

class HTCDefaultDispatch extends Struct {
}

class HTCPropertyBehavior extends Struct {
}

class HTCMethodBehavior extends Struct {
}

class HTCEventBehavior extends Struct {
}

class HTCAttachBehavior extends Struct {
}

class HTCDescBehavior extends Struct {
}

class HTMLUrnCollection extends Struct {
}

class HTMLGenericElement extends Struct {
}

class HTMLStyleSheetRule extends Struct {
}

class HTMLStyleSheetRulesCollection extends Struct {
}

class HTMLStyleSheetPage extends Struct {
}

class HTMLStyleSheetPagesCollection extends Struct {
}

class HTMLStyleSheet extends Struct {
}

class HTMLStyleSheetsCollection extends Struct {
}

class HTMLLinkElement extends Struct {
}

class HTMLDOMRange extends Struct {
}

class HTMLFormElement extends Struct {
}

class HTMLTextElement extends Struct {
}

class HTMLImg extends Struct {
}

class HTMLImageElementFactory extends Struct {
}

class HTMLBody extends Struct {
}

class HTMLFontElement extends Struct {
}

class HTMLAnchorElement extends Struct {
}

class HTMLLabelElement extends Struct {
}

class HTMLListElement extends Struct {
}

class HTMLUListElement extends Struct {
}

class HTMLOListElement extends Struct {
}

class HTMLLIElement extends Struct {
}

class HTMLBlockElement extends Struct {
}

class HTMLDivElement extends Struct {
}

class HTMLDDElement extends Struct {
}

class HTMLDTElement extends Struct {
}

class HTMLBRElement extends Struct {
}

class HTMLDListElement extends Struct {
}

class HTMLHRElement extends Struct {
}

class HTMLParaElement extends Struct {
}

class HTMLElementCollection extends Struct {
}

class HTMLHeaderElement extends Struct {
}

class HTMLSelectElement extends Struct {
}

class HTMLWndSelectElement extends Struct {
}

class HTMLOptionElement extends Struct {
}

class HTMLOptionElementFactory extends Struct {
}

class HTMLWndOptionElement extends Struct {
}

class HTMLInputElement extends Struct {
}

class HTMLTextAreaElement extends Struct {
}

class HTMLRichtextElement extends Struct {
}

class HTMLButtonElement extends Struct {
}

class HTMLMarqueeElement extends Struct {
}

class HTMLHtmlElement extends Struct {
}

class HTMLHeadElement extends Struct {
}

class HTMLTitleElement extends Struct {
}

class HTMLMetaElement extends Struct {
}

class HTMLBaseElement extends Struct {
}

class HTMLIsIndexElement extends Struct {
}

class HTMLNextIdElement extends Struct {
}

class HTMLBaseFontElement extends Struct {
}

class HTMLUnknownElement extends Struct {
}

class HTMLHistory extends Struct {
}

class COpsProfile extends Struct {
}

class HTMLNavigator extends Struct {
}

class HTMLLocation extends Struct {
}

class CMimeTypes extends Struct {
}

class CPlugins extends Struct {
}

class CEventObj extends Struct {
}

class HTMLStyleMedia extends Struct {
}

class FramesCollection extends Struct {
}

class HTMLScreen extends Struct {
}

class HTMLWindow2 extends Struct {
}

class HTMLWindowProxy extends Struct {
}

class HTMLDocumentCompatibleInfo extends Struct {
}

class HTMLDocumentCompatibleInfoCollection extends Struct {
}

class HTMLDocument extends Struct {
}

class Scriptlet extends Struct {
}

class HTMLEmbed extends Struct {
}

class HTMLAreasCollection extends Struct {
}

class HTMLMapElement extends Struct {
}

class HTMLAreaElement extends Struct {
}

class HTMLTableCaption extends Struct {
}

class HTMLCommentElement extends Struct {
}

class HTMLPhraseElement extends Struct {
}

class HTMLSpanElement extends Struct {
}

class HTMLTable extends Struct {
}

class HTMLTableCol extends Struct {
}

class HTMLTableSection extends Struct {
}

class HTMLTableRow extends Struct {
}

class HTMLTableCell extends Struct {
}

class HTMLScriptElement extends Struct {
}

class HTMLNoShowElement extends Struct {
}

class HTMLObjectElement extends Struct {
}

class HTMLParamElement extends Struct {
}

class HTMLFrameBase extends Struct {
}

class HTMLFrameElement extends Struct {
}

class HTMLIFrame extends Struct {
}

class HTMLDivPosition extends Struct {
}

class HTMLFieldSetElement extends Struct {
}

class HTMLLegendElement extends Struct {
}

class HTMLSpanFlow extends Struct {
}

class HTMLFrameSetSite extends Struct {
}

class HTMLBGsound extends Struct {
}

class HTMLStyleElement extends Struct {
}

class HTMLStyleFontFace extends Struct {
}

class XDomainRequest extends Struct {
}

class XDomainRequestFactory extends Struct {
}

class HTMLStorage extends Struct {
}

class DOMEvent extends Struct {
}

class DOMUIEvent extends Struct {
}

class DOMMouseEvent extends Struct {
}

class DOMDragEvent extends Struct {
}

class DOMMouseWheelEvent extends Struct {
}

class DOMWheelEvent extends Struct {
}

class DOMTextEvent extends Struct {
}

class DOMKeyboardEvent extends Struct {
}

class DOMCompositionEvent extends Struct {
}

class DOMMutationEvent extends Struct {
}

class DOMBeforeUnloadEvent extends Struct {
}

class DOMFocusEvent extends Struct {
}

class DOMCustomEvent extends Struct {
}

class CanvasGradient extends Struct {
}

class CanvasPattern extends Struct {
}

class CanvasTextMetrics extends Struct {
}

class CanvasImageData extends Struct {
}

class CanvasRenderingContext2D extends Struct {
}

class HTMLCanvasElement extends Struct {
}

class DOMProgressEvent extends Struct {
}

class DOMMessageEvent extends Struct {
}

class DOMSiteModeEvent extends Struct {
}

class DOMStorageEvent extends Struct {
}

class XMLHttpRequestEventTarget extends Struct {
}

class HTMLXMLHttpRequest extends Struct {
}

class HTMLXMLHttpRequestFactory extends Struct {
}

class SVGAngle extends Struct {
}

class SVGAnimatedAngle extends Struct {
}

class SVGAnimatedTransformList extends Struct {
}

class SVGAnimatedBoolean extends Struct {
}

class SVGAnimatedEnumeration extends Struct {
}

class SVGAnimatedInteger extends Struct {
}

class SVGAnimatedLength extends Struct {
}

class SVGAnimatedLengthList extends Struct {
}

class SVGAnimatedNumber extends Struct {
}

class SVGAnimatedNumberList extends Struct {
}

class SVGAnimatedRect extends Struct {
}

class SVGAnimatedString extends Struct {
}

class SVGClipPathElement extends Struct {
}

class SVGElement extends Struct {
}

class SVGLength extends Struct {
}

class SVGLengthList extends Struct {
}

class SVGMatrix extends Struct {
}

class SVGNumber extends Struct {
}

class SVGNumberList extends Struct {
}

class SVGPatternElement extends Struct {
}

class SVGPathSeg extends Struct {
}

class SVGPathSegArcAbs extends Struct {
}

class SVGPathSegArcRel extends Struct {
}

class SVGPathSegClosePath extends Struct {
}

class SVGPathSegMovetoAbs extends Struct {
}

class SVGPathSegMovetoRel extends Struct {
}

class SVGPathSegLinetoAbs extends Struct {
}

class SVGPathSegLinetoRel extends Struct {
}

class SVGPathSegCurvetoCubicAbs extends Struct {
}

class SVGPathSegCurvetoCubicRel extends Struct {
}

class SVGPathSegCurvetoCubicSmoothAbs extends Struct {
}

class SVGPathSegCurvetoCubicSmoothRel extends Struct {
}

class SVGPathSegCurvetoQuadraticAbs extends Struct {
}

class SVGPathSegCurvetoQuadraticRel extends Struct {
}

class SVGPathSegCurvetoQuadraticSmoothAbs extends Struct {
}

class SVGPathSegCurvetoQuadraticSmoothRel extends Struct {
}

class SVGPathSegLinetoHorizontalAbs extends Struct {
}

class SVGPathSegLinetoHorizontalRel extends Struct {
}

class SVGPathSegLinetoVerticalAbs extends Struct {
}

class SVGPathSegLinetoVerticalRel extends Struct {
}

class SVGPathSegList extends Struct {
}

class SVGPoint extends Struct {
}

class SVGPointList extends Struct {
}

class SVGRect extends Struct {
}

class SVGStringList extends Struct {
}

class SVGTransform extends Struct {
}

class SVGSVGElement extends Struct {
}

class SVGUseElement extends Struct {
}

class HTMLStyleSheetRulesAppliedCollection extends Struct {
}

class RulesApplied extends Struct {
}

class RulesAppliedCollection extends Struct {
}

class HTMLW3CComputedStyle extends Struct {
}

class SVGTransformList extends Struct {
}

class SVGCircleElement extends Struct {
}

class SVGEllipseElement extends Struct {
}

class SVGLineElement extends Struct {
}

class SVGRectElement extends Struct {
}

class SVGPolygonElement extends Struct {
}

class SVGPolylineElement extends Struct {
}

class SVGGElement extends Struct {
}

class SVGSymbolElement extends Struct {
}

class SVGDefsElement extends Struct {
}

class SVGPathElement extends Struct {
}

class SVGPreserveAspectRatio extends Struct {
}

class SVGTextElement extends Struct {
}

class SVGAnimatedPreserveAspectRatio extends Struct {
}

class SVGImageElement extends Struct {
}

class SVGStopElement extends Struct {
}

class SVGGradientElement extends Struct {
}

class SVGLinearGradientElement extends Struct {
}

class SVGRadialGradientElement extends Struct {
}

class SVGMaskElement extends Struct {
}

class SVGMarkerElement extends Struct {
}

class SVGZoomEvent extends Struct {
}

class SVGAElement extends Struct {
}

class SVGViewElement extends Struct {
}

class HTMLMediaError extends Struct {
}

class HTMLTimeRanges extends Struct {
}

class HTMLMediaElement extends Struct {
}

class HTMLSourceElement extends Struct {
}

class HTMLAudioElement extends Struct {
}

class HTMLAudioElementFactory extends Struct {
}

class HTMLVideoElement extends Struct {
}

class SVGSwitchElement extends Struct {
}

class SVGDescElement extends Struct {
}

class SVGTitleElement extends Struct {
}

class SVGMetadataElement extends Struct {
}

class SVGElementInstance extends Struct {
}

class SVGElementInstanceList extends Struct {
}

class DOMException extends Struct {
}

class RangeException extends Struct {
}

class SVGException extends Struct {
}

class EventException extends Struct {
}

class SVGScriptElement extends Struct {
}

class SVGStyleElement extends Struct {
}

class SVGTextContentElement extends Struct {
}

class SVGTextPositioningElement extends Struct {
}

class DOMDocumentType extends Struct {
}

class NodeIterator extends Struct {
}

class TreeWalker extends Struct {
}

class DOMProcessingInstruction extends Struct {
}

class HTMLPerformance extends Struct {
}

class HTMLPerformanceNavigation extends Struct {
}

class HTMLPerformanceTiming extends Struct {
}

class SVGTSpanElement extends Struct {
}

class CTemplatePrinter extends Struct {
}

class CPrintManagerTemplatePrinter extends Struct {
}

class SVGTextPathElement extends Struct {
}

class XMLSerializer extends Struct {
}

class DOMParser extends Struct {
}

class HTMLDOMXmlSerializerFactory extends Struct {
}

class DOMParserFactory extends Struct {
}

class HTMLSemanticElement extends Struct {
}

class HTMLProgressElement extends Struct {
}

class DOMMSTransitionEvent extends Struct {
}

class DOMMSAnimationEvent extends Struct {
}

class WebGeolocation extends Struct {
}

class WebGeocoordinates extends Struct {
}

class WebGeopositionError extends Struct {
}

class WebGeoposition extends Struct {
}

class CClientCaps extends Struct {
}

class DOMMSManipulationEvent extends Struct {
}

class DOMCloseEvent extends Struct {
}

class ApplicationCache extends Struct {
}

class HtmlDlgSafeHelper extends Struct {
}

class BlockFormats extends Struct {
}

class FontNames extends Struct {
}

class HTMLNamespace extends Struct {
}

class HTMLNamespaceCollection extends Struct {
}

class ThreadDialogProcParam extends Struct {
}

class HTMLDialog extends Struct {
}

class HTMLPopup extends Struct {
}

class HTMLAppBehavior extends Struct {
}

class OldHTMLDocument extends Struct {
}

class OldHTMLFormElement extends Struct {
}

class HTMLInputButtonElement extends Struct {
}

class HTMLInputTextElement extends Struct {
}

class HTMLInputFileElement extends Struct {
}

class HTMLOptionButtonElement extends Struct {
}

class HTMLInputImage extends Struct {
}

class HTML_PAINTER_INFO extends Struct {
  @Int32() external int lFlags;
  @Int32() external int lZOrder;
  external GUID iidDrawObject;
  external RECT rcExpand;
}

class HTML_PAINT_XFORM extends Struct {
  @Float() external double eM11;
  @Float() external double eM12;
  @Float() external double eM21;
  @Float() external double eM22;
  @Float() external double eDx;
  @Float() external double eDy;
}

class HTML_PAINT_DRAW_INFO extends Struct {
  external RECT rcViewport;
  @IntPtr() external int hrgnUpdate;
  external HTML_PAINT_XFORM xform;
}

class LOADED_IMAGE extends Struct {
  external Pointer<Utf8> ModuleName;
  @IntPtr() external int hFile;
  external Pointer<Uint8> MappedAddress;
  external Pointer<IMAGE_NT_HEADERS64> FileHeader;
  external Pointer<IMAGE_SECTION_HEADER> LastRvaSection;
  @Uint32() external int NumberOfSections;
  external Pointer<IMAGE_SECTION_HEADER> Sections;
  @Uint32() external int Characteristics;
  @Uint8() external int fSystemImage;
  @Uint8() external int fDOSImage;
  @Uint8() external int fReadOnly;
  @Uint8() external int Version;
  external LIST_ENTRY Links;
  @Uint32() external int SizeOfImage;
}

class MODLOAD_DATA extends Struct {
  @Uint32() external int ssize;
  @Uint32() external int ssig;
  external Pointer data;
  @Uint32() external int size;
  @Uint32() external int flags;
}

class MODLOAD_CVMISC extends Struct {
  @Uint32() external int oCV;
  @IntPtr() external int cCV;
  @Uint32() external int oMisc;
  @IntPtr() external int cMisc;
  @Uint32() external int dtImage;
  @Uint32() external int cImage;
}

class MODLOAD_PDBGUID_PDBAGE extends Struct {
  external GUID PdbGuid;
  @Uint32() external int PdbAge;
}

class ADDRESS64 extends Struct {
  @Uint64() external int Offset;
  @Uint16() external int Segment;
  @Uint32() external int Mode;
}

class KDHELP64 extends Struct {
  @Uint64() external int Thread;
  @Uint32() external int ThCallbackStack;
  @Uint32() external int ThCallbackBStore;
  @Uint32() external int NextCallback;
  @Uint32() external int FramePointer;
  @Uint64() external int KiCallUserMode;
  @Uint64() external int KeUserCallbackDispatcher;
  @Uint64() external int SystemRangeStart;
  @Uint64() external int KiUserExceptionDispatcher;
  @Uint64() external int StackBase;
  @Uint64() external int StackLimit;
  @Uint32() external int BuildVersion;
  @Uint32() external int RetpolineStubFunctionTableSize;
  @Uint64() external int RetpolineStubFunctionTable;
  @Uint32() external int RetpolineStubOffset;
  @Uint32() external int RetpolineStubSize;
  external __uint64__ Reserved0;
}

class STACKFRAME64 extends Struct {
  external ADDRESS64 AddrPC;
  external ADDRESS64 AddrReturn;
  external ADDRESS64 AddrFrame;
  external ADDRESS64 AddrStack;
  external ADDRESS64 AddrBStore;
  external Pointer FuncTableEntry;
  external __uint64__ Params;
  @Int32() external int Far;
  @Int32() external int Virtual;
  external __uint64__ Reserved;
  external KDHELP64 KdHelp;
}

class STACKFRAME_EX extends Struct {
  external ADDRESS64 AddrPC;
  external ADDRESS64 AddrReturn;
  external ADDRESS64 AddrFrame;
  external ADDRESS64 AddrStack;
  external ADDRESS64 AddrBStore;
  external Pointer FuncTableEntry;
  external __uint64__ Params;
  @Int32() external int Far;
  @Int32() external int Virtual;
  external __uint64__ Reserved;
  external KDHELP64 KdHelp;
  @Uint32() external int StackFrameSize;
  @Uint32() external int InlineFrameContext;
}

class API_VERSION extends Struct {
  @Uint16() external int MajorVersion;
  @Uint16() external int MinorVersion;
  @Uint16() external int Revision;
  @Uint16() external int Reserved;
}

class IMAGEHLP_SYMBOL64 extends Struct {
  @Uint32() external int SizeOfStruct;
  @Uint64() external int Address;
  @Uint32() external int Size;
  @Uint32() external int Flags;
  @Uint32() external int MaxNameLength;
  external __byte__ Name;
}

class IMAGEHLP_SYMBOL64_PACKAGE extends Struct {
  external IMAGEHLP_SYMBOL64 sym;
  external __byte__ name;
}

class IMAGEHLP_SYMBOLW64 extends Struct {
  @Uint32() external int SizeOfStruct;
  @Uint64() external int Address;
  @Uint32() external int Size;
  @Uint32() external int Flags;
  @Uint32() external int MaxNameLength;
  external __ushort__ Name;
}

class IMAGEHLP_SYMBOLW64_PACKAGE extends Struct {
  external IMAGEHLP_SYMBOLW64 sym;
  external __ushort__ name;
}

class IMAGEHLP_MODULE64 extends Struct {
  @Uint32() external int SizeOfStruct;
  @Uint64() external int BaseOfImage;
  @Uint32() external int ImageSize;
  @Uint32() external int TimeDateStamp;
  @Uint32() external int CheckSum;
  @Uint32() external int NumSyms;
  @Uint32() external int SymType;
  external __byte__ ModuleName;
  external __byte__ ImageName;
  external __byte__ LoadedImageName;
  external __byte__ LoadedPdbName;
  @Uint32() external int CVSig;
  external __byte__ CVData;
  @Uint32() external int PdbSig;
  external GUID PdbSig70;
  @Uint32() external int PdbAge;
  @Int32() external int PdbUnmatched;
  @Int32() external int DbgUnmatched;
  @Int32() external int LineNumbers;
  @Int32() external int GlobalSymbols;
  @Int32() external int TypeInfo;
  @Int32() external int SourceIndexed;
  @Int32() external int Publics;
  @Uint32() external int MachineType;
  @Uint32() external int Reserved;
}

class IMAGEHLP_MODULEW64 extends Struct {
  @Uint32() external int SizeOfStruct;
  @Uint64() external int BaseOfImage;
  @Uint32() external int ImageSize;
  @Uint32() external int TimeDateStamp;
  @Uint32() external int CheckSum;
  @Uint32() external int NumSyms;
  @Uint32() external int SymType;
  external __ushort__ ModuleName;
  external __ushort__ ImageName;
  external __ushort__ LoadedImageName;
  external __ushort__ LoadedPdbName;
  @Uint32() external int CVSig;
  external __ushort__ CVData;
  @Uint32() external int PdbSig;
  external GUID PdbSig70;
  @Uint32() external int PdbAge;
  @Int32() external int PdbUnmatched;
  @Int32() external int DbgUnmatched;
  @Int32() external int LineNumbers;
  @Int32() external int GlobalSymbols;
  @Int32() external int TypeInfo;
  @Int32() external int SourceIndexed;
  @Int32() external int Publics;
  @Uint32() external int MachineType;
  @Uint32() external int Reserved;
}

class IMAGEHLP_LINE64 extends Struct {
  @Uint32() external int SizeOfStruct;
  external Pointer Key;
  @Uint32() external int LineNumber;
  external Pointer<Utf8> FileName;
  @Uint64() external int Address;
}

class IMAGEHLP_LINEW64 extends Struct {
  @Uint32() external int SizeOfStruct;
  external Pointer Key;
  @Uint32() external int LineNumber;
  external Pointer<Utf16> FileName;
  @Uint64() external int Address;
}

class SOURCEFILE extends Struct {
  @Uint64() external int ModBase;
  external Pointer<Utf8> FileName;
}

class SOURCEFILEW extends Struct {
  @Uint64() external int ModBase;
  external Pointer<Utf16> FileName;
}

class IMAGEHLP_CBA_READ_MEMORY extends Struct {
  @Uint64() external int addr;
  external Pointer buf;
  @Uint32() external int bytes;
  external Pointer<Uint32> bytesread;
}

class IMAGEHLP_CBA_EVENT extends Struct {
  @Uint32() external int severity;
  @Uint32() external int code;
  external Pointer<Utf8> desc;
  external Pointer object;
}

class IMAGEHLP_CBA_EVENTW extends Struct {
  @Uint32() external int severity;
  @Uint32() external int code;
  external Pointer<Utf16> desc;
  external Pointer object;
}

class IMAGEHLP_DEFERRED_SYMBOL_LOAD64 extends Struct {
  @Uint32() external int SizeOfStruct;
  @Uint64() external int BaseOfImage;
  @Uint32() external int CheckSum;
  @Uint32() external int TimeDateStamp;
  external __byte__ FileName;
  @Uint8() external int Reparse;
  @IntPtr() external int hFile;
  @Uint32() external int Flags;
}

class IMAGEHLP_DEFERRED_SYMBOL_LOADW64 extends Struct {
  @Uint32() external int SizeOfStruct;
  @Uint64() external int BaseOfImage;
  @Uint32() external int CheckSum;
  @Uint32() external int TimeDateStamp;
  external __ushort__ FileName;
  @Uint8() external int Reparse;
  @IntPtr() external int hFile;
  @Uint32() external int Flags;
}

class IMAGEHLP_DUPLICATE_SYMBOL64 extends Struct {
  @Uint32() external int SizeOfStruct;
  @Uint32() external int NumberOfDups;
  external Pointer<IMAGEHLP_SYMBOL64> Symbol;
  @Uint32() external int SelectedSymbol;
}

class OMAP extends Struct {
  @Uint32() external int rva;
  @Uint32() external int rvaTo;
}

class SRCCODEINFO extends Struct {
  @Uint32() external int SizeOfStruct;
  external Pointer Key;
  @Uint64() external int ModBase;
  external __byte__ Obj;
  external __byte__ FileName;
  @Uint32() external int LineNumber;
  @Uint64() external int Address;
}

class SRCCODEINFOW extends Struct {
  @Uint32() external int SizeOfStruct;
  external Pointer Key;
  @Uint64() external int ModBase;
  external __ushort__ Obj;
  external __ushort__ FileName;
  @Uint32() external int LineNumber;
  @Uint64() external int Address;
}

class IMAGEHLP_SYMBOL_SRC extends Struct {
  @Uint32() external int sizeofstruct;
  @Uint32() external int type;
  external __byte__ file;
}

class MODULE_TYPE_INFO extends Struct {
  @Uint16() external int dataLength;
  @Uint16() external int leaf;
  external __ubyte__ data;
}

class SYMBOL_INFO extends Struct {
  @Uint32() external int SizeOfStruct;
  @Uint32() external int TypeIndex;
  external __uint64__ Reserved;
  @Uint32() external int Index;
  @Uint32() external int Size;
  @Uint64() external int ModBase;
  @Uint32() external int Flags;
  @Uint64() external int Value;
  @Uint64() external int Address;
  @Uint32() external int Register;
  @Uint32() external int Scope;
  @Uint32() external int Tag;
  @Uint32() external int NameLen;
  @Uint32() external int MaxNameLen;
  external __byte__ Name;
}

class SYMBOL_INFO_PACKAGE extends Struct {
  external SYMBOL_INFO si;
  external __byte__ name;
}

class SYMBOL_INFOW extends Struct {
  @Uint32() external int SizeOfStruct;
  @Uint32() external int TypeIndex;
  external __uint64__ Reserved;
  @Uint32() external int Index;
  @Uint32() external int Size;
  @Uint64() external int ModBase;
  @Uint32() external int Flags;
  @Uint64() external int Value;
  @Uint64() external int Address;
  @Uint32() external int Register;
  @Uint32() external int Scope;
  @Uint32() external int Tag;
  @Uint32() external int NameLen;
  @Uint32() external int MaxNameLen;
  external __ushort__ Name;
}

class SYMBOL_INFO_PACKAGEW extends Struct {
  external SYMBOL_INFOW si;
  external __ushort__ name;
}

class IMAGEHLP_STACK_FRAME extends Struct {
  @Uint64() external int InstructionOffset;
  @Uint64() external int ReturnOffset;
  @Uint64() external int FrameOffset;
  @Uint64() external int StackOffset;
  @Uint64() external int BackingStoreOffset;
  @Uint64() external int FuncTableEntry;
  external __uint64__ Params;
  external __uint64__ Reserved;
  @Int32() external int Virtual;
  @Uint32() external int Reserved2;
}

class TI_FINDCHILDREN_PARAMS extends Struct {
  @Uint32() external int Count;
  @Uint32() external int Start;
  external __uint__ ChildId;
}

class IMAGEHLP_GET_TYPE_INFO_PARAMS extends Struct {
  @Uint32() external int SizeOfStruct;
  @Uint32() external int Flags;
  @Uint32() external int NumIds;
  external Pointer<Uint32> TypeIds;
  @Uint64() external int TagFilter;
  @Uint32() external int NumReqs;
  external Pointer<Uint32> ReqKinds;
  external Pointer<Uint64> ReqOffsets;
  external Pointer<Uint32> ReqSizes;
  @IntPtr() external int ReqStride;
  @IntPtr() external int BufferSize;
  external Pointer Buffer;
  @Uint32() external int EntriesMatched;
  @Uint32() external int EntriesFilled;
  @Uint64() external int TagsFound;
  @Uint64() external int AllReqsValid;
  @Uint32() external int NumReqsValid;
  external Pointer<Uint64> ReqsValid;
}

class SYMSRV_INDEX_INFO extends Struct {
  @Uint32() external int sizeofstruct;
  external __byte__ file;
  @Int32() external int stripped;
  @Uint32() external int timestamp;
  @Uint32() external int size;
  external __byte__ dbgfile;
  external __byte__ pdbfile;
  external GUID guid;
  @Uint32() external int sig;
  @Uint32() external int age;
}

class SYMSRV_INDEX_INFOW extends Struct {
  @Uint32() external int sizeofstruct;
  external __ushort__ file;
  @Int32() external int stripped;
  @Uint32() external int timestamp;
  @Uint32() external int size;
  external __ushort__ dbgfile;
  external __ushort__ pdbfile;
  external GUID guid;
  @Uint32() external int sig;
  @Uint32() external int age;
}

class SYMSRV_EXTENDED_OUTPUT_DATA extends Struct {
  @Uint32() external int sizeOfStruct;
  @Uint32() external int version;
  external __ushort__ filePtrMsg;
}

class DBGHELP_DATA_REPORT_STRUCT extends Struct {
  external Pointer<Utf16> pBinPathNonExist;
  external Pointer<Utf16> pSymbolPathNonExist;
}

