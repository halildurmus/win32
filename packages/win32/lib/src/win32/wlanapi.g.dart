// Maps FFI prototypes onto the corresponding Win32 API function calls.
//
// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// ignore_for_file: avoid_positional_boolean_parameters
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../_internal/wlanapi.g.dart';
import '../allocator.dart';
import '../bstr.dart';
import '../callbacks.g.dart';
import '../com/interface.g.dart';
import '../com/iunknown.g.dart';
import '../constants.dart';
import '../constants.g.dart';
import '../enums.g.dart';
import '../exception.dart';
import '../extensions/pointer.dart';
import '../guid.dart';
import '../hresult.dart';
import '../hstring.dart';
import '../macros.dart';
import '../ntstatus.dart';
import '../pcstr.dart';
import '../pcwstr.dart';
import '../pstr.dart';
import '../pwstr.dart';
import '../structs.g.dart';
import '../types.dart';
import '../utils.dart';

/// Allocates memory.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlanallocatememory>.
///
/// {@category wlanapi}
@pragma('vm:prefer-inline')
Pointer WlanAllocateMemory(int dwMemorySize) =>
    WlanAllocateMemory_Wrapper(dwMemorySize);

/// Closes a connection to the server.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlanclosehandle>.
///
/// {@category wlanapi}
@pragma('vm:prefer-inline')
int WlanCloseHandle(int hClientHandle) =>
    _WlanCloseHandle(hClientHandle, nullptr);

@Native<Uint32 Function(HANDLE, Pointer)>(symbol: 'WlanCloseHandle')
external int _WlanCloseHandle(int hClientHandle, Pointer pReserved);

/// Attempts to connect to a specific network.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlanconnect>.
///
/// {@category wlanapi}
@pragma('vm:prefer-inline')
int WlanConnect(
  int hClientHandle,
  Pointer<GUID> pInterfaceGuid,
  Pointer<WLAN_CONNECTION_PARAMETERS> pConnectionParameters,
) =>
    _WlanConnect(hClientHandle, pInterfaceGuid, pConnectionParameters, nullptr);

@Native<
  Uint32 Function(
    HANDLE,
    Pointer<GUID>,
    Pointer<WLAN_CONNECTION_PARAMETERS>,
    Pointer,
  )
>(symbol: 'WlanConnect')
external int _WlanConnect(
  int hClientHandle,
  Pointer<GUID> pInterfaceGuid,
  Pointer<WLAN_CONNECTION_PARAMETERS> pConnectionParameters,
  Pointer pReserved,
);

/// Deletes a wireless profile for a wireless interface on the local computer.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlandeleteprofile>.
///
/// {@category wlanapi}
@pragma('vm:prefer-inline')
int WlanDeleteProfile(
  int hClientHandle,
  Pointer<GUID> pInterfaceGuid,
  PCWSTR strProfileName,
) => _WlanDeleteProfile(hClientHandle, pInterfaceGuid, strProfileName, nullptr);

@Native<Uint32 Function(HANDLE, Pointer<GUID>, PCWSTR, Pointer)>(
  symbol: 'WlanDeleteProfile',
)
external int _WlanDeleteProfile(
  int hClientHandle,
  Pointer<GUID> pInterfaceGuid,
  PCWSTR strProfileName,
  Pointer pReserved,
);

/// Allows an OEM or IHV component to communicate with a device service on a
/// particular wireless LAN interface.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlandeviceservicecommand>.
///
/// {@category wlanapi}
@pragma('vm:prefer-inline')
int WlanDeviceServiceCommand(
  int hClientHandle,
  Pointer<GUID> pInterfaceGuid,
  Pointer<GUID> pDeviceServiceGuid,
  int dwOpCode,
  int dwInBufferSize,
  Pointer? pInBuffer,
  int dwOutBufferSize,
  Pointer? pOutBuffer,
  Pointer<Uint32> pdwBytesReturned,
) => _WlanDeviceServiceCommand(
  hClientHandle,
  pInterfaceGuid,
  pDeviceServiceGuid,
  dwOpCode,
  dwInBufferSize,
  pInBuffer ?? nullptr,
  dwOutBufferSize,
  pOutBuffer ?? nullptr,
  pdwBytesReturned,
);

@Native<
  Uint32 Function(
    HANDLE,
    Pointer<GUID>,
    Pointer<GUID>,
    Uint32,
    Uint32,
    Pointer,
    Uint32,
    Pointer,
    Pointer<Uint32>,
  )
>(symbol: 'WlanDeviceServiceCommand')
external int _WlanDeviceServiceCommand(
  int hClientHandle,
  Pointer<GUID> pInterfaceGuid,
  Pointer<GUID> pDeviceServiceGuid,
  int dwOpCode,
  int dwInBufferSize,
  Pointer pInBuffer,
  int dwOutBufferSize,
  Pointer pOutBuffer,
  Pointer<Uint32> pdwBytesReturned,
);

/// Disconnects an interface from its current network.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlandisconnect>.
///
/// {@category wlanapi}
@pragma('vm:prefer-inline')
int WlanDisconnect(int hClientHandle, Pointer<GUID> pInterfaceGuid) =>
    _WlanDisconnect(hClientHandle, pInterfaceGuid, nullptr);

@Native<Uint32 Function(HANDLE, Pointer<GUID>, Pointer)>(
  symbol: 'WlanDisconnect',
)
external int _WlanDisconnect(
  int hClientHandle,
  Pointer<GUID> pInterfaceGuid,
  Pointer pReserved,
);

/// Enumerates all of the wireless LAN interfaces currently enabled on the local
/// computer.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlanenuminterfaces>.
///
/// {@category wlanapi}
@pragma('vm:prefer-inline')
int WlanEnumInterfaces(
  int hClientHandle,
  Pointer<Pointer<WLAN_INTERFACE_INFO_LIST>> ppInterfaceList,
) => _WlanEnumInterfaces(hClientHandle, nullptr, ppInterfaceList);

@Native<
  Uint32 Function(HANDLE, Pointer, Pointer<Pointer<WLAN_INTERFACE_INFO_LIST>>)
>(symbol: 'WlanEnumInterfaces')
external int _WlanEnumInterfaces(
  int hClientHandle,
  Pointer pReserved,
  Pointer<Pointer<WLAN_INTERFACE_INFO_LIST>> ppInterfaceList,
);

/// Extracts the proximity service discovery (PSD) information element (IE) data
/// list from raw IE data included in a beacon.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlanextractpsdiedatalist>.
///
/// {@category wlanapi}
@pragma('vm:prefer-inline')
int WlanExtractPsdIEDataList(
  int hClientHandle,
  int dwIeDataSize,
  Pointer<Uint8> pRawIeData,
  PCWSTR strFormat,
  Pointer<Pointer<WLAN_RAW_DATA_LIST>> ppPsdIEDataList,
) => _WlanExtractPsdIEDataList(
  hClientHandle,
  dwIeDataSize,
  pRawIeData,
  strFormat,
  nullptr,
  ppPsdIEDataList,
);

@Native<
  Uint32 Function(
    HANDLE,
    Uint32,
    Pointer<Uint8>,
    PCWSTR,
    Pointer,
    Pointer<Pointer<WLAN_RAW_DATA_LIST>>,
  )
>(symbol: 'WlanExtractPsdIEDataList')
external int _WlanExtractPsdIEDataList(
  int hClientHandle,
  int dwIeDataSize,
  Pointer<Uint8> pRawIeData,
  PCWSTR strFormat,
  Pointer pReserved,
  Pointer<Pointer<WLAN_RAW_DATA_LIST>> ppPsdIEDataList,
);

/// Frees memory.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlanfreememory>.
///
/// {@category wlanapi}
@pragma('vm:prefer-inline')
void WlanFreeMemory(Pointer pMemory) => _WlanFreeMemory(pMemory);

@Native<Void Function(Pointer)>(symbol: 'WlanFreeMemory')
external void _WlanFreeMemory(Pointer pMemory);

/// Retrieves the list of available networks on a wireless LAN interface.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlangetavailablenetworklist>.
///
/// {@category wlanapi}
@pragma('vm:prefer-inline')
int WlanGetAvailableNetworkList(
  int hClientHandle,
  Pointer<GUID> pInterfaceGuid,
  int dwFlags,
  Pointer<Pointer<WLAN_AVAILABLE_NETWORK_LIST>> ppAvailableNetworkList,
) => _WlanGetAvailableNetworkList(
  hClientHandle,
  pInterfaceGuid,
  dwFlags,
  nullptr,
  ppAvailableNetworkList,
);

@Native<
  Uint32 Function(
    HANDLE,
    Pointer<GUID>,
    Uint32,
    Pointer,
    Pointer<Pointer<WLAN_AVAILABLE_NETWORK_LIST>>,
  )
>(symbol: 'WlanGetAvailableNetworkList')
external int _WlanGetAvailableNetworkList(
  int hClientHandle,
  Pointer<GUID> pInterfaceGuid,
  int dwFlags,
  Pointer pReserved,
  Pointer<Pointer<WLAN_AVAILABLE_NETWORK_LIST>> ppAvailableNetworkList,
);

/// Retrieves a group policy or user permission list.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlangetfilterlist>.
///
/// {@category wlanapi}
@pragma('vm:prefer-inline')
int WlanGetFilterList(
  int hClientHandle,
  WLAN_FILTER_LIST_TYPE wlanFilterListType,
  Pointer<Pointer<DOT11_NETWORK_LIST>> ppNetworkList,
) => _WlanGetFilterList(
  hClientHandle,
  wlanFilterListType,
  nullptr,
  ppNetworkList,
);

@Native<
  Uint32 Function(HANDLE, Int32, Pointer, Pointer<Pointer<DOT11_NETWORK_LIST>>)
>(symbol: 'WlanGetFilterList')
external int _WlanGetFilterList(
  int hClientHandle,
  int wlanFilterListType,
  Pointer pReserved,
  Pointer<Pointer<DOT11_NETWORK_LIST>> ppNetworkList,
);

/// Retrieves the capabilities of an interface.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlangetinterfacecapability>.
///
/// {@category wlanapi}
@pragma('vm:prefer-inline')
int WlanGetInterfaceCapability(
  int hClientHandle,
  Pointer<GUID> pInterfaceGuid,
  Pointer<Pointer<WLAN_INTERFACE_CAPABILITY>> ppCapability,
) => _WlanGetInterfaceCapability(
  hClientHandle,
  pInterfaceGuid,
  nullptr,
  ppCapability,
);

@Native<
  Uint32 Function(
    HANDLE,
    Pointer<GUID>,
    Pointer,
    Pointer<Pointer<WLAN_INTERFACE_CAPABILITY>>,
  )
>(symbol: 'WlanGetInterfaceCapability')
external int _WlanGetInterfaceCapability(
  int hClientHandle,
  Pointer<GUID> pInterfaceGuid,
  Pointer pReserved,
  Pointer<Pointer<WLAN_INTERFACE_CAPABILITY>> ppCapability,
);

/// Retrieves a list of the basic service set (BSS) entries of the wireless
/// network or networks on a given wireless LAN interface.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlangetnetworkbsslist>.
///
/// {@category wlanapi}
@pragma('vm:prefer-inline')
int WlanGetNetworkBssList(
  int hClientHandle,
  Pointer<GUID> pInterfaceGuid,
  Pointer<DOT11_SSID>? pDot11Ssid,
  DOT11_BSS_TYPE dot11BssType,
  bool bSecurityEnabled,
  Pointer<Pointer<WLAN_BSS_LIST>> ppWlanBssList,
) => _WlanGetNetworkBssList(
  hClientHandle,
  pInterfaceGuid,
  pDot11Ssid ?? nullptr,
  dot11BssType,
  bSecurityEnabled ? TRUE : FALSE,
  nullptr,
  ppWlanBssList,
);

@Native<
  Uint32 Function(
    HANDLE,
    Pointer<GUID>,
    Pointer<DOT11_SSID>,
    Int32,
    BOOL,
    Pointer,
    Pointer<Pointer<WLAN_BSS_LIST>>,
  )
>(symbol: 'WlanGetNetworkBssList')
external int _WlanGetNetworkBssList(
  int hClientHandle,
  Pointer<GUID> pInterfaceGuid,
  Pointer<DOT11_SSID> pDot11Ssid,
  int dot11BssType,
  int bSecurityEnabled,
  Pointer pReserved,
  Pointer<Pointer<WLAN_BSS_LIST>> ppWlanBssList,
);

/// Retrieves all information about a specified wireless profile.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlangetprofile>.
///
/// {@category wlanapi}
@pragma('vm:prefer-inline')
int WlanGetProfile(
  int hClientHandle,
  Pointer<GUID> pInterfaceGuid,
  PCWSTR strProfileName,
  Pointer<PWSTR> pstrProfileXml,
  Pointer<Uint32>? pdwFlags,
  Pointer<Uint32>? pdwGrantedAccess,
) => _WlanGetProfile(
  hClientHandle,
  pInterfaceGuid,
  strProfileName,
  nullptr,
  pstrProfileXml,
  pdwFlags ?? nullptr,
  pdwGrantedAccess ?? nullptr,
);

@Native<
  Uint32 Function(
    HANDLE,
    Pointer<GUID>,
    PCWSTR,
    Pointer,
    Pointer<PWSTR>,
    Pointer<Uint32>,
    Pointer<Uint32>,
  )
>(symbol: 'WlanGetProfile')
external int _WlanGetProfile(
  int hClientHandle,
  Pointer<GUID> pInterfaceGuid,
  PCWSTR strProfileName,
  Pointer pReserved,
  Pointer<PWSTR> pstrProfileXml,
  Pointer<Uint32> pdwFlags,
  Pointer<Uint32> pdwGrantedAccess,
);

/// Gets the custom user data associated with a wireless profile.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlangetprofilecustomuserdata>.
///
/// {@category wlanapi}
@pragma('vm:prefer-inline')
int WlanGetProfileCustomUserData(
  int hClientHandle,
  Pointer<GUID> pInterfaceGuid,
  PCWSTR strProfileName,
  Pointer<Uint32> pdwDataSize,
  Pointer<Pointer<Uint8>> ppData,
) => _WlanGetProfileCustomUserData(
  hClientHandle,
  pInterfaceGuid,
  strProfileName,
  nullptr,
  pdwDataSize,
  ppData,
);

@Native<
  Uint32 Function(
    HANDLE,
    Pointer<GUID>,
    PCWSTR,
    Pointer,
    Pointer<Uint32>,
    Pointer<Pointer<Uint8>>,
  )
>(symbol: 'WlanGetProfileCustomUserData')
external int _WlanGetProfileCustomUserData(
  int hClientHandle,
  Pointer<GUID> pInterfaceGuid,
  PCWSTR strProfileName,
  Pointer pReserved,
  Pointer<Uint32> pdwDataSize,
  Pointer<Pointer<Uint8>> ppData,
);

/// Retrieves the list of profiles.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlangetprofilelist>.
///
/// {@category wlanapi}
@pragma('vm:prefer-inline')
int WlanGetProfileList(
  int hClientHandle,
  Pointer<GUID> pInterfaceGuid,
  Pointer<Pointer<WLAN_PROFILE_INFO_LIST>> ppProfileList,
) => _WlanGetProfileList(hClientHandle, pInterfaceGuid, nullptr, ppProfileList);

@Native<
  Uint32 Function(
    HANDLE,
    Pointer<GUID>,
    Pointer,
    Pointer<Pointer<WLAN_PROFILE_INFO_LIST>>,
  )
>(symbol: 'WlanGetProfileList')
external int _WlanGetProfileList(
  int hClientHandle,
  Pointer<GUID> pInterfaceGuid,
  Pointer pReserved,
  Pointer<Pointer<WLAN_PROFILE_INFO_LIST>> ppProfileList,
);

/// Gets the security settings associated with a configurable object.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlangetsecuritysettings>.
///
/// {@category wlanapi}
@pragma('vm:prefer-inline')
int WlanGetSecuritySettings(
  int hClientHandle,
  WLAN_SECURABLE_OBJECT securableObject,
  Pointer<Int32>? pValueType,
  Pointer<PWSTR> pstrCurrentSDDL,
  Pointer<Uint32> pdwGrantedAccess,
) => _WlanGetSecuritySettings(
  hClientHandle,
  securableObject,
  pValueType ?? nullptr,
  pstrCurrentSDDL,
  pdwGrantedAccess,
);

@Native<
  Uint32 Function(
    HANDLE,
    Int32,
    Pointer<Int32>,
    Pointer<PWSTR>,
    Pointer<Uint32>,
  )
>(symbol: 'WlanGetSecuritySettings')
external int _WlanGetSecuritySettings(
  int hClientHandle,
  int securableObject,
  Pointer<Int32> pValueType,
  Pointer<PWSTR> pstrCurrentSDDL,
  Pointer<Uint32> pdwGrantedAccess,
);

/// Retrieves a list of the supported device services on a given wireless LAN
/// interface.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlangetsupporteddeviceservices>.
///
/// {@category wlanapi}
@pragma('vm:prefer-inline')
int WlanGetSupportedDeviceServices(
  int hClientHandle,
  Pointer<GUID> pInterfaceGuid,
  Pointer<Pointer<WLAN_DEVICE_SERVICE_GUID_LIST>> ppDevSvcGuidList,
) => _WlanGetSupportedDeviceServices(
  hClientHandle,
  pInterfaceGuid,
  ppDevSvcGuidList,
);

@Native<
  Uint32 Function(
    HANDLE,
    Pointer<GUID>,
    Pointer<Pointer<WLAN_DEVICE_SERVICE_GUID_LIST>>,
  )
>(symbol: 'WlanGetSupportedDeviceServices')
external int _WlanGetSupportedDeviceServices(
  int hClientHandle,
  Pointer<GUID> pInterfaceGuid,
  Pointer<Pointer<WLAN_DEVICE_SERVICE_GUID_LIST>> ppDevSvcGuidList,
);

/// Transitions the wireless Hosted Network to the wlan_hosted_network_active
/// state without associating the request with the application's calling handle.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlanhostednetworkforcestart>.
///
/// {@category wlanapi}
@pragma('vm:prefer-inline')
int WlanHostedNetworkForceStart(
  int hClientHandle,
  Pointer<Int32>? pFailReason,
) => _WlanHostedNetworkForceStart(
  hClientHandle,
  pFailReason ?? nullptr,
  nullptr,
);

@Native<Uint32 Function(HANDLE, Pointer<Int32>, Pointer)>(
  symbol: 'WlanHostedNetworkForceStart',
)
external int _WlanHostedNetworkForceStart(
  int hClientHandle,
  Pointer<Int32> pFailReason,
  Pointer pvReserved,
);

/// Transitions the wireless Hosted Network to the wlan_hosted_network_idle
/// without associating the request with the application's calling handle.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlanhostednetworkforcestop>.
///
/// {@category wlanapi}
@pragma('vm:prefer-inline')
int WlanHostedNetworkForceStop(
  int hClientHandle,
  Pointer<Int32>? pFailReason,
) =>
    _WlanHostedNetworkForceStop(hClientHandle, pFailReason ?? nullptr, nullptr);

@Native<Uint32 Function(HANDLE, Pointer<Int32>, Pointer)>(
  symbol: 'WlanHostedNetworkForceStop',
)
external int _WlanHostedNetworkForceStop(
  int hClientHandle,
  Pointer<Int32> pFailReason,
  Pointer pvReserved,
);

/// Configures and persists to storage the network connection settings (SSID and
/// maximum number of peers, for example) on the wireless Hosted Network if
/// these settings are not already configured.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlanhostednetworkinitsettings>.
///
/// {@category wlanapi}
@pragma('vm:prefer-inline')
int WlanHostedNetworkInitSettings(
  int hClientHandle,
  Pointer<Int32>? pFailReason,
) => _WlanHostedNetworkInitSettings(
  hClientHandle,
  pFailReason ?? nullptr,
  nullptr,
);

@Native<Uint32 Function(HANDLE, Pointer<Int32>, Pointer)>(
  symbol: 'WlanHostedNetworkInitSettings',
)
external int _WlanHostedNetworkInitSettings(
  int hClientHandle,
  Pointer<Int32> pFailReason,
  Pointer pvReserved,
);

/// Queries the current static properties of the wireless Hosted Network.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlanhostednetworkqueryproperty>.
///
/// {@category wlanapi}
@pragma('vm:prefer-inline')
int WlanHostedNetworkQueryProperty(
  int hClientHandle,
  WLAN_HOSTED_NETWORK_OPCODE opCode,
  Pointer<Uint32> pdwDataSize,
  Pointer<Pointer> ppvData,
  Pointer<Int32> pWlanOpcodeValueType,
) => _WlanHostedNetworkQueryProperty(
  hClientHandle,
  opCode,
  pdwDataSize,
  ppvData,
  pWlanOpcodeValueType,
  nullptr,
);

@Native<
  Uint32 Function(
    HANDLE,
    Int32,
    Pointer<Uint32>,
    Pointer<Pointer>,
    Pointer<Int32>,
    Pointer,
  )
>(symbol: 'WlanHostedNetworkQueryProperty')
external int _WlanHostedNetworkQueryProperty(
  int hClientHandle,
  int opCode,
  Pointer<Uint32> pdwDataSize,
  Pointer<Pointer> ppvData,
  Pointer<Int32> pWlanOpcodeValueType,
  Pointer pvReserved,
);

/// Queries the secondary security key that is configured to be used by the
/// wireless Hosted Network.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlanhostednetworkquerysecondarykey>.
///
/// {@category wlanapi}
@pragma('vm:prefer-inline')
int WlanHostedNetworkQuerySecondaryKey(
  int hClientHandle,
  Pointer<Uint32> pdwKeyLength,
  Pointer<Pointer<Uint8>> ppucKeyData,
  Pointer<BOOL> pbIsPassPhrase,
  Pointer<BOOL> pbPersistent,
  Pointer<Int32>? pFailReason,
) => _WlanHostedNetworkQuerySecondaryKey(
  hClientHandle,
  pdwKeyLength,
  ppucKeyData,
  pbIsPassPhrase,
  pbPersistent,
  pFailReason ?? nullptr,
  nullptr,
);

@Native<
  Uint32 Function(
    HANDLE,
    Pointer<Uint32>,
    Pointer<Pointer<Uint8>>,
    Pointer<BOOL>,
    Pointer<BOOL>,
    Pointer<Int32>,
    Pointer,
  )
>(symbol: 'WlanHostedNetworkQuerySecondaryKey')
external int _WlanHostedNetworkQuerySecondaryKey(
  int hClientHandle,
  Pointer<Uint32> pdwKeyLength,
  Pointer<Pointer<Uint8>> ppucKeyData,
  Pointer<BOOL> pbIsPassPhrase,
  Pointer<BOOL> pbPersistent,
  Pointer<Int32> pFailReason,
  Pointer pvReserved,
);

/// Queries the current status of the wireless Hosted Network.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlanhostednetworkquerystatus>.
///
/// {@category wlanapi}
@pragma('vm:prefer-inline')
int WlanHostedNetworkQueryStatus(
  int hClientHandle,
  Pointer<Pointer<WLAN_HOSTED_NETWORK_STATUS>> ppWlanHostedNetworkStatus,
) => _WlanHostedNetworkQueryStatus(
  hClientHandle,
  ppWlanHostedNetworkStatus,
  nullptr,
);

@Native<
  Uint32 Function(HANDLE, Pointer<Pointer<WLAN_HOSTED_NETWORK_STATUS>>, Pointer)
>(symbol: 'WlanHostedNetworkQueryStatus')
external int _WlanHostedNetworkQueryStatus(
  int hClientHandle,
  Pointer<Pointer<WLAN_HOSTED_NETWORK_STATUS>> ppWlanHostedNetworkStatus,
  Pointer pvReserved,
);

/// Refreshes the configurable and auto-generated parts of the wireless Hosted
/// Network security settings.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlanhostednetworkrefreshsecuritysettings>.
///
/// {@category wlanapi}
@pragma('vm:prefer-inline')
int WlanHostedNetworkRefreshSecuritySettings(
  int hClientHandle,
  Pointer<Int32>? pFailReason,
) => _WlanHostedNetworkRefreshSecuritySettings(
  hClientHandle,
  pFailReason ?? nullptr,
  nullptr,
);

@Native<Uint32 Function(HANDLE, Pointer<Int32>, Pointer)>(
  symbol: 'WlanHostedNetworkRefreshSecuritySettings',
)
external int _WlanHostedNetworkRefreshSecuritySettings(
  int hClientHandle,
  Pointer<Int32> pFailReason,
  Pointer pvReserved,
);

/// Sets static properties of the wireless Hosted Network.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlanhostednetworksetproperty>.
///
/// {@category wlanapi}
@pragma('vm:prefer-inline')
int WlanHostedNetworkSetProperty(
  int hClientHandle,
  WLAN_HOSTED_NETWORK_OPCODE opCode,
  int dwDataSize,
  Pointer pvData,
  Pointer<Int32>? pFailReason,
) => _WlanHostedNetworkSetProperty(
  hClientHandle,
  opCode,
  dwDataSize,
  pvData,
  pFailReason ?? nullptr,
  nullptr,
);

@Native<
  Uint32 Function(HANDLE, Int32, Uint32, Pointer, Pointer<Int32>, Pointer)
>(symbol: 'WlanHostedNetworkSetProperty')
external int _WlanHostedNetworkSetProperty(
  int hClientHandle,
  int opCode,
  int dwDataSize,
  Pointer pvData,
  Pointer<Int32> pFailReason,
  Pointer pvReserved,
);

/// Configures the secondary security key that will be used by the wireless
/// Hosted Network.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlanhostednetworksetsecondarykey>.
///
/// {@category wlanapi}
@pragma('vm:prefer-inline')
int WlanHostedNetworkSetSecondaryKey(
  int hClientHandle,
  int dwKeyLength,
  Pointer<Uint8> pucKeyData,
  bool bIsPassPhrase,
  bool bPersistent,
  Pointer<Int32>? pFailReason,
) => _WlanHostedNetworkSetSecondaryKey(
  hClientHandle,
  dwKeyLength,
  pucKeyData,
  bIsPassPhrase ? TRUE : FALSE,
  bPersistent ? TRUE : FALSE,
  pFailReason ?? nullptr,
  nullptr,
);

@Native<
  Uint32 Function(
    HANDLE,
    Uint32,
    Pointer<Uint8>,
    BOOL,
    BOOL,
    Pointer<Int32>,
    Pointer,
  )
>(symbol: 'WlanHostedNetworkSetSecondaryKey')
external int _WlanHostedNetworkSetSecondaryKey(
  int hClientHandle,
  int dwKeyLength,
  Pointer<Uint8> pucKeyData,
  int bIsPassPhrase,
  int bPersistent,
  Pointer<Int32> pFailReason,
  Pointer pvReserved,
);

/// Starts the wireless Hosted Network.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlanhostednetworkstartusing>.
///
/// {@category wlanapi}
@pragma('vm:prefer-inline')
int WlanHostedNetworkStartUsing(
  int hClientHandle,
  Pointer<Int32>? pFailReason,
) => _WlanHostedNetworkStartUsing(
  hClientHandle,
  pFailReason ?? nullptr,
  nullptr,
);

@Native<Uint32 Function(HANDLE, Pointer<Int32>, Pointer)>(
  symbol: 'WlanHostedNetworkStartUsing',
)
external int _WlanHostedNetworkStartUsing(
  int hClientHandle,
  Pointer<Int32> pFailReason,
  Pointer pvReserved,
);

/// Stops the wireless Hosted Network.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlanhostednetworkstopusing>.
///
/// {@category wlanapi}
@pragma('vm:prefer-inline')
int WlanHostedNetworkStopUsing(
  int hClientHandle,
  Pointer<Int32>? pFailReason,
) =>
    _WlanHostedNetworkStopUsing(hClientHandle, pFailReason ?? nullptr, nullptr);

@Native<Uint32 Function(HANDLE, Pointer<Int32>, Pointer)>(
  symbol: 'WlanHostedNetworkStopUsing',
)
external int _WlanHostedNetworkStopUsing(
  int hClientHandle,
  Pointer<Int32> pFailReason,
  Pointer pvReserved,
);

/// Provides a mechanism for independent hardware vendor (IHV) control of WLAN
/// drivers or services.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlanihvcontrol>.
///
/// {@category wlanapi}
@pragma('vm:prefer-inline')
int WlanIhvControl(
  int hClientHandle,
  Pointer<GUID> pInterfaceGuid,
  WLAN_IHV_CONTROL_TYPE type,
  int dwInBufferSize,
  Pointer pInBuffer,
  int dwOutBufferSize,
  Pointer? pOutBuffer,
  Pointer<Uint32> pdwBytesReturned,
) => _WlanIhvControl(
  hClientHandle,
  pInterfaceGuid,
  type,
  dwInBufferSize,
  pInBuffer,
  dwOutBufferSize,
  pOutBuffer ?? nullptr,
  pdwBytesReturned,
);

@Native<
  Uint32 Function(
    HANDLE,
    Pointer<GUID>,
    Int32,
    Uint32,
    Pointer,
    Uint32,
    Pointer,
    Pointer<Uint32>,
  )
>(symbol: 'WlanIhvControl')
external int _WlanIhvControl(
  int hClientHandle,
  Pointer<GUID> pInterfaceGuid,
  int type,
  int dwInBufferSize,
  Pointer pInBuffer,
  int dwOutBufferSize,
  Pointer pOutBuffer,
  Pointer<Uint32> pdwBytesReturned,
);

/// Opens a connection to the server.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlanopenhandle>.
///
/// {@category wlanapi}
@pragma('vm:prefer-inline')
int WlanOpenHandle(
  int dwClientVersion,
  Pointer<Uint32> pdwNegotiatedVersion,
  Pointer<HANDLE> phClientHandle,
) => _WlanOpenHandle(
  dwClientVersion,
  nullptr,
  pdwNegotiatedVersion,
  phClientHandle,
);

@Native<Uint32 Function(Uint32, Pointer, Pointer<Uint32>, Pointer<HANDLE>)>(
  symbol: 'WlanOpenHandle',
)
external int _WlanOpenHandle(
  int dwClientVersion,
  Pointer pReserved,
  Pointer<Uint32> pdwNegotiatedVersion,
  Pointer<HANDLE> phClientHandle,
);

/// Queries for the parameters of the auto configuration service.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlanqueryautoconfigparameter>.
///
/// {@category wlanapi}
@pragma('vm:prefer-inline')
int WlanQueryAutoConfigParameter(
  int hClientHandle,
  WLAN_AUTOCONF_OPCODE opCode,
  Pointer<Uint32> pdwDataSize,
  Pointer<Pointer> ppData,
  Pointer<Int32>? pWlanOpcodeValueType,
) => _WlanQueryAutoConfigParameter(
  hClientHandle,
  opCode,
  nullptr,
  pdwDataSize,
  ppData,
  pWlanOpcodeValueType ?? nullptr,
);

@Native<
  Uint32 Function(
    HANDLE,
    Int32,
    Pointer,
    Pointer<Uint32>,
    Pointer<Pointer>,
    Pointer<Int32>,
  )
>(symbol: 'WlanQueryAutoConfigParameter')
external int _WlanQueryAutoConfigParameter(
  int hClientHandle,
  int opCode,
  Pointer pReserved,
  Pointer<Uint32> pdwDataSize,
  Pointer<Pointer> ppData,
  Pointer<Int32> pWlanOpcodeValueType,
);

/// Queries various parameters of a specified interface.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlanqueryinterface>.
///
/// {@category wlanapi}
@pragma('vm:prefer-inline')
int WlanQueryInterface(
  int hClientHandle,
  Pointer<GUID> pInterfaceGuid,
  WLAN_INTF_OPCODE opCode,
  Pointer<Uint32> pdwDataSize,
  Pointer<Pointer> ppData,
  Pointer<Int32>? pWlanOpcodeValueType,
) => _WlanQueryInterface(
  hClientHandle,
  pInterfaceGuid,
  opCode,
  nullptr,
  pdwDataSize,
  ppData,
  pWlanOpcodeValueType ?? nullptr,
);

@Native<
  Uint32 Function(
    HANDLE,
    Pointer<GUID>,
    Int32,
    Pointer,
    Pointer<Uint32>,
    Pointer<Pointer>,
    Pointer<Int32>,
  )
>(symbol: 'WlanQueryInterface')
external int _WlanQueryInterface(
  int hClientHandle,
  Pointer<GUID> pInterfaceGuid,
  int opCode,
  Pointer pReserved,
  Pointer<Uint32> pdwDataSize,
  Pointer<Pointer> ppData,
  Pointer<Int32> pWlanOpcodeValueType,
);

/// Retrieves a string that describes a specified reason code.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlanreasoncodetostring>.
///
/// {@category wlanapi}
@pragma('vm:prefer-inline')
int WlanReasonCodeToString(
  int dwReasonCode,
  int dwBufferSize,
  PCWSTR pStringBuffer,
) =>
    _WlanReasonCodeToString(dwReasonCode, dwBufferSize, pStringBuffer, nullptr);

@Native<Uint32 Function(Uint32, Uint32, PCWSTR, Pointer)>(
  symbol: 'WlanReasonCodeToString',
)
external int _WlanReasonCodeToString(
  int dwReasonCode,
  int dwBufferSize,
  PCWSTR pStringBuffer,
  Pointer pReserved,
);

/// Allows user mode clients with admin privileges, or User-Mode Driver
/// Framework (UMDF) drivers, to register for unsolicited notifications
/// corresponding to device services that they're interested in.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlanregisterdeviceservicenotification>.
///
/// {@category wlanapi}
@pragma('vm:prefer-inline')
int WlanRegisterDeviceServiceNotification(
  int hClientHandle,
  Pointer<WLAN_DEVICE_SERVICE_GUID_LIST>? pDevSvcGuidList,
) => _WlanRegisterDeviceServiceNotification(
  hClientHandle,
  pDevSvcGuidList ?? nullptr,
);

@Native<Uint32 Function(HANDLE, Pointer<WLAN_DEVICE_SERVICE_GUID_LIST>)>(
  symbol: 'WlanRegisterDeviceServiceNotification',
)
external int _WlanRegisterDeviceServiceNotification(
  int hClientHandle,
  Pointer<WLAN_DEVICE_SERVICE_GUID_LIST> pDevSvcGuidList,
);

/// Used to register and unregister notifications on all wireless interfaces.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlanregisternotification>.
///
/// {@category wlanapi}
@pragma('vm:prefer-inline')
int WlanRegisterNotification(
  int hClientHandle,
  WLAN_NOTIFICATION_SOURCES dwNotifSource,
  bool bIgnoreDuplicate,
  Pointer<NativeFunction<WLAN_NOTIFICATION_CALLBACK>>? funcCallback,
  Pointer? pCallbackContext,
  Pointer<Uint32>? pdwPrevNotifSource,
) => _WlanRegisterNotification(
  hClientHandle,
  dwNotifSource,
  bIgnoreDuplicate ? TRUE : FALSE,
  funcCallback ?? nullptr,
  pCallbackContext ?? nullptr,
  nullptr,
  pdwPrevNotifSource ?? nullptr,
);

@Native<
  Uint32 Function(
    HANDLE,
    Uint32,
    BOOL,
    Pointer<NativeFunction<WLAN_NOTIFICATION_CALLBACK>>,
    Pointer,
    Pointer,
    Pointer<Uint32>,
  )
>(symbol: 'WlanRegisterNotification')
external int _WlanRegisterNotification(
  int hClientHandle,
  int dwNotifSource,
  int bIgnoreDuplicate,
  Pointer<NativeFunction<WLAN_NOTIFICATION_CALLBACK>> funcCallback,
  Pointer pCallbackContext,
  Pointer pReserved,
  Pointer<Uint32> pdwPrevNotifSource,
);

/// Used to register and unregister notifications on a virtual station.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlanregistervirtualstationnotification>.
///
/// {@category wlanapi}
@pragma('vm:prefer-inline')
int WlanRegisterVirtualStationNotification(int hClientHandle, bool bRegister) =>
    _WlanRegisterVirtualStationNotification(
      hClientHandle,
      bRegister ? TRUE : FALSE,
      nullptr,
    );

@Native<Uint32 Function(HANDLE, BOOL, Pointer)>(
  symbol: 'WlanRegisterVirtualStationNotification',
)
external int _WlanRegisterVirtualStationNotification(
  int hClientHandle,
  int bRegister,
  Pointer pReserved,
);

/// Renames the specified profile.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlanrenameprofile>.
///
/// {@category wlanapi}
@pragma('vm:prefer-inline')
int WlanRenameProfile(
  int hClientHandle,
  Pointer<GUID> pInterfaceGuid,
  PCWSTR strOldProfileName,
  PCWSTR strNewProfileName,
) => _WlanRenameProfile(
  hClientHandle,
  pInterfaceGuid,
  strOldProfileName,
  strNewProfileName,
  nullptr,
);

@Native<Uint32 Function(HANDLE, Pointer<GUID>, PCWSTR, PCWSTR, Pointer)>(
  symbol: 'WlanRenameProfile',
)
external int _WlanRenameProfile(
  int hClientHandle,
  Pointer<GUID> pInterfaceGuid,
  PCWSTR strOldProfileName,
  PCWSTR strNewProfileName,
  Pointer pReserved,
);

/// Saves a temporary profile to the profile store.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlansavetemporaryprofile>.
///
/// {@category wlanapi}
@pragma('vm:prefer-inline')
int WlanSaveTemporaryProfile(
  int hClientHandle,
  Pointer<GUID> pInterfaceGuid,
  PCWSTR strProfileName,
  PCWSTR? strAllUserProfileSecurity,
  int dwFlags,
  bool bOverWrite,
) => _WlanSaveTemporaryProfile(
  hClientHandle,
  pInterfaceGuid,
  strProfileName,
  strAllUserProfileSecurity ?? nullptr,
  dwFlags,
  bOverWrite ? TRUE : FALSE,
  nullptr,
);

@Native<
  Uint32 Function(HANDLE, Pointer<GUID>, PCWSTR, PCWSTR, Uint32, BOOL, Pointer)
>(symbol: 'WlanSaveTemporaryProfile')
external int _WlanSaveTemporaryProfile(
  int hClientHandle,
  Pointer<GUID> pInterfaceGuid,
  PCWSTR strProfileName,
  PCWSTR strAllUserProfileSecurity,
  int dwFlags,
  int bOverWrite,
  Pointer pReserved,
);

/// Requests a scan for available networks on the indicated interface.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlanscan>.
///
/// {@category wlanapi}
@pragma('vm:prefer-inline')
int WlanScan(
  int hClientHandle,
  Pointer<GUID> pInterfaceGuid,
  Pointer<DOT11_SSID>? pDot11Ssid,
  Pointer<WLAN_RAW_DATA>? pIeData,
) => _WlanScan(
  hClientHandle,
  pInterfaceGuid,
  pDot11Ssid ?? nullptr,
  pIeData ?? nullptr,
  nullptr,
);

@Native<
  Uint32 Function(
    HANDLE,
    Pointer<GUID>,
    Pointer<DOT11_SSID>,
    Pointer<WLAN_RAW_DATA>,
    Pointer,
  )
>(symbol: 'WlanScan')
external int _WlanScan(
  int hClientHandle,
  Pointer<GUID> pInterfaceGuid,
  Pointer<DOT11_SSID> pDot11Ssid,
  Pointer<WLAN_RAW_DATA> pIeData,
  Pointer pReserved,
);

/// Sets parameters for the automatic configuration service.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlansetautoconfigparameter>.
///
/// {@category wlanapi}
@pragma('vm:prefer-inline')
int WlanSetAutoConfigParameter(
  int hClientHandle,
  WLAN_AUTOCONF_OPCODE opCode,
  int dwDataSize,
  Pointer pData,
) => _WlanSetAutoConfigParameter(
  hClientHandle,
  opCode,
  dwDataSize,
  pData,
  nullptr,
);

@Native<Uint32 Function(HANDLE, Int32, Uint32, Pointer, Pointer)>(
  symbol: 'WlanSetAutoConfigParameter',
)
external int _WlanSetAutoConfigParameter(
  int hClientHandle,
  int opCode,
  int dwDataSize,
  Pointer pData,
  Pointer pReserved,
);

/// Sets the permit/deny list.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlansetfilterlist>.
///
/// {@category wlanapi}
@pragma('vm:prefer-inline')
int WlanSetFilterList(
  int hClientHandle,
  WLAN_FILTER_LIST_TYPE wlanFilterListType,
  Pointer<DOT11_NETWORK_LIST>? pNetworkList,
) => _WlanSetFilterList(
  hClientHandle,
  wlanFilterListType,
  pNetworkList ?? nullptr,
  nullptr,
);

@Native<Uint32 Function(HANDLE, Int32, Pointer<DOT11_NETWORK_LIST>, Pointer)>(
  symbol: 'WlanSetFilterList',
)
external int _WlanSetFilterList(
  int hClientHandle,
  int wlanFilterListType,
  Pointer<DOT11_NETWORK_LIST> pNetworkList,
  Pointer pReserved,
);

/// Sets user-configurable parameters.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlansetinterface>.
///
/// {@category wlanapi}
@pragma('vm:prefer-inline')
int WlanSetInterface(
  int hClientHandle,
  Pointer<GUID> pInterfaceGuid,
  WLAN_INTF_OPCODE opCode,
  int dwDataSize,
  Pointer pData,
) => _WlanSetInterface(
  hClientHandle,
  pInterfaceGuid,
  opCode,
  dwDataSize,
  pData,
  nullptr,
);

@Native<
  Uint32 Function(HANDLE, Pointer<GUID>, Int32, Uint32, Pointer, Pointer)
>(symbol: 'WlanSetInterface')
external int _WlanSetInterface(
  int hClientHandle,
  Pointer<GUID> pInterfaceGuid,
  int opCode,
  int dwDataSize,
  Pointer pData,
  Pointer pReserved,
);

/// Sets the content of a specific profile.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlansetprofile>.
///
/// {@category wlanapi}
@pragma('vm:prefer-inline')
int WlanSetProfile(
  int hClientHandle,
  Pointer<GUID> pInterfaceGuid,
  int dwFlags,
  PCWSTR strProfileXml,
  PCWSTR? strAllUserProfileSecurity,
  bool bOverwrite,
  Pointer<Uint32> pdwReasonCode,
) => _WlanSetProfile(
  hClientHandle,
  pInterfaceGuid,
  dwFlags,
  strProfileXml,
  strAllUserProfileSecurity ?? nullptr,
  bOverwrite ? TRUE : FALSE,
  nullptr,
  pdwReasonCode,
);

@Native<
  Uint32 Function(
    HANDLE,
    Pointer<GUID>,
    Uint32,
    PCWSTR,
    PCWSTR,
    BOOL,
    Pointer,
    Pointer<Uint32>,
  )
>(symbol: 'WlanSetProfile')
external int _WlanSetProfile(
  int hClientHandle,
  Pointer<GUID> pInterfaceGuid,
  int dwFlags,
  PCWSTR strProfileXml,
  PCWSTR strAllUserProfileSecurity,
  int bOverwrite,
  Pointer pReserved,
  Pointer<Uint32> pdwReasonCode,
);

/// Sets the custom user data associated with a profile.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlansetprofilecustomuserdata>.
///
/// {@category wlanapi}
@pragma('vm:prefer-inline')
int WlanSetProfileCustomUserData(
  int hClientHandle,
  Pointer<GUID> pInterfaceGuid,
  PCWSTR strProfileName,
  int dwDataSize,
  Pointer<Uint8> pData,
) => _WlanSetProfileCustomUserData(
  hClientHandle,
  pInterfaceGuid,
  strProfileName,
  dwDataSize,
  pData,
  nullptr,
);

@Native<
  Uint32 Function(
    HANDLE,
    Pointer<GUID>,
    PCWSTR,
    Uint32,
    Pointer<Uint8>,
    Pointer,
  )
>(symbol: 'WlanSetProfileCustomUserData')
external int _WlanSetProfileCustomUserData(
  int hClientHandle,
  Pointer<GUID> pInterfaceGuid,
  PCWSTR strProfileName,
  int dwDataSize,
  Pointer<Uint8> pData,
  Pointer pReserved,
);

/// Sets the Extensible Authentication Protocol (EAP) user credentials as
/// specified by raw EAP data.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlansetprofileeapuserdata>.
///
/// {@category wlanapi}
@pragma('vm:prefer-inline')
int WlanSetProfileEapUserData(
  int hClientHandle,
  Pointer<GUID> pInterfaceGuid,
  PCWSTR strProfileName,
  EAP_METHOD_TYPE eapType,
  WLAN_SET_EAPHOST_FLAGS dwFlags,
  int dwEapUserDataSize,
  Pointer<Uint8>? pbEapUserData,
) => _WlanSetProfileEapUserData(
  hClientHandle,
  pInterfaceGuid,
  strProfileName,
  eapType,
  dwFlags,
  dwEapUserDataSize,
  pbEapUserData ?? nullptr,
  nullptr,
);

@Native<
  Uint32 Function(
    HANDLE,
    Pointer<GUID>,
    PCWSTR,
    EAP_METHOD_TYPE,
    Uint32,
    Uint32,
    Pointer<Uint8>,
    Pointer,
  )
>(symbol: 'WlanSetProfileEapUserData')
external int _WlanSetProfileEapUserData(
  int hClientHandle,
  Pointer<GUID> pInterfaceGuid,
  PCWSTR strProfileName,
  EAP_METHOD_TYPE eapType,
  int dwFlags,
  int dwEapUserDataSize,
  Pointer<Uint8> pbEapUserData,
  Pointer pReserved,
);

/// Sets the Extensible Authentication Protocol (EAP) user credentials as
/// specified by an XML string.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlansetprofileeapxmluserdata>.
///
/// {@category wlanapi}
@pragma('vm:prefer-inline')
int WlanSetProfileEapXmlUserData(
  int hClientHandle,
  Pointer<GUID> pInterfaceGuid,
  PCWSTR strProfileName,
  WLAN_SET_EAPHOST_FLAGS dwFlags,
  PCWSTR strEapXmlUserData,
) => _WlanSetProfileEapXmlUserData(
  hClientHandle,
  pInterfaceGuid,
  strProfileName,
  dwFlags,
  strEapXmlUserData,
  nullptr,
);

@Native<
  Uint32 Function(HANDLE, Pointer<GUID>, PCWSTR, Uint32, PCWSTR, Pointer)
>(symbol: 'WlanSetProfileEapXmlUserData')
external int _WlanSetProfileEapXmlUserData(
  int hClientHandle,
  Pointer<GUID> pInterfaceGuid,
  PCWSTR strProfileName,
  int dwFlags,
  PCWSTR strEapXmlUserData,
  Pointer pReserved,
);

/// Sets the preference order of profiles.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlansetprofilelist>.
///
/// {@category wlanapi}
@pragma('vm:prefer-inline')
int WlanSetProfileList(
  int hClientHandle,
  Pointer<GUID> pInterfaceGuid,
  int dwItems,
  Pointer<PCWSTR> strProfileNames,
) => _WlanSetProfileList(
  hClientHandle,
  pInterfaceGuid,
  dwItems,
  strProfileNames,
  nullptr,
);

@Native<
  Uint32 Function(HANDLE, Pointer<GUID>, Uint32, Pointer<PCWSTR>, Pointer)
>(symbol: 'WlanSetProfileList')
external int _WlanSetProfileList(
  int hClientHandle,
  Pointer<GUID> pInterfaceGuid,
  int dwItems,
  Pointer<PCWSTR> strProfileNames,
  Pointer pReserved,
);

/// Sets the position of a single, specified profile in the preference list.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlansetprofileposition>.
///
/// {@category wlanapi}
@pragma('vm:prefer-inline')
int WlanSetProfilePosition(
  int hClientHandle,
  Pointer<GUID> pInterfaceGuid,
  PCWSTR strProfileName,
  int dwPosition,
) => _WlanSetProfilePosition(
  hClientHandle,
  pInterfaceGuid,
  strProfileName,
  dwPosition,
  nullptr,
);

@Native<Uint32 Function(HANDLE, Pointer<GUID>, PCWSTR, Uint32, Pointer)>(
  symbol: 'WlanSetProfilePosition',
)
external int _WlanSetProfilePosition(
  int hClientHandle,
  Pointer<GUID> pInterfaceGuid,
  PCWSTR strProfileName,
  int dwPosition,
  Pointer pReserved,
);

/// Sets the proximity service discovery (PSD) information element (IE) data
/// list.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlansetpsdiedatalist>.
///
/// {@category wlanapi}
@pragma('vm:prefer-inline')
int WlanSetPsdIEDataList(
  int hClientHandle,
  PCWSTR? strFormat,
  Pointer<WLAN_RAW_DATA_LIST>? pPsdIEDataList,
) => _WlanSetPsdIEDataList(
  hClientHandle,
  strFormat ?? nullptr,
  pPsdIEDataList ?? nullptr,
  nullptr,
);

@Native<Uint32 Function(HANDLE, PCWSTR, Pointer<WLAN_RAW_DATA_LIST>, Pointer)>(
  symbol: 'WlanSetPsdIEDataList',
)
external int _WlanSetPsdIEDataList(
  int hClientHandle,
  PCWSTR strFormat,
  Pointer<WLAN_RAW_DATA_LIST> pPsdIEDataList,
  Pointer pReserved,
);

/// Sets the security settings for a configurable object.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlansetsecuritysettings>.
///
/// {@category wlanapi}
@pragma('vm:prefer-inline')
int WlanSetSecuritySettings(
  int hClientHandle,
  WLAN_SECURABLE_OBJECT securableObject,
  PCWSTR strModifiedSDDL,
) => _WlanSetSecuritySettings(hClientHandle, securableObject, strModifiedSDDL);

@Native<Uint32 Function(HANDLE, Int32, PCWSTR)>(
  symbol: 'WlanSetSecuritySettings',
)
external int _WlanSetSecuritySettings(
  int hClientHandle,
  int securableObject,
  PCWSTR strModifiedSDDL,
);
