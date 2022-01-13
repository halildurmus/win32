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
import '../../networkmanagement/windowsfirewall/structs.g.dart';
import '../../security/structs.g.dart';
import '../../networkmanagement/windowsfirewall/callbacks.g.dart'; // -----------------------------------------------------------------------

// api-ms-win-net-isolation-l1-1-0.dll
// -----------------------------------------------------------------------
final _api_ms_win_net_isolation_l1_1_0 =
    DynamicLibrary.open('api-ms-win-net-isolation-l1-1-0.dll');

int NetworkIsolationDiagnoseConnectFailureAndGetInfo(
  Pointer<Utf16> wszServerName,
  Pointer<Int32> netIsoError,
) =>
    _NetworkIsolationDiagnoseConnectFailureAndGetInfo(
      wszServerName,
      netIsoError,
    );

late final _NetworkIsolationDiagnoseConnectFailureAndGetInfo =
    _api_ms_win_net_isolation_l1_1_0.lookupFunction<
        Uint32 Function(
  Pointer<Utf16> wszServerName,
  Pointer<Int32> netIsoError,
),
        int Function(
  Pointer<Utf16> wszServerName,
  Pointer<Int32> netIsoError,
)>('NetworkIsolationDiagnoseConnectFailureAndGetInfo');

int NetworkIsolationEnumAppContainers(
  int Flags,
  Pointer<Uint32> pdwNumPublicAppCs,
  Pointer<Pointer<INET_FIREWALL_APP_CONTAINER>> ppPublicAppCs,
) =>
    _NetworkIsolationEnumAppContainers(
      Flags,
      pdwNumPublicAppCs,
      ppPublicAppCs,
    );

late final _NetworkIsolationEnumAppContainers =
    _api_ms_win_net_isolation_l1_1_0.lookupFunction<
        Uint32 Function(
  Uint32 Flags,
  Pointer<Uint32> pdwNumPublicAppCs,
  Pointer<Pointer<INET_FIREWALL_APP_CONTAINER>> ppPublicAppCs,
),
        int Function(
  int Flags,
  Pointer<Uint32> pdwNumPublicAppCs,
  Pointer<Pointer<INET_FIREWALL_APP_CONTAINER>> ppPublicAppCs,
)>('NetworkIsolationEnumAppContainers');

int NetworkIsolationFreeAppContainers(
  Pointer<INET_FIREWALL_APP_CONTAINER> pPublicAppCs,
) =>
    _NetworkIsolationFreeAppContainers(
      pPublicAppCs,
    );

late final _NetworkIsolationFreeAppContainers =
    _api_ms_win_net_isolation_l1_1_0.lookupFunction<
        Uint32 Function(
  Pointer<INET_FIREWALL_APP_CONTAINER> pPublicAppCs,
),
        int Function(
  Pointer<INET_FIREWALL_APP_CONTAINER> pPublicAppCs,
)>('NetworkIsolationFreeAppContainers');

int NetworkIsolationGetAppContainerConfig(
  Pointer<Uint32> pdwNumPublicAppCs,
  Pointer<Pointer<SID_AND_ATTRIBUTES>> appContainerSids,
) =>
    _NetworkIsolationGetAppContainerConfig(
      pdwNumPublicAppCs,
      appContainerSids,
    );

late final _NetworkIsolationGetAppContainerConfig =
    _api_ms_win_net_isolation_l1_1_0.lookupFunction<
        Uint32 Function(
  Pointer<Uint32> pdwNumPublicAppCs,
  Pointer<Pointer<SID_AND_ATTRIBUTES>> appContainerSids,
),
        int Function(
  Pointer<Uint32> pdwNumPublicAppCs,
  Pointer<Pointer<SID_AND_ATTRIBUTES>> appContainerSids,
)>('NetworkIsolationGetAppContainerConfig');

int NetworkIsolationRegisterForAppContainerChanges(
  int flags,
  Pointer<NativeFunction<PAC_CHANGES_CALLBACK_FN>> callback,
  Pointer context,
  Pointer<IntPtr> registrationObject,
) =>
    _NetworkIsolationRegisterForAppContainerChanges(
      flags,
      callback,
      context,
      registrationObject,
    );

late final _NetworkIsolationRegisterForAppContainerChanges =
    _api_ms_win_net_isolation_l1_1_0.lookupFunction<
        Uint32 Function(
  Uint32 flags,
  Pointer<NativeFunction<PAC_CHANGES_CALLBACK_FN>> callback,
  Pointer context,
  Pointer<IntPtr> registrationObject,
),
        int Function(
  int flags,
  Pointer<NativeFunction<PAC_CHANGES_CALLBACK_FN>> callback,
  Pointer context,
  Pointer<IntPtr> registrationObject,
)>('NetworkIsolationRegisterForAppContainerChanges');

int NetworkIsolationSetAppContainerConfig(
  int dwNumPublicAppCs,
  Pointer<SID_AND_ATTRIBUTES> appContainerSids,
) =>
    _NetworkIsolationSetAppContainerConfig(
      dwNumPublicAppCs,
      appContainerSids,
    );

late final _NetworkIsolationSetAppContainerConfig =
    _api_ms_win_net_isolation_l1_1_0.lookupFunction<
        Uint32 Function(
  Uint32 dwNumPublicAppCs,
  Pointer<SID_AND_ATTRIBUTES> appContainerSids,
),
        int Function(
  int dwNumPublicAppCs,
  Pointer<SID_AND_ATTRIBUTES> appContainerSids,
)>('NetworkIsolationSetAppContainerConfig');

int NetworkIsolationSetupAppContainerBinaries(
  int applicationContainerSid,
  Pointer<Utf16> packageFullName,
  Pointer<Utf16> packageFolder,
  Pointer<Utf16> displayName,
  int bBinariesFullyComputed,
  Pointer<Pointer<Utf16>> binaries,
  int binariesCount,
) =>
    _NetworkIsolationSetupAppContainerBinaries(
      applicationContainerSid,
      packageFullName,
      packageFolder,
      displayName,
      bBinariesFullyComputed,
      binaries,
      binariesCount,
    );

late final _NetworkIsolationSetupAppContainerBinaries =
    _api_ms_win_net_isolation_l1_1_0.lookupFunction<
        Int32 Function(
  IntPtr applicationContainerSid,
  Pointer<Utf16> packageFullName,
  Pointer<Utf16> packageFolder,
  Pointer<Utf16> displayName,
  Int32 bBinariesFullyComputed,
  Pointer<Pointer<Utf16>> binaries,
  Uint32 binariesCount,
),
        int Function(
  int applicationContainerSid,
  Pointer<Utf16> packageFullName,
  Pointer<Utf16> packageFolder,
  Pointer<Utf16> displayName,
  int bBinariesFullyComputed,
  Pointer<Pointer<Utf16>> binaries,
  int binariesCount,
)>('NetworkIsolationSetupAppContainerBinaries');

int NetworkIsolationUnregisterForAppContainerChanges(
  int registrationObject,
) =>
    _NetworkIsolationUnregisterForAppContainerChanges(
      registrationObject,
    );

late final _NetworkIsolationUnregisterForAppContainerChanges =
    _api_ms_win_net_isolation_l1_1_0.lookupFunction<
        Uint32 Function(
  IntPtr registrationObject,
),
        int Function(
  int registrationObject,
)>('NetworkIsolationUnregisterForAppContainerChanges');
