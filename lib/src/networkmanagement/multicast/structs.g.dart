// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dart representations of common structs used in the Win32 API.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: directives_ordering, unnecessary_getters_setters
// ignore_for_file: unused_field, unused_import

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';
import '../../combase.dart';
import '../../guid.dart';
import '../../networkmanagement/multicast/structs.g.dart';
import '../../foundation/structs.g.dart';

/// {@category Struct}
class IPNG_ADDRESS extends Union {
  @Uint32()
  external int IpAddrV4;

  @Array(16)
  external Array<Uint8> IpAddrV6;
}

/// {@category Struct}
class MCAST_CLIENT_UID extends Struct {
  external Pointer<Uint8> ClientUID;

  @Uint32()
  external int ClientUIDLength;
}

/// {@category Struct}
class MCAST_LEASE_REQUEST extends Struct {
  @Int32()
  external int LeaseStartTime;

  @Int32()
  external int MaxLeaseStartTime;

  @Uint32()
  external int LeaseDuration;

  @Uint32()
  external int MinLeaseDuration;

  external IPNG_ADDRESS ServerAddress;

  @Uint16()
  external int MinAddrCount;

  @Uint16()
  external int AddrCount;

  external Pointer<Uint8> pAddrBuf;
}

/// {@category Struct}
class MCAST_LEASE_RESPONSE extends Struct {
  @Int32()
  external int LeaseStartTime;

  @Int32()
  external int LeaseEndTime;

  external IPNG_ADDRESS ServerAddress;

  @Uint16()
  external int AddrCount;

  external Pointer<Uint8> pAddrBuf;
}

/// {@category Struct}
class MCAST_SCOPE_CTX extends Struct {
  external IPNG_ADDRESS ScopeID;

  external IPNG_ADDRESS Interface;

  external IPNG_ADDRESS ServerID;
}

/// {@category Struct}
class MCAST_SCOPE_ENTRY extends Struct {
  external MCAST_SCOPE_CTX ScopeCtx;

  external IPNG_ADDRESS LastAddr;

  @Uint32()
  external int TTL;

  external UNICODE_STRING ScopeDesc;
}
