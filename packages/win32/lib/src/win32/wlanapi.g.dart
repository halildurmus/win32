// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// Maps FFI prototypes onto the corresponding Win32 API function calls.
//
// ignore_for_file: avoid_positional_boolean_parameters
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: specify_nonobvious_property_types, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:ffi_leak_tracker/ffi_leak_tracker.dart';

import '../bstr.dart';
import '../callbacks.g.dart';
import '../com/interface.g.dart';
import '../com/iunknown.g.dart';
import '../constants.dart';
import '../constants.g.dart';
import '../enums.g.dart';
import '../exception.dart';
import '../extensions/pointer.dart';
import '../functions.dart';
import '../guid.dart';
import '../hresult.dart';
import '../hstring.dart';
import '../macros.dart';
import '../ntstatus.dart';
import '../pcstr.dart';
import '../pcwstr.dart';
import '../pstr.dart';
import '../pwstr.dart';
import '../rpc_status.dart';
import '../structs.g.dart';
import '../types.dart';
import '../utils.dart';
import '../win32_error.dart';
import '../win32_result.dart';

final _wlanapi = DynamicLibrary.open('wlanapi.dll');

/// Allocates memory.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlanallocatememory>.
///
/// {@category wlanapi}
Win32Result<Pointer> WlanAllocateMemory(int dwMemorySize) {
  resolveGetLastError();
  final result_ = _WlanAllocateMemory(dwMemorySize);
  return .new(value: result_, error: GetLastError());
}

final _WlanAllocateMemory = _wlanapi
    .lookupFunction<Pointer Function(Uint32), Pointer Function(int)>(
      'WlanAllocateMemory',
    );

/// Closes a connection to the server.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlanclosehandle>.
///
/// {@category wlanapi}
@pragma('vm:prefer-inline')
int WlanCloseHandle(HANDLE hClientHandle) =>
    _WlanCloseHandle(hClientHandle, nullptr);

final _WlanCloseHandle = _wlanapi
    .lookupFunction<
      Uint32 Function(Pointer, Pointer),
      int Function(Pointer, Pointer)
    >('WlanCloseHandle');

/// Attempts to connect to a specific network.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlanconnect>.
///
/// {@category wlanapi}
@pragma('vm:prefer-inline')
int WlanConnect(
  HANDLE hClientHandle,
  Pointer<GUID> pInterfaceGuid,
  Pointer<WLAN_CONNECTION_PARAMETERS> pConnectionParameters,
) =>
    _WlanConnect(hClientHandle, pInterfaceGuid, pConnectionParameters, nullptr);

final _WlanConnect = _wlanapi
    .lookupFunction<
      Uint32 Function(
        Pointer,
        Pointer<GUID>,
        Pointer<WLAN_CONNECTION_PARAMETERS>,
        Pointer,
      ),
      int Function(
        Pointer,
        Pointer<GUID>,
        Pointer<WLAN_CONNECTION_PARAMETERS>,
        Pointer,
      )
    >('WlanConnect');

/// Deletes a wireless profile for a wireless interface on the local computer.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlandeleteprofile>.
///
/// {@category wlanapi}
@pragma('vm:prefer-inline')
int WlanDeleteProfile(
  HANDLE hClientHandle,
  Pointer<GUID> pInterfaceGuid,
  PCWSTR strProfileName,
) => _WlanDeleteProfile(hClientHandle, pInterfaceGuid, strProfileName, nullptr);

final _WlanDeleteProfile = _wlanapi
    .lookupFunction<
      Uint32 Function(Pointer, Pointer<GUID>, Pointer<Utf16>, Pointer),
      int Function(Pointer, Pointer<GUID>, Pointer<Utf16>, Pointer)
    >('WlanDeleteProfile');

/// Allows an OEM or IHV component to communicate with a device service on a
/// particular wireless LAN interface.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlandeviceservicecommand>.
///
/// {@category wlanapi}
@pragma('vm:prefer-inline')
int WlanDeviceServiceCommand(
  HANDLE hClientHandle,
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

final _WlanDeviceServiceCommand = _wlanapi
    .lookupFunction<
      Uint32 Function(
        Pointer,
        Pointer<GUID>,
        Pointer<GUID>,
        Uint32,
        Uint32,
        Pointer,
        Uint32,
        Pointer,
        Pointer<Uint32>,
      ),
      int Function(
        Pointer,
        Pointer<GUID>,
        Pointer<GUID>,
        int,
        int,
        Pointer,
        int,
        Pointer,
        Pointer<Uint32>,
      )
    >('WlanDeviceServiceCommand');

/// Disconnects an interface from its current network.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlandisconnect>.
///
/// {@category wlanapi}
@pragma('vm:prefer-inline')
int WlanDisconnect(HANDLE hClientHandle, Pointer<GUID> pInterfaceGuid) =>
    _WlanDisconnect(hClientHandle, pInterfaceGuid, nullptr);

final _WlanDisconnect = _wlanapi
    .lookupFunction<
      Uint32 Function(Pointer, Pointer<GUID>, Pointer),
      int Function(Pointer, Pointer<GUID>, Pointer)
    >('WlanDisconnect');

/// Enumerates all of the wireless LAN interfaces currently enabled on the local
/// computer.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlanenuminterfaces>.
///
/// {@category wlanapi}
@pragma('vm:prefer-inline')
int WlanEnumInterfaces(
  HANDLE hClientHandle,
  Pointer<Pointer<WLAN_INTERFACE_INFO_LIST>> ppInterfaceList,
) => _WlanEnumInterfaces(hClientHandle, nullptr, ppInterfaceList);

final _WlanEnumInterfaces = _wlanapi
    .lookupFunction<
      Uint32 Function(
        Pointer,
        Pointer,
        Pointer<Pointer<WLAN_INTERFACE_INFO_LIST>>,
      ),
      int Function(Pointer, Pointer, Pointer<Pointer<WLAN_INTERFACE_INFO_LIST>>)
    >('WlanEnumInterfaces');

/// Extracts the proximity service discovery (PSD) information element (IE) data
/// list from raw IE data included in a beacon.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlanextractpsdiedatalist>.
///
/// {@category wlanapi}
@pragma('vm:prefer-inline')
int WlanExtractPsdIEDataList(
  HANDLE hClientHandle,
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

final _WlanExtractPsdIEDataList = _wlanapi
    .lookupFunction<
      Uint32 Function(
        Pointer,
        Uint32,
        Pointer<Uint8>,
        Pointer<Utf16>,
        Pointer,
        Pointer<Pointer<WLAN_RAW_DATA_LIST>>,
      ),
      int Function(
        Pointer,
        int,
        Pointer<Uint8>,
        Pointer<Utf16>,
        Pointer,
        Pointer<Pointer<WLAN_RAW_DATA_LIST>>,
      )
    >('WlanExtractPsdIEDataList');

/// Frees memory.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlanfreememory>.
///
/// {@category wlanapi}
@pragma('vm:prefer-inline')
void WlanFreeMemory(Pointer pMemory) => _WlanFreeMemory(pMemory);

final _WlanFreeMemory = _wlanapi
    .lookupFunction<Void Function(Pointer), void Function(Pointer)>(
      'WlanFreeMemory',
    );

/// Retrieves the list of available networks on a wireless LAN interface.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlangetavailablenetworklist>.
///
/// {@category wlanapi}
@pragma('vm:prefer-inline')
int WlanGetAvailableNetworkList(
  HANDLE hClientHandle,
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

final _WlanGetAvailableNetworkList = _wlanapi
    .lookupFunction<
      Uint32 Function(
        Pointer,
        Pointer<GUID>,
        Uint32,
        Pointer,
        Pointer<Pointer<WLAN_AVAILABLE_NETWORK_LIST>>,
      ),
      int Function(
        Pointer,
        Pointer<GUID>,
        int,
        Pointer,
        Pointer<Pointer<WLAN_AVAILABLE_NETWORK_LIST>>,
      )
    >('WlanGetAvailableNetworkList');

/// Retrieves a group policy or user permission list.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlangetfilterlist>.
///
/// {@category wlanapi}
@pragma('vm:prefer-inline')
int WlanGetFilterList(
  HANDLE hClientHandle,
  WLAN_FILTER_LIST_TYPE wlanFilterListType,
  Pointer<Pointer<DOT11_NETWORK_LIST>> ppNetworkList,
) => _WlanGetFilterList(
  hClientHandle,
  wlanFilterListType,
  nullptr,
  ppNetworkList,
);

final _WlanGetFilterList = _wlanapi
    .lookupFunction<
      Uint32 Function(
        Pointer,
        Int32,
        Pointer,
        Pointer<Pointer<DOT11_NETWORK_LIST>>,
      ),
      int Function(Pointer, int, Pointer, Pointer<Pointer<DOT11_NETWORK_LIST>>)
    >('WlanGetFilterList');

/// Retrieves the capabilities of an interface.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlangetinterfacecapability>.
///
/// {@category wlanapi}
@pragma('vm:prefer-inline')
int WlanGetInterfaceCapability(
  HANDLE hClientHandle,
  Pointer<GUID> pInterfaceGuid,
  Pointer<Pointer<WLAN_INTERFACE_CAPABILITY>> ppCapability,
) => _WlanGetInterfaceCapability(
  hClientHandle,
  pInterfaceGuid,
  nullptr,
  ppCapability,
);

final _WlanGetInterfaceCapability = _wlanapi
    .lookupFunction<
      Uint32 Function(
        Pointer,
        Pointer<GUID>,
        Pointer,
        Pointer<Pointer<WLAN_INTERFACE_CAPABILITY>>,
      ),
      int Function(
        Pointer,
        Pointer<GUID>,
        Pointer,
        Pointer<Pointer<WLAN_INTERFACE_CAPABILITY>>,
      )
    >('WlanGetInterfaceCapability');

/// Retrieves a list of the basic service set (BSS) entries of the wireless
/// network or networks on a given wireless LAN interface.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlangetnetworkbsslist>.
///
/// {@category wlanapi}
@pragma('vm:prefer-inline')
int WlanGetNetworkBssList(
  HANDLE hClientHandle,
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

final _WlanGetNetworkBssList = _wlanapi
    .lookupFunction<
      Uint32 Function(
        Pointer,
        Pointer<GUID>,
        Pointer<DOT11_SSID>,
        Int32,
        Int32,
        Pointer,
        Pointer<Pointer<WLAN_BSS_LIST>>,
      ),
      int Function(
        Pointer,
        Pointer<GUID>,
        Pointer<DOT11_SSID>,
        int,
        int,
        Pointer,
        Pointer<Pointer<WLAN_BSS_LIST>>,
      )
    >('WlanGetNetworkBssList');

/// Retrieves all information about a specified wireless profile.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlangetprofile>.
///
/// {@category wlanapi}
@pragma('vm:prefer-inline')
int WlanGetProfile(
  HANDLE hClientHandle,
  Pointer<GUID> pInterfaceGuid,
  PCWSTR strProfileName,
  Pointer<Pointer<Utf16>> pstrProfileXml,
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

final _WlanGetProfile = _wlanapi
    .lookupFunction<
      Uint32 Function(
        Pointer,
        Pointer<GUID>,
        Pointer<Utf16>,
        Pointer,
        Pointer<Pointer<Utf16>>,
        Pointer<Uint32>,
        Pointer<Uint32>,
      ),
      int Function(
        Pointer,
        Pointer<GUID>,
        Pointer<Utf16>,
        Pointer,
        Pointer<Pointer<Utf16>>,
        Pointer<Uint32>,
        Pointer<Uint32>,
      )
    >('WlanGetProfile');

/// Gets the custom user data associated with a wireless profile.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlangetprofilecustomuserdata>.
///
/// {@category wlanapi}
@pragma('vm:prefer-inline')
int WlanGetProfileCustomUserData(
  HANDLE hClientHandle,
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

final _WlanGetProfileCustomUserData = _wlanapi
    .lookupFunction<
      Uint32 Function(
        Pointer,
        Pointer<GUID>,
        Pointer<Utf16>,
        Pointer,
        Pointer<Uint32>,
        Pointer<Pointer<Uint8>>,
      ),
      int Function(
        Pointer,
        Pointer<GUID>,
        Pointer<Utf16>,
        Pointer,
        Pointer<Uint32>,
        Pointer<Pointer<Uint8>>,
      )
    >('WlanGetProfileCustomUserData');

/// Retrieves the list of profiles.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlangetprofilelist>.
///
/// {@category wlanapi}
@pragma('vm:prefer-inline')
int WlanGetProfileList(
  HANDLE hClientHandle,
  Pointer<GUID> pInterfaceGuid,
  Pointer<Pointer<WLAN_PROFILE_INFO_LIST>> ppProfileList,
) => _WlanGetProfileList(hClientHandle, pInterfaceGuid, nullptr, ppProfileList);

final _WlanGetProfileList = _wlanapi
    .lookupFunction<
      Uint32 Function(
        Pointer,
        Pointer<GUID>,
        Pointer,
        Pointer<Pointer<WLAN_PROFILE_INFO_LIST>>,
      ),
      int Function(
        Pointer,
        Pointer<GUID>,
        Pointer,
        Pointer<Pointer<WLAN_PROFILE_INFO_LIST>>,
      )
    >('WlanGetProfileList');

/// Gets the security settings associated with a configurable object.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlangetsecuritysettings>.
///
/// {@category wlanapi}
@pragma('vm:prefer-inline')
int WlanGetSecuritySettings(
  HANDLE hClientHandle,
  WLAN_SECURABLE_OBJECT securableObject,
  Pointer<Int32>? pValueType,
  Pointer<Pointer<Utf16>> pstrCurrentSDDL,
  Pointer<Uint32> pdwGrantedAccess,
) => _WlanGetSecuritySettings(
  hClientHandle,
  securableObject,
  pValueType ?? nullptr,
  pstrCurrentSDDL,
  pdwGrantedAccess,
);

final _WlanGetSecuritySettings = _wlanapi
    .lookupFunction<
      Uint32 Function(
        Pointer,
        Int32,
        Pointer<Int32>,
        Pointer<Pointer<Utf16>>,
        Pointer<Uint32>,
      ),
      int Function(
        Pointer,
        int,
        Pointer<Int32>,
        Pointer<Pointer<Utf16>>,
        Pointer<Uint32>,
      )
    >('WlanGetSecuritySettings');

/// Retrieves a list of the supported device services on a given wireless LAN
/// interface.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlangetsupporteddeviceservices>.
///
/// {@category wlanapi}
@pragma('vm:prefer-inline')
int WlanGetSupportedDeviceServices(
  HANDLE hClientHandle,
  Pointer<GUID> pInterfaceGuid,
  Pointer<Pointer<WLAN_DEVICE_SERVICE_GUID_LIST>> ppDevSvcGuidList,
) => _WlanGetSupportedDeviceServices(
  hClientHandle,
  pInterfaceGuid,
  ppDevSvcGuidList,
);

final _WlanGetSupportedDeviceServices = _wlanapi
    .lookupFunction<
      Uint32 Function(
        Pointer,
        Pointer<GUID>,
        Pointer<Pointer<WLAN_DEVICE_SERVICE_GUID_LIST>>,
      ),
      int Function(
        Pointer,
        Pointer<GUID>,
        Pointer<Pointer<WLAN_DEVICE_SERVICE_GUID_LIST>>,
      )
    >('WlanGetSupportedDeviceServices');

/// Transitions the wireless Hosted Network to the wlan_hosted_network_active
/// state without associating the request with the application's calling handle.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlanhostednetworkforcestart>.
///
/// {@category wlanapi}
@pragma('vm:prefer-inline')
int WlanHostedNetworkForceStart(
  HANDLE hClientHandle,
  Pointer<Int32>? pFailReason,
) => _WlanHostedNetworkForceStart(
  hClientHandle,
  pFailReason ?? nullptr,
  nullptr,
);

final _WlanHostedNetworkForceStart = _wlanapi
    .lookupFunction<
      Uint32 Function(Pointer, Pointer<Int32>, Pointer),
      int Function(Pointer, Pointer<Int32>, Pointer)
    >('WlanHostedNetworkForceStart');

/// Transitions the wireless Hosted Network to the wlan_hosted_network_idle
/// without associating the request with the application's calling handle.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlanhostednetworkforcestop>.
///
/// {@category wlanapi}
@pragma('vm:prefer-inline')
int WlanHostedNetworkForceStop(
  HANDLE hClientHandle,
  Pointer<Int32>? pFailReason,
) =>
    _WlanHostedNetworkForceStop(hClientHandle, pFailReason ?? nullptr, nullptr);

final _WlanHostedNetworkForceStop = _wlanapi
    .lookupFunction<
      Uint32 Function(Pointer, Pointer<Int32>, Pointer),
      int Function(Pointer, Pointer<Int32>, Pointer)
    >('WlanHostedNetworkForceStop');

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
  HANDLE hClientHandle,
  Pointer<Int32>? pFailReason,
) => _WlanHostedNetworkInitSettings(
  hClientHandle,
  pFailReason ?? nullptr,
  nullptr,
);

final _WlanHostedNetworkInitSettings = _wlanapi
    .lookupFunction<
      Uint32 Function(Pointer, Pointer<Int32>, Pointer),
      int Function(Pointer, Pointer<Int32>, Pointer)
    >('WlanHostedNetworkInitSettings');

/// Queries the current static properties of the wireless Hosted Network.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlanhostednetworkqueryproperty>.
///
/// {@category wlanapi}
@pragma('vm:prefer-inline')
int WlanHostedNetworkQueryProperty(
  HANDLE hClientHandle,
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

final _WlanHostedNetworkQueryProperty = _wlanapi
    .lookupFunction<
      Uint32 Function(
        Pointer,
        Int32,
        Pointer<Uint32>,
        Pointer<Pointer>,
        Pointer<Int32>,
        Pointer,
      ),
      int Function(
        Pointer,
        int,
        Pointer<Uint32>,
        Pointer<Pointer>,
        Pointer<Int32>,
        Pointer,
      )
    >('WlanHostedNetworkQueryProperty');

/// Queries the secondary security key that is configured to be used by the
/// wireless Hosted Network.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlanhostednetworkquerysecondarykey>.
///
/// {@category wlanapi}
@pragma('vm:prefer-inline')
int WlanHostedNetworkQuerySecondaryKey(
  HANDLE hClientHandle,
  Pointer<Uint32> pdwKeyLength,
  Pointer<Pointer<Uint8>> ppucKeyData,
  Pointer<Int32> pbIsPassPhrase,
  Pointer<Int32> pbPersistent,
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

final _WlanHostedNetworkQuerySecondaryKey = _wlanapi
    .lookupFunction<
      Uint32 Function(
        Pointer,
        Pointer<Uint32>,
        Pointer<Pointer<Uint8>>,
        Pointer<Int32>,
        Pointer<Int32>,
        Pointer<Int32>,
        Pointer,
      ),
      int Function(
        Pointer,
        Pointer<Uint32>,
        Pointer<Pointer<Uint8>>,
        Pointer<Int32>,
        Pointer<Int32>,
        Pointer<Int32>,
        Pointer,
      )
    >('WlanHostedNetworkQuerySecondaryKey');

/// Queries the current status of the wireless Hosted Network.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlanhostednetworkquerystatus>.
///
/// {@category wlanapi}
@pragma('vm:prefer-inline')
int WlanHostedNetworkQueryStatus(
  HANDLE hClientHandle,
  Pointer<Pointer<WLAN_HOSTED_NETWORK_STATUS>> ppWlanHostedNetworkStatus,
) => _WlanHostedNetworkQueryStatus(
  hClientHandle,
  ppWlanHostedNetworkStatus,
  nullptr,
);

final _WlanHostedNetworkQueryStatus = _wlanapi
    .lookupFunction<
      Uint32 Function(
        Pointer,
        Pointer<Pointer<WLAN_HOSTED_NETWORK_STATUS>>,
        Pointer,
      ),
      int Function(
        Pointer,
        Pointer<Pointer<WLAN_HOSTED_NETWORK_STATUS>>,
        Pointer,
      )
    >('WlanHostedNetworkQueryStatus');

/// Refreshes the configurable and auto-generated parts of the wireless Hosted
/// Network security settings.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlanhostednetworkrefreshsecuritysettings>.
///
/// {@category wlanapi}
@pragma('vm:prefer-inline')
int WlanHostedNetworkRefreshSecuritySettings(
  HANDLE hClientHandle,
  Pointer<Int32>? pFailReason,
) => _WlanHostedNetworkRefreshSecuritySettings(
  hClientHandle,
  pFailReason ?? nullptr,
  nullptr,
);

final _WlanHostedNetworkRefreshSecuritySettings = _wlanapi
    .lookupFunction<
      Uint32 Function(Pointer, Pointer<Int32>, Pointer),
      int Function(Pointer, Pointer<Int32>, Pointer)
    >('WlanHostedNetworkRefreshSecuritySettings');

/// Sets static properties of the wireless Hosted Network.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlanhostednetworksetproperty>.
///
/// {@category wlanapi}
@pragma('vm:prefer-inline')
int WlanHostedNetworkSetProperty(
  HANDLE hClientHandle,
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

final _WlanHostedNetworkSetProperty = _wlanapi
    .lookupFunction<
      Uint32 Function(Pointer, Int32, Uint32, Pointer, Pointer<Int32>, Pointer),
      int Function(Pointer, int, int, Pointer, Pointer<Int32>, Pointer)
    >('WlanHostedNetworkSetProperty');

/// Configures the secondary security key that will be used by the wireless
/// Hosted Network.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlanhostednetworksetsecondarykey>.
///
/// {@category wlanapi}
@pragma('vm:prefer-inline')
int WlanHostedNetworkSetSecondaryKey(
  HANDLE hClientHandle,
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

final _WlanHostedNetworkSetSecondaryKey = _wlanapi
    .lookupFunction<
      Uint32 Function(
        Pointer,
        Uint32,
        Pointer<Uint8>,
        Int32,
        Int32,
        Pointer<Int32>,
        Pointer,
      ),
      int Function(
        Pointer,
        int,
        Pointer<Uint8>,
        int,
        int,
        Pointer<Int32>,
        Pointer,
      )
    >('WlanHostedNetworkSetSecondaryKey');

/// Starts the wireless Hosted Network.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlanhostednetworkstartusing>.
///
/// {@category wlanapi}
@pragma('vm:prefer-inline')
int WlanHostedNetworkStartUsing(
  HANDLE hClientHandle,
  Pointer<Int32>? pFailReason,
) => _WlanHostedNetworkStartUsing(
  hClientHandle,
  pFailReason ?? nullptr,
  nullptr,
);

final _WlanHostedNetworkStartUsing = _wlanapi
    .lookupFunction<
      Uint32 Function(Pointer, Pointer<Int32>, Pointer),
      int Function(Pointer, Pointer<Int32>, Pointer)
    >('WlanHostedNetworkStartUsing');

/// Stops the wireless Hosted Network.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlanhostednetworkstopusing>.
///
/// {@category wlanapi}
@pragma('vm:prefer-inline')
int WlanHostedNetworkStopUsing(
  HANDLE hClientHandle,
  Pointer<Int32>? pFailReason,
) =>
    _WlanHostedNetworkStopUsing(hClientHandle, pFailReason ?? nullptr, nullptr);

final _WlanHostedNetworkStopUsing = _wlanapi
    .lookupFunction<
      Uint32 Function(Pointer, Pointer<Int32>, Pointer),
      int Function(Pointer, Pointer<Int32>, Pointer)
    >('WlanHostedNetworkStopUsing');

/// Provides a mechanism for independent hardware vendor (IHV) control of WLAN
/// drivers or services.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlanihvcontrol>.
///
/// {@category wlanapi}
@pragma('vm:prefer-inline')
int WlanIhvControl(
  HANDLE hClientHandle,
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

final _WlanIhvControl = _wlanapi
    .lookupFunction<
      Uint32 Function(
        Pointer,
        Pointer<GUID>,
        Int32,
        Uint32,
        Pointer,
        Uint32,
        Pointer,
        Pointer<Uint32>,
      ),
      int Function(
        Pointer,
        Pointer<GUID>,
        int,
        int,
        Pointer,
        int,
        Pointer,
        Pointer<Uint32>,
      )
    >('WlanIhvControl');

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
  Pointer<Pointer> phClientHandle,
) => _WlanOpenHandle(
  dwClientVersion,
  nullptr,
  pdwNegotiatedVersion,
  phClientHandle,
);

final _WlanOpenHandle = _wlanapi
    .lookupFunction<
      Uint32 Function(Uint32, Pointer, Pointer<Uint32>, Pointer<Pointer>),
      int Function(int, Pointer, Pointer<Uint32>, Pointer<Pointer>)
    >('WlanOpenHandle');

/// Queries for the parameters of the auto configuration service.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlanqueryautoconfigparameter>.
///
/// {@category wlanapi}
@pragma('vm:prefer-inline')
int WlanQueryAutoConfigParameter(
  HANDLE hClientHandle,
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

final _WlanQueryAutoConfigParameter = _wlanapi
    .lookupFunction<
      Uint32 Function(
        Pointer,
        Int32,
        Pointer,
        Pointer<Uint32>,
        Pointer<Pointer>,
        Pointer<Int32>,
      ),
      int Function(
        Pointer,
        int,
        Pointer,
        Pointer<Uint32>,
        Pointer<Pointer>,
        Pointer<Int32>,
      )
    >('WlanQueryAutoConfigParameter');

/// Queries various parameters of a specified interface.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlanqueryinterface>.
///
/// {@category wlanapi}
@pragma('vm:prefer-inline')
int WlanQueryInterface(
  HANDLE hClientHandle,
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

final _WlanQueryInterface = _wlanapi
    .lookupFunction<
      Uint32 Function(
        Pointer,
        Pointer<GUID>,
        Int32,
        Pointer,
        Pointer<Uint32>,
        Pointer<Pointer>,
        Pointer<Int32>,
      ),
      int Function(
        Pointer,
        Pointer<GUID>,
        int,
        Pointer,
        Pointer<Uint32>,
        Pointer<Pointer>,
        Pointer<Int32>,
      )
    >('WlanQueryInterface');

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

final _WlanReasonCodeToString = _wlanapi
    .lookupFunction<
      Uint32 Function(Uint32, Uint32, Pointer<Utf16>, Pointer),
      int Function(int, int, Pointer<Utf16>, Pointer)
    >('WlanReasonCodeToString');

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
  HANDLE hClientHandle,
  Pointer<WLAN_DEVICE_SERVICE_GUID_LIST>? pDevSvcGuidList,
) => _WlanRegisterDeviceServiceNotification(
  hClientHandle,
  pDevSvcGuidList ?? nullptr,
);

final _WlanRegisterDeviceServiceNotification = _wlanapi
    .lookupFunction<
      Uint32 Function(Pointer, Pointer<WLAN_DEVICE_SERVICE_GUID_LIST>),
      int Function(Pointer, Pointer<WLAN_DEVICE_SERVICE_GUID_LIST>)
    >('WlanRegisterDeviceServiceNotification');

/// Used to register and unregister notifications on all wireless interfaces.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlanregisternotification>.
///
/// {@category wlanapi}
@pragma('vm:prefer-inline')
int WlanRegisterNotification(
  HANDLE hClientHandle,
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

final _WlanRegisterNotification = _wlanapi
    .lookupFunction<
      Uint32 Function(
        Pointer,
        Uint32,
        Int32,
        Pointer<NativeFunction<WLAN_NOTIFICATION_CALLBACK>>,
        Pointer,
        Pointer,
        Pointer<Uint32>,
      ),
      int Function(
        Pointer,
        int,
        int,
        Pointer<NativeFunction<WLAN_NOTIFICATION_CALLBACK>>,
        Pointer,
        Pointer,
        Pointer<Uint32>,
      )
    >('WlanRegisterNotification');

/// Used to register and unregister notifications on a virtual station.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlanregistervirtualstationnotification>.
///
/// {@category wlanapi}
@pragma('vm:prefer-inline')
int WlanRegisterVirtualStationNotification(
  HANDLE hClientHandle,
  bool bRegister,
) => _WlanRegisterVirtualStationNotification(
  hClientHandle,
  bRegister ? TRUE : FALSE,
  nullptr,
);

final _WlanRegisterVirtualStationNotification = _wlanapi
    .lookupFunction<
      Uint32 Function(Pointer, Int32, Pointer),
      int Function(Pointer, int, Pointer)
    >('WlanRegisterVirtualStationNotification');

/// Renames the specified profile.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlanrenameprofile>.
///
/// {@category wlanapi}
@pragma('vm:prefer-inline')
int WlanRenameProfile(
  HANDLE hClientHandle,
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

final _WlanRenameProfile = _wlanapi
    .lookupFunction<
      Uint32 Function(
        Pointer,
        Pointer<GUID>,
        Pointer<Utf16>,
        Pointer<Utf16>,
        Pointer,
      ),
      int Function(
        Pointer,
        Pointer<GUID>,
        Pointer<Utf16>,
        Pointer<Utf16>,
        Pointer,
      )
    >('WlanRenameProfile');

/// Saves a temporary profile to the profile store.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlansavetemporaryprofile>.
///
/// {@category wlanapi}
@pragma('vm:prefer-inline')
int WlanSaveTemporaryProfile(
  HANDLE hClientHandle,
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

final _WlanSaveTemporaryProfile = _wlanapi
    .lookupFunction<
      Uint32 Function(
        Pointer,
        Pointer<GUID>,
        Pointer<Utf16>,
        Pointer<Utf16>,
        Uint32,
        Int32,
        Pointer,
      ),
      int Function(
        Pointer,
        Pointer<GUID>,
        Pointer<Utf16>,
        Pointer<Utf16>,
        int,
        int,
        Pointer,
      )
    >('WlanSaveTemporaryProfile');

/// Requests a scan for available networks on the indicated interface.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlanscan>.
///
/// {@category wlanapi}
@pragma('vm:prefer-inline')
int WlanScan(
  HANDLE hClientHandle,
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

final _WlanScan = _wlanapi
    .lookupFunction<
      Uint32 Function(
        Pointer,
        Pointer<GUID>,
        Pointer<DOT11_SSID>,
        Pointer<WLAN_RAW_DATA>,
        Pointer,
      ),
      int Function(
        Pointer,
        Pointer<GUID>,
        Pointer<DOT11_SSID>,
        Pointer<WLAN_RAW_DATA>,
        Pointer,
      )
    >('WlanScan');

/// Sets parameters for the automatic configuration service.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlansetautoconfigparameter>.
///
/// {@category wlanapi}
@pragma('vm:prefer-inline')
int WlanSetAutoConfigParameter(
  HANDLE hClientHandle,
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

final _WlanSetAutoConfigParameter = _wlanapi
    .lookupFunction<
      Uint32 Function(Pointer, Int32, Uint32, Pointer, Pointer),
      int Function(Pointer, int, int, Pointer, Pointer)
    >('WlanSetAutoConfigParameter');

/// Sets the permit/deny list.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlansetfilterlist>.
///
/// {@category wlanapi}
@pragma('vm:prefer-inline')
int WlanSetFilterList(
  HANDLE hClientHandle,
  WLAN_FILTER_LIST_TYPE wlanFilterListType,
  Pointer<DOT11_NETWORK_LIST>? pNetworkList,
) => _WlanSetFilterList(
  hClientHandle,
  wlanFilterListType,
  pNetworkList ?? nullptr,
  nullptr,
);

final _WlanSetFilterList = _wlanapi
    .lookupFunction<
      Uint32 Function(Pointer, Int32, Pointer<DOT11_NETWORK_LIST>, Pointer),
      int Function(Pointer, int, Pointer<DOT11_NETWORK_LIST>, Pointer)
    >('WlanSetFilterList');

/// Sets user-configurable parameters.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlansetinterface>.
///
/// {@category wlanapi}
@pragma('vm:prefer-inline')
int WlanSetInterface(
  HANDLE hClientHandle,
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

final _WlanSetInterface = _wlanapi
    .lookupFunction<
      Uint32 Function(Pointer, Pointer<GUID>, Int32, Uint32, Pointer, Pointer),
      int Function(Pointer, Pointer<GUID>, int, int, Pointer, Pointer)
    >('WlanSetInterface');

/// Sets the content of a specific profile.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlansetprofile>.
///
/// {@category wlanapi}
@pragma('vm:prefer-inline')
int WlanSetProfile(
  HANDLE hClientHandle,
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

final _WlanSetProfile = _wlanapi
    .lookupFunction<
      Uint32 Function(
        Pointer,
        Pointer<GUID>,
        Uint32,
        Pointer<Utf16>,
        Pointer<Utf16>,
        Int32,
        Pointer,
        Pointer<Uint32>,
      ),
      int Function(
        Pointer,
        Pointer<GUID>,
        int,
        Pointer<Utf16>,
        Pointer<Utf16>,
        int,
        Pointer,
        Pointer<Uint32>,
      )
    >('WlanSetProfile');

/// Sets the custom user data associated with a profile.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlansetprofilecustomuserdata>.
///
/// {@category wlanapi}
@pragma('vm:prefer-inline')
int WlanSetProfileCustomUserData(
  HANDLE hClientHandle,
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

final _WlanSetProfileCustomUserData = _wlanapi
    .lookupFunction<
      Uint32 Function(
        Pointer,
        Pointer<GUID>,
        Pointer<Utf16>,
        Uint32,
        Pointer<Uint8>,
        Pointer,
      ),
      int Function(
        Pointer,
        Pointer<GUID>,
        Pointer<Utf16>,
        int,
        Pointer<Uint8>,
        Pointer,
      )
    >('WlanSetProfileCustomUserData');

/// Sets the Extensible Authentication Protocol (EAP) user credentials as
/// specified by raw EAP data.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlansetprofileeapuserdata>.
///
/// {@category wlanapi}
@pragma('vm:prefer-inline')
int WlanSetProfileEapUserData(
  HANDLE hClientHandle,
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

final _WlanSetProfileEapUserData = _wlanapi
    .lookupFunction<
      Uint32 Function(
        Pointer,
        Pointer<GUID>,
        Pointer<Utf16>,
        EAP_METHOD_TYPE,
        Uint32,
        Uint32,
        Pointer<Uint8>,
        Pointer,
      ),
      int Function(
        Pointer,
        Pointer<GUID>,
        Pointer<Utf16>,
        EAP_METHOD_TYPE,
        int,
        int,
        Pointer<Uint8>,
        Pointer,
      )
    >('WlanSetProfileEapUserData');

/// Sets the Extensible Authentication Protocol (EAP) user credentials as
/// specified by an XML string.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlansetprofileeapxmluserdata>.
///
/// {@category wlanapi}
@pragma('vm:prefer-inline')
int WlanSetProfileEapXmlUserData(
  HANDLE hClientHandle,
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

final _WlanSetProfileEapXmlUserData = _wlanapi
    .lookupFunction<
      Uint32 Function(
        Pointer,
        Pointer<GUID>,
        Pointer<Utf16>,
        Uint32,
        Pointer<Utf16>,
        Pointer,
      ),
      int Function(
        Pointer,
        Pointer<GUID>,
        Pointer<Utf16>,
        int,
        Pointer<Utf16>,
        Pointer,
      )
    >('WlanSetProfileEapXmlUserData');

/// Sets the preference order of profiles.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlansetprofilelist>.
///
/// {@category wlanapi}
@pragma('vm:prefer-inline')
int WlanSetProfileList(
  HANDLE hClientHandle,
  Pointer<GUID> pInterfaceGuid,
  int dwItems,
  Pointer<Pointer<Utf16>> strProfileNames,
) => _WlanSetProfileList(
  hClientHandle,
  pInterfaceGuid,
  dwItems,
  strProfileNames,
  nullptr,
);

final _WlanSetProfileList = _wlanapi
    .lookupFunction<
      Uint32 Function(
        Pointer,
        Pointer<GUID>,
        Uint32,
        Pointer<Pointer<Utf16>>,
        Pointer,
      ),
      int Function(
        Pointer,
        Pointer<GUID>,
        int,
        Pointer<Pointer<Utf16>>,
        Pointer,
      )
    >('WlanSetProfileList');

/// Sets the position of a single, specified profile in the preference list.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlansetprofileposition>.
///
/// {@category wlanapi}
@pragma('vm:prefer-inline')
int WlanSetProfilePosition(
  HANDLE hClientHandle,
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

final _WlanSetProfilePosition = _wlanapi
    .lookupFunction<
      Uint32 Function(Pointer, Pointer<GUID>, Pointer<Utf16>, Uint32, Pointer),
      int Function(Pointer, Pointer<GUID>, Pointer<Utf16>, int, Pointer)
    >('WlanSetProfilePosition');

/// Sets the proximity service discovery (PSD) information element (IE) data
/// list.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlansetpsdiedatalist>.
///
/// {@category wlanapi}
@pragma('vm:prefer-inline')
int WlanSetPsdIEDataList(
  HANDLE hClientHandle,
  PCWSTR? strFormat,
  Pointer<WLAN_RAW_DATA_LIST>? pPsdIEDataList,
) => _WlanSetPsdIEDataList(
  hClientHandle,
  strFormat ?? nullptr,
  pPsdIEDataList ?? nullptr,
  nullptr,
);

final _WlanSetPsdIEDataList = _wlanapi
    .lookupFunction<
      Uint32 Function(
        Pointer,
        Pointer<Utf16>,
        Pointer<WLAN_RAW_DATA_LIST>,
        Pointer,
      ),
      int Function(
        Pointer,
        Pointer<Utf16>,
        Pointer<WLAN_RAW_DATA_LIST>,
        Pointer,
      )
    >('WlanSetPsdIEDataList');

/// Sets the security settings for a configurable object.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlansetsecuritysettings>.
///
/// {@category wlanapi}
@pragma('vm:prefer-inline')
int WlanSetSecuritySettings(
  HANDLE hClientHandle,
  WLAN_SECURABLE_OBJECT securableObject,
  PCWSTR strModifiedSDDL,
) => _WlanSetSecuritySettings(hClientHandle, securableObject, strModifiedSDDL);

final _WlanSetSecuritySettings = _wlanapi
    .lookupFunction<
      Uint32 Function(Pointer, Int32, Pointer<Utf16>),
      int Function(Pointer, int, Pointer<Utf16>)
    >('WlanSetSecuritySettings');
