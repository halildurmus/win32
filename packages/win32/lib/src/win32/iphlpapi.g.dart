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

final _iphlpapi = DynamicLibrary.open('iphlpapi.dll');

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

final _AddIPAddress = _iphlpapi
    .lookupFunction<
      Uint32 Function(Uint32, Uint32, Uint32, Pointer<Uint32>, Pointer<Uint32>),
      int Function(int, int, int, Pointer<Uint32>, Pointer<Uint32>)
    >('AddIPAddress');

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
) => .new(_ConvertInterfaceGuidToLuid(interfaceGuid, interfaceLuid));

final _ConvertInterfaceGuidToLuid = _iphlpapi
    .lookupFunction<
      Uint32 Function(Pointer<GUID>, Pointer<NET_LUID_LH>),
      int Function(Pointer<GUID>, Pointer<NET_LUID_LH>)
    >('ConvertInterfaceGuidToLuid');

/// Deletes an IP address previously added using AddIPAddress.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/iphlpapi/nf-iphlpapi-deleteipaddress>.
///
/// {@category iphlpapi}
@pragma('vm:prefer-inline')
int DeleteIPAddress(int nTEContext) => _DeleteIPAddress(nTEContext);

final _DeleteIPAddress = _iphlpapi
    .lookupFunction<Uint32 Function(Uint32), int Function(int)>(
      'DeleteIPAddress',
    );

/// Obtains the index of an adapter, given its name.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/iphlpapi/nf-iphlpapi-getadapterindex>.
///
/// {@category iphlpapi}
@pragma('vm:prefer-inline')
int GetAdapterIndex(PCWSTR adapterName, Pointer<Uint32> ifIndex) =>
    _GetAdapterIndex(adapterName, ifIndex);

final _GetAdapterIndex = _iphlpapi
    .lookupFunction<
      Uint32 Function(Pointer<Utf16>, Pointer<Uint32>),
      int Function(Pointer<Utf16>, Pointer<Uint32>)
    >('GetAdapterIndex');

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

final _GetAdaptersAddresses = _iphlpapi
    .lookupFunction<
      Uint32 Function(
        Uint32,
        Uint32,
        Pointer,
        Pointer<IP_ADAPTER_ADDRESSES_LH>,
        Pointer<Uint32>,
      ),
      int Function(
        int,
        int,
        Pointer,
        Pointer<IP_ADAPTER_ADDRESSES_LH>,
        Pointer<Uint32>,
      )
    >('GetAdaptersAddresses');

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

final _GetInterfaceInfo = _iphlpapi
    .lookupFunction<
      Uint32 Function(Pointer<IP_INTERFACE_INFO>, Pointer<Uint32>),
      int Function(Pointer<IP_INTERFACE_INFO>, Pointer<Uint32>)
    >('GetInterfaceInfo');

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

final _GetPerAdapterInfo = _iphlpapi
    .lookupFunction<
      Uint32 Function(
        Uint32,
        Pointer<IP_PER_ADAPTER_INFO_W2KSP1>,
        Pointer<Uint32>,
      ),
      int Function(int, Pointer<IP_PER_ADAPTER_INFO_W2KSP1>, Pointer<Uint32>)
    >('GetPerAdapterInfo');

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

final _IpReleaseAddress = _iphlpapi
    .lookupFunction<
      Uint32 Function(Pointer<IP_ADAPTER_INDEX_MAP>),
      int Function(Pointer<IP_ADAPTER_INDEX_MAP>)
    >('IpReleaseAddress');

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

final _IpRenewAddress = _iphlpapi
    .lookupFunction<
      Uint32 Function(Pointer<IP_ADAPTER_INDEX_MAP>),
      int Function(Pointer<IP_ADAPTER_INDEX_MAP>)
    >('IpRenewAddress');
