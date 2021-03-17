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

class SecurityIdentity extends Struct {
}

class SecurityCallers extends Struct {
}

class SecurityCallContext extends Struct {
}

class GetSecurityCallContextAppObject extends Struct {
}

class Dummy30040732 extends Struct {
}

class TransactionContext extends Struct {
}

class TransactionContextEx extends Struct {
}

class ByotServerEx extends Struct {
}

class CServiceConfig extends Struct {
}

class ServicePool extends Struct {
}

class ServicePoolConfig extends Struct {
}

class SharedProperty extends Struct {
}

class SharedPropertyGroup extends Struct {
}

class SharedPropertyGroupManager extends Struct {
}

class COMEvents extends Struct {
}

class CoMTSLocator extends Struct {
}

class MtsGrp extends Struct {
}

class ComServiceEvents extends Struct {
}

class ComSystemAppEventData extends Struct {
}

class CRMClerk extends Struct {
}

class CRMRecoveryClerk extends Struct {
}

class LBEvents extends Struct {
}

class MessageMover extends Struct {
}

class DispenserManager extends Struct {
}

class PoolMgr extends Struct {
}

class EventServer extends Struct {
}

class TrackerServer extends Struct {
}

class AppDomainHelper extends Struct {
}

class ClrAssemblyLocator extends Struct {
}

class COMAdminCatalog extends Struct {
}

class COMAdminCatalogObject extends Struct {
}

class COMAdminCatalogCollection extends Struct {
}

class BOID extends Struct {
  external __ubyte__ rgb;
}

class XACTTRANSINFO extends Struct {
  external BOID uow;
  @Int32() external int isoLevel;
  @Uint32() external int isoFlags;
  @Uint32() external int grfTCSupported;
  @Uint32() external int grfRMSupported;
  @Uint32() external int grfTCSupportedRetaining;
  @Uint32() external int grfRMSupportedRetaining;
}

class XACTSTATS extends Struct {
  @Uint32() external int cOpen;
  @Uint32() external int cCommitting;
  @Uint32() external int cCommitted;
  @Uint32() external int cAborting;
  @Uint32() external int cAborted;
  @Uint32() external int cInDoubt;
  @Uint32() external int cHeuristicDecision;
  external FILETIME timeTransactionsUp;
}

class XACTOPT extends Struct {
  @Uint32() external int ulTimeout;
  external __ubyte__ szDescription;
}

class xid_t extends Struct {
  @Int32() external int formatID;
  @Int32() external int gtrid_length;
  @Int32() external int bqual_length;
  external __byte__ data;
}

class xa_switch_t extends Struct {
  external __byte__ name;
  @Int32() external int flags;
  @Int32() external int version;
  @IntPtr() external int xa_open_entry;
  @IntPtr() external int xa_close_entry;
  @IntPtr() external int xa_start_entry;
  @IntPtr() external int xa_end_entry;
  @IntPtr() external int xa_rollback_entry;
  @IntPtr() external int xa_prepare_entry;
  @IntPtr() external int xa_commit_entry;
  @IntPtr() external int xa_recover_entry;
  @IntPtr() external int xa_forget_entry;
  @IntPtr() external int xa_complete_entry;
}

class _ProxyConfigParams extends Struct {
  @Uint16() external int wcThreadsMax;
}

class COMSVCSEVENTINFO extends Struct {
  @Uint32() external int cbSize;
  @Uint32() external int dwPid;
  @Int64() external int lTime;
  @Int32() external int lMicroTime;
  @Int64() external int perfCount;
  external GUID guidApp;
  external Pointer<Utf16> sMachineName;
}

class RECYCLE_INFO extends Struct {
  external GUID guidCombaseProcessIdentifier;
  @Int64() external int ProcessStartTime;
  @Uint32() external int dwRecycleLifetimeLimit;
  @Uint32() external int dwRecycleMemoryLimit;
  @Uint32() external int dwRecycleExpirationTimeout;
}

class HANG_INFO extends Struct {
  @Int32() external int fAppHangMonitorEnabled;
  @Int32() external int fTerminateOnHang;
  @Uint32() external int DumpType;
  @Uint32() external int dwHangTimeout;
  @Uint32() external int dwDumpCount;
  @Uint32() external int dwInfoMsgCount;
}

class CAppStatistics extends Struct {
  @Uint32() external int m_cTotalCalls;
  @Uint32() external int m_cTotalInstances;
  @Uint32() external int m_cTotalClasses;
  @Uint32() external int m_cCallsPerSecond;
}

class CAppData extends Struct {
  @Uint32() external int m_idApp;
  external __ushort__ m_szAppGuid;
  @Uint32() external int m_dwAppProcessId;
  external CAppStatistics m_AppStatistics;
}

class CCLSIDData extends Struct {
  external GUID m_clsid;
  @Uint32() external int m_cReferences;
  @Uint32() external int m_cBound;
  @Uint32() external int m_cPooled;
  @Uint32() external int m_cInCall;
  @Uint32() external int m_dwRespTime;
  @Uint32() external int m_cCallsCompleted;
  @Uint32() external int m_cCallsFailed;
}

class CCLSIDData2 extends Struct {
  external GUID m_clsid;
  external GUID m_appid;
  external GUID m_partid;
  external Pointer<Utf16> m_pwszAppName;
  external Pointer<Utf16> m_pwszCtxName;
  @Uint32() external int m_eAppType;
  @Uint32() external int m_cReferences;
  @Uint32() external int m_cBound;
  @Uint32() external int m_cPooled;
  @Uint32() external int m_cInCall;
  @Uint32() external int m_dwRespTime;
  @Uint32() external int m_cCallsCompleted;
  @Uint32() external int m_cCallsFailed;
}

class ApplicationProcessSummary extends Struct {
  external GUID PartitionIdPrimaryApplication;
  external GUID ApplicationIdPrimaryApplication;
  external GUID ApplicationInstanceId;
  @Uint32() external int ProcessId;
  @Uint32() external int Type;
  external Pointer<Utf16> ProcessExeName;
  @Int32() external int IsService;
  @Int32() external int IsPaused;
  @Int32() external int IsRecycled;
}

class ApplicationProcessStatistics extends Struct {
  @Uint32() external int NumCallsOutstanding;
  @Uint32() external int NumTrackedComponents;
  @Uint32() external int NumComponentInstances;
  @Uint32() external int AvgCallsPerSecond;
  @Uint32() external int Reserved1;
  @Uint32() external int Reserved2;
  @Uint32() external int Reserved3;
  @Uint32() external int Reserved4;
}

class ApplicationProcessRecycleInfo extends Struct {
  @Int32() external int IsRecyclable;
  @Int32() external int IsRecycled;
  external FILETIME TimeRecycled;
  external FILETIME TimeToTerminate;
  @Int32() external int RecycleReasonCode;
  @Int32() external int IsPendingRecycle;
  @Int32() external int HasAutomaticLifetimeRecycling;
  external FILETIME TimeForAutomaticRecycling;
  @Uint32() external int MemoryLimitInKB;
  @Uint32() external int MemoryUsageInKBLastCheck;
  @Uint32() external int ActivationLimit;
  @Uint32() external int NumActivationsLastReported;
  @Uint32() external int CallLimit;
  @Uint32() external int NumCallsLastReported;
}

class ApplicationSummary extends Struct {
  external GUID ApplicationInstanceId;
  external GUID PartitionId;
  external GUID ApplicationId;
  @Uint32() external int Type;
  external Pointer<Utf16> ApplicationName;
  @Uint32() external int NumTrackedComponents;
  @Uint32() external int NumComponentInstances;
}

class ComponentSummary extends Struct {
  external GUID ApplicationInstanceId;
  external GUID PartitionId;
  external GUID ApplicationId;
  external GUID Clsid;
  external Pointer<Utf16> ClassName;
  external Pointer<Utf16> ApplicationName;
}

class ComponentStatistics extends Struct {
  @Uint32() external int NumInstances;
  @Uint32() external int NumBoundReferences;
  @Uint32() external int NumPooledObjects;
  @Uint32() external int NumObjectsInCall;
  @Uint32() external int AvgResponseTimeInMs;
  @Uint32() external int NumCallsCompletedRecent;
  @Uint32() external int NumCallsFailedRecent;
  @Uint32() external int NumCallsCompletedTotal;
  @Uint32() external int NumCallsFailedTotal;
  @Uint32() external int Reserved1;
  @Uint32() external int Reserved2;
  @Uint32() external int Reserved3;
  @Uint32() external int Reserved4;
}

class ComponentHangMonitorInfo extends Struct {
  @Int32() external int IsMonitored;
  @Int32() external int TerminateOnHang;
  @Uint32() external int AvgCallThresholdInMs;
}

class CrmLogRecordRead extends Struct {
  @Uint32() external int dwCrmFlags;
  @Uint32() external int dwSequenceNumber;
  external BLOB blobUserData;
}

class CEventSystem extends Struct {
}

class CEventPublisher extends Struct {
}

class CEventClass extends Struct {
}

class CEventSubscription extends Struct {
}

class EventObjectChange extends Struct {
}

class EventObjectChange2 extends Struct {
}

class COMEVENTSYSCHANGEINFO extends Struct {
  @Uint32() external int cbSize;
  @Uint32() external int changeType;
  external Pointer<Utf16> objectId;
  external Pointer<Utf16> partitionId;
  external Pointer<Utf16> applicationId;
  external GUID reserved;
}

