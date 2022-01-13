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
import '../../system/services/structs.g.dart';
import '../../system/services/callbacks.g.dart';

/// {@category Struct}
class ENUM_SERVICE_STATUS extends Struct {
  external Pointer<Utf16> lpServiceName;

  external Pointer<Utf16> lpDisplayName;

  external SERVICE_STATUS ServiceStatus;
}

/// {@category Struct}
class ENUM_SERVICE_STATUS_PROCESS extends Struct {
  external Pointer<Utf16> lpServiceName;

  external Pointer<Utf16> lpDisplayName;

  external SERVICE_STATUS_PROCESS ServiceStatusProcess;
}

/// {@category Struct}
class QUERY_SERVICE_CONFIG extends Struct {
  @Uint32()
  external int dwServiceType;

  @Uint32()
  external int dwStartType;

  @Uint32()
  external int dwErrorControl;

  external Pointer<Utf16> lpBinaryPathName;

  external Pointer<Utf16> lpLoadOrderGroup;

  @Uint32()
  external int dwTagId;

  external Pointer<Utf16> lpDependencies;

  external Pointer<Utf16> lpServiceStartName;

  external Pointer<Utf16> lpDisplayName;
}

/// {@category Struct}
class QUERY_SERVICE_LOCK_STATUS extends Struct {
  @Uint32()
  external int fIsLocked;

  external Pointer<Utf16> lpLockOwner;

  @Uint32()
  external int dwLockDuration;
}

/// {@category Struct}
class SC_ACTION extends Struct {
  @Int32()
  external int Type;

  @Uint32()
  external int Delay;
}

/// {@category Struct}
class SERVICE_CONTROL_STATUS_REASON_PARAMS extends Struct {
  @Uint32()
  external int dwReason;

  external Pointer<Utf16> pszComment;

  external SERVICE_STATUS_PROCESS ServiceStatus;
}

/// {@category Struct}
class SERVICE_CUSTOM_SYSTEM_STATE_CHANGE_DATA_ITEM extends Struct {
  external _SERVICE_CUSTOM_SYSTEM_STATE_CHANGE_DATA_ITEM__u_e__Union u;
}

/// {@category Struct}
class _SERVICE_CUSTOM_SYSTEM_STATE_CHANGE_DATA_ITEM__u_e__Union extends Union {
  external SERVICE_TRIGGER_CUSTOM_STATE_ID CustomStateId;

  external _SERVICE_CUSTOM_SYSTEM_STATE_CHANGE_DATA_ITEM__u_e__Union__s_e__Struct
      s;
}

/// {@category Struct}
class _SERVICE_CUSTOM_SYSTEM_STATE_CHANGE_DATA_ITEM__u_e__Union__s_e__Struct
    extends Struct {
  @Uint32()
  external int DataOffset;

  @Array(1)
  external Array<Uint8> Data;
}

extension SERVICE_CUSTOM_SYSTEM_STATE_CHANGE_DATA_ITEM__u_e__Union_Extension
    on SERVICE_CUSTOM_SYSTEM_STATE_CHANGE_DATA_ITEM {
  int get DataOffset => this.u.s.DataOffset;
  set DataOffset(int value) => this.u.s.DataOffset = value;

  Array<Uint8> get Data => this.u.s.Data;
  set Data(Array<Uint8> value) => this.u.s.Data = value;
}

extension SERVICE_CUSTOM_SYSTEM_STATE_CHANGE_DATA_ITEM_Extension
    on SERVICE_CUSTOM_SYSTEM_STATE_CHANGE_DATA_ITEM {
  SERVICE_TRIGGER_CUSTOM_STATE_ID get CustomStateId => this.u.CustomStateId;
  set CustomStateId(SERVICE_TRIGGER_CUSTOM_STATE_ID value) =>
      this.u.CustomStateId = value;

  _SERVICE_CUSTOM_SYSTEM_STATE_CHANGE_DATA_ITEM__u_e__Union__s_e__Struct
      get s => this.u.s;
  set s(
          _SERVICE_CUSTOM_SYSTEM_STATE_CHANGE_DATA_ITEM__u_e__Union__s_e__Struct
              value) =>
      this.u.s = value;
}

/// {@category Struct}
class SERVICE_DELAYED_AUTO_START_INFO extends Struct {
  @Int32()
  external int fDelayedAutostart;
}

/// {@category Struct}
class SERVICE_DESCRIPTION extends Struct {
  external Pointer<Utf16> lpDescription;
}

/// {@category Struct}
class SERVICE_FAILURE_ACTIONS extends Struct {
  @Uint32()
  external int dwResetPeriod;

  external Pointer<Utf16> lpRebootMsg;

  external Pointer<Utf16> lpCommand;

  @Uint32()
  external int cActions;

  external Pointer<SC_ACTION> lpsaActions;
}

/// {@category Struct}
class SERVICE_FAILURE_ACTIONS_FLAG extends Struct {
  @Int32()
  external int fFailureActionsOnNonCrashFailures;
}

/// {@category Struct}
class SERVICE_LAUNCH_PROTECTED_INFO extends Struct {
  @Uint32()
  external int dwLaunchProtected;
}

/// {@category Struct}
class SERVICE_NOTIFY_1 extends Struct {
  @Uint32()
  external int dwVersion;

  external Pointer<NativeFunction<PFN_SC_NOTIFY_CALLBACK>> pfnNotifyCallback;

  external Pointer pContext;

  @Uint32()
  external int dwNotificationStatus;

  external SERVICE_STATUS_PROCESS ServiceStatus;
}

/// {@category Struct}
class SERVICE_NOTIFY_2 extends Struct {
  @Uint32()
  external int dwVersion;

  external Pointer<NativeFunction<PFN_SC_NOTIFY_CALLBACK>> pfnNotifyCallback;

  external Pointer pContext;

  @Uint32()
  external int dwNotificationStatus;

  external SERVICE_STATUS_PROCESS ServiceStatus;

  @Uint32()
  external int dwNotificationTriggered;

  external Pointer<Utf16> pszServiceNames;
}

/// {@category Struct}
class SERVICE_PREFERRED_NODE_INFO extends Struct {
  @Uint16()
  external int usPreferredNode;

  @Uint8()
  external int fDelete;
}

/// {@category Struct}
class SERVICE_PRESHUTDOWN_INFO extends Struct {
  @Uint32()
  external int dwPreshutdownTimeout;
}

/// {@category Struct}
class SERVICE_REQUIRED_PRIVILEGES_INFO extends Struct {
  external Pointer<Utf16> pmszRequiredPrivileges;
}

/// {@category Struct}
class SERVICE_SID_INFO extends Struct {
  @Uint32()
  external int dwServiceSidType;
}

/// {@category Struct}
class SERVICE_START_REASON extends Struct {
  @Uint32()
  external int dwReason;
}

/// {@category Struct}
class SERVICE_STATUS extends Struct {
  @Uint32()
  external int dwServiceType;

  @Uint32()
  external int dwCurrentState;

  @Uint32()
  external int dwControlsAccepted;

  @Uint32()
  external int dwWin32ExitCode;

  @Uint32()
  external int dwServiceSpecificExitCode;

  @Uint32()
  external int dwCheckPoint;

  @Uint32()
  external int dwWaitHint;
}

/// {@category Struct}
class SERVICE_STATUS_PROCESS extends Struct {
  @Uint32()
  external int dwServiceType;

  @Uint32()
  external int dwCurrentState;

  @Uint32()
  external int dwControlsAccepted;

  @Uint32()
  external int dwWin32ExitCode;

  @Uint32()
  external int dwServiceSpecificExitCode;

  @Uint32()
  external int dwCheckPoint;

  @Uint32()
  external int dwWaitHint;

  @Uint32()
  external int dwProcessId;

  @Uint32()
  external int dwServiceFlags;
}

/// {@category Struct}
class SERVICE_TABLE_ENTRY extends Struct {
  external Pointer<Utf16> lpServiceName;

  external Pointer<NativeFunction<LPSERVICE_MAIN_FUNCTIONW>> lpServiceProc;
}

/// {@category Struct}
class SERVICE_TIMECHANGE_INFO extends Struct {
  @Int64()
  external int liNewTime;

  @Int64()
  external int liOldTime;
}

/// {@category Struct}
class SERVICE_TRIGGER extends Struct {
  @Uint32()
  external int dwTriggerType;

  @Uint32()
  external int dwAction;

  external Pointer<GUID> pTriggerSubtype;

  @Uint32()
  external int cDataItems;

  external Pointer<SERVICE_TRIGGER_SPECIFIC_DATA_ITEM> pDataItems;
}

/// {@category Struct}
class SERVICE_TRIGGER_CUSTOM_STATE_ID extends Struct {
  @Array(2)
  external Array<Uint32> Data;
}

/// {@category Struct}
class SERVICE_TRIGGER_INFO extends Struct {
  @Uint32()
  external int cTriggers;

  external Pointer<SERVICE_TRIGGER> pTriggers;

  external Pointer<Uint8> pReserved;
}

/// {@category Struct}
class SERVICE_TRIGGER_SPECIFIC_DATA_ITEM extends Struct {
  @Uint32()
  external int dwDataType;

  @Uint32()
  external int cbData;

  external Pointer<Uint8> pData;
}

/// {@category Struct}
class SC_NOTIFICATION_REGISTRATION extends Opaque {}
