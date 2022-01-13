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
import '../../system/deploymentservices/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../system/deploymentservices/callbacks.g.dart';
import '../../system/registry/structs.g.dart';

/// {@category Struct}
class PXE_ADDRESS extends Struct {
  @Uint32()
  external int uFlags;

  external _PXE_ADDRESS__Anonymous_e__Union Anonymous;

  @Uint32()
  external int uAddrLen;

  @Uint16()
  external int uPort;
}

/// {@category Struct}
class _PXE_ADDRESS__Anonymous_e__Union extends Union {
  @Array(16)
  external Array<Uint8> bAddress;

  @Uint32()
  external int uIpAddress;
}

extension PXE_ADDRESS_Extension on PXE_ADDRESS {
  Array<Uint8> get bAddress => this.Anonymous.bAddress;
  set bAddress(Array<Uint8> value) => this.Anonymous.bAddress = value;

  int get uIpAddress => this.Anonymous.uIpAddress;
  set uIpAddress(int value) => this.Anonymous.uIpAddress = value;
}

/// {@category Struct}
@Packed(1)
class PXE_DHCPV6_MESSAGE extends Struct {
  @Uint8()
  external int MessageType;

  @Uint8()
  external int TransactionIDByte1;

  @Uint8()
  external int TransactionIDByte2;

  @Uint8()
  external int TransactionIDByte3;

  @Array(1)
  external Array<PXE_DHCPV6_OPTION> Options;
}

/// {@category Struct}
class PXE_DHCPV6_MESSAGE_HEADER extends Struct {
  @Uint8()
  external int MessageType;

  @Array(1)
  external Array<Uint8> Message;
}

/// {@category Struct}
class PXE_DHCPV6_NESTED_RELAY_MESSAGE extends Struct {
  external Pointer<PXE_DHCPV6_RELAY_MESSAGE> pRelayMessage;

  @Uint32()
  external int cbRelayMessage;

  external Pointer pInterfaceIdOption;

  @Uint16()
  external int cbInterfaceIdOption;
}

/// {@category Struct}
@Packed(1)
class PXE_DHCPV6_OPTION extends Struct {
  @Uint16()
  external int OptionCode;

  @Uint16()
  external int DataLength;

  @Array(1)
  external Array<Uint8> Data;
}

/// {@category Struct}
@Packed(1)
class PXE_DHCPV6_RELAY_MESSAGE extends Struct {
  @Uint8()
  external int MessageType;

  @Uint8()
  external int HopCount;

  @Array(16)
  external Array<Uint8> LinkAddress;

  @Array(16)
  external Array<Uint8> PeerAddress;

  @Array(1)
  external Array<PXE_DHCPV6_OPTION> Options;
}

/// {@category Struct}
class PXE_DHCP_MESSAGE extends Struct {
  @Uint8()
  external int Operation;

  @Uint8()
  external int HardwareAddressType;

  @Uint8()
  external int HardwareAddressLength;

  @Uint8()
  external int HopCount;

  @Uint32()
  external int TransactionID;

  @Uint16()
  external int SecondsSinceBoot;

  @Uint16()
  external int Reserved;

  @Uint32()
  external int ClientIpAddress;

  @Uint32()
  external int YourIpAddress;

  @Uint32()
  external int BootstrapServerAddress;

  @Uint32()
  external int RelayAgentIpAddress;

  @Array(16)
  external Array<Uint8> HardwareAddress;

  @Array(64)
  external Array<Uint8> HostName;

  @Array(128)
  external Array<Uint8> BootFileName;

  external _PXE_DHCP_MESSAGE__Anonymous_e__Union Anonymous;

  external PXE_DHCP_OPTION Option;
}

/// {@category Struct}
@Packed(1)
class _PXE_DHCP_MESSAGE__Anonymous_e__Union extends Union {
  @Array(4)
  external Array<Uint8> bMagicCookie;

  @Uint32()
  external int uMagicCookie;
}

extension PXE_DHCP_MESSAGE_Extension on PXE_DHCP_MESSAGE {
  Array<Uint8> get bMagicCookie => this.Anonymous.bMagicCookie;
  set bMagicCookie(Array<Uint8> value) => this.Anonymous.bMagicCookie = value;

  int get uMagicCookie => this.Anonymous.uMagicCookie;
  set uMagicCookie(int value) => this.Anonymous.uMagicCookie = value;
}

/// {@category Struct}
class PXE_DHCP_OPTION extends Struct {
  @Uint8()
  external int OptionType;

  @Uint8()
  external int OptionLength;

  @Array(1)
  external Array<Uint8> OptionValue;
}

/// {@category Struct}
class PXE_PROVIDER extends Struct {
  @Uint32()
  external int uSizeOfStruct;

  external Pointer<Utf16> pwszName;

  external Pointer<Utf16> pwszFilePath;

  @Int32()
  external int bIsCritical;

  @Uint32()
  external int uIndex;
}

/// {@category Struct}
class TRANSPORTCLIENT_SESSION_INFO extends Struct {
  @Uint32()
  external int ulStructureLength;

  @Uint64()
  external int ullFileSize;

  @Uint32()
  external int ulBlockSize;
}

/// {@category Struct}
class WDS_CLI_CRED extends Struct {
  external Pointer<Utf16> pwszUserName;

  external Pointer<Utf16> pwszDomain;

  external Pointer<Utf16> pwszPassword;
}

/// {@category Struct}
class WDS_TRANSPORTCLIENT_CALLBACKS extends Struct {
  external Pointer<NativeFunction<PFN_WdsTransportClientSessionStart>>
      SessionStart;

  external Pointer<NativeFunction<PFN_WdsTransportClientSessionStartEx>>
      SessionStartEx;

  external Pointer<NativeFunction<PFN_WdsTransportClientReceiveContents>>
      ReceiveContents;

  external Pointer<NativeFunction<PFN_WdsTransportClientReceiveMetadata>>
      ReceiveMetadata;

  external Pointer<NativeFunction<PFN_WdsTransportClientSessionComplete>>
      SessionComplete;

  external Pointer<NativeFunction<PFN_WdsTransportClientSessionNegotiate>>
      SessionNegotiate;
}

/// {@category Struct}
class WDS_TRANSPORTCLIENT_REQUEST extends Struct {
  @Uint32()
  external int ulLength;

  @Uint32()
  external int ulApiVersion;

  @Uint32()
  external int ulAuthLevel;

  external Pointer<Utf16> pwszServer;

  external Pointer<Utf16> pwszNamespace;

  external Pointer<Utf16> pwszObjectName;

  @Uint32()
  external int ulCacheSize;

  @Uint32()
  external int ulProtocol;

  external Pointer pvProtocolData;

  @Uint32()
  external int ulProtocolDataLength;
}

/// {@category Struct}
class WDS_TRANSPORTPROVIDER_INIT_PARAMS extends Struct {
  @Uint32()
  external int ulLength;

  @Uint32()
  external int ulMcServerVersion;

  @IntPtr()
  external int hRegistryKey;

  @IntPtr()
  external int hProvider;
}

/// {@category Struct}
class WDS_TRANSPORTPROVIDER_SETTINGS extends Struct {
  @Uint32()
  external int ulLength;

  @Uint32()
  external int ulProviderVersion;
}
