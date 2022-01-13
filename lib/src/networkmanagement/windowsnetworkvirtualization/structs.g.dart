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
import '../../networkmanagement/windowsfilteringplatform/structs.g.dart';
import '../../networkmanagement/windowsnetworkvirtualization/structs.g.dart';
import '../../networking/winsock/structs.g.dart';

/// {@category Struct}
class WNV_CUSTOMER_ADDRESS_CHANGE_PARAM extends Struct {
  external DL_EUI48 MACAddress;

  @Uint16()
  external int CAFamily;

  external WNV_IP_ADDRESS CA;

  @Uint32()
  external int VirtualSubnetId;

  @Uint16()
  external int PAFamily;

  external WNV_IP_ADDRESS PA;

  @Int32()
  external int NotificationReason;
}

/// {@category Struct}
class WNV_IP_ADDRESS extends Struct {
  external _WNV_IP_ADDRESS__IP_e__Union IP;
}

/// {@category Struct}
class _WNV_IP_ADDRESS__IP_e__Union extends Union {
  external IN_ADDR v4;

  external IN6_ADDR v6;

  @Array(16)
  external Array<Uint8> Addr;
}

extension WNV_IP_ADDRESS_Extension on WNV_IP_ADDRESS {
  IN_ADDR get v4 => this.IP.v4;
  set v4(IN_ADDR value) => this.IP.v4 = value;

  IN6_ADDR get v6 => this.IP.v6;
  set v6(IN6_ADDR value) => this.IP.v6 = value;

  Array<Uint8> get Addr => this.IP.Addr;
  set Addr(Array<Uint8> value) => this.IP.Addr = value;
}

/// {@category Struct}
class WNV_NOTIFICATION_PARAM extends Struct {
  external WNV_OBJECT_HEADER Header;

  @Int32()
  external int NotificationType;

  @Uint32()
  external int PendingNotifications;

  external Pointer<Uint8> Buffer;
}

/// {@category Struct}
class WNV_OBJECT_CHANGE_PARAM extends Struct {
  @Int32()
  external int ObjectType;

  external _WNV_OBJECT_CHANGE_PARAM__ObjectParam_e__Union ObjectParam;
}

/// {@category Struct}
class _WNV_OBJECT_CHANGE_PARAM__ObjectParam_e__Union extends Union {
  external WNV_PROVIDER_ADDRESS_CHANGE_PARAM ProviderAddressChange;

  external WNV_CUSTOMER_ADDRESS_CHANGE_PARAM CustomerAddressChange;
}

extension WNV_OBJECT_CHANGE_PARAM_Extension on WNV_OBJECT_CHANGE_PARAM {
  WNV_PROVIDER_ADDRESS_CHANGE_PARAM get ProviderAddressChange =>
      this.ObjectParam.ProviderAddressChange;
  set ProviderAddressChange(WNV_PROVIDER_ADDRESS_CHANGE_PARAM value) =>
      this.ObjectParam.ProviderAddressChange = value;

  WNV_CUSTOMER_ADDRESS_CHANGE_PARAM get CustomerAddressChange =>
      this.ObjectParam.CustomerAddressChange;
  set CustomerAddressChange(WNV_CUSTOMER_ADDRESS_CHANGE_PARAM value) =>
      this.ObjectParam.CustomerAddressChange = value;
}

/// {@category Struct}
class WNV_OBJECT_HEADER extends Struct {
  @Uint8()
  external int MajorVersion;

  @Uint8()
  external int MinorVersion;

  @Uint32()
  external int Size;
}

/// {@category Struct}
class WNV_POLICY_MISMATCH_PARAM extends Struct {
  @Uint16()
  external int CAFamily;

  @Uint16()
  external int PAFamily;

  @Uint32()
  external int VirtualSubnetId;

  external WNV_IP_ADDRESS CA;

  external WNV_IP_ADDRESS PA;
}

/// {@category Struct}
class WNV_PROVIDER_ADDRESS_CHANGE_PARAM extends Struct {
  @Uint16()
  external int PAFamily;

  external WNV_IP_ADDRESS PA;

  @Int32()
  external int AddressState;
}

/// {@category Struct}
class WNV_REDIRECT_PARAM extends Struct {
  @Uint16()
  external int CAFamily;

  @Uint16()
  external int PAFamily;

  @Uint16()
  external int NewPAFamily;

  @Uint32()
  external int VirtualSubnetId;

  external WNV_IP_ADDRESS CA;

  external WNV_IP_ADDRESS PA;

  external WNV_IP_ADDRESS NewPA;
}
