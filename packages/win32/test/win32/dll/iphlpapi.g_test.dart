// Tests that Win32 API prototypes can be successfully loaded (i.e. that
// lookupFunction works for all the APIs generated).
//
// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// ignore_for_file: non_constant_identifier_names, unused_import,
// ignore_for_file: unused_local_variable

@TestOn('windows')
library;

import 'dart:ffi';

import 'package:checks/checks.dart';
import 'package:ffi/ffi.dart';
import 'package:test/scaffolding.dart';
import 'package:win32/win32.dart';

import '../../helpers.dart';

void main() {
  group('iphlpapi.dll', () {
    test('AddIPAddress can be instantiated', () {
      check(_AddIPAddress).isA<Function>();
    });
    test('ConvertInterfaceGuidToLuid can be instantiated', () {
      check(_ConvertInterfaceGuidToLuid).isA<Function>();
    });
    test('DeleteIPAddress can be instantiated', () {
      check(_DeleteIPAddress).isA<Function>();
    });
    test('GetAdapterIndex can be instantiated', () {
      check(_GetAdapterIndex).isA<Function>();
    });
    test('GetAdaptersAddresses can be instantiated', () {
      check(_GetAdaptersAddresses).isA<Function>();
    });
    test('GetInterfaceInfo can be instantiated', () {
      check(_GetInterfaceInfo).isA<Function>();
    });
    test('GetPerAdapterInfo can be instantiated', () {
      check(_GetPerAdapterInfo).isA<Function>();
    });
    test('IpReleaseAddress can be instantiated', () {
      check(_IpReleaseAddress).isA<Function>();
    });
    test('IpRenewAddress can be instantiated', () {
      check(_IpRenewAddress).isA<Function>();
    });
  });
}

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

@Native<Uint32 Function(Pointer<GUID>, Pointer<NET_LUID_LH>)>(
  symbol: 'ConvertInterfaceGuidToLuid',
)
external int _ConvertInterfaceGuidToLuid(
  Pointer<GUID> interfaceGuid,
  Pointer<NET_LUID_LH> interfaceLuid,
);

@Native<Uint32 Function(Uint32)>(symbol: 'DeleteIPAddress')
external int _DeleteIPAddress(int nTEContext);

@Native<Uint32 Function(PCWSTR, Pointer<Uint32>)>(symbol: 'GetAdapterIndex')
external int _GetAdapterIndex(PCWSTR adapterName, Pointer<Uint32> ifIndex);

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

@Native<Uint32 Function(Pointer<IP_INTERFACE_INFO>, Pointer<Uint32>)>(
  symbol: 'GetInterfaceInfo',
)
external int _GetInterfaceInfo(
  Pointer<IP_INTERFACE_INFO> pIfTable,
  Pointer<Uint32> dwOutBufLen,
);

@Native<
  Uint32 Function(Uint32, Pointer<IP_PER_ADAPTER_INFO_W2KSP1>, Pointer<Uint32>)
>(symbol: 'GetPerAdapterInfo')
external int _GetPerAdapterInfo(
  int ifIndex,
  Pointer<IP_PER_ADAPTER_INFO_W2KSP1> pPerAdapterInfo,
  Pointer<Uint32> pOutBufLen,
);

@Native<Uint32 Function(Pointer<IP_ADAPTER_INDEX_MAP>)>(
  symbol: 'IpReleaseAddress',
)
external int _IpReleaseAddress(Pointer<IP_ADAPTER_INDEX_MAP> adapterInfo);

@Native<Uint32 Function(Pointer<IP_ADAPTER_INDEX_MAP>)>(
  symbol: 'IpRenewAddress',
)
external int _IpRenewAddress(Pointer<IP_ADAPTER_INDEX_MAP> adapterInfo);
