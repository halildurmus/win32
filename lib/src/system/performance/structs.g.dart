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
import '../../system/performance/callbacks.g.dart';
import '../../system/performance/structs.g.dart';

/// {@category Struct}
class PDH_BROWSE_DLG_CONFIG_H extends Struct {
  @Uint32()
  external int bitfield;

  @IntPtr()
  external int hWndOwner;

  @IntPtr()
  external int hDataSource;

  external Pointer<Utf16> szReturnPathBuffer;

  @Uint32()
  external int cchReturnPathLength;

  external Pointer<NativeFunction<CounterPathCallBack>> pCallBack;

  @IntPtr()
  external int dwCallBackArg;

  @Int32()
  external int CallBackStatus;

  @Uint32()
  external int dwDefaultDetailLevel;

  external Pointer<Utf16> szDialogBoxCaption;
}

/// {@category Struct}
class PDH_BROWSE_DLG_CONFIG_ extends Struct {
  @Uint32()
  external int bitfield;

  @IntPtr()
  external int hWndOwner;

  external Pointer<Utf16> szDataSource;

  external Pointer<Utf16> szReturnPathBuffer;

  @Uint32()
  external int cchReturnPathLength;

  external Pointer<NativeFunction<CounterPathCallBack>> pCallBack;

  @IntPtr()
  external int dwCallBackArg;

  @Int32()
  external int CallBackStatus;

  @Uint32()
  external int dwDefaultDetailLevel;

  external Pointer<Utf16> szDialogBoxCaption;
}

/// {@category Struct}
class PDH_COUNTER_INFO_ extends Struct {
  @Uint32()
  external int dwLength;

  @Uint32()
  external int dwType;

  @Uint32()
  external int CVersion;

  @Uint32()
  external int CStatus;

  @Int32()
  external int lScale;

  @Int32()
  external int lDefaultScale;

  @IntPtr()
  external int dwUserData;

  @IntPtr()
  external int dwQueryUserData;

  external Pointer<Utf16> szFullPath;

  external _PDH_COUNTER_INFO_W__Anonymous_e__Union Anonymous;

  external Pointer<Utf16> szExplainText;

  @Array(1)
  external Array<Uint32> DataBuffer;
}

/// {@category Struct}
class _PDH_COUNTER_INFO_W__Anonymous_e__Union extends Union {
  external PDH_DATA_ITEM_PATH_ELEMENTS_ DataItemPath;

  external PDH_COUNTER_PATH_ELEMENTS_ CounterPath;

  external _PDH_COUNTER_INFO_W__Anonymous_e__Union__Anonymous_e__Struct
      Anonymous;
}

/// {@category Struct}
class _PDH_COUNTER_INFO_W__Anonymous_e__Union__Anonymous_e__Struct
    extends Struct {
  external Pointer<Utf16> szMachineName;

  external Pointer<Utf16> szObjectName;

  external Pointer<Utf16> szInstanceName;

  external Pointer<Utf16> szParentInstance;

  @Uint32()
  external int dwInstanceIndex;

  external Pointer<Utf16> szCounterName;
}

extension PDH_COUNTER_INFO_W__Anonymous_e__Union_Extension
    on PDH_COUNTER_INFO_ {
  Pointer<Utf16> get szMachineName => this.Anonymous.Anonymous.szMachineName;
  set szMachineName(Pointer<Utf16> value) =>
      this.Anonymous.Anonymous.szMachineName = value;

  Pointer<Utf16> get szObjectName => this.Anonymous.Anonymous.szObjectName;
  set szObjectName(Pointer<Utf16> value) =>
      this.Anonymous.Anonymous.szObjectName = value;

  Pointer<Utf16> get szInstanceName => this.Anonymous.Anonymous.szInstanceName;
  set szInstanceName(Pointer<Utf16> value) =>
      this.Anonymous.Anonymous.szInstanceName = value;

  Pointer<Utf16> get szParentInstance =>
      this.Anonymous.Anonymous.szParentInstance;
  set szParentInstance(Pointer<Utf16> value) =>
      this.Anonymous.Anonymous.szParentInstance = value;

  int get dwInstanceIndex => this.Anonymous.Anonymous.dwInstanceIndex;
  set dwInstanceIndex(int value) =>
      this.Anonymous.Anonymous.dwInstanceIndex = value;

  Pointer<Utf16> get szCounterName => this.Anonymous.Anonymous.szCounterName;
  set szCounterName(Pointer<Utf16> value) =>
      this.Anonymous.Anonymous.szCounterName = value;
}

extension PDH_COUNTER_INFO_W_Extension on PDH_COUNTER_INFO_ {
  PDH_DATA_ITEM_PATH_ELEMENTS_ get DataItemPath => this.Anonymous.DataItemPath;
  set DataItemPath(PDH_DATA_ITEM_PATH_ELEMENTS_ value) =>
      this.Anonymous.DataItemPath = value;

  PDH_COUNTER_PATH_ELEMENTS_ get CounterPath => this.Anonymous.CounterPath;
  set CounterPath(PDH_COUNTER_PATH_ELEMENTS_ value) =>
      this.Anonymous.CounterPath = value;

  _PDH_COUNTER_INFO_W__Anonymous_e__Union__Anonymous_e__Struct get Anonymous =>
      this.Anonymous.Anonymous;
  set Anonymous(
          _PDH_COUNTER_INFO_W__Anonymous_e__Union__Anonymous_e__Struct value) =>
      this.Anonymous.Anonymous = value;
}

/// {@category Struct}
class PDH_COUNTER_PATH_ELEMENTS_ extends Struct {
  external Pointer<Utf16> szMachineName;

  external Pointer<Utf16> szObjectName;

  external Pointer<Utf16> szInstanceName;

  external Pointer<Utf16> szParentInstance;

  @Uint32()
  external int dwInstanceIndex;

  external Pointer<Utf16> szCounterName;
}

/// {@category Struct}
class PDH_DATA_ITEM_PATH_ELEMENTS_ extends Struct {
  external Pointer<Utf16> szMachineName;

  external GUID ObjectGUID;

  @Uint32()
  external int dwItemId;

  external Pointer<Utf16> szInstanceName;
}

/// {@category Struct}
class PDH_FMT_COUNTERVALUE extends Struct {
  @Uint32()
  external int CStatus;

  external _PDH_FMT_COUNTERVALUE__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _PDH_FMT_COUNTERVALUE__Anonymous_e__Union extends Union {
  @Int32()
  external int longValue;

  @Double()
  external double doubleValue;

  @Int64()
  external int largeValue;

  external Pointer<Utf8> AnsiStringValue;

  external Pointer<Utf16> WideStringValue;
}

extension PDH_FMT_COUNTERVALUE_Extension on PDH_FMT_COUNTERVALUE {
  int get longValue => this.Anonymous.longValue;
  set longValue(int value) => this.Anonymous.longValue = value;

  double get doubleValue => this.Anonymous.doubleValue;
  set doubleValue(double value) => this.Anonymous.doubleValue = value;

  int get largeValue => this.Anonymous.largeValue;
  set largeValue(int value) => this.Anonymous.largeValue = value;

  Pointer<Utf8> get AnsiStringValue => this.Anonymous.AnsiStringValue;
  set AnsiStringValue(Pointer<Utf8> value) =>
      this.Anonymous.AnsiStringValue = value;

  Pointer<Utf16> get WideStringValue => this.Anonymous.WideStringValue;
  set WideStringValue(Pointer<Utf16> value) =>
      this.Anonymous.WideStringValue = value;
}

/// {@category Struct}
class PDH_FMT_COUNTERVALUE_ITEM_ extends Struct {
  external Pointer<Utf16> szName;

  external PDH_FMT_COUNTERVALUE FmtValue;
}

/// {@category Struct}
class PDH_LOG_SERVICE_QUERY_INFO_ extends Struct {
  @Uint32()
  external int dwSize;

  @Uint32()
  external int dwFlags;

  @Uint32()
  external int dwLogQuota;

  external Pointer<Utf16> szLogFileCaption;

  external Pointer<Utf16> szDefaultDir;

  external Pointer<Utf16> szBaseFileName;

  @Uint32()
  external int dwFileType;

  @Uint32()
  external int dwReserved;

  external _PDH_LOG_SERVICE_QUERY_INFO_W__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _PDH_LOG_SERVICE_QUERY_INFO_W__Anonymous_e__Union extends Union {
  external _PDH_LOG_SERVICE_QUERY_INFO_W__Anonymous_e__Union__Anonymous1_e__Struct
      Anonymous1;

  external _PDH_LOG_SERVICE_QUERY_INFO_W__Anonymous_e__Union__Anonymous2_e__Struct
      Anonymous2;
}

/// {@category Struct}
class _PDH_LOG_SERVICE_QUERY_INFO_W__Anonymous_e__Union__Anonymous1_e__Struct
    extends Struct {
  @Uint32()
  external int PdlAutoNameInterval;

  @Uint32()
  external int PdlAutoNameUnits;

  external Pointer<Utf16> PdlCommandFilename;

  external Pointer<Utf16> PdlCounterList;

  @Uint32()
  external int PdlAutoNameFormat;

  @Uint32()
  external int PdlSampleInterval;

  external FILETIME PdlLogStartTime;

  external FILETIME PdlLogEndTime;
}

extension PDH_LOG_SERVICE_QUERY_INFO_W__Anonymous_e__Union_Extension
    on PDH_LOG_SERVICE_QUERY_INFO_ {
  int get PdlAutoNameInterval => this.Anonymous.Anonymous1.PdlAutoNameInterval;
  set PdlAutoNameInterval(int value) =>
      this.Anonymous.Anonymous1.PdlAutoNameInterval = value;

  int get PdlAutoNameUnits => this.Anonymous.Anonymous1.PdlAutoNameUnits;
  set PdlAutoNameUnits(int value) =>
      this.Anonymous.Anonymous1.PdlAutoNameUnits = value;

  Pointer<Utf16> get PdlCommandFilename =>
      this.Anonymous.Anonymous1.PdlCommandFilename;
  set PdlCommandFilename(Pointer<Utf16> value) =>
      this.Anonymous.Anonymous1.PdlCommandFilename = value;

  Pointer<Utf16> get PdlCounterList => this.Anonymous.Anonymous1.PdlCounterList;
  set PdlCounterList(Pointer<Utf16> value) =>
      this.Anonymous.Anonymous1.PdlCounterList = value;

  int get PdlAutoNameFormat => this.Anonymous.Anonymous1.PdlAutoNameFormat;
  set PdlAutoNameFormat(int value) =>
      this.Anonymous.Anonymous1.PdlAutoNameFormat = value;

  int get PdlSampleInterval => this.Anonymous.Anonymous1.PdlSampleInterval;
  set PdlSampleInterval(int value) =>
      this.Anonymous.Anonymous1.PdlSampleInterval = value;

  FILETIME get PdlLogStartTime => this.Anonymous.Anonymous1.PdlLogStartTime;
  set PdlLogStartTime(FILETIME value) =>
      this.Anonymous.Anonymous1.PdlLogStartTime = value;

  FILETIME get PdlLogEndTime => this.Anonymous.Anonymous1.PdlLogEndTime;
  set PdlLogEndTime(FILETIME value) =>
      this.Anonymous.Anonymous1.PdlLogEndTime = value;
}

/// {@category Struct}
class _PDH_LOG_SERVICE_QUERY_INFO_W__Anonymous_e__Union__Anonymous2_e__Struct
    extends Struct {
  @Uint32()
  external int TlNumberOfBuffers;

  @Uint32()
  external int TlMinimumBuffers;

  @Uint32()
  external int TlMaximumBuffers;

  @Uint32()
  external int TlFreeBuffers;

  @Uint32()
  external int TlBufferSize;

  @Uint32()
  external int TlEventsLost;

  @Uint32()
  external int TlLoggerThreadId;

  @Uint32()
  external int TlBuffersWritten;

  @Uint32()
  external int TlLogHandle;

  external Pointer<Utf16> TlLogFileName;
}

extension PDH_LOG_SERVICE_QUERY_INFO_W__Anonymous_e__Union_Extension_1
    on PDH_LOG_SERVICE_QUERY_INFO_ {
  int get TlNumberOfBuffers => this.Anonymous.Anonymous2.TlNumberOfBuffers;
  set TlNumberOfBuffers(int value) =>
      this.Anonymous.Anonymous2.TlNumberOfBuffers = value;

  int get TlMinimumBuffers => this.Anonymous.Anonymous2.TlMinimumBuffers;
  set TlMinimumBuffers(int value) =>
      this.Anonymous.Anonymous2.TlMinimumBuffers = value;

  int get TlMaximumBuffers => this.Anonymous.Anonymous2.TlMaximumBuffers;
  set TlMaximumBuffers(int value) =>
      this.Anonymous.Anonymous2.TlMaximumBuffers = value;

  int get TlFreeBuffers => this.Anonymous.Anonymous2.TlFreeBuffers;
  set TlFreeBuffers(int value) =>
      this.Anonymous.Anonymous2.TlFreeBuffers = value;

  int get TlBufferSize => this.Anonymous.Anonymous2.TlBufferSize;
  set TlBufferSize(int value) => this.Anonymous.Anonymous2.TlBufferSize = value;

  int get TlEventsLost => this.Anonymous.Anonymous2.TlEventsLost;
  set TlEventsLost(int value) => this.Anonymous.Anonymous2.TlEventsLost = value;

  int get TlLoggerThreadId => this.Anonymous.Anonymous2.TlLoggerThreadId;
  set TlLoggerThreadId(int value) =>
      this.Anonymous.Anonymous2.TlLoggerThreadId = value;

  int get TlBuffersWritten => this.Anonymous.Anonymous2.TlBuffersWritten;
  set TlBuffersWritten(int value) =>
      this.Anonymous.Anonymous2.TlBuffersWritten = value;

  int get TlLogHandle => this.Anonymous.Anonymous2.TlLogHandle;
  set TlLogHandle(int value) => this.Anonymous.Anonymous2.TlLogHandle = value;

  Pointer<Utf16> get TlLogFileName => this.Anonymous.Anonymous2.TlLogFileName;
  set TlLogFileName(Pointer<Utf16> value) =>
      this.Anonymous.Anonymous2.TlLogFileName = value;
}

extension PDH_LOG_SERVICE_QUERY_INFO_W_Extension
    on PDH_LOG_SERVICE_QUERY_INFO_ {
  _PDH_LOG_SERVICE_QUERY_INFO_W__Anonymous_e__Union__Anonymous1_e__Struct
      get Anonymous1 => this.Anonymous.Anonymous1;
  set Anonymous1(
          _PDH_LOG_SERVICE_QUERY_INFO_W__Anonymous_e__Union__Anonymous1_e__Struct
              value) =>
      this.Anonymous.Anonymous1 = value;

  _PDH_LOG_SERVICE_QUERY_INFO_W__Anonymous_e__Union__Anonymous2_e__Struct
      get Anonymous2 => this.Anonymous.Anonymous2;
  set Anonymous2(
          _PDH_LOG_SERVICE_QUERY_INFO_W__Anonymous_e__Union__Anonymous2_e__Struct
              value) =>
      this.Anonymous.Anonymous2 = value;
}

/// {@category Struct}
class PDH_RAW_COUNTER extends Struct {
  @Uint32()
  external int CStatus;

  external FILETIME TimeStamp;

  @Int64()
  external int FirstValue;

  @Int64()
  external int SecondValue;

  @Uint32()
  external int MultiCount;
}

/// {@category Struct}
class PDH_RAW_COUNTER_ITEM_ extends Struct {
  external Pointer<Utf16> szName;

  external PDH_RAW_COUNTER RawValue;
}

/// {@category Struct}
class PDH_RAW_LOG_RECORD extends Struct {
  @Uint32()
  external int dwStructureSize;

  @Uint32()
  external int dwRecordType;

  @Uint32()
  external int dwItems;

  @Array(1)
  external Array<Uint8> RawBytes;
}

/// {@category Struct}
class PDH_STATISTICS extends Struct {
  @Uint32()
  external int dwFormat;

  @Uint32()
  external int count;

  external PDH_FMT_COUNTERVALUE min;

  external PDH_FMT_COUNTERVALUE max;

  external PDH_FMT_COUNTERVALUE mean;
}

/// {@category Struct}
class PDH_TIME_INFO extends Struct {
  @Int64()
  external int StartTime;

  @Int64()
  external int EndTime;

  @Uint32()
  external int SampleCount;
}

/// {@category Struct}
class PERF_COUNTERSET_INFO extends Struct {
  external GUID CounterSetGuid;

  external GUID ProviderGuid;

  @Uint32()
  external int NumCounters;

  @Uint32()
  external int InstanceType;
}

/// {@category Struct}
class PERF_COUNTERSET_INSTANCE extends Struct {
  external GUID CounterSetGuid;

  @Uint32()
  external int dwSize;

  @Uint32()
  external int InstanceId;

  @Uint32()
  external int InstanceNameOffset;

  @Uint32()
  external int InstanceNameSize;
}

/// {@category Struct}
class PERF_COUNTERSET_REG_INFO extends Struct {
  external GUID CounterSetGuid;

  @Uint32()
  external int CounterSetType;

  @Uint32()
  external int DetailLevel;

  @Uint32()
  external int NumCounters;

  @Uint32()
  external int InstanceType;
}

/// {@category Struct}
class PERF_COUNTER_BLOCK extends Struct {
  @Uint32()
  external int ByteLength;
}

/// {@category Struct}
class PERF_COUNTER_DATA extends Struct {
  @Uint32()
  external int dwDataSize;

  @Uint32()
  external int dwSize;
}

/// {@category Struct}
class PERF_COUNTER_DEFINITION extends Struct {
  @Uint32()
  external int ByteLength;

  @Uint32()
  external int CounterNameTitleIndex;

  @Uint32()
  external int CounterNameTitle;

  @Uint32()
  external int CounterHelpTitleIndex;

  @Uint32()
  external int CounterHelpTitle;

  @Int32()
  external int DefaultScale;

  @Uint32()
  external int DetailLevel;

  @Uint32()
  external int CounterType;

  @Uint32()
  external int CounterSize;

  @Uint32()
  external int CounterOffset;
}

/// {@category Struct}
class PERF_COUNTER_HEADER extends Struct {
  @Uint32()
  external int dwStatus;

  @Int32()
  external int dwType;

  @Uint32()
  external int dwSize;

  @Uint32()
  external int Reserved;
}

/// {@category Struct}
class PERF_COUNTER_IDENTIFIER extends Struct {
  external GUID CounterSetGuid;

  @Uint32()
  external int Status;

  @Uint32()
  external int Size;

  @Uint32()
  external int CounterId;

  @Uint32()
  external int InstanceId;

  @Uint32()
  external int Index;

  @Uint32()
  external int Reserved;
}

/// {@category Struct}
class PERF_COUNTER_IDENTITY extends Struct {
  external GUID CounterSetGuid;

  @Uint32()
  external int BufferSize;

  @Uint32()
  external int CounterId;

  @Uint32()
  external int InstanceId;

  @Uint32()
  external int MachineOffset;

  @Uint32()
  external int NameOffset;

  @Uint32()
  external int Reserved;
}

/// {@category Struct}
class PERF_COUNTER_INFO extends Struct {
  @Uint32()
  external int CounterId;

  @Uint32()
  external int Type;

  @Uint64()
  external int Attrib;

  @Uint32()
  external int Size;

  @Uint32()
  external int DetailLevel;

  @Int32()
  external int Scale;

  @Uint32()
  external int Offset;
}

/// {@category Struct}
class PERF_COUNTER_REG_INFO extends Struct {
  @Uint32()
  external int CounterId;

  @Uint32()
  external int Type;

  @Uint64()
  external int Attrib;

  @Uint32()
  external int DetailLevel;

  @Int32()
  external int DefaultScale;

  @Uint32()
  external int BaseCounterId;

  @Uint32()
  external int PerfTimeId;

  @Uint32()
  external int PerfFreqId;

  @Uint32()
  external int MultiId;

  @Uint32()
  external int AggregateFunc;

  @Uint32()
  external int Reserved;
}

/// {@category Struct}
class PERF_DATA_BLOCK extends Struct {
  @Array(4)
  external Array<Uint16> _Signature;

  String get Signature {
    final charCodes = <int>[];
    for (var i = 0; i < 4; i++) {
      charCodes.add(_Signature[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set Signature(String value) {
    final stringToStore = value.padRight(4, '\x00');
    for (var i = 0; i < 4; i++) {
      _Signature[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint32()
  external int LittleEndian;

  @Uint32()
  external int Version;

  @Uint32()
  external int Revision;

  @Uint32()
  external int TotalByteLength;

  @Uint32()
  external int HeaderLength;

  @Uint32()
  external int NumObjectTypes;

  @Int32()
  external int DefaultObject;

  external SYSTEMTIME SystemTime;

  @Int64()
  external int PerfTime;

  @Int64()
  external int PerfFreq;

  @Int64()
  external int PerfTime100nSec;

  @Uint32()
  external int SystemNameLength;

  @Uint32()
  external int SystemNameOffset;
}

/// {@category Struct}
class PERF_DATA_HEADER extends Struct {
  @Uint32()
  external int dwTotalSize;

  @Uint32()
  external int dwNumCounters;

  @Int64()
  external int PerfTimeStamp;

  @Int64()
  external int PerfTime100NSec;

  @Int64()
  external int PerfFreq;

  external SYSTEMTIME SystemTime;
}

/// {@category Struct}
class PERF_INSTANCE_DEFINITION extends Struct {
  @Uint32()
  external int ByteLength;

  @Uint32()
  external int ParentObjectTitleIndex;

  @Uint32()
  external int ParentObjectInstance;

  @Int32()
  external int UniqueID;

  @Uint32()
  external int NameOffset;

  @Uint32()
  external int NameLength;
}

/// {@category Struct}
class PERF_INSTANCE_HEADER extends Struct {
  @Uint32()
  external int Size;

  @Uint32()
  external int InstanceId;
}

/// {@category Struct}
class PERF_MULTI_COUNTERS extends Struct {
  @Uint32()
  external int dwSize;

  @Uint32()
  external int dwCounters;
}

/// {@category Struct}
class PERF_MULTI_INSTANCES extends Struct {
  @Uint32()
  external int dwTotalSize;

  @Uint32()
  external int dwInstances;
}

/// {@category Struct}
class PERF_OBJECT_TYPE extends Struct {
  @Uint32()
  external int TotalByteLength;

  @Uint32()
  external int DefinitionLength;

  @Uint32()
  external int HeaderLength;

  @Uint32()
  external int ObjectNameTitleIndex;

  @Uint32()
  external int ObjectNameTitle;

  @Uint32()
  external int ObjectHelpTitleIndex;

  @Uint32()
  external int ObjectHelpTitle;

  @Uint32()
  external int DetailLevel;

  @Uint32()
  external int NumCounters;

  @Int32()
  external int DefaultCounter;

  @Int32()
  external int NumInstances;

  @Uint32()
  external int CodePage;

  @Int64()
  external int PerfTime;

  @Int64()
  external int PerfFreq;
}

/// {@category Struct}
class PERF_PROVIDER_CONTEXT extends Struct {
  @Uint32()
  external int ContextSize;

  @Uint32()
  external int Reserved;

  external Pointer<NativeFunction<PERFLIBREQUEST>> ControlCallback;

  external Pointer<NativeFunction<PERF_MEM_ALLOC>> MemAllocRoutine;

  external Pointer<NativeFunction<PERF_MEM_FREE>> MemFreeRoutine;

  external Pointer pMemContext;
}

/// {@category Struct}
class PERF_STRING_BUFFER_HEADER extends Struct {
  @Uint32()
  external int dwSize;

  @Uint32()
  external int dwCounters;
}

/// {@category Struct}
class PERF_STRING_COUNTER_HEADER extends Struct {
  @Uint32()
  external int dwCounterId;

  @Uint32()
  external int dwOffset;
}
