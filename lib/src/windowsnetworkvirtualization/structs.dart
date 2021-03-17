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

class WNV_OBJECT_HEADER extends Struct {
  @Uint8() external int MajorVersion;
  @Uint8() external int MinorVersion;
  @Uint32() external int Size;
}

class WNV_NOTIFICATION_PARAM extends Struct {
  external WNV_OBJECT_HEADER Header;
  @Uint32() external int NotificationType;
  @Uint32() external int PendingNotifications;
  external Pointer<Uint8> Buffer;
}

class WNV_POLICY_MISMATCH_PARAM extends Struct {
  @Uint16() external int CAFamily;
  @Uint16() external int PAFamily;
  @Uint32() external int VirtualSubnetId;
  external WNV_IP_ADDRESS CA;
  external WNV_IP_ADDRESS PA;
}

class WNV_PROVIDER_ADDRESS_CHANGE_PARAM extends Struct {
  @Uint16() external int PAFamily;
  external WNV_IP_ADDRESS PA;
  @Uint32() external int AddressState;
}

class WNV_CUSTOMER_ADDRESS_CHANGE_PARAM extends Struct {
  external DL_EUI48 MACAddress;
  @Uint16() external int CAFamily;
  external WNV_IP_ADDRESS CA;
  @Uint32() external int VirtualSubnetId;
  @Uint16() external int PAFamily;
  external WNV_IP_ADDRESS PA;
  @Uint32() external int NotificationReason;
}

class WNV_REDIRECT_PARAM extends Struct {
  @Uint16() external int CAFamily;
  @Uint16() external int PAFamily;
  @Uint16() external int NewPAFamily;
  @Uint32() external int VirtualSubnetId;
  external WNV_IP_ADDRESS CA;
  external WNV_IP_ADDRESS PA;
  external WNV_IP_ADDRESS NewPA;
}

