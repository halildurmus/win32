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
import '../../networkmanagement/wifi/callbacks.g.dart';
import '../../networkmanagement/wifi/structs.g.dart';
import '../../security/extensibleauthenticationprotocol/structs.g.dart'; // -----------------------------------------------------------------------

// wlanapi.dll
// -----------------------------------------------------------------------
final _wlanapi = DynamicLibrary.open('wlanapi.dll');

int WFDCancelOpenSession(
  int hSessionHandle,
) =>
    _WFDCancelOpenSession(
      hSessionHandle,
    );

late final _WFDCancelOpenSession = _wlanapi.lookupFunction<
    Uint32 Function(
  IntPtr hSessionHandle,
),
    int Function(
  int hSessionHandle,
)>('WFDCancelOpenSession');

int WFDCloseHandle(
  int hClientHandle,
) =>
    _WFDCloseHandle(
      hClientHandle,
    );

late final _WFDCloseHandle = _wlanapi.lookupFunction<
    Uint32 Function(
  IntPtr hClientHandle,
),
    int Function(
  int hClientHandle,
)>('WFDCloseHandle');

int WFDCloseSession(
  int hSessionHandle,
) =>
    _WFDCloseSession(
      hSessionHandle,
    );

late final _WFDCloseSession = _wlanapi.lookupFunction<
    Uint32 Function(
  IntPtr hSessionHandle,
),
    int Function(
  int hSessionHandle,
)>('WFDCloseSession');

int WFDOpenHandle(
  int dwClientVersion,
  Pointer<Uint32> pdwNegotiatedVersion,
  Pointer<IntPtr> phClientHandle,
) =>
    _WFDOpenHandle(
      dwClientVersion,
      pdwNegotiatedVersion,
      phClientHandle,
    );

late final _WFDOpenHandle = _wlanapi.lookupFunction<
    Uint32 Function(
  Uint32 dwClientVersion,
  Pointer<Uint32> pdwNegotiatedVersion,
  Pointer<IntPtr> phClientHandle,
),
    int Function(
  int dwClientVersion,
  Pointer<Uint32> pdwNegotiatedVersion,
  Pointer<IntPtr> phClientHandle,
)>('WFDOpenHandle');

int WFDOpenLegacySession(
  int hClientHandle,
  Pointer<Pointer<Uint8>> pLegacyMacAddress,
  Pointer<IntPtr> phSessionHandle,
  Pointer<GUID> pGuidSessionInterface,
) =>
    _WFDOpenLegacySession(
      hClientHandle,
      pLegacyMacAddress,
      phSessionHandle,
      pGuidSessionInterface,
    );

late final _WFDOpenLegacySession = _wlanapi.lookupFunction<
    Uint32 Function(
  IntPtr hClientHandle,
  Pointer<Pointer<Uint8>> pLegacyMacAddress,
  Pointer<IntPtr> phSessionHandle,
  Pointer<GUID> pGuidSessionInterface,
),
    int Function(
  int hClientHandle,
  Pointer<Pointer<Uint8>> pLegacyMacAddress,
  Pointer<IntPtr> phSessionHandle,
  Pointer<GUID> pGuidSessionInterface,
)>('WFDOpenLegacySession');

int WFDStartOpenSession(
  int hClientHandle,
  Pointer<Pointer<Uint8>> pDeviceAddress,
  Pointer pvContext,
  Pointer<NativeFunction<WFD_OPEN_SESSION_COMPLETE_CALLBACK>> pfnCallback,
  Pointer<IntPtr> phSessionHandle,
) =>
    _WFDStartOpenSession(
      hClientHandle,
      pDeviceAddress,
      pvContext,
      pfnCallback,
      phSessionHandle,
    );

late final _WFDStartOpenSession = _wlanapi.lookupFunction<
    Uint32 Function(
  IntPtr hClientHandle,
  Pointer<Pointer<Uint8>> pDeviceAddress,
  Pointer pvContext,
  Pointer<NativeFunction<WFD_OPEN_SESSION_COMPLETE_CALLBACK>> pfnCallback,
  Pointer<IntPtr> phSessionHandle,
),
    int Function(
  int hClientHandle,
  Pointer<Pointer<Uint8>> pDeviceAddress,
  Pointer pvContext,
  Pointer<NativeFunction<WFD_OPEN_SESSION_COMPLETE_CALLBACK>> pfnCallback,
  Pointer<IntPtr> phSessionHandle,
)>('WFDStartOpenSession');

int WFDUpdateDeviceVisibility(
  Pointer<Pointer<Uint8>> pDeviceAddress,
) =>
    _WFDUpdateDeviceVisibility(
      pDeviceAddress,
    );

late final _WFDUpdateDeviceVisibility = _wlanapi.lookupFunction<
    Uint32 Function(
  Pointer<Pointer<Uint8>> pDeviceAddress,
),
    int Function(
  Pointer<Pointer<Uint8>> pDeviceAddress,
)>('WFDUpdateDeviceVisibility');

Pointer WlanAllocateMemory(
  int dwMemorySize,
) =>
    _WlanAllocateMemory(
      dwMemorySize,
    );

late final _WlanAllocateMemory = _wlanapi.lookupFunction<
    Pointer Function(
  Uint32 dwMemorySize,
),
    Pointer Function(
  int dwMemorySize,
)>('WlanAllocateMemory');

int WlanCloseHandle(
  int hClientHandle,
  Pointer pReserved,
) =>
    _WlanCloseHandle(
      hClientHandle,
      pReserved,
    );

late final _WlanCloseHandle = _wlanapi.lookupFunction<
    Uint32 Function(
  IntPtr hClientHandle,
  Pointer pReserved,
),
    int Function(
  int hClientHandle,
  Pointer pReserved,
)>('WlanCloseHandle');

int WlanConnect(
  int hClientHandle,
  Pointer<GUID> pInterfaceGuid,
  Pointer<WLAN_CONNECTION_PARAMETERS> pConnectionParameters,
  Pointer pReserved,
) =>
    _WlanConnect(
      hClientHandle,
      pInterfaceGuid,
      pConnectionParameters,
      pReserved,
    );

late final _WlanConnect = _wlanapi.lookupFunction<
    Uint32 Function(
  IntPtr hClientHandle,
  Pointer<GUID> pInterfaceGuid,
  Pointer<WLAN_CONNECTION_PARAMETERS> pConnectionParameters,
  Pointer pReserved,
),
    int Function(
  int hClientHandle,
  Pointer<GUID> pInterfaceGuid,
  Pointer<WLAN_CONNECTION_PARAMETERS> pConnectionParameters,
  Pointer pReserved,
)>('WlanConnect');

int WlanConnect2(
  int hClientHandle,
  Pointer<GUID> pInterfaceGuid,
  Pointer<WLAN_CONNECTION_PARAMETERS_V2> pConnectionParameters,
  Pointer pReserved,
) =>
    _WlanConnect2(
      hClientHandle,
      pInterfaceGuid,
      pConnectionParameters,
      pReserved,
    );

late final _WlanConnect2 = _wlanapi.lookupFunction<
    Uint32 Function(
  IntPtr hClientHandle,
  Pointer<GUID> pInterfaceGuid,
  Pointer<WLAN_CONNECTION_PARAMETERS_V2> pConnectionParameters,
  Pointer pReserved,
),
    int Function(
  int hClientHandle,
  Pointer<GUID> pInterfaceGuid,
  Pointer<WLAN_CONNECTION_PARAMETERS_V2> pConnectionParameters,
  Pointer pReserved,
)>('WlanConnect2');

int WlanDeleteProfile(
  int hClientHandle,
  Pointer<GUID> pInterfaceGuid,
  Pointer<Utf16> strProfileName,
  Pointer pReserved,
) =>
    _WlanDeleteProfile(
      hClientHandle,
      pInterfaceGuid,
      strProfileName,
      pReserved,
    );

late final _WlanDeleteProfile = _wlanapi.lookupFunction<
    Uint32 Function(
  IntPtr hClientHandle,
  Pointer<GUID> pInterfaceGuid,
  Pointer<Utf16> strProfileName,
  Pointer pReserved,
),
    int Function(
  int hClientHandle,
  Pointer<GUID> pInterfaceGuid,
  Pointer<Utf16> strProfileName,
  Pointer pReserved,
)>('WlanDeleteProfile');

int WlanDeviceServiceCommand(
  int hClientHandle,
  Pointer<GUID> pInterfaceGuid,
  Pointer<GUID> pDeviceServiceGuid,
  int dwOpCode,
  int dwInBufferSize,
  Pointer pInBuffer,
  int dwOutBufferSize,
  Pointer pOutBuffer,
  Pointer<Uint32> pdwBytesReturned,
) =>
    _WlanDeviceServiceCommand(
      hClientHandle,
      pInterfaceGuid,
      pDeviceServiceGuid,
      dwOpCode,
      dwInBufferSize,
      pInBuffer,
      dwOutBufferSize,
      pOutBuffer,
      pdwBytesReturned,
    );

late final _WlanDeviceServiceCommand = _wlanapi.lookupFunction<
    Uint32 Function(
  IntPtr hClientHandle,
  Pointer<GUID> pInterfaceGuid,
  Pointer<GUID> pDeviceServiceGuid,
  Uint32 dwOpCode,
  Uint32 dwInBufferSize,
  Pointer pInBuffer,
  Uint32 dwOutBufferSize,
  Pointer pOutBuffer,
  Pointer<Uint32> pdwBytesReturned,
),
    int Function(
  int hClientHandle,
  Pointer<GUID> pInterfaceGuid,
  Pointer<GUID> pDeviceServiceGuid,
  int dwOpCode,
  int dwInBufferSize,
  Pointer pInBuffer,
  int dwOutBufferSize,
  Pointer pOutBuffer,
  Pointer<Uint32> pdwBytesReturned,
)>('WlanDeviceServiceCommand');

int WlanDisconnect(
  int hClientHandle,
  Pointer<GUID> pInterfaceGuid,
  Pointer pReserved,
) =>
    _WlanDisconnect(
      hClientHandle,
      pInterfaceGuid,
      pReserved,
    );

late final _WlanDisconnect = _wlanapi.lookupFunction<
    Uint32 Function(
  IntPtr hClientHandle,
  Pointer<GUID> pInterfaceGuid,
  Pointer pReserved,
),
    int Function(
  int hClientHandle,
  Pointer<GUID> pInterfaceGuid,
  Pointer pReserved,
)>('WlanDisconnect');

int WlanEnumInterfaces(
  int hClientHandle,
  Pointer pReserved,
  Pointer<Pointer<WLAN_INTERFACE_INFO_LIST>> ppInterfaceList,
) =>
    _WlanEnumInterfaces(
      hClientHandle,
      pReserved,
      ppInterfaceList,
    );

late final _WlanEnumInterfaces = _wlanapi.lookupFunction<
    Uint32 Function(
  IntPtr hClientHandle,
  Pointer pReserved,
  Pointer<Pointer<WLAN_INTERFACE_INFO_LIST>> ppInterfaceList,
),
    int Function(
  int hClientHandle,
  Pointer pReserved,
  Pointer<Pointer<WLAN_INTERFACE_INFO_LIST>> ppInterfaceList,
)>('WlanEnumInterfaces');

int WlanExtractPsdIEDataList(
  int hClientHandle,
  int dwIeDataSize,
  Pointer<Uint8> pRawIeData,
  Pointer<Utf16> strFormat,
  Pointer pReserved,
  Pointer<Pointer<WLAN_RAW_DATA_LIST>> ppPsdIEDataList,
) =>
    _WlanExtractPsdIEDataList(
      hClientHandle,
      dwIeDataSize,
      pRawIeData,
      strFormat,
      pReserved,
      ppPsdIEDataList,
    );

late final _WlanExtractPsdIEDataList = _wlanapi.lookupFunction<
    Uint32 Function(
  IntPtr hClientHandle,
  Uint32 dwIeDataSize,
  Pointer<Uint8> pRawIeData,
  Pointer<Utf16> strFormat,
  Pointer pReserved,
  Pointer<Pointer<WLAN_RAW_DATA_LIST>> ppPsdIEDataList,
),
    int Function(
  int hClientHandle,
  int dwIeDataSize,
  Pointer<Uint8> pRawIeData,
  Pointer<Utf16> strFormat,
  Pointer pReserved,
  Pointer<Pointer<WLAN_RAW_DATA_LIST>> ppPsdIEDataList,
)>('WlanExtractPsdIEDataList');

void WlanFreeMemory(
  Pointer pMemory,
) =>
    _WlanFreeMemory(
      pMemory,
    );

late final _WlanFreeMemory = _wlanapi.lookupFunction<
    Void Function(
  Pointer pMemory,
),
    void Function(
  Pointer pMemory,
)>('WlanFreeMemory');

int WlanGetAvailableNetworkList(
  int hClientHandle,
  Pointer<GUID> pInterfaceGuid,
  int dwFlags,
  Pointer pReserved,
  Pointer<Pointer<WLAN_AVAILABLE_NETWORK_LIST>> ppAvailableNetworkList,
) =>
    _WlanGetAvailableNetworkList(
      hClientHandle,
      pInterfaceGuid,
      dwFlags,
      pReserved,
      ppAvailableNetworkList,
    );

late final _WlanGetAvailableNetworkList = _wlanapi.lookupFunction<
    Uint32 Function(
  IntPtr hClientHandle,
  Pointer<GUID> pInterfaceGuid,
  Uint32 dwFlags,
  Pointer pReserved,
  Pointer<Pointer<WLAN_AVAILABLE_NETWORK_LIST>> ppAvailableNetworkList,
),
    int Function(
  int hClientHandle,
  Pointer<GUID> pInterfaceGuid,
  int dwFlags,
  Pointer pReserved,
  Pointer<Pointer<WLAN_AVAILABLE_NETWORK_LIST>> ppAvailableNetworkList,
)>('WlanGetAvailableNetworkList');

int WlanGetAvailableNetworkList2(
  int hClientHandle,
  Pointer<GUID> pInterfaceGuid,
  int dwFlags,
  Pointer pReserved,
  Pointer<Pointer<WLAN_AVAILABLE_NETWORK_LIST_V2>> ppAvailableNetworkList,
) =>
    _WlanGetAvailableNetworkList2(
      hClientHandle,
      pInterfaceGuid,
      dwFlags,
      pReserved,
      ppAvailableNetworkList,
    );

late final _WlanGetAvailableNetworkList2 = _wlanapi.lookupFunction<
    Uint32 Function(
  IntPtr hClientHandle,
  Pointer<GUID> pInterfaceGuid,
  Uint32 dwFlags,
  Pointer pReserved,
  Pointer<Pointer<WLAN_AVAILABLE_NETWORK_LIST_V2>> ppAvailableNetworkList,
),
    int Function(
  int hClientHandle,
  Pointer<GUID> pInterfaceGuid,
  int dwFlags,
  Pointer pReserved,
  Pointer<Pointer<WLAN_AVAILABLE_NETWORK_LIST_V2>> ppAvailableNetworkList,
)>('WlanGetAvailableNetworkList2');

int WlanGetFilterList(
  int hClientHandle,
  int wlanFilterListType,
  Pointer pReserved,
  Pointer<Pointer<DOT11_NETWORK_LIST>> ppNetworkList,
) =>
    _WlanGetFilterList(
      hClientHandle,
      wlanFilterListType,
      pReserved,
      ppNetworkList,
    );

late final _WlanGetFilterList = _wlanapi.lookupFunction<
    Uint32 Function(
  IntPtr hClientHandle,
  Int32 wlanFilterListType,
  Pointer pReserved,
  Pointer<Pointer<DOT11_NETWORK_LIST>> ppNetworkList,
),
    int Function(
  int hClientHandle,
  int wlanFilterListType,
  Pointer pReserved,
  Pointer<Pointer<DOT11_NETWORK_LIST>> ppNetworkList,
)>('WlanGetFilterList');

int WlanGetInterfaceCapability(
  int hClientHandle,
  Pointer<GUID> pInterfaceGuid,
  Pointer pReserved,
  Pointer<Pointer<WLAN_INTERFACE_CAPABILITY>> ppCapability,
) =>
    _WlanGetInterfaceCapability(
      hClientHandle,
      pInterfaceGuid,
      pReserved,
      ppCapability,
    );

late final _WlanGetInterfaceCapability = _wlanapi.lookupFunction<
    Uint32 Function(
  IntPtr hClientHandle,
  Pointer<GUID> pInterfaceGuid,
  Pointer pReserved,
  Pointer<Pointer<WLAN_INTERFACE_CAPABILITY>> ppCapability,
),
    int Function(
  int hClientHandle,
  Pointer<GUID> pInterfaceGuid,
  Pointer pReserved,
  Pointer<Pointer<WLAN_INTERFACE_CAPABILITY>> ppCapability,
)>('WlanGetInterfaceCapability');

int WlanGetNetworkBssList(
  int hClientHandle,
  Pointer<GUID> pInterfaceGuid,
  Pointer<DOT11_SSID> pDot11Ssid,
  int dot11BssType,
  int bSecurityEnabled,
  Pointer pReserved,
  Pointer<Pointer<WLAN_BSS_LIST>> ppWlanBssList,
) =>
    _WlanGetNetworkBssList(
      hClientHandle,
      pInterfaceGuid,
      pDot11Ssid,
      dot11BssType,
      bSecurityEnabled,
      pReserved,
      ppWlanBssList,
    );

late final _WlanGetNetworkBssList = _wlanapi.lookupFunction<
    Uint32 Function(
  IntPtr hClientHandle,
  Pointer<GUID> pInterfaceGuid,
  Pointer<DOT11_SSID> pDot11Ssid,
  Int32 dot11BssType,
  Int32 bSecurityEnabled,
  Pointer pReserved,
  Pointer<Pointer<WLAN_BSS_LIST>> ppWlanBssList,
),
    int Function(
  int hClientHandle,
  Pointer<GUID> pInterfaceGuid,
  Pointer<DOT11_SSID> pDot11Ssid,
  int dot11BssType,
  int bSecurityEnabled,
  Pointer pReserved,
  Pointer<Pointer<WLAN_BSS_LIST>> ppWlanBssList,
)>('WlanGetNetworkBssList');

int WlanGetProfile(
  int hClientHandle,
  Pointer<GUID> pInterfaceGuid,
  Pointer<Utf16> strProfileName,
  Pointer pReserved,
  Pointer<Pointer<Utf16>> pstrProfileXml,
  Pointer<Uint32> pdwFlags,
  Pointer<Uint32> pdwGrantedAccess,
) =>
    _WlanGetProfile(
      hClientHandle,
      pInterfaceGuid,
      strProfileName,
      pReserved,
      pstrProfileXml,
      pdwFlags,
      pdwGrantedAccess,
    );

late final _WlanGetProfile = _wlanapi.lookupFunction<
    Uint32 Function(
  IntPtr hClientHandle,
  Pointer<GUID> pInterfaceGuid,
  Pointer<Utf16> strProfileName,
  Pointer pReserved,
  Pointer<Pointer<Utf16>> pstrProfileXml,
  Pointer<Uint32> pdwFlags,
  Pointer<Uint32> pdwGrantedAccess,
),
    int Function(
  int hClientHandle,
  Pointer<GUID> pInterfaceGuid,
  Pointer<Utf16> strProfileName,
  Pointer pReserved,
  Pointer<Pointer<Utf16>> pstrProfileXml,
  Pointer<Uint32> pdwFlags,
  Pointer<Uint32> pdwGrantedAccess,
)>('WlanGetProfile');

int WlanGetProfileCustomUserData(
  int hClientHandle,
  Pointer<GUID> pInterfaceGuid,
  Pointer<Utf16> strProfileName,
  Pointer pReserved,
  Pointer<Uint32> pdwDataSize,
  Pointer<Pointer<Uint8>> ppData,
) =>
    _WlanGetProfileCustomUserData(
      hClientHandle,
      pInterfaceGuid,
      strProfileName,
      pReserved,
      pdwDataSize,
      ppData,
    );

late final _WlanGetProfileCustomUserData = _wlanapi.lookupFunction<
    Uint32 Function(
  IntPtr hClientHandle,
  Pointer<GUID> pInterfaceGuid,
  Pointer<Utf16> strProfileName,
  Pointer pReserved,
  Pointer<Uint32> pdwDataSize,
  Pointer<Pointer<Uint8>> ppData,
),
    int Function(
  int hClientHandle,
  Pointer<GUID> pInterfaceGuid,
  Pointer<Utf16> strProfileName,
  Pointer pReserved,
  Pointer<Uint32> pdwDataSize,
  Pointer<Pointer<Uint8>> ppData,
)>('WlanGetProfileCustomUserData');

int WlanGetProfileList(
  int hClientHandle,
  Pointer<GUID> pInterfaceGuid,
  Pointer pReserved,
  Pointer<Pointer<WLAN_PROFILE_INFO_LIST>> ppProfileList,
) =>
    _WlanGetProfileList(
      hClientHandle,
      pInterfaceGuid,
      pReserved,
      ppProfileList,
    );

late final _WlanGetProfileList = _wlanapi.lookupFunction<
    Uint32 Function(
  IntPtr hClientHandle,
  Pointer<GUID> pInterfaceGuid,
  Pointer pReserved,
  Pointer<Pointer<WLAN_PROFILE_INFO_LIST>> ppProfileList,
),
    int Function(
  int hClientHandle,
  Pointer<GUID> pInterfaceGuid,
  Pointer pReserved,
  Pointer<Pointer<WLAN_PROFILE_INFO_LIST>> ppProfileList,
)>('WlanGetProfileList');

int WlanGetSecuritySettings(
  int hClientHandle,
  int SecurableObject,
  Pointer<Int32> pValueType,
  Pointer<Pointer<Utf16>> pstrCurrentSDDL,
  Pointer<Uint32> pdwGrantedAccess,
) =>
    _WlanGetSecuritySettings(
      hClientHandle,
      SecurableObject,
      pValueType,
      pstrCurrentSDDL,
      pdwGrantedAccess,
    );

late final _WlanGetSecuritySettings = _wlanapi.lookupFunction<
    Uint32 Function(
  IntPtr hClientHandle,
  Int32 SecurableObject,
  Pointer<Int32> pValueType,
  Pointer<Pointer<Utf16>> pstrCurrentSDDL,
  Pointer<Uint32> pdwGrantedAccess,
),
    int Function(
  int hClientHandle,
  int SecurableObject,
  Pointer<Int32> pValueType,
  Pointer<Pointer<Utf16>> pstrCurrentSDDL,
  Pointer<Uint32> pdwGrantedAccess,
)>('WlanGetSecuritySettings');

int WlanGetSupportedDeviceServices(
  int hClientHandle,
  Pointer<GUID> pInterfaceGuid,
  Pointer<Pointer<WLAN_DEVICE_SERVICE_GUID_LIST>> ppDevSvcGuidList,
) =>
    _WlanGetSupportedDeviceServices(
      hClientHandle,
      pInterfaceGuid,
      ppDevSvcGuidList,
    );

late final _WlanGetSupportedDeviceServices = _wlanapi.lookupFunction<
    Uint32 Function(
  IntPtr hClientHandle,
  Pointer<GUID> pInterfaceGuid,
  Pointer<Pointer<WLAN_DEVICE_SERVICE_GUID_LIST>> ppDevSvcGuidList,
),
    int Function(
  int hClientHandle,
  Pointer<GUID> pInterfaceGuid,
  Pointer<Pointer<WLAN_DEVICE_SERVICE_GUID_LIST>> ppDevSvcGuidList,
)>('WlanGetSupportedDeviceServices');

int WlanHostedNetworkForceStart(
  int hClientHandle,
  Pointer<Int32> pFailReason,
  Pointer pvReserved,
) =>
    _WlanHostedNetworkForceStart(
      hClientHandle,
      pFailReason,
      pvReserved,
    );

late final _WlanHostedNetworkForceStart = _wlanapi.lookupFunction<
    Uint32 Function(
  IntPtr hClientHandle,
  Pointer<Int32> pFailReason,
  Pointer pvReserved,
),
    int Function(
  int hClientHandle,
  Pointer<Int32> pFailReason,
  Pointer pvReserved,
)>('WlanHostedNetworkForceStart');

int WlanHostedNetworkForceStop(
  int hClientHandle,
  Pointer<Int32> pFailReason,
  Pointer pvReserved,
) =>
    _WlanHostedNetworkForceStop(
      hClientHandle,
      pFailReason,
      pvReserved,
    );

late final _WlanHostedNetworkForceStop = _wlanapi.lookupFunction<
    Uint32 Function(
  IntPtr hClientHandle,
  Pointer<Int32> pFailReason,
  Pointer pvReserved,
),
    int Function(
  int hClientHandle,
  Pointer<Int32> pFailReason,
  Pointer pvReserved,
)>('WlanHostedNetworkForceStop');

int WlanHostedNetworkInitSettings(
  int hClientHandle,
  Pointer<Int32> pFailReason,
  Pointer pvReserved,
) =>
    _WlanHostedNetworkInitSettings(
      hClientHandle,
      pFailReason,
      pvReserved,
    );

late final _WlanHostedNetworkInitSettings = _wlanapi.lookupFunction<
    Uint32 Function(
  IntPtr hClientHandle,
  Pointer<Int32> pFailReason,
  Pointer pvReserved,
),
    int Function(
  int hClientHandle,
  Pointer<Int32> pFailReason,
  Pointer pvReserved,
)>('WlanHostedNetworkInitSettings');

int WlanHostedNetworkQueryProperty(
  int hClientHandle,
  int OpCode,
  Pointer<Uint32> pdwDataSize,
  Pointer<Pointer> ppvData,
  Pointer<Int32> pWlanOpcodeValueType,
  Pointer pvReserved,
) =>
    _WlanHostedNetworkQueryProperty(
      hClientHandle,
      OpCode,
      pdwDataSize,
      ppvData,
      pWlanOpcodeValueType,
      pvReserved,
    );

late final _WlanHostedNetworkQueryProperty = _wlanapi.lookupFunction<
    Uint32 Function(
  IntPtr hClientHandle,
  Int32 OpCode,
  Pointer<Uint32> pdwDataSize,
  Pointer<Pointer> ppvData,
  Pointer<Int32> pWlanOpcodeValueType,
  Pointer pvReserved,
),
    int Function(
  int hClientHandle,
  int OpCode,
  Pointer<Uint32> pdwDataSize,
  Pointer<Pointer> ppvData,
  Pointer<Int32> pWlanOpcodeValueType,
  Pointer pvReserved,
)>('WlanHostedNetworkQueryProperty');

int WlanHostedNetworkQuerySecondaryKey(
  int hClientHandle,
  Pointer<Uint32> pdwKeyLength,
  Pointer<Pointer<Uint8>> ppucKeyData,
  Pointer<Int32> pbIsPassPhrase,
  Pointer<Int32> pbPersistent,
  Pointer<Int32> pFailReason,
  Pointer pvReserved,
) =>
    _WlanHostedNetworkQuerySecondaryKey(
      hClientHandle,
      pdwKeyLength,
      ppucKeyData,
      pbIsPassPhrase,
      pbPersistent,
      pFailReason,
      pvReserved,
    );

late final _WlanHostedNetworkQuerySecondaryKey = _wlanapi.lookupFunction<
    Uint32 Function(
  IntPtr hClientHandle,
  Pointer<Uint32> pdwKeyLength,
  Pointer<Pointer<Uint8>> ppucKeyData,
  Pointer<Int32> pbIsPassPhrase,
  Pointer<Int32> pbPersistent,
  Pointer<Int32> pFailReason,
  Pointer pvReserved,
),
    int Function(
  int hClientHandle,
  Pointer<Uint32> pdwKeyLength,
  Pointer<Pointer<Uint8>> ppucKeyData,
  Pointer<Int32> pbIsPassPhrase,
  Pointer<Int32> pbPersistent,
  Pointer<Int32> pFailReason,
  Pointer pvReserved,
)>('WlanHostedNetworkQuerySecondaryKey');

int WlanHostedNetworkQueryStatus(
  int hClientHandle,
  Pointer<Pointer<WLAN_HOSTED_NETWORK_STATUS>> ppWlanHostedNetworkStatus,
  Pointer pvReserved,
) =>
    _WlanHostedNetworkQueryStatus(
      hClientHandle,
      ppWlanHostedNetworkStatus,
      pvReserved,
    );

late final _WlanHostedNetworkQueryStatus = _wlanapi.lookupFunction<
    Uint32 Function(
  IntPtr hClientHandle,
  Pointer<Pointer<WLAN_HOSTED_NETWORK_STATUS>> ppWlanHostedNetworkStatus,
  Pointer pvReserved,
),
    int Function(
  int hClientHandle,
  Pointer<Pointer<WLAN_HOSTED_NETWORK_STATUS>> ppWlanHostedNetworkStatus,
  Pointer pvReserved,
)>('WlanHostedNetworkQueryStatus');

int WlanHostedNetworkRefreshSecuritySettings(
  int hClientHandle,
  Pointer<Int32> pFailReason,
  Pointer pvReserved,
) =>
    _WlanHostedNetworkRefreshSecuritySettings(
      hClientHandle,
      pFailReason,
      pvReserved,
    );

late final _WlanHostedNetworkRefreshSecuritySettings = _wlanapi.lookupFunction<
    Uint32 Function(
  IntPtr hClientHandle,
  Pointer<Int32> pFailReason,
  Pointer pvReserved,
),
    int Function(
  int hClientHandle,
  Pointer<Int32> pFailReason,
  Pointer pvReserved,
)>('WlanHostedNetworkRefreshSecuritySettings');

int WlanHostedNetworkSetProperty(
  int hClientHandle,
  int OpCode,
  int dwDataSize,
  Pointer pvData,
  Pointer<Int32> pFailReason,
  Pointer pvReserved,
) =>
    _WlanHostedNetworkSetProperty(
      hClientHandle,
      OpCode,
      dwDataSize,
      pvData,
      pFailReason,
      pvReserved,
    );

late final _WlanHostedNetworkSetProperty = _wlanapi.lookupFunction<
    Uint32 Function(
  IntPtr hClientHandle,
  Int32 OpCode,
  Uint32 dwDataSize,
  Pointer pvData,
  Pointer<Int32> pFailReason,
  Pointer pvReserved,
),
    int Function(
  int hClientHandle,
  int OpCode,
  int dwDataSize,
  Pointer pvData,
  Pointer<Int32> pFailReason,
  Pointer pvReserved,
)>('WlanHostedNetworkSetProperty');

int WlanHostedNetworkSetSecondaryKey(
  int hClientHandle,
  int dwKeyLength,
  Pointer<Uint8> pucKeyData,
  int bIsPassPhrase,
  int bPersistent,
  Pointer<Int32> pFailReason,
  Pointer pvReserved,
) =>
    _WlanHostedNetworkSetSecondaryKey(
      hClientHandle,
      dwKeyLength,
      pucKeyData,
      bIsPassPhrase,
      bPersistent,
      pFailReason,
      pvReserved,
    );

late final _WlanHostedNetworkSetSecondaryKey = _wlanapi.lookupFunction<
    Uint32 Function(
  IntPtr hClientHandle,
  Uint32 dwKeyLength,
  Pointer<Uint8> pucKeyData,
  Int32 bIsPassPhrase,
  Int32 bPersistent,
  Pointer<Int32> pFailReason,
  Pointer pvReserved,
),
    int Function(
  int hClientHandle,
  int dwKeyLength,
  Pointer<Uint8> pucKeyData,
  int bIsPassPhrase,
  int bPersistent,
  Pointer<Int32> pFailReason,
  Pointer pvReserved,
)>('WlanHostedNetworkSetSecondaryKey');

int WlanHostedNetworkStartUsing(
  int hClientHandle,
  Pointer<Int32> pFailReason,
  Pointer pvReserved,
) =>
    _WlanHostedNetworkStartUsing(
      hClientHandle,
      pFailReason,
      pvReserved,
    );

late final _WlanHostedNetworkStartUsing = _wlanapi.lookupFunction<
    Uint32 Function(
  IntPtr hClientHandle,
  Pointer<Int32> pFailReason,
  Pointer pvReserved,
),
    int Function(
  int hClientHandle,
  Pointer<Int32> pFailReason,
  Pointer pvReserved,
)>('WlanHostedNetworkStartUsing');

int WlanHostedNetworkStopUsing(
  int hClientHandle,
  Pointer<Int32> pFailReason,
  Pointer pvReserved,
) =>
    _WlanHostedNetworkStopUsing(
      hClientHandle,
      pFailReason,
      pvReserved,
    );

late final _WlanHostedNetworkStopUsing = _wlanapi.lookupFunction<
    Uint32 Function(
  IntPtr hClientHandle,
  Pointer<Int32> pFailReason,
  Pointer pvReserved,
),
    int Function(
  int hClientHandle,
  Pointer<Int32> pFailReason,
  Pointer pvReserved,
)>('WlanHostedNetworkStopUsing');

int WlanIhvControl(
  int hClientHandle,
  Pointer<GUID> pInterfaceGuid,
  int Type,
  int dwInBufferSize,
  Pointer pInBuffer,
  int dwOutBufferSize,
  Pointer pOutBuffer,
  Pointer<Uint32> pdwBytesReturned,
) =>
    _WlanIhvControl(
      hClientHandle,
      pInterfaceGuid,
      Type,
      dwInBufferSize,
      pInBuffer,
      dwOutBufferSize,
      pOutBuffer,
      pdwBytesReturned,
    );

late final _WlanIhvControl = _wlanapi.lookupFunction<
    Uint32 Function(
  IntPtr hClientHandle,
  Pointer<GUID> pInterfaceGuid,
  Int32 Type,
  Uint32 dwInBufferSize,
  Pointer pInBuffer,
  Uint32 dwOutBufferSize,
  Pointer pOutBuffer,
  Pointer<Uint32> pdwBytesReturned,
),
    int Function(
  int hClientHandle,
  Pointer<GUID> pInterfaceGuid,
  int Type,
  int dwInBufferSize,
  Pointer pInBuffer,
  int dwOutBufferSize,
  Pointer pOutBuffer,
  Pointer<Uint32> pdwBytesReturned,
)>('WlanIhvControl');

int WlanOpenHandle(
  int dwClientVersion,
  Pointer pReserved,
  Pointer<Uint32> pdwNegotiatedVersion,
  Pointer<IntPtr> phClientHandle,
) =>
    _WlanOpenHandle(
      dwClientVersion,
      pReserved,
      pdwNegotiatedVersion,
      phClientHandle,
    );

late final _WlanOpenHandle = _wlanapi.lookupFunction<
    Uint32 Function(
  Uint32 dwClientVersion,
  Pointer pReserved,
  Pointer<Uint32> pdwNegotiatedVersion,
  Pointer<IntPtr> phClientHandle,
),
    int Function(
  int dwClientVersion,
  Pointer pReserved,
  Pointer<Uint32> pdwNegotiatedVersion,
  Pointer<IntPtr> phClientHandle,
)>('WlanOpenHandle');

int WlanQueryAutoConfigParameter(
  int hClientHandle,
  int OpCode,
  Pointer pReserved,
  Pointer<Uint32> pdwDataSize,
  Pointer<Pointer> ppData,
  Pointer<Int32> pWlanOpcodeValueType,
) =>
    _WlanQueryAutoConfigParameter(
      hClientHandle,
      OpCode,
      pReserved,
      pdwDataSize,
      ppData,
      pWlanOpcodeValueType,
    );

late final _WlanQueryAutoConfigParameter = _wlanapi.lookupFunction<
    Uint32 Function(
  IntPtr hClientHandle,
  Int32 OpCode,
  Pointer pReserved,
  Pointer<Uint32> pdwDataSize,
  Pointer<Pointer> ppData,
  Pointer<Int32> pWlanOpcodeValueType,
),
    int Function(
  int hClientHandle,
  int OpCode,
  Pointer pReserved,
  Pointer<Uint32> pdwDataSize,
  Pointer<Pointer> ppData,
  Pointer<Int32> pWlanOpcodeValueType,
)>('WlanQueryAutoConfigParameter');

int WlanQueryInterface(
  int hClientHandle,
  Pointer<GUID> pInterfaceGuid,
  int OpCode,
  Pointer pReserved,
  Pointer<Uint32> pdwDataSize,
  Pointer<Pointer> ppData,
  Pointer<Int32> pWlanOpcodeValueType,
) =>
    _WlanQueryInterface(
      hClientHandle,
      pInterfaceGuid,
      OpCode,
      pReserved,
      pdwDataSize,
      ppData,
      pWlanOpcodeValueType,
    );

late final _WlanQueryInterface = _wlanapi.lookupFunction<
    Uint32 Function(
  IntPtr hClientHandle,
  Pointer<GUID> pInterfaceGuid,
  Int32 OpCode,
  Pointer pReserved,
  Pointer<Uint32> pdwDataSize,
  Pointer<Pointer> ppData,
  Pointer<Int32> pWlanOpcodeValueType,
),
    int Function(
  int hClientHandle,
  Pointer<GUID> pInterfaceGuid,
  int OpCode,
  Pointer pReserved,
  Pointer<Uint32> pdwDataSize,
  Pointer<Pointer> ppData,
  Pointer<Int32> pWlanOpcodeValueType,
)>('WlanQueryInterface');

int WlanReasonCodeToString(
  int dwReasonCode,
  int dwBufferSize,
  Pointer<Utf16> pStringBuffer,
  Pointer pReserved,
) =>
    _WlanReasonCodeToString(
      dwReasonCode,
      dwBufferSize,
      pStringBuffer,
      pReserved,
    );

late final _WlanReasonCodeToString = _wlanapi.lookupFunction<
    Uint32 Function(
  Uint32 dwReasonCode,
  Uint32 dwBufferSize,
  Pointer<Utf16> pStringBuffer,
  Pointer pReserved,
),
    int Function(
  int dwReasonCode,
  int dwBufferSize,
  Pointer<Utf16> pStringBuffer,
  Pointer pReserved,
)>('WlanReasonCodeToString');

int WlanRegisterDeviceServiceNotification(
  int hClientHandle,
  Pointer<WLAN_DEVICE_SERVICE_GUID_LIST> pDevSvcGuidList,
) =>
    _WlanRegisterDeviceServiceNotification(
      hClientHandle,
      pDevSvcGuidList,
    );

late final _WlanRegisterDeviceServiceNotification = _wlanapi.lookupFunction<
    Uint32 Function(
  IntPtr hClientHandle,
  Pointer<WLAN_DEVICE_SERVICE_GUID_LIST> pDevSvcGuidList,
),
    int Function(
  int hClientHandle,
  Pointer<WLAN_DEVICE_SERVICE_GUID_LIST> pDevSvcGuidList,
)>('WlanRegisterDeviceServiceNotification');

int WlanRegisterNotification(
  int hClientHandle,
  int dwNotifSource,
  int bIgnoreDuplicate,
  Pointer<NativeFunction<WLAN_NOTIFICATION_CALLBACK>> funcCallback,
  Pointer pCallbackContext,
  Pointer pReserved,
  Pointer<Uint32> pdwPrevNotifSource,
) =>
    _WlanRegisterNotification(
      hClientHandle,
      dwNotifSource,
      bIgnoreDuplicate,
      funcCallback,
      pCallbackContext,
      pReserved,
      pdwPrevNotifSource,
    );

late final _WlanRegisterNotification = _wlanapi.lookupFunction<
    Uint32 Function(
  IntPtr hClientHandle,
  Uint32 dwNotifSource,
  Int32 bIgnoreDuplicate,
  Pointer<NativeFunction<WLAN_NOTIFICATION_CALLBACK>> funcCallback,
  Pointer pCallbackContext,
  Pointer pReserved,
  Pointer<Uint32> pdwPrevNotifSource,
),
    int Function(
  int hClientHandle,
  int dwNotifSource,
  int bIgnoreDuplicate,
  Pointer<NativeFunction<WLAN_NOTIFICATION_CALLBACK>> funcCallback,
  Pointer pCallbackContext,
  Pointer pReserved,
  Pointer<Uint32> pdwPrevNotifSource,
)>('WlanRegisterNotification');

int WlanRegisterVirtualStationNotification(
  int hClientHandle,
  int bRegister,
  Pointer pReserved,
) =>
    _WlanRegisterVirtualStationNotification(
      hClientHandle,
      bRegister,
      pReserved,
    );

late final _WlanRegisterVirtualStationNotification = _wlanapi.lookupFunction<
    Uint32 Function(
  IntPtr hClientHandle,
  Int32 bRegister,
  Pointer pReserved,
),
    int Function(
  int hClientHandle,
  int bRegister,
  Pointer pReserved,
)>('WlanRegisterVirtualStationNotification');

int WlanRenameProfile(
  int hClientHandle,
  Pointer<GUID> pInterfaceGuid,
  Pointer<Utf16> strOldProfileName,
  Pointer<Utf16> strNewProfileName,
  Pointer pReserved,
) =>
    _WlanRenameProfile(
      hClientHandle,
      pInterfaceGuid,
      strOldProfileName,
      strNewProfileName,
      pReserved,
    );

late final _WlanRenameProfile = _wlanapi.lookupFunction<
    Uint32 Function(
  IntPtr hClientHandle,
  Pointer<GUID> pInterfaceGuid,
  Pointer<Utf16> strOldProfileName,
  Pointer<Utf16> strNewProfileName,
  Pointer pReserved,
),
    int Function(
  int hClientHandle,
  Pointer<GUID> pInterfaceGuid,
  Pointer<Utf16> strOldProfileName,
  Pointer<Utf16> strNewProfileName,
  Pointer pReserved,
)>('WlanRenameProfile');

int WlanSaveTemporaryProfile(
  int hClientHandle,
  Pointer<GUID> pInterfaceGuid,
  Pointer<Utf16> strProfileName,
  Pointer<Utf16> strAllUserProfileSecurity,
  int dwFlags,
  int bOverWrite,
  Pointer pReserved,
) =>
    _WlanSaveTemporaryProfile(
      hClientHandle,
      pInterfaceGuid,
      strProfileName,
      strAllUserProfileSecurity,
      dwFlags,
      bOverWrite,
      pReserved,
    );

late final _WlanSaveTemporaryProfile = _wlanapi.lookupFunction<
    Uint32 Function(
  IntPtr hClientHandle,
  Pointer<GUID> pInterfaceGuid,
  Pointer<Utf16> strProfileName,
  Pointer<Utf16> strAllUserProfileSecurity,
  Uint32 dwFlags,
  Int32 bOverWrite,
  Pointer pReserved,
),
    int Function(
  int hClientHandle,
  Pointer<GUID> pInterfaceGuid,
  Pointer<Utf16> strProfileName,
  Pointer<Utf16> strAllUserProfileSecurity,
  int dwFlags,
  int bOverWrite,
  Pointer pReserved,
)>('WlanSaveTemporaryProfile');

int WlanScan(
  int hClientHandle,
  Pointer<GUID> pInterfaceGuid,
  Pointer<DOT11_SSID> pDot11Ssid,
  Pointer<WLAN_RAW_DATA> pIeData,
  Pointer pReserved,
) =>
    _WlanScan(
      hClientHandle,
      pInterfaceGuid,
      pDot11Ssid,
      pIeData,
      pReserved,
    );

late final _WlanScan = _wlanapi.lookupFunction<
    Uint32 Function(
  IntPtr hClientHandle,
  Pointer<GUID> pInterfaceGuid,
  Pointer<DOT11_SSID> pDot11Ssid,
  Pointer<WLAN_RAW_DATA> pIeData,
  Pointer pReserved,
),
    int Function(
  int hClientHandle,
  Pointer<GUID> pInterfaceGuid,
  Pointer<DOT11_SSID> pDot11Ssid,
  Pointer<WLAN_RAW_DATA> pIeData,
  Pointer pReserved,
)>('WlanScan');

int WlanSetAutoConfigParameter(
  int hClientHandle,
  int OpCode,
  int dwDataSize,
  Pointer pData,
  Pointer pReserved,
) =>
    _WlanSetAutoConfigParameter(
      hClientHandle,
      OpCode,
      dwDataSize,
      pData,
      pReserved,
    );

late final _WlanSetAutoConfigParameter = _wlanapi.lookupFunction<
    Uint32 Function(
  IntPtr hClientHandle,
  Int32 OpCode,
  Uint32 dwDataSize,
  Pointer pData,
  Pointer pReserved,
),
    int Function(
  int hClientHandle,
  int OpCode,
  int dwDataSize,
  Pointer pData,
  Pointer pReserved,
)>('WlanSetAutoConfigParameter');

int WlanSetFilterList(
  int hClientHandle,
  int wlanFilterListType,
  Pointer<DOT11_NETWORK_LIST> pNetworkList,
  Pointer pReserved,
) =>
    _WlanSetFilterList(
      hClientHandle,
      wlanFilterListType,
      pNetworkList,
      pReserved,
    );

late final _WlanSetFilterList = _wlanapi.lookupFunction<
    Uint32 Function(
  IntPtr hClientHandle,
  Int32 wlanFilterListType,
  Pointer<DOT11_NETWORK_LIST> pNetworkList,
  Pointer pReserved,
),
    int Function(
  int hClientHandle,
  int wlanFilterListType,
  Pointer<DOT11_NETWORK_LIST> pNetworkList,
  Pointer pReserved,
)>('WlanSetFilterList');

int WlanSetInterface(
  int hClientHandle,
  Pointer<GUID> pInterfaceGuid,
  int OpCode,
  int dwDataSize,
  Pointer pData,
  Pointer pReserved,
) =>
    _WlanSetInterface(
      hClientHandle,
      pInterfaceGuid,
      OpCode,
      dwDataSize,
      pData,
      pReserved,
    );

late final _WlanSetInterface = _wlanapi.lookupFunction<
    Uint32 Function(
  IntPtr hClientHandle,
  Pointer<GUID> pInterfaceGuid,
  Int32 OpCode,
  Uint32 dwDataSize,
  Pointer pData,
  Pointer pReserved,
),
    int Function(
  int hClientHandle,
  Pointer<GUID> pInterfaceGuid,
  int OpCode,
  int dwDataSize,
  Pointer pData,
  Pointer pReserved,
)>('WlanSetInterface');

int WlanSetProfile(
  int hClientHandle,
  Pointer<GUID> pInterfaceGuid,
  int dwFlags,
  Pointer<Utf16> strProfileXml,
  Pointer<Utf16> strAllUserProfileSecurity,
  int bOverwrite,
  Pointer pReserved,
  Pointer<Uint32> pdwReasonCode,
) =>
    _WlanSetProfile(
      hClientHandle,
      pInterfaceGuid,
      dwFlags,
      strProfileXml,
      strAllUserProfileSecurity,
      bOverwrite,
      pReserved,
      pdwReasonCode,
    );

late final _WlanSetProfile = _wlanapi.lookupFunction<
    Uint32 Function(
  IntPtr hClientHandle,
  Pointer<GUID> pInterfaceGuid,
  Uint32 dwFlags,
  Pointer<Utf16> strProfileXml,
  Pointer<Utf16> strAllUserProfileSecurity,
  Int32 bOverwrite,
  Pointer pReserved,
  Pointer<Uint32> pdwReasonCode,
),
    int Function(
  int hClientHandle,
  Pointer<GUID> pInterfaceGuid,
  int dwFlags,
  Pointer<Utf16> strProfileXml,
  Pointer<Utf16> strAllUserProfileSecurity,
  int bOverwrite,
  Pointer pReserved,
  Pointer<Uint32> pdwReasonCode,
)>('WlanSetProfile');

int WlanSetProfileCustomUserData(
  int hClientHandle,
  Pointer<GUID> pInterfaceGuid,
  Pointer<Utf16> strProfileName,
  int dwDataSize,
  Pointer<Uint8> pData,
  Pointer pReserved,
) =>
    _WlanSetProfileCustomUserData(
      hClientHandle,
      pInterfaceGuid,
      strProfileName,
      dwDataSize,
      pData,
      pReserved,
    );

late final _WlanSetProfileCustomUserData = _wlanapi.lookupFunction<
    Uint32 Function(
  IntPtr hClientHandle,
  Pointer<GUID> pInterfaceGuid,
  Pointer<Utf16> strProfileName,
  Uint32 dwDataSize,
  Pointer<Uint8> pData,
  Pointer pReserved,
),
    int Function(
  int hClientHandle,
  Pointer<GUID> pInterfaceGuid,
  Pointer<Utf16> strProfileName,
  int dwDataSize,
  Pointer<Uint8> pData,
  Pointer pReserved,
)>('WlanSetProfileCustomUserData');

int WlanSetProfileEapUserData(
  int hClientHandle,
  Pointer<GUID> pInterfaceGuid,
  Pointer<Utf16> strProfileName,
  EAP_METHOD_TYPE eapType,
  int dwFlags,
  int dwEapUserDataSize,
  Pointer<Uint8> pbEapUserData,
  Pointer pReserved,
) =>
    _WlanSetProfileEapUserData(
      hClientHandle,
      pInterfaceGuid,
      strProfileName,
      eapType,
      dwFlags,
      dwEapUserDataSize,
      pbEapUserData,
      pReserved,
    );

late final _WlanSetProfileEapUserData = _wlanapi.lookupFunction<
    Uint32 Function(
  IntPtr hClientHandle,
  Pointer<GUID> pInterfaceGuid,
  Pointer<Utf16> strProfileName,
  EAP_METHOD_TYPE eapType,
  Uint32 dwFlags,
  Uint32 dwEapUserDataSize,
  Pointer<Uint8> pbEapUserData,
  Pointer pReserved,
),
    int Function(
  int hClientHandle,
  Pointer<GUID> pInterfaceGuid,
  Pointer<Utf16> strProfileName,
  EAP_METHOD_TYPE eapType,
  int dwFlags,
  int dwEapUserDataSize,
  Pointer<Uint8> pbEapUserData,
  Pointer pReserved,
)>('WlanSetProfileEapUserData');

int WlanSetProfileEapXmlUserData(
  int hClientHandle,
  Pointer<GUID> pInterfaceGuid,
  Pointer<Utf16> strProfileName,
  int dwFlags,
  Pointer<Utf16> strEapXmlUserData,
  Pointer pReserved,
) =>
    _WlanSetProfileEapXmlUserData(
      hClientHandle,
      pInterfaceGuid,
      strProfileName,
      dwFlags,
      strEapXmlUserData,
      pReserved,
    );

late final _WlanSetProfileEapXmlUserData = _wlanapi.lookupFunction<
    Uint32 Function(
  IntPtr hClientHandle,
  Pointer<GUID> pInterfaceGuid,
  Pointer<Utf16> strProfileName,
  Uint32 dwFlags,
  Pointer<Utf16> strEapXmlUserData,
  Pointer pReserved,
),
    int Function(
  int hClientHandle,
  Pointer<GUID> pInterfaceGuid,
  Pointer<Utf16> strProfileName,
  int dwFlags,
  Pointer<Utf16> strEapXmlUserData,
  Pointer pReserved,
)>('WlanSetProfileEapXmlUserData');

int WlanSetProfileList(
  int hClientHandle,
  Pointer<GUID> pInterfaceGuid,
  int dwItems,
  Pointer<Pointer<Utf16>> strProfileNames,
  Pointer pReserved,
) =>
    _WlanSetProfileList(
      hClientHandle,
      pInterfaceGuid,
      dwItems,
      strProfileNames,
      pReserved,
    );

late final _WlanSetProfileList = _wlanapi.lookupFunction<
    Uint32 Function(
  IntPtr hClientHandle,
  Pointer<GUID> pInterfaceGuid,
  Uint32 dwItems,
  Pointer<Pointer<Utf16>> strProfileNames,
  Pointer pReserved,
),
    int Function(
  int hClientHandle,
  Pointer<GUID> pInterfaceGuid,
  int dwItems,
  Pointer<Pointer<Utf16>> strProfileNames,
  Pointer pReserved,
)>('WlanSetProfileList');

int WlanSetProfilePosition(
  int hClientHandle,
  Pointer<GUID> pInterfaceGuid,
  Pointer<Utf16> strProfileName,
  int dwPosition,
  Pointer pReserved,
) =>
    _WlanSetProfilePosition(
      hClientHandle,
      pInterfaceGuid,
      strProfileName,
      dwPosition,
      pReserved,
    );

late final _WlanSetProfilePosition = _wlanapi.lookupFunction<
    Uint32 Function(
  IntPtr hClientHandle,
  Pointer<GUID> pInterfaceGuid,
  Pointer<Utf16> strProfileName,
  Uint32 dwPosition,
  Pointer pReserved,
),
    int Function(
  int hClientHandle,
  Pointer<GUID> pInterfaceGuid,
  Pointer<Utf16> strProfileName,
  int dwPosition,
  Pointer pReserved,
)>('WlanSetProfilePosition');

int WlanSetPsdIEDataList(
  int hClientHandle,
  Pointer<Utf16> strFormat,
  Pointer<WLAN_RAW_DATA_LIST> pPsdIEDataList,
  Pointer pReserved,
) =>
    _WlanSetPsdIEDataList(
      hClientHandle,
      strFormat,
      pPsdIEDataList,
      pReserved,
    );

late final _WlanSetPsdIEDataList = _wlanapi.lookupFunction<
    Uint32 Function(
  IntPtr hClientHandle,
  Pointer<Utf16> strFormat,
  Pointer<WLAN_RAW_DATA_LIST> pPsdIEDataList,
  Pointer pReserved,
),
    int Function(
  int hClientHandle,
  Pointer<Utf16> strFormat,
  Pointer<WLAN_RAW_DATA_LIST> pPsdIEDataList,
  Pointer pReserved,
)>('WlanSetPsdIEDataList');

int WlanSetSecuritySettings(
  int hClientHandle,
  int SecurableObject,
  Pointer<Utf16> strModifiedSDDL,
) =>
    _WlanSetSecuritySettings(
      hClientHandle,
      SecurableObject,
      strModifiedSDDL,
    );

late final _WlanSetSecuritySettings = _wlanapi.lookupFunction<
    Uint32 Function(
  IntPtr hClientHandle,
  Int32 SecurableObject,
  Pointer<Utf16> strModifiedSDDL,
),
    int Function(
  int hClientHandle,
  int SecurableObject,
  Pointer<Utf16> strModifiedSDDL,
)>('WlanSetSecuritySettings');

// -----------------------------------------------------------------------
// wlanui.dll
// -----------------------------------------------------------------------
final _wlanui = DynamicLibrary.open('wlanui.dll');

int WlanUIEditProfile(
  int dwClientVersion,
  Pointer<Utf16> wstrProfileName,
  Pointer<GUID> pInterfaceGuid,
  int hWnd,
  int wlStartPage,
  Pointer pReserved,
  Pointer<Uint32> pWlanReasonCode,
) =>
    _WlanUIEditProfile(
      dwClientVersion,
      wstrProfileName,
      pInterfaceGuid,
      hWnd,
      wlStartPage,
      pReserved,
      pWlanReasonCode,
    );

late final _WlanUIEditProfile = _wlanui.lookupFunction<
    Uint32 Function(
  Uint32 dwClientVersion,
  Pointer<Utf16> wstrProfileName,
  Pointer<GUID> pInterfaceGuid,
  IntPtr hWnd,
  Int32 wlStartPage,
  Pointer pReserved,
  Pointer<Uint32> pWlanReasonCode,
),
    int Function(
  int dwClientVersion,
  Pointer<Utf16> wstrProfileName,
  Pointer<GUID> pInterfaceGuid,
  int hWnd,
  int wlStartPage,
  Pointer pReserved,
  Pointer<Uint32> pWlanReasonCode,
)>('WlanUIEditProfile');
