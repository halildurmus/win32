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
import '../../system/componentservices/structs.g.dart';
import '../../system/com/structs.g.dart';

/// {@category Struct}
class ApplicationProcessRecycleInfo extends Struct {
  @Int32()
  external int IsRecyclable;

  @Int32()
  external int IsRecycled;

  external FILETIME TimeRecycled;

  external FILETIME TimeToTerminate;

  @Int32()
  external int RecycleReasonCode;

  @Int32()
  external int IsPendingRecycle;

  @Int32()
  external int HasAutomaticLifetimeRecycling;

  external FILETIME TimeForAutomaticRecycling;

  @Uint32()
  external int MemoryLimitInKB;

  @Uint32()
  external int MemoryUsageInKBLastCheck;

  @Uint32()
  external int ActivationLimit;

  @Uint32()
  external int NumActivationsLastReported;

  @Uint32()
  external int CallLimit;

  @Uint32()
  external int NumCallsLastReported;
}

/// {@category Struct}
class ApplicationProcessStatistics extends Struct {
  @Uint32()
  external int NumCallsOutstanding;

  @Uint32()
  external int NumTrackedComponents;

  @Uint32()
  external int NumComponentInstances;

  @Uint32()
  external int AvgCallsPerSecond;

  @Uint32()
  external int Reserved1;

  @Uint32()
  external int Reserved2;

  @Uint32()
  external int Reserved3;

  @Uint32()
  external int Reserved4;
}

/// {@category Struct}
class ApplicationProcessSummary extends Struct {
  external GUID PartitionIdPrimaryApplication;

  external GUID ApplicationIdPrimaryApplication;

  external GUID ApplicationInstanceId;

  @Uint32()
  external int ProcessId;

  @Int32()
  external int Type;

  external Pointer<Utf16> ProcessExeName;

  @Int32()
  external int IsService;

  @Int32()
  external int IsPaused;

  @Int32()
  external int IsRecycled;
}

/// {@category Struct}
class ApplicationSummary extends Struct {
  external GUID ApplicationInstanceId;

  external GUID PartitionId;

  external GUID ApplicationId;

  @Int32()
  external int Type;

  external Pointer<Utf16> ApplicationName;

  @Uint32()
  external int NumTrackedComponents;

  @Uint32()
  external int NumComponentInstances;
}

/// {@category Struct}
class CAppData extends Struct {
  @Uint32()
  external int m_idApp;

  @Array(40)
  external Array<Uint16> _m_szAppGuid;

  String get m_szAppGuid {
    final charCodes = <int>[];
    for (var i = 0; i < 40; i++) {
      charCodes.add(_m_szAppGuid[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set m_szAppGuid(String value) {
    final stringToStore = value.padRight(40, '\x00');
    for (var i = 0; i < 40; i++) {
      _m_szAppGuid[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint32()
  external int m_dwAppProcessId;

  external CAppStatistics m_AppStatistics;
}

/// {@category Struct}
class CAppStatistics extends Struct {
  @Uint32()
  external int m_cTotalCalls;

  @Uint32()
  external int m_cTotalInstances;

  @Uint32()
  external int m_cTotalClasses;

  @Uint32()
  external int m_cCallsPerSecond;
}

/// {@category Struct}
class CCLSIDData extends Struct {
  external GUID m_clsid;

  @Uint32()
  external int m_cReferences;

  @Uint32()
  external int m_cBound;

  @Uint32()
  external int m_cPooled;

  @Uint32()
  external int m_cInCall;

  @Uint32()
  external int m_dwRespTime;

  @Uint32()
  external int m_cCallsCompleted;

  @Uint32()
  external int m_cCallsFailed;
}

/// {@category Struct}
class CCLSIDData2 extends Struct {
  external GUID m_clsid;

  external GUID m_appid;

  external GUID m_partid;

  external Pointer<Utf16> m_pwszAppName;

  external Pointer<Utf16> m_pwszCtxName;

  @Int32()
  external int m_eAppType;

  @Uint32()
  external int m_cReferences;

  @Uint32()
  external int m_cBound;

  @Uint32()
  external int m_cPooled;

  @Uint32()
  external int m_cInCall;

  @Uint32()
  external int m_dwRespTime;

  @Uint32()
  external int m_cCallsCompleted;

  @Uint32()
  external int m_cCallsFailed;
}

/// {@category Struct}
class COMSVCSEVENTINFO extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int dwPid;

  @Int64()
  external int lTime;

  @Int32()
  external int lMicroTime;

  @Int64()
  external int perfCount;

  external GUID guidApp;

  external Pointer<Utf16> sMachineName;
}

/// {@category Struct}
class ComponentHangMonitorInfo extends Struct {
  @Int32()
  external int IsMonitored;

  @Int32()
  external int TerminateOnHang;

  @Uint32()
  external int AvgCallThresholdInMs;
}

/// {@category Struct}
class ComponentStatistics extends Struct {
  @Uint32()
  external int NumInstances;

  @Uint32()
  external int NumBoundReferences;

  @Uint32()
  external int NumPooledObjects;

  @Uint32()
  external int NumObjectsInCall;

  @Uint32()
  external int AvgResponseTimeInMs;

  @Uint32()
  external int NumCallsCompletedRecent;

  @Uint32()
  external int NumCallsFailedRecent;

  @Uint32()
  external int NumCallsCompletedTotal;

  @Uint32()
  external int NumCallsFailedTotal;

  @Uint32()
  external int Reserved1;

  @Uint32()
  external int Reserved2;

  @Uint32()
  external int Reserved3;

  @Uint32()
  external int Reserved4;
}

/// {@category Struct}
class ComponentSummary extends Struct {
  external GUID ApplicationInstanceId;

  external GUID PartitionId;

  external GUID ApplicationId;

  external GUID Clsid;

  external Pointer<Utf16> ClassName;

  external Pointer<Utf16> ApplicationName;
}

/// {@category Struct}
class CrmLogRecordRead extends Struct {
  @Uint32()
  external int dwCrmFlags;

  @Uint32()
  external int dwSequenceNumber;

  external BLOB blobUserData;
}

/// {@category Struct}
class HANG_INFO extends Struct {
  @Int32()
  external int fAppHangMonitorEnabled;

  @Int32()
  external int fTerminateOnHang;

  @Int32()
  external int DumpType;

  @Uint32()
  external int dwHangTimeout;

  @Uint32()
  external int dwDumpCount;

  @Uint32()
  external int dwInfoMsgCount;
}

/// {@category Struct}
class RECYCLE_INFO extends Struct {
  external GUID guidCombaseProcessIdentifier;

  @Int64()
  external int ProcessStartTime;

  @Uint32()
  external int dwRecycleLifetimeLimit;

  @Uint32()
  external int dwRecycleMemoryLimit;

  @Uint32()
  external int dwRecycleExpirationTimeout;
}
