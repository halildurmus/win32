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
import '../../networkmanagement/windowsconnectionmanager/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../networkmanagement/windowsconnectionmanager/callbacks.g.dart'; // -----------------------------------------------------------------------

// wcmapi.dll
// -----------------------------------------------------------------------
final _wcmapi = DynamicLibrary.open('wcmapi.dll');

void WcmFreeMemory(
  Pointer pMemory,
) =>
    _WcmFreeMemory(
      pMemory,
    );

late final _WcmFreeMemory = _wcmapi.lookupFunction<
    Void Function(
  Pointer pMemory,
),
    void Function(
  Pointer pMemory,
)>('WcmFreeMemory');

int WcmGetProfileList(
  Pointer pReserved,
  Pointer<Pointer<WCM_PROFILE_INFO_LIST>> ppProfileList,
) =>
    _WcmGetProfileList(
      pReserved,
      ppProfileList,
    );

late final _WcmGetProfileList = _wcmapi.lookupFunction<
    Uint32 Function(
  Pointer pReserved,
  Pointer<Pointer<WCM_PROFILE_INFO_LIST>> ppProfileList,
),
    int Function(
  Pointer pReserved,
  Pointer<Pointer<WCM_PROFILE_INFO_LIST>> ppProfileList,
)>('WcmGetProfileList');

int WcmQueryProperty(
  Pointer<GUID> pInterface,
  Pointer<Utf16> strProfileName,
  int Property,
  Pointer pReserved,
  Pointer<Uint32> pdwDataSize,
  Pointer<Pointer<Uint8>> ppData,
) =>
    _WcmQueryProperty(
      pInterface,
      strProfileName,
      Property,
      pReserved,
      pdwDataSize,
      ppData,
    );

late final _WcmQueryProperty = _wcmapi.lookupFunction<
    Uint32 Function(
  Pointer<GUID> pInterface,
  Pointer<Utf16> strProfileName,
  Int32 Property,
  Pointer pReserved,
  Pointer<Uint32> pdwDataSize,
  Pointer<Pointer<Uint8>> ppData,
),
    int Function(
  Pointer<GUID> pInterface,
  Pointer<Utf16> strProfileName,
  int Property,
  Pointer pReserved,
  Pointer<Uint32> pdwDataSize,
  Pointer<Pointer<Uint8>> ppData,
)>('WcmQueryProperty');

int WcmSetProfileList(
  Pointer<WCM_PROFILE_INFO_LIST> pProfileList,
  int dwPosition,
  int fIgnoreUnknownProfiles,
  Pointer pReserved,
) =>
    _WcmSetProfileList(
      pProfileList,
      dwPosition,
      fIgnoreUnknownProfiles,
      pReserved,
    );

late final _WcmSetProfileList = _wcmapi.lookupFunction<
    Uint32 Function(
  Pointer<WCM_PROFILE_INFO_LIST> pProfileList,
  Uint32 dwPosition,
  Int32 fIgnoreUnknownProfiles,
  Pointer pReserved,
),
    int Function(
  Pointer<WCM_PROFILE_INFO_LIST> pProfileList,
  int dwPosition,
  int fIgnoreUnknownProfiles,
  Pointer pReserved,
)>('WcmSetProfileList');

int WcmSetProperty(
  Pointer<GUID> pInterface,
  Pointer<Utf16> strProfileName,
  int Property,
  Pointer pReserved,
  int dwDataSize,
  Pointer<Uint8> pbData,
) =>
    _WcmSetProperty(
      pInterface,
      strProfileName,
      Property,
      pReserved,
      dwDataSize,
      pbData,
    );

late final _WcmSetProperty = _wcmapi.lookupFunction<
    Uint32 Function(
  Pointer<GUID> pInterface,
  Pointer<Utf16> strProfileName,
  Int32 Property,
  Pointer pReserved,
  Uint32 dwDataSize,
  Pointer<Uint8> pbData,
),
    int Function(
  Pointer<GUID> pInterface,
  Pointer<Utf16> strProfileName,
  int Property,
  Pointer pReserved,
  int dwDataSize,
  Pointer<Uint8> pbData,
)>('WcmSetProperty');

// -----------------------------------------------------------------------
// ondemandconnroutehelper.dll
// -----------------------------------------------------------------------
final _ondemandconnroutehelper =
    DynamicLibrary.open('ondemandconnroutehelper.dll');

void FreeInterfaceContextTable(
  Pointer<NET_INTERFACE_CONTEXT_TABLE> InterfaceContextTable,
) =>
    _FreeInterfaceContextTable(
      InterfaceContextTable,
    );

late final _FreeInterfaceContextTable = _ondemandconnroutehelper.lookupFunction<
    Void Function(
  Pointer<NET_INTERFACE_CONTEXT_TABLE> InterfaceContextTable,
),
    void Function(
  Pointer<NET_INTERFACE_CONTEXT_TABLE> InterfaceContextTable,
)>('FreeInterfaceContextTable');

int GetInterfaceContextTableForHostName(
  Pointer<Utf16> HostName,
  Pointer<Utf16> ProxyName,
  int Flags,
  Pointer<Uint8> ConnectionProfileFilterRawData,
  int ConnectionProfileFilterRawDataSize,
  Pointer<Pointer<NET_INTERFACE_CONTEXT_TABLE>> InterfaceContextTable,
) =>
    _GetInterfaceContextTableForHostName(
      HostName,
      ProxyName,
      Flags,
      ConnectionProfileFilterRawData,
      ConnectionProfileFilterRawDataSize,
      InterfaceContextTable,
    );

late final _GetInterfaceContextTableForHostName =
    _ondemandconnroutehelper.lookupFunction<
        Int32 Function(
  Pointer<Utf16> HostName,
  Pointer<Utf16> ProxyName,
  Uint32 Flags,
  Pointer<Uint8> ConnectionProfileFilterRawData,
  Uint32 ConnectionProfileFilterRawDataSize,
  Pointer<Pointer<NET_INTERFACE_CONTEXT_TABLE>> InterfaceContextTable,
),
        int Function(
  Pointer<Utf16> HostName,
  Pointer<Utf16> ProxyName,
  int Flags,
  Pointer<Uint8> ConnectionProfileFilterRawData,
  int ConnectionProfileFilterRawDataSize,
  Pointer<Pointer<NET_INTERFACE_CONTEXT_TABLE>> InterfaceContextTable,
)>('GetInterfaceContextTableForHostName');

int OnDemandGetRoutingHint(
  Pointer<Utf16> destinationHostName,
  Pointer<Uint32> interfaceIndex,
) =>
    _OnDemandGetRoutingHint(
      destinationHostName,
      interfaceIndex,
    );

late final _OnDemandGetRoutingHint = _ondemandconnroutehelper.lookupFunction<
    Int32 Function(
  Pointer<Utf16> destinationHostName,
  Pointer<Uint32> interfaceIndex,
),
    int Function(
  Pointer<Utf16> destinationHostName,
  Pointer<Uint32> interfaceIndex,
)>('OnDemandGetRoutingHint');

int OnDemandRegisterNotification(
  Pointer<NativeFunction<ONDEMAND_NOTIFICATION_CALLBACK>> callback,
  Pointer callbackContext,
  Pointer<IntPtr> registrationHandle,
) =>
    _OnDemandRegisterNotification(
      callback,
      callbackContext,
      registrationHandle,
    );

late final _OnDemandRegisterNotification =
    _ondemandconnroutehelper.lookupFunction<
        Int32 Function(
  Pointer<NativeFunction<ONDEMAND_NOTIFICATION_CALLBACK>> callback,
  Pointer callbackContext,
  Pointer<IntPtr> registrationHandle,
),
        int Function(
  Pointer<NativeFunction<ONDEMAND_NOTIFICATION_CALLBACK>> callback,
  Pointer callbackContext,
  Pointer<IntPtr> registrationHandle,
)>('OnDemandRegisterNotification');

int OnDemandUnRegisterNotification(
  int registrationHandle,
) =>
    _OnDemandUnRegisterNotification(
      registrationHandle,
    );

late final _OnDemandUnRegisterNotification =
    _ondemandconnroutehelper.lookupFunction<
        Int32 Function(
  IntPtr registrationHandle,
),
        int Function(
  int registrationHandle,
)>('OnDemandUnRegisterNotification');
