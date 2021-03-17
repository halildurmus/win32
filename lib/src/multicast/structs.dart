// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dart representations of common structs used in the Win32 API.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// -----------------------------------------------------------------------------
// Linter exceptions
// -----------------------------------------------------------------------------
// ignore_for_file: camel_case_types ignore_for_file: camel_case_extensions
//
// Why? The linter defaults to throw a warning for types not named as camel
// case. We deliberately break this convention to match the Win32 underlying
// types.
//
//
// ignore_for_file: unused_field
//
// Why? The linter complains about unused fields (e.g. a class that contains
// underscore-prefixed members that are not used in the library. In this class,
// we use this feature to ensure that sizeOf<STRUCT_NAME> returns a size at
// least as large as the underlying native struct. See, for example,
// ENUMLOGFONTEX.
//
//
// ignore_for_file: unnecessary_getters_setters
//
// Why? In structs like VARIANT, we're using getters and setters to project the
// same underlying data property to various union types. The trivial overhead is
// outweighed by readability.
//
//
// ignore_for_file: unused_import
//
// Why? We speculatively include some imports that we might generate a
// requirement for.
// -----------------------------------------------------------------------------

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';

class IPNG_ADDRESS extends Struct {
  @Uint32() external int IpAddrV4;
  external __ubyte__ IpAddrV6;
}

class MCAST_CLIENT_UID extends Struct {
  external Pointer<Uint8> ClientUID;
  @Uint32() external int ClientUIDLength;
}

class MCAST_SCOPE_CTX extends Struct {
  external IPNG_ADDRESS ScopeID;
  external IPNG_ADDRESS Interface;
  external IPNG_ADDRESS ServerID;
}

class MCAST_SCOPE_ENTRY extends Struct {
  external MCAST_SCOPE_CTX ScopeCtx;
  external IPNG_ADDRESS LastAddr;
  @Uint32() external int TTL;
  external UNICODE_STRING ScopeDesc;
}

class MCAST_LEASE_REQUEST extends Struct {
  @Int32() external int LeaseStartTime;
  @Int32() external int MaxLeaseStartTime;
  @Uint32() external int LeaseDuration;
  @Uint32() external int MinLeaseDuration;
  external IPNG_ADDRESS ServerAddress;
  @Uint16() external int MinAddrCount;
  @Uint16() external int AddrCount;
  external Pointer<Uint8> pAddrBuf;
}

class MCAST_LEASE_RESPONSE extends Struct {
  @Int32() external int LeaseStartTime;
  @Int32() external int LeaseEndTime;
  external IPNG_ADDRESS ServerAddress;
  @Uint16() external int AddrCount;
  external Pointer<Uint8> pAddrBuf;
}

