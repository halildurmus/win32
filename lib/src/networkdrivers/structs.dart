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

class SOCKET_ADDRESS_LIST extends Struct {
  @Int32() external int iAddressCount;
  external SOCKET_ADDRESS Address;
}

class SOCKADDR_STORAGE_LH extends Struct {
  @Uint16() external int ss_family;
  external __byte__ __ss_pad1;
  @Int64() external int __ss_align;
  external __byte__ __ss_pad2;
}

class L2_NOTIFICATION_DATA extends Struct {
  @Uint32() external int NotificationSource;
  @Uint32() external int NotificationCode;
  external GUID InterfaceGuid;
  @Uint32() external int dwDataSize;
  external Pointer pData;
}

class NET_PHYSICAL_LOCATION_LH extends Struct {
  @Uint32() external int BusNumber;
  @Uint32() external int SlotNumber;
  @Uint32() external int FunctionNumber;
}

class IF_COUNTED_STRING_LH extends Struct {
  @Uint16() external int Length;
  external __ushort__ String;
}

class NDIS_INTERFACE_INFORMATION extends Struct {
  @Uint32() external int ifOperStatus;
  @Uint32() external int ifOperStatusFlags;
  @Uint32() external int MediaConnectState;
  @Uint32() external int MediaDuplexState;
  @Uint32() external int ifMtu;
  @Uint8() external int ifPromiscuousMode;
  @Uint8() external int ifDeviceWakeUpEnable;
  @Uint64() external int XmitLinkSpeed;
  @Uint64() external int RcvLinkSpeed;
  @Uint64() external int ifLastChange;
  @Uint64() external int ifCounterDiscontinuityTime;
  @Uint64() external int ifInUnknownProtos;
  @Uint64() external int ifInDiscards;
  @Uint64() external int ifInErrors;
  @Uint64() external int ifHCInOctets;
  @Uint64() external int ifHCInUcastPkts;
  @Uint64() external int ifHCInMulticastPkts;
  @Uint64() external int ifHCInBroadcastPkts;
  @Uint64() external int ifHCOutOctets;
  @Uint64() external int ifHCOutUcastPkts;
  @Uint64() external int ifHCOutMulticastPkts;
  @Uint64() external int ifHCOutBroadcastPkts;
  @Uint64() external int ifOutErrors;
  @Uint64() external int ifOutDiscards;
  @Uint64() external int ifHCInUcastOctets;
  @Uint64() external int ifHCInMulticastOctets;
  @Uint64() external int ifHCInBroadcastOctets;
  @Uint64() external int ifHCOutUcastOctets;
  @Uint64() external int ifHCOutMulticastOctets;
  @Uint64() external int ifHCOutBroadcastOctets;
  @Uint32() external int CompartmentId;
  @Uint32() external int SupportedStatistics;
}

