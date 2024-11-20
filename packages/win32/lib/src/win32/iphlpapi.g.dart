// Maps FFI prototypes onto the corresponding Win32 API function calls.
//
// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// ignore_for_file: avoid_positional_boolean_parameters
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../allocator.dart';
import '../bstr.dart';
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

/// Adds the specified IPv4 address to the specified adapter.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/iphlpapi/nf-iphlpapi-addipaddress>.
///
/// {@category iphlpapi}
@pragma('vm:prefer-inline')
int AddIPAddress(
  int address,
  int ipMask,
  int ifIndex,
  Pointer<Uint32> nTEContext,
  Pointer<Uint32> nTEInstance,
) => _AddIPAddress(address, ipMask, ifIndex, nTEContext, nTEInstance);

@Native<
  Uint32 Function(Uint32, Uint32, Uint32, Pointer<Uint32>, Pointer<Uint32>)
>(symbol: 'AddIPAddress')
external int _AddIPAddress(
  int address,
  int ipMask,
  int ifIndex,
  Pointer<Uint32> nTEContext,
  Pointer<Uint32> nTEInstance,
);

/// Converts a globally unique identifier (GUID) for a network interface to the
/// locally unique identifier (LUID) for the interface.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/netioapi/nf-netioapi-convertinterfaceguidtoluid>.
///
/// {@category iphlpapi}
@pragma('vm:prefer-inline')
WIN32_ERROR ConvertInterfaceGuidToLuid(
  Pointer<GUID> interfaceGuid,
  Pointer<NET_LUID_LH> interfaceLuid,
) => WIN32_ERROR(_ConvertInterfaceGuidToLuid(interfaceGuid, interfaceLuid));

@Native<Uint32 Function(Pointer<GUID>, Pointer<NET_LUID_LH>)>(
  symbol: 'ConvertInterfaceGuidToLuid',
)
external int _ConvertInterfaceGuidToLuid(
  Pointer<GUID> interfaceGuid,
  Pointer<NET_LUID_LH> interfaceLuid,
);

/// Deletes an IP address previously added using AddIPAddress.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/iphlpapi/nf-iphlpapi-deleteipaddress>.
///
/// {@category iphlpapi}
@pragma('vm:prefer-inline')
int DeleteIPAddress(int nTEContext) => _DeleteIPAddress(nTEContext);

@Native<Uint32 Function(Uint32)>(symbol: 'DeleteIPAddress')
external int _DeleteIPAddress(int nTEContext);

/// Obtains the index of an adapter, given its name.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/iphlpapi/nf-iphlpapi-getadapterindex>.
///
/// {@category iphlpapi}
@pragma('vm:prefer-inline')
int GetAdapterIndex(PCWSTR adapterName, Pointer<Uint32> ifIndex) =>
    _GetAdapterIndex(adapterName, ifIndex);

@Native<Uint32 Function(PCWSTR, Pointer<Uint32>)>(symbol: 'GetAdapterIndex')
external int _GetAdapterIndex(PCWSTR adapterName, Pointer<Uint32> ifIndex);

/// Retrieves the addresses associated with the adapters on the local computer.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/iphlpapi/nf-iphlpapi-getadaptersaddresses>.
///
/// {@category iphlpapi}
@pragma('vm:prefer-inline')
int GetAdaptersAddresses(
  int family,
  GET_ADAPTERS_ADDRESSES_FLAGS flags,
  Pointer<IP_ADAPTER_ADDRESSES_LH>? adapterAddresses,
  Pointer<Uint32> sizePointer,
) => _GetAdaptersAddresses(
  family,
  flags,
  nullptr,
  adapterAddresses ?? nullptr,
  sizePointer,
);

@Native<
  Uint32 Function(
    Uint32,
    Uint32,
    Pointer,
    Pointer<IP_ADAPTER_ADDRESSES_LH>,
    Pointer<Uint32>,
  )
>(symbol: 'GetAdaptersAddresses')
external int _GetAdaptersAddresses(
  int family,
  int flags,
  Pointer reserved,
  Pointer<IP_ADAPTER_ADDRESSES_LH> adapterAddresses,
  Pointer<Uint32> sizePointer,
);

/// Obtains the list of the network interface adapters with IPv4 enabled on the
/// local system.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/iphlpapi/nf-iphlpapi-getinterfaceinfo>.
///
/// {@category iphlpapi}
@pragma('vm:prefer-inline')
int GetInterfaceInfo(
  Pointer<IP_INTERFACE_INFO>? pIfTable,
  Pointer<Uint32> dwOutBufLen,
) => _GetInterfaceInfo(pIfTable ?? nullptr, dwOutBufLen);

@Native<Uint32 Function(Pointer<IP_INTERFACE_INFO>, Pointer<Uint32>)>(
  symbol: 'GetInterfaceInfo',
)
external int _GetInterfaceInfo(
  Pointer<IP_INTERFACE_INFO> pIfTable,
  Pointer<Uint32> dwOutBufLen,
);

/// Retrieves information about the adapter corresponding to the specified
/// interface.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/iphlpapi/nf-iphlpapi-getperadapterinfo>.
///
/// {@category iphlpapi}
@pragma('vm:prefer-inline')
int GetPerAdapterInfo(
  int ifIndex,
  Pointer<IP_PER_ADAPTER_INFO_W2KSP1>? pPerAdapterInfo,
  Pointer<Uint32> pOutBufLen,
) => _GetPerAdapterInfo(ifIndex, pPerAdapterInfo ?? nullptr, pOutBufLen);

@Native<
  Uint32 Function(Uint32, Pointer<IP_PER_ADAPTER_INFO_W2KSP1>, Pointer<Uint32>)
>(symbol: 'GetPerAdapterInfo')
external int _GetPerAdapterInfo(
  int ifIndex,
  Pointer<IP_PER_ADAPTER_INFO_W2KSP1> pPerAdapterInfo,
  Pointer<Uint32> pOutBufLen,
);

/// Releases an IPv4 address previously obtained through the Dynamic Host
/// Configuration Protocol (DHCP).
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/iphlpapi/nf-iphlpapi-ipreleaseaddress>.
///
/// {@category iphlpapi}
@pragma('vm:prefer-inline')
int IpReleaseAddress(Pointer<IP_ADAPTER_INDEX_MAP> adapterInfo) =>
    _IpReleaseAddress(adapterInfo);

@Native<Uint32 Function(Pointer<IP_ADAPTER_INDEX_MAP>)>(
  symbol: 'IpReleaseAddress',
)
external int _IpReleaseAddress(Pointer<IP_ADAPTER_INDEX_MAP> adapterInfo);

/// The IpRenewAddressfunction renews a lease on an IPv4 address previously
/// obtained through Dynamic Host Configuration Protocol (DHCP).
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/iphlpapi/nf-iphlpapi-iprenewaddress>.
///
/// {@category iphlpapi}
@pragma('vm:prefer-inline')
int IpRenewAddress(Pointer<IP_ADAPTER_INDEX_MAP> adapterInfo) =>
    _IpRenewAddress(adapterInfo);

@Native<Uint32 Function(Pointer<IP_ADAPTER_INDEX_MAP>)>(
  symbol: 'IpRenewAddress',
)
external int _IpRenewAddress(Pointer<IP_ADAPTER_INDEX_MAP> adapterInfo);
