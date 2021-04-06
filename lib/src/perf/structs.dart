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

class PerfProviderHandle extends Struct {
  @IntPtr() external int Value;
}

class PerfQueryHandle extends Struct {
  @IntPtr() external int Value;
}

class DataCollectorSet extends Struct {
}

class TraceSession extends Struct {
}

class TraceSessionCollection extends Struct {
}

class TraceDataProvider extends Struct {
}

class TraceDataProviderCollection extends Struct {
}

class DataCollectorSetCollection extends Struct {
}

class LegacyDataCollectorSet extends Struct {
}

class LegacyDataCollectorSetCollection extends Struct {
}

class LegacyTraceSession extends Struct {
}

class LegacyTraceSessionCollection extends Struct {
}

class ServerDataCollectorSet extends Struct {
}

class ServerDataCollectorSetCollection extends Struct {
}

class SystemDataCollectorSet extends Struct {
}

class SystemDataCollectorSetCollection extends Struct {
}

class BootTraceSession extends Struct {
}

class BootTraceSessionCollection extends Struct {
}

class PERF_COUNTERSET_INFO extends Struct {
  external GUID CounterSetGuid;
  external GUID ProviderGuid;
  @Uint32() external int NumCounters;
  @Uint32() external int InstanceType;
}

class PERF_COUNTER_INFO extends Struct {
  @Uint32() external int CounterId;
  @Uint32() external int Type;
  @Uint64() external int Attrib;
  @Uint32() external int Size;
  @Uint32() external int DetailLevel;
  @Int32() external int Scale;
  @Uint32() external int Offset;
}

class PERF_COUNTERSET_INSTANCE extends Struct {
  external GUID CounterSetGuid;
  @Uint32() external int dwSize;
  @Uint32() external int InstanceId;
  @Uint32() external int InstanceNameOffset;
  @Uint32() external int InstanceNameSize;
}

class PERF_COUNTER_IDENTITY extends Struct {
  external GUID CounterSetGuid;
  @Uint32() external int BufferSize;
  @Uint32() external int CounterId;
  @Uint32() external int InstanceId;
  @Uint32() external int MachineOffset;
  @Uint32() external int NameOffset;
  @Uint32() external int Reserved;
}

class PERF_PROVIDER_CONTEXT extends Struct {
  @Uint32() external int ContextSize;
  @Uint32() external int Reserved;
  external PERFLIBREQUEST ControlCallback;
  external PERF_MEM_ALLOC MemAllocRoutine;
  external PERF_MEM_FREE MemFreeRoutine;
  external Pointer pMemContext;
}

class PERF_INSTANCE_HEADER extends Struct {
  @Uint32() external int Size;
  @Uint32() external int InstanceId;
}

class PERF_COUNTERSET_REG_INFO extends Struct {
  external GUID CounterSetGuid;
  @Uint32() external int CounterSetType;
  @Uint32() external int DetailLevel;
  @Uint32() external int NumCounters;
  @Uint32() external int InstanceType;
}

class PERF_COUNTER_REG_INFO extends Struct {
  @Uint32() external int CounterId;
  @Uint32() external int Type;
  @Uint64() external int Attrib;
  @Uint32() external int DetailLevel;
  @Int32() external int DefaultScale;
  @Uint32() external int BaseCounterId;
  @Uint32() external int PerfTimeId;
  @Uint32() external int PerfFreqId;
  @Uint32() external int MultiId;
  @Uint32() external int AggregateFunc;
  @Uint32() external int Reserved;
}

class PERF_STRING_BUFFER_HEADER extends Struct {
  @Uint32() external int dwSize;
  @Uint32() external int dwCounters;
}

class PERF_STRING_COUNTER_HEADER extends Struct {
  @Uint32() external int dwCounterId;
  @Uint32() external int dwOffset;
}

class PERF_COUNTER_IDENTIFIER extends Struct {
  external GUID CounterSetGuid;
  @Uint32() external int Status;
  @Uint32() external int Size;
  @Uint32() external int CounterId;
  @Uint32() external int InstanceId;
  @Uint32() external int Index;
  @Uint32() external int Reserved;
}

class PERF_DATA_HEADER extends Struct {
  @Uint32() external int dwTotalSize;
  @Uint32() external int dwNumCounters;
  @Int64() external int PerfTimeStamp;
  @Int64() external int PerfTime100NSec;
  @Int64() external int PerfFreq;
  external SYSTEMTIME SystemTime;
}

class PERF_COUNTER_HEADER extends Struct {
  @Uint32() external int dwStatus;
  @Uint32() external int dwType;
  @Uint32() external int dwSize;
  @Uint32() external int Reserved;
}

class PERF_MULTI_INSTANCES extends Struct {
  @Uint32() external int dwTotalSize;
  @Uint32() external int dwInstances;
}

class PERF_MULTI_COUNTERS extends Struct {
  @Uint32() external int dwSize;
  @Uint32() external int dwCounters;
}

class PERF_COUNTER_DATA extends Struct {
  @Uint32() external int dwDataSize;
  @Uint32() external int dwSize;
}

class PDH_RAW_COUNTER extends Struct {
  @Uint32() external int CStatus;
  external FILETIME TimeStamp;
  @Int64() external int FirstValue;
  @Int64() external int SecondValue;
  @Uint32() external int MultiCount;
}

class PDH_RAW_COUNTER_ITEM_A extends Struct {
  external Pointer<Utf8> szName;
  external PDH_RAW_COUNTER RawValue;
}

class PDH_RAW_COUNTER_ITEM_W extends Struct {
  external Pointer<Utf16> szName;
  external PDH_RAW_COUNTER RawValue;
}

class PDH_FMT_COUNTERVALUE extends Struct {
  @Uint32() external int CStatus;
  @Uint32() external int Anonymous;
}

class PDH_FMT_COUNTERVALUE_ITEM_A extends Struct {
  external Pointer<Utf8> szName;
  external PDH_FMT_COUNTERVALUE FmtValue;
}

class PDH_FMT_COUNTERVALUE_ITEM_W extends Struct {
  external Pointer<Utf16> szName;
  external PDH_FMT_COUNTERVALUE FmtValue;
}

class PDH_STATISTICS extends Struct {
  @Uint32() external int dwFormat;
  @Uint32() external int count;
  external PDH_FMT_COUNTERVALUE min;
  external PDH_FMT_COUNTERVALUE max;
  external PDH_FMT_COUNTERVALUE mean;
}

class PDH_COUNTER_PATH_ELEMENTS_A extends Struct {
  external Pointer<Utf8> szMachineName;
  external Pointer<Utf8> szObjectName;
  external Pointer<Utf8> szInstanceName;
  external Pointer<Utf8> szParentInstance;
  @Uint32() external int dwInstanceIndex;
  external Pointer<Utf8> szCounterName;
}

class PDH_COUNTER_PATH_ELEMENTS_W extends Struct {
  external Pointer<Utf16> szMachineName;
  external Pointer<Utf16> szObjectName;
  external Pointer<Utf16> szInstanceName;
  external Pointer<Utf16> szParentInstance;
  @Uint32() external int dwInstanceIndex;
  external Pointer<Utf16> szCounterName;
}

class PDH_DATA_ITEM_PATH_ELEMENTS_A extends Struct {
  external Pointer<Utf8> szMachineName;
  external GUID ObjectGUID;
  @Uint32() external int dwItemId;
  external Pointer<Utf8> szInstanceName;
}

class PDH_DATA_ITEM_PATH_ELEMENTS_W extends Struct {
  external Pointer<Utf16> szMachineName;
  external GUID ObjectGUID;
  @Uint32() external int dwItemId;
  external Pointer<Utf16> szInstanceName;
}

class PDH_COUNTER_INFO_A extends Struct {
  @Uint32() external int dwLength;
  @Uint32() external int dwType;
  @Uint32() external int CVersion;
  @Uint32() external int CStatus;
  @Int32() external int lScale;
  @Int32() external int lDefaultScale;
  @IntPtr() external int dwUserData;
  @IntPtr() external int dwQueryUserData;
  external Pointer<Utf8> szFullPath;
  @Uint32() external int Anonymous;
  external Pointer<Utf8> szExplainText;
  @Array(1)
  external Array<Uint32> DataBuffer;
}

class PDH_COUNTER_INFO_W extends Struct {
  @Uint32() external int dwLength;
  @Uint32() external int dwType;
  @Uint32() external int CVersion;
  @Uint32() external int CStatus;
  @Int32() external int lScale;
  @Int32() external int lDefaultScale;
  @IntPtr() external int dwUserData;
  @IntPtr() external int dwQueryUserData;
  external Pointer<Utf16> szFullPath;
  @Uint32() external int Anonymous;
  external Pointer<Utf16> szExplainText;
  @Array(1)
  external Array<Uint32> DataBuffer;
}

class PDH_TIME_INFO extends Struct {
  @Int64() external int StartTime;
  @Int64() external int EndTime;
  @Uint32() external int SampleCount;
}

class PDH_RAW_LOG_RECORD extends Struct {
  @Uint32() external int dwStructureSize;
  @Uint32() external int dwRecordType;
  @Uint32() external int dwItems;
  @Array(1)
  external Array<Uint8> RawBytes;
}

class PDH_LOG_SERVICE_QUERY_INFO_A extends Struct {
  @Uint32() external int dwSize;
  @Uint32() external int dwFlags;
  @Uint32() external int dwLogQuota;
  external Pointer<Utf8> szLogFileCaption;
  external Pointer<Utf8> szDefaultDir;
  external Pointer<Utf8> szBaseFileName;
  @Uint32() external int dwFileType;
  @Uint32() external int dwReserved;
  @Uint32() external int Anonymous;
}

class PDH_LOG_SERVICE_QUERY_INFO_W extends Struct {
  @Uint32() external int dwSize;
  @Uint32() external int dwFlags;
  @Uint32() external int dwLogQuota;
  external Pointer<Utf16> szLogFileCaption;
  external Pointer<Utf16> szDefaultDir;
  external Pointer<Utf16> szBaseFileName;
  @Uint32() external int dwFileType;
  @Uint32() external int dwReserved;
  @Uint32() external int Anonymous;
}

class PDH_BROWSE_DLG_CONFIG_HW extends Struct {
  @Uint32() external int _bitfield;
  @IntPtr() external int hWndOwner;
  @IntPtr() external int hDataSource;
  external Pointer<Utf16> szReturnPathBuffer;
  @Uint32() external int cchReturnPathLength;
  external CounterPathCallBack pCallBack;
  @IntPtr() external int dwCallBackArg;
  @Int32() external int CallBackStatus;
  @Uint32() external int dwDefaultDetailLevel;
  external Pointer<Utf16> szDialogBoxCaption;
}

class PDH_BROWSE_DLG_CONFIG_HA extends Struct {
  @Uint32() external int _bitfield;
  @IntPtr() external int hWndOwner;
  @IntPtr() external int hDataSource;
  external Pointer<Utf8> szReturnPathBuffer;
  @Uint32() external int cchReturnPathLength;
  external CounterPathCallBack pCallBack;
  @IntPtr() external int dwCallBackArg;
  @Int32() external int CallBackStatus;
  @Uint32() external int dwDefaultDetailLevel;
  external Pointer<Utf8> szDialogBoxCaption;
}

class PDH_BROWSE_DLG_CONFIG_W extends Struct {
  @Uint32() external int _bitfield;
  @IntPtr() external int hWndOwner;
  external Pointer<Utf16> szDataSource;
  external Pointer<Utf16> szReturnPathBuffer;
  @Uint32() external int cchReturnPathLength;
  external CounterPathCallBack pCallBack;
  @IntPtr() external int dwCallBackArg;
  @Int32() external int CallBackStatus;
  @Uint32() external int dwDefaultDetailLevel;
  external Pointer<Utf16> szDialogBoxCaption;
}

class PDH_BROWSE_DLG_CONFIG_A extends Struct {
  @Uint32() external int _bitfield;
  @IntPtr() external int hWndOwner;
  external Pointer<Utf8> szDataSource;
  external Pointer<Utf8> szReturnPathBuffer;
  @Uint32() external int cchReturnPathLength;
  external CounterPathCallBack pCallBack;
  @IntPtr() external int dwCallBackArg;
  @Int32() external int CallBackStatus;
  @Uint32() external int dwDefaultDetailLevel;
  external Pointer<Utf8> szDialogBoxCaption;
}

