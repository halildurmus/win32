// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// Tests that Win32 API prototypes can be successfully loaded (i.e. that
// lookupFunction works for all the APIs generated).
//
// ignore_for_file: non_constant_identifier_names, unnecessary_ignore
// ignore_for_file: specify_nonobvious_property_types, unused_import

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

final _iphlpapi = DynamicLibrary.open('iphlpapi.dll');

final _AddIPAddress = _iphlpapi
    .lookupFunction<
      Uint32 Function(Uint32, Uint32, Uint32, Pointer<Uint32>, Pointer<Uint32>),
      int Function(int, int, int, Pointer<Uint32>, Pointer<Uint32>)
    >('AddIPAddress');

final _ConvertInterfaceGuidToLuid = _iphlpapi
    .lookupFunction<
      Uint32 Function(Pointer<GUID>, Pointer<NET_LUID_LH>),
      int Function(Pointer<GUID>, Pointer<NET_LUID_LH>)
    >('ConvertInterfaceGuidToLuid');

final _DeleteIPAddress = _iphlpapi
    .lookupFunction<Uint32 Function(Uint32), int Function(int)>(
      'DeleteIPAddress',
    );

final _GetAdapterIndex = _iphlpapi
    .lookupFunction<
      Uint32 Function(Pointer<Utf16>, Pointer<Uint32>),
      int Function(Pointer<Utf16>, Pointer<Uint32>)
    >('GetAdapterIndex');

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

final _GetInterfaceInfo = _iphlpapi
    .lookupFunction<
      Uint32 Function(Pointer<IP_INTERFACE_INFO>, Pointer<Uint32>),
      int Function(Pointer<IP_INTERFACE_INFO>, Pointer<Uint32>)
    >('GetInterfaceInfo');

final _GetPerAdapterInfo = _iphlpapi
    .lookupFunction<
      Uint32 Function(
        Uint32,
        Pointer<IP_PER_ADAPTER_INFO_W2KSP1>,
        Pointer<Uint32>,
      ),
      int Function(int, Pointer<IP_PER_ADAPTER_INFO_W2KSP1>, Pointer<Uint32>)
    >('GetPerAdapterInfo');

final _IpReleaseAddress = _iphlpapi
    .lookupFunction<
      Uint32 Function(Pointer<IP_ADAPTER_INDEX_MAP>),
      int Function(Pointer<IP_ADAPTER_INDEX_MAP>)
    >('IpReleaseAddress');

final _IpRenewAddress = _iphlpapi
    .lookupFunction<
      Uint32 Function(Pointer<IP_ADAPTER_INDEX_MAP>),
      int Function(Pointer<IP_ADAPTER_INDEX_MAP>)
    >('IpRenewAddress');
