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

class WDS_CLI_CRED extends Struct {
  external Pointer<Utf16> pwszUserName;
  external Pointer<Utf16> pwszDomain;
  external Pointer<Utf16> pwszPassword;
}

class PXE_DHCP_OPTION extends Struct {
  @Uint8() external int OptionType;
  @Uint8() external int OptionLength;
  @Array(1)
  external Array<Uint8> OptionValue;
}

class PXE_DHCP_MESSAGE extends Struct {
  @Uint8() external int Operation;
  @Uint8() external int HardwareAddressType;
  @Uint8() external int HardwareAddressLength;
  @Uint8() external int HopCount;
  @Uint32() external int TransactionID;
  @Uint16() external int SecondsSinceBoot;
  @Uint16() external int Reserved;
  @Uint32() external int ClientIpAddress;
  @Uint32() external int YourIpAddress;
  @Uint32() external int BootstrapServerAddress;
  @Uint32() external int RelayAgentIpAddress;
  @Array(16)
  external Array<Uint8> HardwareAddress;
  @Array(64)
  external Array<Uint8> HostName;
  @Array(128)
  external Array<Uint8> BootFileName;
  @Uint32() external int Anonymous;
  external PXE_DHCP_OPTION Option;
}

class PXE_DHCPV6_OPTION extends Struct {
  @Uint16() external int OptionCode;
  @Uint16() external int DataLength;
  @Array(1)
  external Array<Uint8> Data;
}

class PXE_DHCPV6_MESSAGE_HEADER extends Struct {
  @Uint8() external int MessageType;
  @Array(1)
  external Array<Uint8> Message;
}

class PXE_DHCPV6_MESSAGE extends Struct {
  @Uint8() external int MessageType;
  @Uint8() external int TransactionIDByte1;
  @Uint8() external int TransactionIDByte2;
  @Uint8() external int TransactionIDByte3;
  @Array(1)
  external Array<PXE_DHCPV6_OPTION> Options;
}

class PXE_DHCPV6_RELAY_MESSAGE extends Struct {
  @Uint8() external int MessageType;
  @Uint8() external int HopCount;
  @Array(16)
  external Array<Uint8> LinkAddress;
  @Array(16)
  external Array<Uint8> PeerAddress;
  @Array(1)
  external Array<PXE_DHCPV6_OPTION> Options;
}

class PXE_PROVIDER extends Struct {
  @Uint32() external int uSizeOfStruct;
  external Pointer<Utf16> pwszName;
  external Pointer<Utf16> pwszFilePath;
  @Int32() external int bIsCritical;
  @Uint32() external int uIndex;
}

class PXE_ADDRESS extends Struct {
  @Uint32() external int uFlags;
  @Uint32() external int Anonymous;
  @Uint32() external int uAddrLen;
  @Uint16() external int uPort;
}

class PXE_DHCPV6_NESTED_RELAY_MESSAGE extends Struct {
  external Pointer<PXE_DHCPV6_RELAY_MESSAGE> pRelayMessage;
  @Uint32() external int cbRelayMessage;
  external Pointer pInterfaceIdOption;
  @Uint16() external int cbInterfaceIdOption;
}

class WDS_TRANSPORTPROVIDER_INIT_PARAMS extends Struct {
  @Uint32() external int ulLength;
  @Uint32() external int ulMcServerVersion;
  @IntPtr() external int hRegistryKey;
  @IntPtr() external int hProvider;
}

class WDS_TRANSPORTPROVIDER_SETTINGS extends Struct {
  @Uint32() external int ulLength;
  @Uint32() external int ulProviderVersion;
}

class TRANSPORTCLIENT_SESSION_INFO extends Struct {
  @Uint32() external int ulStructureLength;
  @Uint64() external int ullFileSize;
  @Uint32() external int ulBlockSize;
}

class WDS_TRANSPORTCLIENT_REQUEST extends Struct {
  @Uint32() external int ulLength;
  @Uint32() external int ulApiVersion;
  @Uint32() external int ulAuthLevel;
  external Pointer<Utf16> pwszServer;
  external Pointer<Utf16> pwszNamespace;
  external Pointer<Utf16> pwszObjectName;
  @Uint32() external int ulCacheSize;
  @Uint32() external int ulProtocol;
  external Pointer pvProtocolData;
  @Uint32() external int ulProtocolDataLength;
}

class WDS_TRANSPORTCLIENT_CALLBACKS extends Struct {
  external PFN_WdsTransportClientSessionStart SessionStart;
  external PFN_WdsTransportClientSessionStartEx SessionStartEx;
  external PFN_WdsTransportClientReceiveContents ReceiveContents;
  external PFN_WdsTransportClientReceiveMetadata ReceiveMetadata;
  external PFN_WdsTransportClientSessionComplete SessionComplete;
  external PFN_WdsTransportClientSessionNegotiate SessionNegotiate;
}

class WdsTransportCacheable extends Struct {
}

class WdsTransportCollection extends Struct {
}

class WdsTransportManager extends Struct {
}

class WdsTransportServer extends Struct {
}

class WdsTransportSetupManager extends Struct {
}

class WdsTransportConfigurationManager extends Struct {
}

class WdsTransportNamespaceManager extends Struct {
}

class WdsTransportServicePolicy extends Struct {
}

class WdsTransportDiagnosticsPolicy extends Struct {
}

class WdsTransportMulticastSessionPolicy extends Struct {
}

class WdsTransportNamespace extends Struct {
}

class WdsTransportNamespaceAutoCast extends Struct {
}

class WdsTransportNamespaceScheduledCast extends Struct {
}

class WdsTransportNamespaceScheduledCastManualStart extends Struct {
}

class WdsTransportNamespaceScheduledCastAutoStart extends Struct {
}

class WdsTransportContent extends Struct {
}

class WdsTransportSession extends Struct {
}

class WdsTransportClient extends Struct {
}

class WdsTransportTftpClient extends Struct {
}

class WdsTransportTftpManager extends Struct {
}

class WdsTransportContentProvider extends Struct {
}

