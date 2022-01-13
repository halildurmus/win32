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
import '../../system/restartmanager/structs.g.dart';
import '../../system/restartmanager/callbacks.g.dart'; // -----------------------------------------------------------------------

// rstrtmgr.dll
// -----------------------------------------------------------------------
final _rstrtmgr = DynamicLibrary.open('rstrtmgr.dll');

int RmAddFilter(
  int dwSessionHandle,
  Pointer<Utf16> strModuleName,
  Pointer<RM_UNIQUE_PROCESS> pProcess,
  Pointer<Utf16> strServiceShortName,
  int FilterAction,
) =>
    _RmAddFilter(
      dwSessionHandle,
      strModuleName,
      pProcess,
      strServiceShortName,
      FilterAction,
    );

late final _RmAddFilter = _rstrtmgr.lookupFunction<
    Uint32 Function(
  Uint32 dwSessionHandle,
  Pointer<Utf16> strModuleName,
  Pointer<RM_UNIQUE_PROCESS> pProcess,
  Pointer<Utf16> strServiceShortName,
  Int32 FilterAction,
),
    int Function(
  int dwSessionHandle,
  Pointer<Utf16> strModuleName,
  Pointer<RM_UNIQUE_PROCESS> pProcess,
  Pointer<Utf16> strServiceShortName,
  int FilterAction,
)>('RmAddFilter');

int RmCancelCurrentTask(
  int dwSessionHandle,
) =>
    _RmCancelCurrentTask(
      dwSessionHandle,
    );

late final _RmCancelCurrentTask = _rstrtmgr.lookupFunction<
    Uint32 Function(
  Uint32 dwSessionHandle,
),
    int Function(
  int dwSessionHandle,
)>('RmCancelCurrentTask');

int RmEndSession(
  int dwSessionHandle,
) =>
    _RmEndSession(
      dwSessionHandle,
    );

late final _RmEndSession = _rstrtmgr.lookupFunction<
    Uint32 Function(
  Uint32 dwSessionHandle,
),
    int Function(
  int dwSessionHandle,
)>('RmEndSession');

int RmGetFilterList(
  int dwSessionHandle,
  Pointer<Uint8> pbFilterBuf,
  int cbFilterBuf,
  Pointer<Uint32> cbFilterBufNeeded,
) =>
    _RmGetFilterList(
      dwSessionHandle,
      pbFilterBuf,
      cbFilterBuf,
      cbFilterBufNeeded,
    );

late final _RmGetFilterList = _rstrtmgr.lookupFunction<
    Uint32 Function(
  Uint32 dwSessionHandle,
  Pointer<Uint8> pbFilterBuf,
  Uint32 cbFilterBuf,
  Pointer<Uint32> cbFilterBufNeeded,
),
    int Function(
  int dwSessionHandle,
  Pointer<Uint8> pbFilterBuf,
  int cbFilterBuf,
  Pointer<Uint32> cbFilterBufNeeded,
)>('RmGetFilterList');

int RmGetList(
  int dwSessionHandle,
  Pointer<Uint32> pnProcInfoNeeded,
  Pointer<Uint32> pnProcInfo,
  Pointer<RM_PROCESS_INFO> rgAffectedApps,
  Pointer<Uint32> lpdwRebootReasons,
) =>
    _RmGetList(
      dwSessionHandle,
      pnProcInfoNeeded,
      pnProcInfo,
      rgAffectedApps,
      lpdwRebootReasons,
    );

late final _RmGetList = _rstrtmgr.lookupFunction<
    Uint32 Function(
  Uint32 dwSessionHandle,
  Pointer<Uint32> pnProcInfoNeeded,
  Pointer<Uint32> pnProcInfo,
  Pointer<RM_PROCESS_INFO> rgAffectedApps,
  Pointer<Uint32> lpdwRebootReasons,
),
    int Function(
  int dwSessionHandle,
  Pointer<Uint32> pnProcInfoNeeded,
  Pointer<Uint32> pnProcInfo,
  Pointer<RM_PROCESS_INFO> rgAffectedApps,
  Pointer<Uint32> lpdwRebootReasons,
)>('RmGetList');

int RmJoinSession(
  Pointer<Uint32> pSessionHandle,
  Pointer<Utf16> strSessionKey,
) =>
    _RmJoinSession(
      pSessionHandle,
      strSessionKey,
    );

late final _RmJoinSession = _rstrtmgr.lookupFunction<
    Uint32 Function(
  Pointer<Uint32> pSessionHandle,
  Pointer<Utf16> strSessionKey,
),
    int Function(
  Pointer<Uint32> pSessionHandle,
  Pointer<Utf16> strSessionKey,
)>('RmJoinSession');

int RmRegisterResources(
  int dwSessionHandle,
  int nFiles,
  Pointer<Pointer<Utf16>> rgsFileNames,
  int nApplications,
  Pointer<RM_UNIQUE_PROCESS> rgApplications,
  int nServices,
  Pointer<Pointer<Utf16>> rgsServiceNames,
) =>
    _RmRegisterResources(
      dwSessionHandle,
      nFiles,
      rgsFileNames,
      nApplications,
      rgApplications,
      nServices,
      rgsServiceNames,
    );

late final _RmRegisterResources = _rstrtmgr.lookupFunction<
    Uint32 Function(
  Uint32 dwSessionHandle,
  Uint32 nFiles,
  Pointer<Pointer<Utf16>> rgsFileNames,
  Uint32 nApplications,
  Pointer<RM_UNIQUE_PROCESS> rgApplications,
  Uint32 nServices,
  Pointer<Pointer<Utf16>> rgsServiceNames,
),
    int Function(
  int dwSessionHandle,
  int nFiles,
  Pointer<Pointer<Utf16>> rgsFileNames,
  int nApplications,
  Pointer<RM_UNIQUE_PROCESS> rgApplications,
  int nServices,
  Pointer<Pointer<Utf16>> rgsServiceNames,
)>('RmRegisterResources');

int RmRemoveFilter(
  int dwSessionHandle,
  Pointer<Utf16> strModuleName,
  Pointer<RM_UNIQUE_PROCESS> pProcess,
  Pointer<Utf16> strServiceShortName,
) =>
    _RmRemoveFilter(
      dwSessionHandle,
      strModuleName,
      pProcess,
      strServiceShortName,
    );

late final _RmRemoveFilter = _rstrtmgr.lookupFunction<
    Uint32 Function(
  Uint32 dwSessionHandle,
  Pointer<Utf16> strModuleName,
  Pointer<RM_UNIQUE_PROCESS> pProcess,
  Pointer<Utf16> strServiceShortName,
),
    int Function(
  int dwSessionHandle,
  Pointer<Utf16> strModuleName,
  Pointer<RM_UNIQUE_PROCESS> pProcess,
  Pointer<Utf16> strServiceShortName,
)>('RmRemoveFilter');

int RmRestart(
  int dwSessionHandle,
  int dwRestartFlags,
  Pointer<NativeFunction<RM_WRITE_STATUS_CALLBACK>> fnStatus,
) =>
    _RmRestart(
      dwSessionHandle,
      dwRestartFlags,
      fnStatus,
    );

late final _RmRestart = _rstrtmgr.lookupFunction<
    Uint32 Function(
  Uint32 dwSessionHandle,
  Uint32 dwRestartFlags,
  Pointer<NativeFunction<RM_WRITE_STATUS_CALLBACK>> fnStatus,
),
    int Function(
  int dwSessionHandle,
  int dwRestartFlags,
  Pointer<NativeFunction<RM_WRITE_STATUS_CALLBACK>> fnStatus,
)>('RmRestart');

int RmShutdown(
  int dwSessionHandle,
  int lActionFlags,
  Pointer<NativeFunction<RM_WRITE_STATUS_CALLBACK>> fnStatus,
) =>
    _RmShutdown(
      dwSessionHandle,
      lActionFlags,
      fnStatus,
    );

late final _RmShutdown = _rstrtmgr.lookupFunction<
    Uint32 Function(
  Uint32 dwSessionHandle,
  Uint32 lActionFlags,
  Pointer<NativeFunction<RM_WRITE_STATUS_CALLBACK>> fnStatus,
),
    int Function(
  int dwSessionHandle,
  int lActionFlags,
  Pointer<NativeFunction<RM_WRITE_STATUS_CALLBACK>> fnStatus,
)>('RmShutdown');

int RmStartSession(
  Pointer<Uint32> pSessionHandle,
  int dwSessionFlags,
  Pointer<Utf16> strSessionKey,
) =>
    _RmStartSession(
      pSessionHandle,
      dwSessionFlags,
      strSessionKey,
    );

late final _RmStartSession = _rstrtmgr.lookupFunction<
    Uint32 Function(
  Pointer<Uint32> pSessionHandle,
  Uint32 dwSessionFlags,
  Pointer<Utf16> strSessionKey,
),
    int Function(
  Pointer<Uint32> pSessionHandle,
  int dwSessionFlags,
  Pointer<Utf16> strSessionKey,
)>('RmStartSession');
