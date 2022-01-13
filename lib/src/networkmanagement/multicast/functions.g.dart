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
import '../../networkmanagement/multicast/structs.g.dart'; // -----------------------------------------------------------------------

// dhcpcsvc.dll
// -----------------------------------------------------------------------
final _dhcpcsvc = DynamicLibrary.open('dhcpcsvc.dll');

void McastApiCleanup() => _McastApiCleanup();

late final _McastApiCleanup = _dhcpcsvc
    .lookupFunction<Void Function(), void Function()>('McastApiCleanup');

int McastApiStartup(
  Pointer<Uint32> Version,
) =>
    _McastApiStartup(
      Version,
    );

late final _McastApiStartup = _dhcpcsvc.lookupFunction<
    Uint32 Function(
  Pointer<Uint32> Version,
),
    int Function(
  Pointer<Uint32> Version,
)>('McastApiStartup');

int McastEnumerateScopes(
  int AddrFamily,
  int ReQuery,
  Pointer<MCAST_SCOPE_ENTRY> pScopeList,
  Pointer<Uint32> pScopeLen,
  Pointer<Uint32> pScopeCount,
) =>
    _McastEnumerateScopes(
      AddrFamily,
      ReQuery,
      pScopeList,
      pScopeLen,
      pScopeCount,
    );

late final _McastEnumerateScopes = _dhcpcsvc.lookupFunction<
    Uint32 Function(
  Uint16 AddrFamily,
  Int32 ReQuery,
  Pointer<MCAST_SCOPE_ENTRY> pScopeList,
  Pointer<Uint32> pScopeLen,
  Pointer<Uint32> pScopeCount,
),
    int Function(
  int AddrFamily,
  int ReQuery,
  Pointer<MCAST_SCOPE_ENTRY> pScopeList,
  Pointer<Uint32> pScopeLen,
  Pointer<Uint32> pScopeCount,
)>('McastEnumerateScopes');

int McastGenUID(
  Pointer<MCAST_CLIENT_UID> pRequestID,
) =>
    _McastGenUID(
      pRequestID,
    );

late final _McastGenUID = _dhcpcsvc.lookupFunction<
    Uint32 Function(
  Pointer<MCAST_CLIENT_UID> pRequestID,
),
    int Function(
  Pointer<MCAST_CLIENT_UID> pRequestID,
)>('McastGenUID');

int McastReleaseAddress(
  int AddrFamily,
  Pointer<MCAST_CLIENT_UID> pRequestID,
  Pointer<MCAST_LEASE_REQUEST> pReleaseRequest,
) =>
    _McastReleaseAddress(
      AddrFamily,
      pRequestID,
      pReleaseRequest,
    );

late final _McastReleaseAddress = _dhcpcsvc.lookupFunction<
    Uint32 Function(
  Uint16 AddrFamily,
  Pointer<MCAST_CLIENT_UID> pRequestID,
  Pointer<MCAST_LEASE_REQUEST> pReleaseRequest,
),
    int Function(
  int AddrFamily,
  Pointer<MCAST_CLIENT_UID> pRequestID,
  Pointer<MCAST_LEASE_REQUEST> pReleaseRequest,
)>('McastReleaseAddress');

int McastRenewAddress(
  int AddrFamily,
  Pointer<MCAST_CLIENT_UID> pRequestID,
  Pointer<MCAST_LEASE_REQUEST> pRenewRequest,
  Pointer<MCAST_LEASE_RESPONSE> pRenewResponse,
) =>
    _McastRenewAddress(
      AddrFamily,
      pRequestID,
      pRenewRequest,
      pRenewResponse,
    );

late final _McastRenewAddress = _dhcpcsvc.lookupFunction<
    Uint32 Function(
  Uint16 AddrFamily,
  Pointer<MCAST_CLIENT_UID> pRequestID,
  Pointer<MCAST_LEASE_REQUEST> pRenewRequest,
  Pointer<MCAST_LEASE_RESPONSE> pRenewResponse,
),
    int Function(
  int AddrFamily,
  Pointer<MCAST_CLIENT_UID> pRequestID,
  Pointer<MCAST_LEASE_REQUEST> pRenewRequest,
  Pointer<MCAST_LEASE_RESPONSE> pRenewResponse,
)>('McastRenewAddress');

int McastRequestAddress(
  int AddrFamily,
  Pointer<MCAST_CLIENT_UID> pRequestID,
  Pointer<MCAST_SCOPE_CTX> pScopeCtx,
  Pointer<MCAST_LEASE_REQUEST> pAddrRequest,
  Pointer<MCAST_LEASE_RESPONSE> pAddrResponse,
) =>
    _McastRequestAddress(
      AddrFamily,
      pRequestID,
      pScopeCtx,
      pAddrRequest,
      pAddrResponse,
    );

late final _McastRequestAddress = _dhcpcsvc.lookupFunction<
    Uint32 Function(
  Uint16 AddrFamily,
  Pointer<MCAST_CLIENT_UID> pRequestID,
  Pointer<MCAST_SCOPE_CTX> pScopeCtx,
  Pointer<MCAST_LEASE_REQUEST> pAddrRequest,
  Pointer<MCAST_LEASE_RESPONSE> pAddrResponse,
),
    int Function(
  int AddrFamily,
  Pointer<MCAST_CLIENT_UID> pRequestID,
  Pointer<MCAST_SCOPE_CTX> pScopeCtx,
  Pointer<MCAST_LEASE_REQUEST> pAddrRequest,
  Pointer<MCAST_LEASE_RESPONSE> pAddrResponse,
)>('McastRequestAddress');
