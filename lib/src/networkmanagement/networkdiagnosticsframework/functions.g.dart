// Maps FFI prototypes onto the corresponding Win32 API function calls

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: directives_ordering, unnecessary_getters_setters
// ignore_for_file: unused_field, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'enums.g.dart';

import '../../combase.dart';
import '../../guid.dart';
import '../../foundation/structs.g.dart';
import '../../networking/winsock/structs.g.dart';
import '../../networkmanagement/networkdiagnosticsframework/structs.g.dart';
import '../../security/structs.g.dart'; // -----------------------------------------------------------------------

// ndfapi.dll
// -----------------------------------------------------------------------
final _ndfapi = DynamicLibrary.open('ndfapi.dll');

int NdfCancelIncident(
  Pointer $Handle,
) =>
    _NdfCancelIncident(
      $Handle,
    );

late final _NdfCancelIncident = _ndfapi.lookupFunction<
    Int32 Function(
  Pointer $Handle,
),
    int Function(
  Pointer $Handle,
)>('NdfCancelIncident');

int NdfCloseIncident(
  Pointer handle,
) =>
    _NdfCloseIncident(
      handle,
    );

late final _NdfCloseIncident = _ndfapi.lookupFunction<
    Int32 Function(
  Pointer handle,
),
    int Function(
  Pointer handle,
)>('NdfCloseIncident');

int NdfCreateConnectivityIncident(
  Pointer<Pointer> handle,
) =>
    _NdfCreateConnectivityIncident(
      handle,
    );

late final _NdfCreateConnectivityIncident = _ndfapi.lookupFunction<
    Int32 Function(
  Pointer<Pointer> handle,
),
    int Function(
  Pointer<Pointer> handle,
)>('NdfCreateConnectivityIncident');

int NdfCreateDNSIncident(
  Pointer<Utf16> hostname,
  int queryType,
  Pointer<Pointer> handle,
) =>
    _NdfCreateDNSIncident(
      hostname,
      queryType,
      handle,
    );

late final _NdfCreateDNSIncident = _ndfapi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> hostname,
  Uint16 queryType,
  Pointer<Pointer> handle,
),
    int Function(
  Pointer<Utf16> hostname,
  int queryType,
  Pointer<Pointer> handle,
)>('NdfCreateDNSIncident');

int NdfCreateGroupingIncident(
  Pointer<Utf16> CloudName,
  Pointer<Utf16> GroupName,
  Pointer<Utf16> Identity,
  Pointer<Utf16> Invitation,
  Pointer<SOCKET_ADDRESS_LIST> Addresses,
  Pointer<Utf16> appId,
  Pointer<Pointer> handle,
) =>
    _NdfCreateGroupingIncident(
      CloudName,
      GroupName,
      Identity,
      Invitation,
      Addresses,
      appId,
      handle,
    );

late final _NdfCreateGroupingIncident = _ndfapi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> CloudName,
  Pointer<Utf16> GroupName,
  Pointer<Utf16> Identity,
  Pointer<Utf16> Invitation,
  Pointer<SOCKET_ADDRESS_LIST> Addresses,
  Pointer<Utf16> appId,
  Pointer<Pointer> handle,
),
    int Function(
  Pointer<Utf16> CloudName,
  Pointer<Utf16> GroupName,
  Pointer<Utf16> Identity,
  Pointer<Utf16> Invitation,
  Pointer<SOCKET_ADDRESS_LIST> Addresses,
  Pointer<Utf16> appId,
  Pointer<Pointer> handle,
)>('NdfCreateGroupingIncident');

int NdfCreateIncident(
  Pointer<Utf16> helperClassName,
  int celt,
  Pointer<HELPER_ATTRIBUTE> attributes,
  Pointer<Pointer> handle,
) =>
    _NdfCreateIncident(
      helperClassName,
      celt,
      attributes,
      handle,
    );

late final _NdfCreateIncident = _ndfapi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> helperClassName,
  Uint32 celt,
  Pointer<HELPER_ATTRIBUTE> attributes,
  Pointer<Pointer> handle,
),
    int Function(
  Pointer<Utf16> helperClassName,
  int celt,
  Pointer<HELPER_ATTRIBUTE> attributes,
  Pointer<Pointer> handle,
)>('NdfCreateIncident');

int NdfCreateNetConnectionIncident(
  Pointer<Pointer> handle,
  GUID id,
) =>
    _NdfCreateNetConnectionIncident(
      handle,
      id,
    );

late final _NdfCreateNetConnectionIncident = _ndfapi.lookupFunction<
    Int32 Function(
  Pointer<Pointer> handle,
  GUID id,
),
    int Function(
  Pointer<Pointer> handle,
  GUID id,
)>('NdfCreateNetConnectionIncident');

int NdfCreatePnrpIncident(
  Pointer<Utf16> cloudname,
  Pointer<Utf16> peername,
  int diagnosePublish,
  Pointer<Utf16> appId,
  Pointer<Pointer> handle,
) =>
    _NdfCreatePnrpIncident(
      cloudname,
      peername,
      diagnosePublish,
      appId,
      handle,
    );

late final _NdfCreatePnrpIncident = _ndfapi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> cloudname,
  Pointer<Utf16> peername,
  Int32 diagnosePublish,
  Pointer<Utf16> appId,
  Pointer<Pointer> handle,
),
    int Function(
  Pointer<Utf16> cloudname,
  Pointer<Utf16> peername,
  int diagnosePublish,
  Pointer<Utf16> appId,
  Pointer<Pointer> handle,
)>('NdfCreatePnrpIncident');

int NdfCreateSharingIncident(
  Pointer<Utf16> UNCPath,
  Pointer<Pointer> handle,
) =>
    _NdfCreateSharingIncident(
      UNCPath,
      handle,
    );

late final _NdfCreateSharingIncident = _ndfapi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> UNCPath,
  Pointer<Pointer> handle,
),
    int Function(
  Pointer<Utf16> UNCPath,
  Pointer<Pointer> handle,
)>('NdfCreateSharingIncident');

int NdfCreateWebIncident(
  Pointer<Utf16> url,
  Pointer<Pointer> handle,
) =>
    _NdfCreateWebIncident(
      url,
      handle,
    );

late final _NdfCreateWebIncident = _ndfapi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> url,
  Pointer<Pointer> handle,
),
    int Function(
  Pointer<Utf16> url,
  Pointer<Pointer> handle,
)>('NdfCreateWebIncident');

int NdfCreateWebIncidentEx(
  Pointer<Utf16> url,
  int useWinHTTP,
  Pointer<Utf16> moduleName,
  Pointer<Pointer> handle,
) =>
    _NdfCreateWebIncidentEx(
      url,
      useWinHTTP,
      moduleName,
      handle,
    );

late final _NdfCreateWebIncidentEx = _ndfapi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> url,
  Int32 useWinHTTP,
  Pointer<Utf16> moduleName,
  Pointer<Pointer> handle,
),
    int Function(
  Pointer<Utf16> url,
  int useWinHTTP,
  Pointer<Utf16> moduleName,
  Pointer<Pointer> handle,
)>('NdfCreateWebIncidentEx');

int NdfCreateWinSockIncident(
  int sock,
  Pointer<Utf16> host,
  int port,
  Pointer<Utf16> appId,
  Pointer<SID> userId,
  Pointer<Pointer> handle,
) =>
    _NdfCreateWinSockIncident(
      sock,
      host,
      port,
      appId,
      userId,
      handle,
    );

late final _NdfCreateWinSockIncident = _ndfapi.lookupFunction<
    Int32 Function(
  IntPtr sock,
  Pointer<Utf16> host,
  Uint16 port,
  Pointer<Utf16> appId,
  Pointer<SID> userId,
  Pointer<Pointer> handle,
),
    int Function(
  int sock,
  Pointer<Utf16> host,
  int port,
  Pointer<Utf16> appId,
  Pointer<SID> userId,
  Pointer<Pointer> handle,
)>('NdfCreateWinSockIncident');

int NdfDiagnoseIncident(
  Pointer $Handle,
  Pointer<Uint32> RootCauseCount,
  Pointer<Pointer<RootCauseInfo>> RootCauses,
  int dwWait,
  int dwFlags,
) =>
    _NdfDiagnoseIncident(
      $Handle,
      RootCauseCount,
      RootCauses,
      dwWait,
      dwFlags,
    );

late final _NdfDiagnoseIncident = _ndfapi.lookupFunction<
    Int32 Function(
  Pointer $Handle,
  Pointer<Uint32> RootCauseCount,
  Pointer<Pointer<RootCauseInfo>> RootCauses,
  Uint32 dwWait,
  Uint32 dwFlags,
),
    int Function(
  Pointer $Handle,
  Pointer<Uint32> RootCauseCount,
  Pointer<Pointer<RootCauseInfo>> RootCauses,
  int dwWait,
  int dwFlags,
)>('NdfDiagnoseIncident');

int NdfExecuteDiagnosis(
  Pointer handle,
  int hwnd,
) =>
    _NdfExecuteDiagnosis(
      handle,
      hwnd,
    );

late final _NdfExecuteDiagnosis = _ndfapi.lookupFunction<
    Int32 Function(
  Pointer handle,
  IntPtr hwnd,
),
    int Function(
  Pointer handle,
  int hwnd,
)>('NdfExecuteDiagnosis');

int NdfGetTraceFile(
  Pointer $Handle,
  Pointer<Pointer<Utf16>> TraceFileLocation,
) =>
    _NdfGetTraceFile(
      $Handle,
      TraceFileLocation,
    );

late final _NdfGetTraceFile = _ndfapi.lookupFunction<
    Int32 Function(
  Pointer $Handle,
  Pointer<Pointer<Utf16>> TraceFileLocation,
),
    int Function(
  Pointer $Handle,
  Pointer<Pointer<Utf16>> TraceFileLocation,
)>('NdfGetTraceFile');

int NdfRepairIncident(
  Pointer $Handle,
  Pointer<RepairInfoEx> RepairEx,
  int dwWait,
) =>
    _NdfRepairIncident(
      $Handle,
      RepairEx,
      dwWait,
    );

late final _NdfRepairIncident = _ndfapi.lookupFunction<
    Int32 Function(
  Pointer $Handle,
  Pointer<RepairInfoEx> RepairEx,
  Uint32 dwWait,
),
    int Function(
  Pointer $Handle,
  Pointer<RepairInfoEx> RepairEx,
  int dwWait,
)>('NdfRepairIncident');
