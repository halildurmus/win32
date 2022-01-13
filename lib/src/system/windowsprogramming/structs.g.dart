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
import '../../foundation/structs.g.dart';
import '../../system/windowsprogramming/structs.g.dart';
import '../../system/kernel/structs.g.dart';

/// {@category Struct}
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

/// {@category Struct}
class ACTCTX_SECTION_KEYED_DATA_ASSEMBLY_METADATA extends Struct {
  external Pointer lpInformation;

  external Pointer lpSectionBase;

  @Uint32()
  external int ulSectionLength;

  external Pointer lpSectionGlobalDataBase;

  @Uint32()
  external int ulSectionGlobalDataLength;
}

/// {@category Struct}
class ACTIVATION_CONTEXT_BASIC_INFORMATION extends Struct {
  @IntPtr()
  external int hActCtx;

  @Uint32()
  external int dwFlags;
}

/// {@category Struct}
class CABINFO extends Struct {
  external Pointer<Utf16> pszCab;

  external Pointer<Utf16> pszInf;

  external Pointer<Utf16> pszSection;

  @Array(260)
  external Array<Uint16> _szSrcPath;

  String get szSrcPath {
    final charCodes = <int>[];
    for (var i = 0; i < 260; i++) {
      charCodes.add(_szSrcPath[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szSrcPath(String value) {
    final stringToStore = value.padRight(260, '\x00');
    for (var i = 0; i < 260; i++) {
      _szSrcPath[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint32()
  external int dwFlags;
}

/// {@category Struct}
class CLIENT_ID extends Struct {
  @IntPtr()
  external int UniqueProcess;

  @IntPtr()
  external int UniqueThread;
}

/// {@category Struct}
class CUSTOM_SYSTEM_EVENT_TRIGGER_CONFIG extends Struct {
  @Uint32()
  external int Size;

  external Pointer<Utf16> TriggerId;
}

/// {@category Struct}
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

/// {@category Struct}
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

/// {@category Struct}
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

/// {@category Struct}
class DCIENUMINPUT extends Struct {
  external DCICMD cmd;

  external RECT rSrc;

  external RECT rDst;

  @IntPtr()
  external int EnumCallback;

  external Pointer lpContext;
}

/// {@category Struct}
class DCIOFFSCREEN extends Struct {
  external DCISURFACEINFO dciInfo;

  @IntPtr()
  external int Draw;

  @IntPtr()
  external int SetClipList;

  @IntPtr()
  external int SetDestination;
}

/// {@category Struct}
class DCIOVERLAY extends Struct {
  external DCISURFACEINFO dciInfo;

  @Uint32()
  external int dwChromakeyValue;

  @Uint32()
  external int dwChromakeyMask;
}

/// {@category Struct}
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

/// {@category Struct}
class DELAYLOAD_INFO extends Struct {
  @Uint32()
  external int Size;

  external Pointer<IMAGE_DELAYLOAD_DESCRIPTOR> DelayloadDescriptor;

  external Pointer<IMAGE_THUNK_DATA64> ThunkAddress;

  external Pointer<Utf8> TargetDllName;

  external DELAYLOAD_PROC_DESCRIPTOR TargetApiDescriptor;

  external Pointer TargetModuleBase;

  external Pointer Unused;

  @Uint32()
  external int LastError;
}

/// {@category Struct}
class DELAYLOAD_PROC_DESCRIPTOR extends Struct {
  @Uint32()
  external int ImportDescribedByName;

  external _DELAYLOAD_PROC_DESCRIPTOR__Description_e__Union Description;
}

/// {@category Struct}
class _DELAYLOAD_PROC_DESCRIPTOR__Description_e__Union extends Union {
  external Pointer<Utf8> Name;

  @Uint32()
  external int Ordinal;
}

extension DELAYLOAD_PROC_DESCRIPTOR_Extension on DELAYLOAD_PROC_DESCRIPTOR {
  Pointer<Utf8> get Name => this.Description.Name;
  set Name(Pointer<Utf8> value) => this.Description.Name = value;

  int get Ordinal => this.Description.Ordinal;
  set Ordinal(int value) => this.Description.Ordinal = value;
}

/// {@category Struct}
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

/// {@category Struct}
class FILE_CASE_SENSITIVE_INFO extends Struct {
  @Uint32()
  external int Flags;
}

/// {@category Struct}
class FILE_DISPOSITION_INFO_EX extends Struct {
  @Uint32()
  external int Flags;
}

/// {@category Struct}
class HW_PROFILE_INFO extends Struct {
  @Uint32()
  external int dwDockInfo;

  @Array(39)
  external Array<Uint16> _szHwProfileGuid;

  String get szHwProfileGuid {
    final charCodes = <int>[];
    for (var i = 0; i < 39; i++) {
      charCodes.add(_szHwProfileGuid[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szHwProfileGuid(String value) {
    final stringToStore = value.padRight(39, '\x00');
    for (var i = 0; i < 39; i++) {
      _szHwProfileGuid[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(80)
  external Array<Uint16> _szHwProfileName;

  String get szHwProfileName {
    final charCodes = <int>[];
    for (var i = 0; i < 80; i++) {
      charCodes.add(_szHwProfileName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szHwProfileName(String value) {
    final stringToStore = value.padRight(80, '\x00');
    for (var i = 0; i < 80; i++) {
      _szHwProfileName[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class IMAGE_DELAYLOAD_DESCRIPTOR extends Struct {
  external _IMAGE_DELAYLOAD_DESCRIPTOR__Attributes_e__Union Attributes;

  @Uint32()
  external int DllNameRVA;

  @Uint32()
  external int ModuleHandleRVA;

  @Uint32()
  external int ImportAddressTableRVA;

  @Uint32()
  external int ImportNameTableRVA;

  @Uint32()
  external int BoundImportAddressTableRVA;

  @Uint32()
  external int UnloadInformationTableRVA;

  @Uint32()
  external int TimeDateStamp;
}

/// {@category Struct}
class _IMAGE_DELAYLOAD_DESCRIPTOR__Attributes_e__Union extends Union {
  @Uint32()
  external int AllAttributes;

  external _IMAGE_DELAYLOAD_DESCRIPTOR__Attributes_e__Union__Anonymous_e__Struct
      Anonymous;
}

/// {@category Struct}
class _IMAGE_DELAYLOAD_DESCRIPTOR__Attributes_e__Union__Anonymous_e__Struct
    extends Struct {
  @Uint32()
  external int bitfield;
}

extension IMAGE_DELAYLOAD_DESCRIPTOR__Attributes_e__Union_Extension
    on IMAGE_DELAYLOAD_DESCRIPTOR {
  int get bitfield => this.Attributes.Anonymous.bitfield;
  set bitfield(int value) => this.Attributes.Anonymous.bitfield = value;
}

extension IMAGE_DELAYLOAD_DESCRIPTOR_Extension on IMAGE_DELAYLOAD_DESCRIPTOR {
  int get AllAttributes => this.Attributes.AllAttributes;
  set AllAttributes(int value) => this.Attributes.AllAttributes = value;

  _IMAGE_DELAYLOAD_DESCRIPTOR__Attributes_e__Union__Anonymous_e__Struct
      get Anonymous => this.Attributes.Anonymous;
  set Anonymous(
          _IMAGE_DELAYLOAD_DESCRIPTOR__Attributes_e__Union__Anonymous_e__Struct
              value) =>
      this.Attributes.Anonymous = value;
}

/// {@category Struct}
class IMAGE_THUNK_DATA32 extends Struct {
  external _IMAGE_THUNK_DATA32__u1_e__Union u1;
}

/// {@category Struct}
class _IMAGE_THUNK_DATA32__u1_e__Union extends Union {
  @Uint32()
  external int ForwarderString;

  @Uint32()
  external int Function;

  @Uint32()
  external int Ordinal;

  @Uint32()
  external int AddressOfData;
}

extension IMAGE_THUNK_DATA32_Extension on IMAGE_THUNK_DATA32 {
  int get ForwarderString => this.u1.ForwarderString;
  set ForwarderString(int value) => this.u1.ForwarderString = value;

  int get Function => this.u1.Function;
  set Function(int value) => this.u1.Function = value;

  int get Ordinal => this.u1.Ordinal;
  set Ordinal(int value) => this.u1.Ordinal = value;

  int get AddressOfData => this.u1.AddressOfData;
  set AddressOfData(int value) => this.u1.AddressOfData = value;
}

/// {@category Struct}
class IMAGE_THUNK_DATA64 extends Struct {
  external _IMAGE_THUNK_DATA64__u1_e__Union u1;
}

/// {@category Struct}
class _IMAGE_THUNK_DATA64__u1_e__Union extends Union {
  @Uint64()
  external int ForwarderString;

  @Uint64()
  external int Function;

  @Uint64()
  external int Ordinal;

  @Uint64()
  external int AddressOfData;
}

extension IMAGE_THUNK_DATA64_Extension on IMAGE_THUNK_DATA64 {
  int get ForwarderString => this.u1.ForwarderString;
  set ForwarderString(int value) => this.u1.ForwarderString = value;

  int get Function => this.u1.Function;
  set Function(int value) => this.u1.Function = value;

  int get Ordinal => this.u1.Ordinal;
  set Ordinal(int value) => this.u1.Ordinal = value;

  int get AddressOfData => this.u1.AddressOfData;
  set AddressOfData(int value) => this.u1.AddressOfData = value;
}

/// {@category Struct}
class IMEPRO extends Struct {
  @IntPtr()
  external int hWnd;

  external DATETIME InstDate;

  @Uint32()
  external int wVersion;

  @Array(50)
  external Array<Uint16> _szDescription;

  String get szDescription {
    final charCodes = <int>[];
    for (var i = 0; i < 50; i++) {
      charCodes.add(_szDescription[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szDescription(String value) {
    final stringToStore = value.padRight(50, '\x00');
    for (var i = 0; i < 50; i++) {
      _szDescription[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(80)
  external Array<Uint16> _szName;

  String get szName {
    final charCodes = <int>[];
    for (var i = 0; i < 80; i++) {
      charCodes.add(_szName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szName(String value) {
    final stringToStore = value.padRight(80, '\x00');
    for (var i = 0; i < 80; i++) {
      _szName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(30)
  external Array<Uint16> _szOptions;

  String get szOptions {
    final charCodes = <int>[];
    for (var i = 0; i < 30; i++) {
      charCodes.add(_szOptions[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szOptions(String value) {
    final stringToStore = value.padRight(30, '\x00');
    for (var i = 0; i < 30; i++) {
      _szOptions[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
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

/// {@category Struct}
class IO_STATUS_BLOCK extends Struct {
  external _IO_STATUS_BLOCK__Anonymous_e__Union Anonymous;

  @IntPtr()
  external int Information;
}

/// {@category Struct}
class _IO_STATUS_BLOCK__Anonymous_e__Union extends Union {
  @Int32()
  external int Status;

  external Pointer $Pointer;
}

extension IO_STATUS_BLOCK_Extension on IO_STATUS_BLOCK {
  int get Status => this.Anonymous.Status;
  set Status(int value) => this.Anonymous.Status = value;

  Pointer get $Pointer => this.Anonymous.$Pointer;
  set $Pointer(Pointer value) => this.Anonymous.$Pointer = value;
}

/// {@category Struct}
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

/// {@category Struct}
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

/// {@category Struct}
class KEY_VALUE_ENTRY extends Struct {
  external Pointer<UNICODE_STRING> ValueName;

  @Uint32()
  external int DataLength;

  @Uint32()
  external int DataOffset;

  @Uint32()
  external int Type;
}

/// {@category Struct}
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

  external _LDR_DATA_TABLE_ENTRY__Anonymous_e__Union Anonymous;

  @Uint32()
  external int TimeDateStamp;
}

/// {@category Struct}
class _LDR_DATA_TABLE_ENTRY__Anonymous_e__Union extends Union {
  @Uint32()
  external int CheckSum;

  external Pointer Reserved6;
}

extension LDR_DATA_TABLE_ENTRY_Extension on LDR_DATA_TABLE_ENTRY {
  int get CheckSum => this.Anonymous.CheckSum;
  set CheckSum(int value) => this.Anonymous.CheckSum = value;

  Pointer get Reserved6 => this.Anonymous.Reserved6;
  set Reserved6(Pointer value) => this.Anonymous.Reserved6 = value;
}

/// {@category Struct}
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

/// {@category Struct}
class PERUSERSECTION extends Struct {
  @Array(59)
  external Array<Uint16> _szGUID;

  String get szGUID {
    final charCodes = <int>[];
    for (var i = 0; i < 59; i++) {
      charCodes.add(_szGUID[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szGUID(String value) {
    final stringToStore = value.padRight(59, '\x00');
    for (var i = 0; i < 59; i++) {
      _szGUID[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(128)
  external Array<Uint16> _szDispName;

  String get szDispName {
    final charCodes = <int>[];
    for (var i = 0; i < 128; i++) {
      charCodes.add(_szDispName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szDispName(String value) {
    final stringToStore = value.padRight(128, '\x00');
    for (var i = 0; i < 128; i++) {
      _szDispName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(10)
  external Array<Uint16> _szLocale;

  String get szLocale {
    final charCodes = <int>[];
    for (var i = 0; i < 10; i++) {
      charCodes.add(_szLocale[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szLocale(String value) {
    final stringToStore = value.padRight(10, '\x00');
    for (var i = 0; i < 10; i++) {
      _szLocale[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(1040)
  external Array<Uint16> _szStub;

  String get szStub {
    final charCodes = <int>[];
    for (var i = 0; i < 1040; i++) {
      charCodes.add(_szStub[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szStub(String value) {
    final stringToStore = value.padRight(1040, '\x00');
    for (var i = 0; i < 1040; i++) {
      _szStub[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(32)
  external Array<Uint16> _szVersion;

  String get szVersion {
    final charCodes = <int>[];
    for (var i = 0; i < 32; i++) {
      charCodes.add(_szVersion[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szVersion(String value) {
    final stringToStore = value.padRight(32, '\x00');
    for (var i = 0; i < 32; i++) {
      _szVersion[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(128)
  external Array<Uint16> _szCompID;

  String get szCompID {
    final charCodes = <int>[];
    for (var i = 0; i < 128; i++) {
      charCodes.add(_szCompID[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szCompID(String value) {
    final stringToStore = value.padRight(128, '\x00');
    for (var i = 0; i < 128; i++) {
      _szCompID[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint32()
  external int dwIsInstalled;

  @Int32()
  external int bRollback;
}

/// {@category Struct}
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

/// {@category Struct}
class PUBLIC_OBJECT_TYPE_INFORMATION extends Struct {
  external UNICODE_STRING TypeName;

  @Array(22)
  external Array<Uint32> Reserved;
}

/// {@category Struct}
class STRENTRY extends Struct {
  external Pointer<Utf16> pszName;

  external Pointer<Utf16> pszValue;
}

/// {@category Struct}
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

/// {@category Struct}
class STRTABLE extends Struct {
  @Uint32()
  external int cEntries;

  external Pointer<STRENTRY> pse;
}

/// {@category Struct}
class SYSTEM_BASIC_INFORMATION extends Struct {
  @Array(24)
  external Array<Uint8> Reserved1;

  @Array(4)
  external Array<Pointer> Reserved2;

  @Int8()
  external int NumberOfProcessors;
}

/// {@category Struct}
class SYSTEM_CODEINTEGRITY_INFORMATION extends Struct {
  @Uint32()
  external int Length;

  @Uint32()
  external int CodeIntegrityOptions;
}

/// {@category Struct}
class SYSTEM_EXCEPTION_INFORMATION extends Struct {
  @Array(16)
  external Array<Uint8> Reserved1;
}

/// {@category Struct}
class SYSTEM_INTERRUPT_INFORMATION extends Struct {
  @Array(24)
  external Array<Uint8> Reserved1;
}

/// {@category Struct}
class SYSTEM_LOOKASIDE_INFORMATION extends Struct {
  @Array(32)
  external Array<Uint8> Reserved1;
}

/// {@category Struct}
class SYSTEM_PERFORMANCE_INFORMATION extends Struct {
  @Array(312)
  external Array<Uint8> Reserved1;
}

/// {@category Struct}
class SYSTEM_POLICY_INFORMATION extends Struct {
  @Array(2)
  external Array<Pointer> Reserved1;

  @Array(3)
  external Array<Uint32> Reserved2;
}

/// {@category Struct}
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

/// {@category Struct}
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

/// {@category Struct}
class SYSTEM_REGISTRY_QUOTA_INFORMATION extends Struct {
  @Uint32()
  external int RegistryQuotaAllowed;

  @Uint32()
  external int RegistryQuotaUsed;

  external Pointer Reserved1;
}

/// {@category Struct}
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

/// {@category Struct}
class SYSTEM_TIMEOFDAY_INFORMATION extends Struct {
  @Array(48)
  external Array<Uint8> Reserved1;
}

/// {@category Struct}
class TDIEntityID extends Struct {
  @Uint32()
  external int tei_entity;

  @Uint32()
  external int tei_instance;
}

/// {@category Struct}
class TDIObjectID extends Struct {
  external TDIEntityID toi_entity;

  @Uint32()
  external int toi_class;

  @Uint32()
  external int toi_type;

  @Uint32()
  external int toi_id;
}

/// {@category Struct}
class TDI_TL_IO_CONTROL_ENDPOINT extends Struct {
  @Int32()
  external int Type;

  @Uint32()
  external int Level;

  external _TDI_TL_IO_CONTROL_ENDPOINT__Anonymous_e__Union Anonymous;

  external Pointer InputBuffer;

  @Uint32()
  external int InputBufferLength;

  external Pointer OutputBuffer;

  @Uint32()
  external int OutputBufferLength;
}

/// {@category Struct}
class _TDI_TL_IO_CONTROL_ENDPOINT__Anonymous_e__Union extends Union {
  @Uint32()
  external int IoControlCode;

  @Uint32()
  external int OptionName;
}

extension TDI_TL_IO_CONTROL_ENDPOINT_Extension on TDI_TL_IO_CONTROL_ENDPOINT {
  int get IoControlCode => this.Anonymous.IoControlCode;
  set IoControlCode(int value) => this.Anonymous.IoControlCode = value;

  int get OptionName => this.Anonymous.OptionName;
  set OptionName(int value) => this.Anonymous.OptionName = value;
}

/// {@category Struct}
class THREAD_NAME_INFORMATION extends Struct {
  external UNICODE_STRING ThreadName;
}

/// {@category Struct}
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

/// {@category Struct}
class WINSTATIONINFORMATION extends Struct {
  @Array(70)
  external Array<Uint8> Reserved2;

  @Uint32()
  external int LogonId;

  @Array(1140)
  external Array<Uint8> Reserved3;
}

/// {@category Struct}
class WLDP_DEVICE_SECURITY_INFORMATION extends Struct {
  @Uint32()
  external int UnlockIdSize;

  external Pointer<Uint8> UnlockId;

  @Uint32()
  external int ManufacturerIDLength;

  external Pointer<Utf16> ManufacturerID;
}

/// {@category Struct}
class WLDP_HOST_INFORMATION extends Struct {
  @Uint32()
  external int dwRevision;

  @Int32()
  external int dwHostId;

  external Pointer<Utf16> szSource;

  @IntPtr()
  external int hSource;
}

/// {@category Struct}
class D3DHAL_CALLBACKS extends Opaque {}

/// {@category Struct}
class D3DHAL_GLOBALDRIVERDATA extends Opaque {}

/// {@category Struct}
class tcp_request_query_information_ex32_xp extends Struct {
  external TDIObjectID ID;

  @Array(4)
  external Array<Uint32> Context;
}

/// {@category Struct}
class tcp_request_query_information_ex_w2k extends Struct {
  external TDIObjectID ID;

  @Array(16)
  external Array<Uint8> Context;
}

/// {@category Struct}
class tcp_request_query_information_ex_xp extends Struct {
  external TDIObjectID ID;

  @Array(2)
  external Array<IntPtr> Context;
}

/// {@category Struct}
class tcp_request_set_information_ex extends Struct {
  external TDIObjectID ID;

  @Uint32()
  external int BufferSize;

  @Array(1)
  external Array<Uint8> Buffer;
}
