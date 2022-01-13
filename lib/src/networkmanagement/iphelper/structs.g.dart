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
import '../../foundation/structs.g.dart';
import '../../networkmanagement/iphelper/structs.g.dart';
import '../../networking/winsock/structs.g.dart';
import '../../networkmanagement/ndis/structs.g.dart';

/// {@category Struct}
class DNS_DOH_SERVER_SETTINGS extends Struct {
  external Pointer<Utf16> Template;

  @Uint64()
  external int Flags;
}

/// {@category Struct}
class DNS_INTERFACE_SETTINGS extends Struct {
  @Uint32()
  external int Version;

  @Uint64()
  external int Flags;

  external Pointer<Utf16> Domain;

  external Pointer<Utf16> NameServer;

  external Pointer<Utf16> SearchList;

  @Uint32()
  external int RegistrationEnabled;

  @Uint32()
  external int RegisterAdapterName;

  @Uint32()
  external int EnableLLMNR;

  @Uint32()
  external int QueryAdapterName;

  external Pointer<Utf16> ProfileNameServer;
}

/// {@category Struct}
class DNS_INTERFACE_SETTINGS3 extends Struct {
  @Uint32()
  external int Version;

  @Uint64()
  external int Flags;

  external Pointer<Utf16> Domain;

  external Pointer<Utf16> NameServer;

  external Pointer<Utf16> SearchList;

  @Uint32()
  external int RegistrationEnabled;

  @Uint32()
  external int RegisterAdapterName;

  @Uint32()
  external int EnableLLMNR;

  @Uint32()
  external int QueryAdapterName;

  external Pointer<Utf16> ProfileNameServer;

  @Uint32()
  external int DisableUnconstrainedQueries;

  external Pointer<Utf16> SupplementalSearchList;

  @Uint32()
  external int cServerProperties;

  external Pointer<DNS_SERVER_PROPERTY> ServerProperties;

  @Uint32()
  external int cProfileServerProperties;

  external Pointer<DNS_SERVER_PROPERTY> ProfileServerProperties;
}

/// {@category Struct}
class DNS_INTERFACE_SETTINGS_EX extends Struct {
  external DNS_INTERFACE_SETTINGS SettingsV1;

  @Uint32()
  external int DisableUnconstrainedQueries;

  external Pointer<Utf16> SupplementalSearchList;
}

/// {@category Struct}
class DNS_SERVER_PROPERTY extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int ServerIndex;

  @Int32()
  external int Type;

  external DNS_SERVER_PROPERTY_TYPES Property;
}

/// {@category Struct}
class DNS_SERVER_PROPERTY_TYPES extends Union {
  external Pointer<DNS_DOH_SERVER_SETTINGS> DohSettings;
}

/// {@category Struct}
class DNS_SETTINGS extends Struct {
  @Uint32()
  external int Version;

  @Uint64()
  external int Flags;

  external Pointer<Utf16> Hostname;

  external Pointer<Utf16> Domain;

  external Pointer<Utf16> SearchList;
}

/// {@category Struct}
class DNS_SETTINGS2 extends Struct {
  @Uint32()
  external int Version;

  @Uint64()
  external int Flags;

  external Pointer<Utf16> Hostname;

  external Pointer<Utf16> Domain;

  external Pointer<Utf16> SearchList;

  @Uint64()
  external int SettingFlags;
}

/// {@category Struct}
class FIXED_INFO_W2KSP1 extends Struct {
  @Array(132)
  external Array<Uint8> HostName;

  @Array(132)
  external Array<Uint8> DomainName;

  external Pointer<IP_ADDR_STRING> CurrentDnsServer;

  external IP_ADDR_STRING DnsServerList;

  @Uint32()
  external int NodeType;

  @Array(260)
  external Array<Uint8> ScopeId;

  @Uint32()
  external int EnableRouting;

  @Uint32()
  external int EnableProxy;

  @Uint32()
  external int EnableDns;
}

/// {@category Struct}
class IF_COUNTED_STRING_LH extends Struct {
  @Uint16()
  external int Length;

  @Array(257)
  external Array<Uint16> _$String;

  String get $String {
    final charCodes = <int>[];
    for (var i = 0; i < 257; i++) {
      charCodes.add(_$String[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set $String(String value) {
    final stringToStore = value.padRight(257, '\x00');
    for (var i = 0; i < 257; i++) {
      _$String[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class IF_PHYSICAL_ADDRESS_LH extends Struct {
  @Uint16()
  external int Length;

  @Array(32)
  external Array<Uint8> Address;
}

/// {@category Struct}
class INTERFACE_HARDWARE_CROSSTIMESTAMP extends Struct {
  @Uint64()
  external int SystemTimestamp1;

  @Uint64()
  external int HardwareClockTimestamp;

  @Uint64()
  external int SystemTimestamp2;
}

/// {@category Struct}
class INTERFACE_HARDWARE_TIMESTAMP_CAPABILITIES extends Struct {
  @Uint8()
  external int PtpV2OverUdpIPv4EventMessageReceive;

  @Uint8()
  external int PtpV2OverUdpIPv4AllMessageReceive;

  @Uint8()
  external int PtpV2OverUdpIPv4EventMessageTransmit;

  @Uint8()
  external int PtpV2OverUdpIPv4AllMessageTransmit;

  @Uint8()
  external int PtpV2OverUdpIPv6EventMessageReceive;

  @Uint8()
  external int PtpV2OverUdpIPv6AllMessageReceive;

  @Uint8()
  external int PtpV2OverUdpIPv6EventMessageTransmit;

  @Uint8()
  external int PtpV2OverUdpIPv6AllMessageTransmit;

  @Uint8()
  external int AllReceive;

  @Uint8()
  external int AllTransmit;

  @Uint8()
  external int TaggedTransmit;
}

/// {@category Struct}
class INTERFACE_SOFTWARE_TIMESTAMP_CAPABILITIES extends Struct {
  @Uint8()
  external int AllReceive;

  @Uint8()
  external int AllTransmit;

  @Uint8()
  external int TaggedTransmit;
}

/// {@category Struct}
class INTERFACE_TIMESTAMP_CAPABILITIES extends Struct {
  @Uint64()
  external int HardwareClockFrequencyHz;

  @Uint8()
  external int SupportsCrossTimestamp;

  external INTERFACE_HARDWARE_TIMESTAMP_CAPABILITIES HardwareCapabilities;

  external INTERFACE_SOFTWARE_TIMESTAMP_CAPABILITIES SoftwareCapabilities;
}

/// {@category Struct}
@Packed(1)
class IPV6_ADDRESS_EX extends Struct {
  @Uint16()
  external int sin6_port;

  @Uint32()
  external int sin6_flowinfo;

  @Array(8)
  external Array<Uint16> sin6_addr;

  @Uint32()
  external int sin6_scope_id;
}

/// {@category Struct}
class IP_ADAPTER_ADDRESSES_LH extends Struct {
  external _IP_ADAPTER_ADDRESSES_LH__Anonymous1_e__Union Anonymous1;

  external Pointer<IP_ADAPTER_ADDRESSES_LH> Next;

  external Pointer<Utf8> AdapterName;

  external Pointer<IP_ADAPTER_UNICAST_ADDRESS_LH> FirstUnicastAddress;

  external Pointer<IP_ADAPTER_ANYCAST_ADDRESS_XP> FirstAnycastAddress;

  external Pointer<IP_ADAPTER_MULTICAST_ADDRESS_XP> FirstMulticastAddress;

  external Pointer<IP_ADAPTER_DNS_SERVER_ADDRESS_XP> FirstDnsServerAddress;

  external Pointer<Utf16> DnsSuffix;

  external Pointer<Utf16> Description;

  external Pointer<Utf16> FriendlyName;

  @Array(8)
  external Array<Uint8> PhysicalAddress;

  @Uint32()
  external int PhysicalAddressLength;

  external _IP_ADAPTER_ADDRESSES_LH__Anonymous2_e__Union Anonymous2;

  @Uint32()
  external int Mtu;

  @Uint32()
  external int IfType;

  @Int32()
  external int OperStatus;

  @Uint32()
  external int Ipv6IfIndex;

  @Array(16)
  external Array<Uint32> ZoneIndices;

  external Pointer<IP_ADAPTER_PREFIX_XP> FirstPrefix;

  @Uint64()
  external int TransmitLinkSpeed;

  @Uint64()
  external int ReceiveLinkSpeed;

  external Pointer<IP_ADAPTER_WINS_SERVER_ADDRESS_LH> FirstWinsServerAddress;

  external Pointer<IP_ADAPTER_GATEWAY_ADDRESS_LH> FirstGatewayAddress;

  @Uint32()
  external int Ipv4Metric;

  @Uint32()
  external int Ipv6Metric;

  external NET_LUID_LH Luid;

  external SOCKET_ADDRESS Dhcpv4Server;

  @Uint32()
  external int CompartmentId;

  external GUID NetworkGuid;

  @Int32()
  external int ConnectionType;

  @Int32()
  external int TunnelType;

  external SOCKET_ADDRESS Dhcpv6Server;

  @Array(130)
  external Array<Uint8> Dhcpv6ClientDuid;

  @Uint32()
  external int Dhcpv6ClientDuidLength;

  @Uint32()
  external int Dhcpv6Iaid;

  external Pointer<IP_ADAPTER_DNS_SUFFIX> FirstDnsSuffix;
}

/// {@category Struct}
class _IP_ADAPTER_ADDRESSES_LH__Anonymous1_e__Union extends Union {
  @Uint64()
  external int Alignment;

  external _IP_ADAPTER_ADDRESSES_LH__Anonymous1_e__Union__Anonymous_e__Struct
      Anonymous;
}

/// {@category Struct}
class _IP_ADAPTER_ADDRESSES_LH__Anonymous1_e__Union__Anonymous_e__Struct
    extends Struct {
  @Uint32()
  external int Length;

  @Uint32()
  external int IfIndex;
}

extension IP_ADAPTER_ADDRESSES_LH__Anonymous1_e__Union_Extension
    on IP_ADAPTER_ADDRESSES_LH {
  int get Length => this.Anonymous1.Anonymous.Length;
  set Length(int value) => this.Anonymous1.Anonymous.Length = value;

  int get IfIndex => this.Anonymous1.Anonymous.IfIndex;
  set IfIndex(int value) => this.Anonymous1.Anonymous.IfIndex = value;
}

extension IP_ADAPTER_ADDRESSES_LH_Extension on IP_ADAPTER_ADDRESSES_LH {
  int get Alignment => this.Anonymous1.Alignment;
  set Alignment(int value) => this.Anonymous1.Alignment = value;

  _IP_ADAPTER_ADDRESSES_LH__Anonymous1_e__Union__Anonymous_e__Struct
      get Anonymous => this.Anonymous1.Anonymous;
  set Anonymous(
          _IP_ADAPTER_ADDRESSES_LH__Anonymous1_e__Union__Anonymous_e__Struct
              value) =>
      this.Anonymous1.Anonymous = value;
}

/// {@category Struct}
class _IP_ADAPTER_ADDRESSES_LH__Anonymous2_e__Union extends Union {
  @Uint32()
  external int Flags;

  external _IP_ADAPTER_ADDRESSES_LH__Anonymous2_e__Union__Anonymous_e__Struct
      Anonymous;
}

/// {@category Struct}
class _IP_ADAPTER_ADDRESSES_LH__Anonymous2_e__Union__Anonymous_e__Struct
    extends Struct {
  @Uint32()
  external int bitfield;
}

extension IP_ADAPTER_ADDRESSES_LH__Anonymous2_e__Union_Extension
    on IP_ADAPTER_ADDRESSES_LH {
  int get bitfield => this.Anonymous2.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous2.Anonymous.bitfield = value;
}

extension IP_ADAPTER_ADDRESSES_LH_Extension_1 on IP_ADAPTER_ADDRESSES_LH {
  int get Flags => this.Anonymous2.Flags;
  set Flags(int value) => this.Anonymous2.Flags = value;

  _IP_ADAPTER_ADDRESSES_LH__Anonymous2_e__Union__Anonymous_e__Struct
      get Anonymous => this.Anonymous2.Anonymous;
  set Anonymous(
          _IP_ADAPTER_ADDRESSES_LH__Anonymous2_e__Union__Anonymous_e__Struct
              value) =>
      this.Anonymous2.Anonymous = value;
}

/// {@category Struct}
class IP_ADAPTER_ADDRESSES_XP extends Struct {
  external _IP_ADAPTER_ADDRESSES_XP__Anonymous_e__Union Anonymous;

  external Pointer<IP_ADAPTER_ADDRESSES_XP> Next;

  external Pointer<Utf8> AdapterName;

  external Pointer<IP_ADAPTER_UNICAST_ADDRESS_XP> FirstUnicastAddress;

  external Pointer<IP_ADAPTER_ANYCAST_ADDRESS_XP> FirstAnycastAddress;

  external Pointer<IP_ADAPTER_MULTICAST_ADDRESS_XP> FirstMulticastAddress;

  external Pointer<IP_ADAPTER_DNS_SERVER_ADDRESS_XP> FirstDnsServerAddress;

  external Pointer<Utf16> DnsSuffix;

  external Pointer<Utf16> Description;

  external Pointer<Utf16> FriendlyName;

  @Array(8)
  external Array<Uint8> PhysicalAddress;

  @Uint32()
  external int PhysicalAddressLength;

  @Uint32()
  external int Flags;

  @Uint32()
  external int Mtu;

  @Uint32()
  external int IfType;

  @Int32()
  external int OperStatus;

  @Uint32()
  external int Ipv6IfIndex;

  @Array(16)
  external Array<Uint32> ZoneIndices;

  external Pointer<IP_ADAPTER_PREFIX_XP> FirstPrefix;
}

/// {@category Struct}
class _IP_ADAPTER_ADDRESSES_XP__Anonymous_e__Union extends Union {
  @Uint64()
  external int Alignment;

  external _IP_ADAPTER_ADDRESSES_XP__Anonymous_e__Union__Anonymous_e__Struct
      Anonymous;
}

/// {@category Struct}
class _IP_ADAPTER_ADDRESSES_XP__Anonymous_e__Union__Anonymous_e__Struct
    extends Struct {
  @Uint32()
  external int Length;

  @Uint32()
  external int IfIndex;
}

extension IP_ADAPTER_ADDRESSES_XP__Anonymous_e__Union_Extension
    on IP_ADAPTER_ADDRESSES_XP {
  int get Length => this.Anonymous.Anonymous.Length;
  set Length(int value) => this.Anonymous.Anonymous.Length = value;

  int get IfIndex => this.Anonymous.Anonymous.IfIndex;
  set IfIndex(int value) => this.Anonymous.Anonymous.IfIndex = value;
}

extension IP_ADAPTER_ADDRESSES_XP_Extension on IP_ADAPTER_ADDRESSES_XP {
  int get Alignment => this.Anonymous.Alignment;
  set Alignment(int value) => this.Anonymous.Alignment = value;

  _IP_ADAPTER_ADDRESSES_XP__Anonymous_e__Union__Anonymous_e__Struct
      get Anonymous => this.Anonymous.Anonymous;
  set Anonymous(
          _IP_ADAPTER_ADDRESSES_XP__Anonymous_e__Union__Anonymous_e__Struct
              value) =>
      this.Anonymous.Anonymous = value;
}

/// {@category Struct}
class IP_ADAPTER_ANYCAST_ADDRESS_XP extends Struct {
  external _IP_ADAPTER_ANYCAST_ADDRESS_XP__Anonymous_e__Union Anonymous;

  external Pointer<IP_ADAPTER_ANYCAST_ADDRESS_XP> Next;

  external SOCKET_ADDRESS Address;
}

/// {@category Struct}
class _IP_ADAPTER_ANYCAST_ADDRESS_XP__Anonymous_e__Union extends Union {
  @Uint64()
  external int Alignment;

  external _IP_ADAPTER_ANYCAST_ADDRESS_XP__Anonymous_e__Union__Anonymous_e__Struct
      Anonymous;
}

/// {@category Struct}
class _IP_ADAPTER_ANYCAST_ADDRESS_XP__Anonymous_e__Union__Anonymous_e__Struct
    extends Struct {
  @Uint32()
  external int Length;

  @Uint32()
  external int Flags;
}

extension IP_ADAPTER_ANYCAST_ADDRESS_XP__Anonymous_e__Union_Extension
    on IP_ADAPTER_ANYCAST_ADDRESS_XP {
  int get Length => this.Anonymous.Anonymous.Length;
  set Length(int value) => this.Anonymous.Anonymous.Length = value;

  int get Flags => this.Anonymous.Anonymous.Flags;
  set Flags(int value) => this.Anonymous.Anonymous.Flags = value;
}

extension IP_ADAPTER_ANYCAST_ADDRESS_XP_Extension
    on IP_ADAPTER_ANYCAST_ADDRESS_XP {
  int get Alignment => this.Anonymous.Alignment;
  set Alignment(int value) => this.Anonymous.Alignment = value;

  _IP_ADAPTER_ANYCAST_ADDRESS_XP__Anonymous_e__Union__Anonymous_e__Struct
      get Anonymous => this.Anonymous.Anonymous;
  set Anonymous(
          _IP_ADAPTER_ANYCAST_ADDRESS_XP__Anonymous_e__Union__Anonymous_e__Struct
              value) =>
      this.Anonymous.Anonymous = value;
}

/// {@category Struct}
class IP_ADAPTER_DNS_SERVER_ADDRESS_XP extends Struct {
  external _IP_ADAPTER_DNS_SERVER_ADDRESS_XP__Anonymous_e__Union Anonymous;

  external Pointer<IP_ADAPTER_DNS_SERVER_ADDRESS_XP> Next;

  external SOCKET_ADDRESS Address;
}

/// {@category Struct}
class _IP_ADAPTER_DNS_SERVER_ADDRESS_XP__Anonymous_e__Union extends Union {
  @Uint64()
  external int Alignment;

  external _IP_ADAPTER_DNS_SERVER_ADDRESS_XP__Anonymous_e__Union__Anonymous_e__Struct
      Anonymous;
}

/// {@category Struct}
class _IP_ADAPTER_DNS_SERVER_ADDRESS_XP__Anonymous_e__Union__Anonymous_e__Struct
    extends Struct {
  @Uint32()
  external int Length;

  @Uint32()
  external int Reserved;
}

extension IP_ADAPTER_DNS_SERVER_ADDRESS_XP__Anonymous_e__Union_Extension
    on IP_ADAPTER_DNS_SERVER_ADDRESS_XP {
  int get Length => this.Anonymous.Anonymous.Length;
  set Length(int value) => this.Anonymous.Anonymous.Length = value;

  int get Reserved => this.Anonymous.Anonymous.Reserved;
  set Reserved(int value) => this.Anonymous.Anonymous.Reserved = value;
}

extension IP_ADAPTER_DNS_SERVER_ADDRESS_XP_Extension
    on IP_ADAPTER_DNS_SERVER_ADDRESS_XP {
  int get Alignment => this.Anonymous.Alignment;
  set Alignment(int value) => this.Anonymous.Alignment = value;

  _IP_ADAPTER_DNS_SERVER_ADDRESS_XP__Anonymous_e__Union__Anonymous_e__Struct
      get Anonymous => this.Anonymous.Anonymous;
  set Anonymous(
          _IP_ADAPTER_DNS_SERVER_ADDRESS_XP__Anonymous_e__Union__Anonymous_e__Struct
              value) =>
      this.Anonymous.Anonymous = value;
}

/// {@category Struct}
class IP_ADAPTER_DNS_SUFFIX extends Struct {
  external Pointer<IP_ADAPTER_DNS_SUFFIX> Next;

  @Array(256)
  external Array<Uint16> _$String;

  String get $String {
    final charCodes = <int>[];
    for (var i = 0; i < 256; i++) {
      charCodes.add(_$String[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set $String(String value) {
    final stringToStore = value.padRight(256, '\x00');
    for (var i = 0; i < 256; i++) {
      _$String[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class IP_ADAPTER_GATEWAY_ADDRESS_LH extends Struct {
  external _IP_ADAPTER_GATEWAY_ADDRESS_LH__Anonymous_e__Union Anonymous;

  external Pointer<IP_ADAPTER_GATEWAY_ADDRESS_LH> Next;

  external SOCKET_ADDRESS Address;
}

/// {@category Struct}
class _IP_ADAPTER_GATEWAY_ADDRESS_LH__Anonymous_e__Union extends Union {
  @Uint64()
  external int Alignment;

  external _IP_ADAPTER_GATEWAY_ADDRESS_LH__Anonymous_e__Union__Anonymous_e__Struct
      Anonymous;
}

/// {@category Struct}
class _IP_ADAPTER_GATEWAY_ADDRESS_LH__Anonymous_e__Union__Anonymous_e__Struct
    extends Struct {
  @Uint32()
  external int Length;

  @Uint32()
  external int Reserved;
}

extension IP_ADAPTER_GATEWAY_ADDRESS_LH__Anonymous_e__Union_Extension
    on IP_ADAPTER_GATEWAY_ADDRESS_LH {
  int get Length => this.Anonymous.Anonymous.Length;
  set Length(int value) => this.Anonymous.Anonymous.Length = value;

  int get Reserved => this.Anonymous.Anonymous.Reserved;
  set Reserved(int value) => this.Anonymous.Anonymous.Reserved = value;
}

extension IP_ADAPTER_GATEWAY_ADDRESS_LH_Extension
    on IP_ADAPTER_GATEWAY_ADDRESS_LH {
  int get Alignment => this.Anonymous.Alignment;
  set Alignment(int value) => this.Anonymous.Alignment = value;

  _IP_ADAPTER_GATEWAY_ADDRESS_LH__Anonymous_e__Union__Anonymous_e__Struct
      get Anonymous => this.Anonymous.Anonymous;
  set Anonymous(
          _IP_ADAPTER_GATEWAY_ADDRESS_LH__Anonymous_e__Union__Anonymous_e__Struct
              value) =>
      this.Anonymous.Anonymous = value;
}

/// {@category Struct}
class IP_ADAPTER_INDEX_MAP extends Struct {
  @Uint32()
  external int Index;

  @Array(128)
  external Array<Uint16> _Name;

  String get Name {
    final charCodes = <int>[];
    for (var i = 0; i < 128; i++) {
      charCodes.add(_Name[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set Name(String value) {
    final stringToStore = value.padRight(128, '\x00');
    for (var i = 0; i < 128; i++) {
      _Name[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class IP_ADAPTER_INFO extends Struct {
  external Pointer<IP_ADAPTER_INFO> Next;

  @Uint32()
  external int ComboIndex;

  @Array(260)
  external Array<Uint8> AdapterName;

  @Array(132)
  external Array<Uint8> Description;

  @Uint32()
  external int AddressLength;

  @Array(8)
  external Array<Uint8> Address;

  @Uint32()
  external int Index;

  @Uint32()
  external int Type;

  @Uint32()
  external int DhcpEnabled;

  external Pointer<IP_ADDR_STRING> CurrentIpAddress;

  external IP_ADDR_STRING IpAddressList;

  external IP_ADDR_STRING GatewayList;

  external IP_ADDR_STRING DhcpServer;

  @Int32()
  external int HaveWins;

  external IP_ADDR_STRING PrimaryWinsServer;

  external IP_ADDR_STRING SecondaryWinsServer;

  @Int64()
  external int LeaseObtained;

  @Int64()
  external int LeaseExpires;
}

/// {@category Struct}
class IP_ADAPTER_MULTICAST_ADDRESS_XP extends Struct {
  external _IP_ADAPTER_MULTICAST_ADDRESS_XP__Anonymous_e__Union Anonymous;

  external Pointer<IP_ADAPTER_MULTICAST_ADDRESS_XP> Next;

  external SOCKET_ADDRESS Address;
}

/// {@category Struct}
class _IP_ADAPTER_MULTICAST_ADDRESS_XP__Anonymous_e__Union extends Union {
  @Uint64()
  external int Alignment;

  external _IP_ADAPTER_MULTICAST_ADDRESS_XP__Anonymous_e__Union__Anonymous_e__Struct
      Anonymous;
}

/// {@category Struct}
class _IP_ADAPTER_MULTICAST_ADDRESS_XP__Anonymous_e__Union__Anonymous_e__Struct
    extends Struct {
  @Uint32()
  external int Length;

  @Uint32()
  external int Flags;
}

extension IP_ADAPTER_MULTICAST_ADDRESS_XP__Anonymous_e__Union_Extension
    on IP_ADAPTER_MULTICAST_ADDRESS_XP {
  int get Length => this.Anonymous.Anonymous.Length;
  set Length(int value) => this.Anonymous.Anonymous.Length = value;

  int get Flags => this.Anonymous.Anonymous.Flags;
  set Flags(int value) => this.Anonymous.Anonymous.Flags = value;
}

extension IP_ADAPTER_MULTICAST_ADDRESS_XP_Extension
    on IP_ADAPTER_MULTICAST_ADDRESS_XP {
  int get Alignment => this.Anonymous.Alignment;
  set Alignment(int value) => this.Anonymous.Alignment = value;

  _IP_ADAPTER_MULTICAST_ADDRESS_XP__Anonymous_e__Union__Anonymous_e__Struct
      get Anonymous => this.Anonymous.Anonymous;
  set Anonymous(
          _IP_ADAPTER_MULTICAST_ADDRESS_XP__Anonymous_e__Union__Anonymous_e__Struct
              value) =>
      this.Anonymous.Anonymous = value;
}

/// {@category Struct}
class IP_ADAPTER_ORDER_MAP extends Struct {
  @Uint32()
  external int NumAdapters;

  @Array(1)
  external Array<Uint32> AdapterOrder;
}

/// {@category Struct}
class IP_ADAPTER_PREFIX_XP extends Struct {
  external _IP_ADAPTER_PREFIX_XP__Anonymous_e__Union Anonymous;

  external Pointer<IP_ADAPTER_PREFIX_XP> Next;

  external SOCKET_ADDRESS Address;

  @Uint32()
  external int PrefixLength;
}

/// {@category Struct}
class _IP_ADAPTER_PREFIX_XP__Anonymous_e__Union extends Union {
  @Uint64()
  external int Alignment;

  external _IP_ADAPTER_PREFIX_XP__Anonymous_e__Union__Anonymous_e__Struct
      Anonymous;
}

/// {@category Struct}
class _IP_ADAPTER_PREFIX_XP__Anonymous_e__Union__Anonymous_e__Struct
    extends Struct {
  @Uint32()
  external int Length;

  @Uint32()
  external int Flags;
}

extension IP_ADAPTER_PREFIX_XP__Anonymous_e__Union_Extension
    on IP_ADAPTER_PREFIX_XP {
  int get Length => this.Anonymous.Anonymous.Length;
  set Length(int value) => this.Anonymous.Anonymous.Length = value;

  int get Flags => this.Anonymous.Anonymous.Flags;
  set Flags(int value) => this.Anonymous.Anonymous.Flags = value;
}

extension IP_ADAPTER_PREFIX_XP_Extension on IP_ADAPTER_PREFIX_XP {
  int get Alignment => this.Anonymous.Alignment;
  set Alignment(int value) => this.Anonymous.Alignment = value;

  _IP_ADAPTER_PREFIX_XP__Anonymous_e__Union__Anonymous_e__Struct
      get Anonymous => this.Anonymous.Anonymous;
  set Anonymous(
          _IP_ADAPTER_PREFIX_XP__Anonymous_e__Union__Anonymous_e__Struct
              value) =>
      this.Anonymous.Anonymous = value;
}

/// {@category Struct}
class IP_ADAPTER_UNICAST_ADDRESS_LH extends Struct {
  external _IP_ADAPTER_UNICAST_ADDRESS_LH__Anonymous_e__Union Anonymous;

  external Pointer<IP_ADAPTER_UNICAST_ADDRESS_LH> Next;

  external SOCKET_ADDRESS Address;

  @Int32()
  external int PrefixOrigin;

  @Int32()
  external int SuffixOrigin;

  @Int32()
  external int DadState;

  @Uint32()
  external int ValidLifetime;

  @Uint32()
  external int PreferredLifetime;

  @Uint32()
  external int LeaseLifetime;

  @Uint8()
  external int OnLinkPrefixLength;
}

/// {@category Struct}
class _IP_ADAPTER_UNICAST_ADDRESS_LH__Anonymous_e__Union extends Union {
  @Uint64()
  external int Alignment;

  external _IP_ADAPTER_UNICAST_ADDRESS_LH__Anonymous_e__Union__Anonymous_e__Struct
      Anonymous;
}

/// {@category Struct}
class _IP_ADAPTER_UNICAST_ADDRESS_LH__Anonymous_e__Union__Anonymous_e__Struct
    extends Struct {
  @Uint32()
  external int Length;

  @Uint32()
  external int Flags;
}

extension IP_ADAPTER_UNICAST_ADDRESS_LH__Anonymous_e__Union_Extension
    on IP_ADAPTER_UNICAST_ADDRESS_LH {
  int get Length => this.Anonymous.Anonymous.Length;
  set Length(int value) => this.Anonymous.Anonymous.Length = value;

  int get Flags => this.Anonymous.Anonymous.Flags;
  set Flags(int value) => this.Anonymous.Anonymous.Flags = value;
}

extension IP_ADAPTER_UNICAST_ADDRESS_LH_Extension
    on IP_ADAPTER_UNICAST_ADDRESS_LH {
  int get Alignment => this.Anonymous.Alignment;
  set Alignment(int value) => this.Anonymous.Alignment = value;

  _IP_ADAPTER_UNICAST_ADDRESS_LH__Anonymous_e__Union__Anonymous_e__Struct
      get Anonymous => this.Anonymous.Anonymous;
  set Anonymous(
          _IP_ADAPTER_UNICAST_ADDRESS_LH__Anonymous_e__Union__Anonymous_e__Struct
              value) =>
      this.Anonymous.Anonymous = value;
}

/// {@category Struct}
class IP_ADAPTER_UNICAST_ADDRESS_XP extends Struct {
  external _IP_ADAPTER_UNICAST_ADDRESS_XP__Anonymous_e__Union Anonymous;

  external Pointer<IP_ADAPTER_UNICAST_ADDRESS_XP> Next;

  external SOCKET_ADDRESS Address;

  @Int32()
  external int PrefixOrigin;

  @Int32()
  external int SuffixOrigin;

  @Int32()
  external int DadState;

  @Uint32()
  external int ValidLifetime;

  @Uint32()
  external int PreferredLifetime;

  @Uint32()
  external int LeaseLifetime;
}

/// {@category Struct}
class _IP_ADAPTER_UNICAST_ADDRESS_XP__Anonymous_e__Union extends Union {
  @Uint64()
  external int Alignment;

  external _IP_ADAPTER_UNICAST_ADDRESS_XP__Anonymous_e__Union__Anonymous_e__Struct
      Anonymous;
}

/// {@category Struct}
class _IP_ADAPTER_UNICAST_ADDRESS_XP__Anonymous_e__Union__Anonymous_e__Struct
    extends Struct {
  @Uint32()
  external int Length;

  @Uint32()
  external int Flags;
}

extension IP_ADAPTER_UNICAST_ADDRESS_XP__Anonymous_e__Union_Extension
    on IP_ADAPTER_UNICAST_ADDRESS_XP {
  int get Length => this.Anonymous.Anonymous.Length;
  set Length(int value) => this.Anonymous.Anonymous.Length = value;

  int get Flags => this.Anonymous.Anonymous.Flags;
  set Flags(int value) => this.Anonymous.Anonymous.Flags = value;
}

extension IP_ADAPTER_UNICAST_ADDRESS_XP_Extension
    on IP_ADAPTER_UNICAST_ADDRESS_XP {
  int get Alignment => this.Anonymous.Alignment;
  set Alignment(int value) => this.Anonymous.Alignment = value;

  _IP_ADAPTER_UNICAST_ADDRESS_XP__Anonymous_e__Union__Anonymous_e__Struct
      get Anonymous => this.Anonymous.Anonymous;
  set Anonymous(
          _IP_ADAPTER_UNICAST_ADDRESS_XP__Anonymous_e__Union__Anonymous_e__Struct
              value) =>
      this.Anonymous.Anonymous = value;
}

/// {@category Struct}
class IP_ADAPTER_WINS_SERVER_ADDRESS_LH extends Struct {
  external _IP_ADAPTER_WINS_SERVER_ADDRESS_LH__Anonymous_e__Union Anonymous;

  external Pointer<IP_ADAPTER_WINS_SERVER_ADDRESS_LH> Next;

  external SOCKET_ADDRESS Address;
}

/// {@category Struct}
class _IP_ADAPTER_WINS_SERVER_ADDRESS_LH__Anonymous_e__Union extends Union {
  @Uint64()
  external int Alignment;

  external _IP_ADAPTER_WINS_SERVER_ADDRESS_LH__Anonymous_e__Union__Anonymous_e__Struct
      Anonymous;
}

/// {@category Struct}
class _IP_ADAPTER_WINS_SERVER_ADDRESS_LH__Anonymous_e__Union__Anonymous_e__Struct
    extends Struct {
  @Uint32()
  external int Length;

  @Uint32()
  external int Reserved;
}

extension IP_ADAPTER_WINS_SERVER_ADDRESS_LH__Anonymous_e__Union_Extension
    on IP_ADAPTER_WINS_SERVER_ADDRESS_LH {
  int get Length => this.Anonymous.Anonymous.Length;
  set Length(int value) => this.Anonymous.Anonymous.Length = value;

  int get Reserved => this.Anonymous.Anonymous.Reserved;
  set Reserved(int value) => this.Anonymous.Anonymous.Reserved = value;
}

extension IP_ADAPTER_WINS_SERVER_ADDRESS_LH_Extension
    on IP_ADAPTER_WINS_SERVER_ADDRESS_LH {
  int get Alignment => this.Anonymous.Alignment;
  set Alignment(int value) => this.Anonymous.Alignment = value;

  _IP_ADAPTER_WINS_SERVER_ADDRESS_LH__Anonymous_e__Union__Anonymous_e__Struct
      get Anonymous => this.Anonymous.Anonymous;
  set Anonymous(
          _IP_ADAPTER_WINS_SERVER_ADDRESS_LH__Anonymous_e__Union__Anonymous_e__Struct
              value) =>
      this.Anonymous.Anonymous = value;
}

/// {@category Struct}
class IP_ADDRESS_PREFIX extends Struct {
  external SOCKADDR_INET Prefix;

  @Uint8()
  external int PrefixLength;
}

/// {@category Struct}
class IP_ADDRESS_STRING extends Struct {
  @Array(16)
  external Array<Uint8> $String;
}

/// {@category Struct}
class IP_ADDR_STRING extends Struct {
  external Pointer<IP_ADDR_STRING> Next;

  external IP_ADDRESS_STRING IpAddress;

  external IP_ADDRESS_STRING IpMask;

  @Uint32()
  external int Context;
}

/// {@category Struct}
class IP_INTERFACE_INFO extends Struct {
  @Int32()
  external int NumAdapters;

  @Array(1)
  external Array<IP_ADAPTER_INDEX_MAP> Adapter;
}

/// {@category Struct}
class IP_MCAST_COUNTER_INFO extends Struct {
  @Uint64()
  external int InMcastOctets;

  @Uint64()
  external int OutMcastOctets;

  @Uint64()
  external int InMcastPkts;

  @Uint64()
  external int OutMcastPkts;
}

/// {@category Struct}
class IP_PER_ADAPTER_INFO_W2KSP1 extends Struct {
  @Uint32()
  external int AutoconfigEnabled;

  @Uint32()
  external int AutoconfigActive;

  external Pointer<IP_ADDR_STRING> CurrentDnsServer;

  external IP_ADDR_STRING DnsServerList;
}

/// {@category Struct}
class IP_UNIDIRECTIONAL_ADAPTER_ADDRESS extends Struct {
  @Uint32()
  external int NumAdapters;

  @Array(1)
  external Array<Uint32> Address;
}

/// {@category Struct}
class MIBICMPINFO extends Struct {
  external MIBICMPSTATS icmpInStats;

  external MIBICMPSTATS icmpOutStats;
}

/// {@category Struct}
class MIBICMPSTATS extends Struct {
  @Uint32()
  external int dwMsgs;

  @Uint32()
  external int dwErrors;

  @Uint32()
  external int dwDestUnreachs;

  @Uint32()
  external int dwTimeExcds;

  @Uint32()
  external int dwParmProbs;

  @Uint32()
  external int dwSrcQuenchs;

  @Uint32()
  external int dwRedirects;

  @Uint32()
  external int dwEchos;

  @Uint32()
  external int dwEchoReps;

  @Uint32()
  external int dwTimestamps;

  @Uint32()
  external int dwTimestampReps;

  @Uint32()
  external int dwAddrMasks;

  @Uint32()
  external int dwAddrMaskReps;
}

/// {@category Struct}
class MIBICMPSTATS_EX_XPSP1 extends Struct {
  @Uint32()
  external int dwMsgs;

  @Uint32()
  external int dwErrors;

  @Array(256)
  external Array<Uint32> rgdwTypeCount;
}

/// {@category Struct}
class MIB_ANYCASTIPADDRESS_RO extends Struct {
  external SOCKADDR_INET Address;

  external NET_LUID_LH InterfaceLuid;

  @Uint32()
  external int InterfaceIndex;

  external SCOPE_ID ScopeId;
}

/// {@category Struct}
class MIB_ANYCASTIPADDRESS_TABLE extends Struct {
  @Uint32()
  external int NumEntries;

  @Array(1)
  external Array<MIB_ANYCASTIPADDRESS_RO> Table;
}

/// {@category Struct}
class MIB_BEST_IF extends Struct {
  @Uint32()
  external int dwDestAddr;

  @Uint32()
  external int dwIfIndex;
}

/// {@category Struct}
class MIB_BOUNDARYRO extends Struct {
  @Uint32()
  external int dwGroupAddress;

  @Uint32()
  external int dwGroupMask;
}

/// {@category Struct}
class MIB_ICMP extends Struct {
  external MIBICMPINFO stats;
}

/// {@category Struct}
class MIB_ICMP_EX_XPSP1 extends Struct {
  external MIBICMPSTATS_EX_XPSP1 icmpInStats;

  external MIBICMPSTATS_EX_XPSP1 icmpOutStats;
}

/// {@category Struct}
class MIB_IFNUMBER extends Struct {
  @Uint32()
  external int dwValue;
}

/// {@category Struct}
class MIB_IFRO extends Struct {
  @Array(256)
  external Array<Uint16> _wszName;

  String get wszName {
    final charCodes = <int>[];
    for (var i = 0; i < 256; i++) {
      charCodes.add(_wszName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set wszName(String value) {
    final stringToStore = value.padRight(256, '\x00');
    for (var i = 0; i < 256; i++) {
      _wszName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint32()
  external int dwIndex;

  @Uint32()
  external int dwType;

  @Uint32()
  external int dwMtu;

  @Uint32()
  external int dwSpeed;

  @Uint32()
  external int dwPhysAddrLen;

  @Array(8)
  external Array<Uint8> bPhysAddr;

  @Uint32()
  external int dwAdminStatus;

  @Int32()
  external int dwOperStatus;

  @Uint32()
  external int dwLastChange;

  @Uint32()
  external int dwInOctets;

  @Uint32()
  external int dwInUcastPkts;

  @Uint32()
  external int dwInNUcastPkts;

  @Uint32()
  external int dwInDiscards;

  @Uint32()
  external int dwInErrors;

  @Uint32()
  external int dwInUnknownProtos;

  @Uint32()
  external int dwOutOctets;

  @Uint32()
  external int dwOutUcastPkts;

  @Uint32()
  external int dwOutNUcastPkts;

  @Uint32()
  external int dwOutDiscards;

  @Uint32()
  external int dwOutErrors;

  @Uint32()
  external int dwOutQLen;

  @Uint32()
  external int dwDescrLen;

  @Array(256)
  external Array<Uint8> bDescr;
}

/// {@category Struct}
class MIB_IFSTACK_RO extends Struct {
  @Uint32()
  external int HigherLayerInterfaceIndex;

  @Uint32()
  external int LowerLayerInterfaceIndex;
}

/// {@category Struct}
class MIB_IFSTACK_TABLE extends Struct {
  @Uint32()
  external int NumEntries;

  @Array(1)
  external Array<MIB_IFSTACK_RO> Table;
}

/// {@category Struct}
class MIB_IFSTATUS extends Struct {
  @Uint32()
  external int dwIfIndex;

  @Uint32()
  external int dwAdminStatus;

  @Uint32()
  external int dwOperationalStatus;

  @Int32()
  external int bMHbeatActive;

  @Int32()
  external int bMHbeatAlive;
}

/// {@category Struct}
class MIB_IFTABLE extends Struct {
  @Uint32()
  external int dwNumEntries;

  @Array(1)
  external Array<MIB_IFRO> table;
}

/// {@category Struct}
class MIB_IF_ROW2 extends Struct {
  external NET_LUID_LH InterfaceLuid;

  @Uint32()
  external int InterfaceIndex;

  external GUID InterfaceGuid;

  @Array(257)
  external Array<Uint16> _Alias;

  String get Alias {
    final charCodes = <int>[];
    for (var i = 0; i < 257; i++) {
      charCodes.add(_Alias[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set Alias(String value) {
    final stringToStore = value.padRight(257, '\x00');
    for (var i = 0; i < 257; i++) {
      _Alias[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(257)
  external Array<Uint16> _Description;

  String get Description {
    final charCodes = <int>[];
    for (var i = 0; i < 257; i++) {
      charCodes.add(_Description[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set Description(String value) {
    final stringToStore = value.padRight(257, '\x00');
    for (var i = 0; i < 257; i++) {
      _Description[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint32()
  external int PhysicalAddressLength;

  @Array(32)
  external Array<Uint8> PhysicalAddress;

  @Array(32)
  external Array<Uint8> PermanentPhysicalAddress;

  @Uint32()
  external int Mtu;

  @Uint32()
  external int Type;

  @Int32()
  external int TunnelType;

  @Int32()
  external int MediaType;

  @Int32()
  external int PhysicalMediumType;

  @Int32()
  external int AccessType;

  @Int32()
  external int DirectionType;

  external _MIB_IF_ROW2__InterfaceAndOperStatusFlags_e__Struct
      InterfaceAndOperStatusFlags;

  @Int32()
  external int OperStatus;

  @Int32()
  external int AdminStatus;

  @Int32()
  external int MediaConnectState;

  external GUID NetworkGuid;

  @Int32()
  external int ConnectionType;

  @Uint64()
  external int TransmitLinkSpeed;

  @Uint64()
  external int ReceiveLinkSpeed;

  @Uint64()
  external int InOctets;

  @Uint64()
  external int InUcastPkts;

  @Uint64()
  external int InNUcastPkts;

  @Uint64()
  external int InDiscards;

  @Uint64()
  external int InErrors;

  @Uint64()
  external int InUnknownProtos;

  @Uint64()
  external int InUcastOctets;

  @Uint64()
  external int InMulticastOctets;

  @Uint64()
  external int InBroadcastOctets;

  @Uint64()
  external int OutOctets;

  @Uint64()
  external int OutUcastPkts;

  @Uint64()
  external int OutNUcastPkts;

  @Uint64()
  external int OutDiscards;

  @Uint64()
  external int OutErrors;

  @Uint64()
  external int OutUcastOctets;

  @Uint64()
  external int OutMulticastOctets;

  @Uint64()
  external int OutBroadcastOctets;

  @Uint64()
  external int OutQLen;
}

/// {@category Struct}
class _MIB_IF_ROW2__InterfaceAndOperStatusFlags_e__Struct extends Struct {
  @Uint8()
  external int bitfield;
}

extension MIB_IF_ROW2_Extension on MIB_IF_ROW2 {
  int get bitfield => this.InterfaceAndOperStatusFlags.bitfield;
  set bitfield(int value) => this.InterfaceAndOperStatusFlags.bitfield = value;
}

/// {@category Struct}
class MIB_IF_TABLE2 extends Struct {
  @Uint32()
  external int NumEntries;

  @Array(1)
  external Array<MIB_IF_ROW2> Table;
}

/// {@category Struct}
class MIB_INVERTEDIFSTACK_RO extends Struct {
  @Uint32()
  external int LowerLayerInterfaceIndex;

  @Uint32()
  external int HigherLayerInterfaceIndex;
}

/// {@category Struct}
class MIB_INVERTEDIFSTACK_TABLE extends Struct {
  @Uint32()
  external int NumEntries;

  @Array(1)
  external Array<MIB_INVERTEDIFSTACK_RO> Table;
}

/// {@category Struct}
class MIB_IPADDRROW_W2K extends Struct {
  @Uint32()
  external int dwAddr;

  @Uint32()
  external int dwIndex;

  @Uint32()
  external int dwMask;

  @Uint32()
  external int dwBCastAddr;

  @Uint32()
  external int dwReasmSize;

  @Uint16()
  external int unused1;

  @Uint16()
  external int unused2;
}

/// {@category Struct}
class MIB_IPADDRROW_XP extends Struct {
  @Uint32()
  external int dwAddr;

  @Uint32()
  external int dwIndex;

  @Uint32()
  external int dwMask;

  @Uint32()
  external int dwBCastAddr;

  @Uint32()
  external int dwReasmSize;

  @Uint16()
  external int unused1;

  @Uint16()
  external int wType;
}

/// {@category Struct}
class MIB_IPADDRTABLE extends Struct {
  @Uint32()
  external int dwNumEntries;

  @Array(1)
  external Array<MIB_IPADDRROW_XP> table;
}

/// {@category Struct}
class MIB_IPDESTRO extends Struct {
  external MIB_IPFORWARDRO ForwardRow;

  @Uint32()
  external int dwForwardPreference;

  @Uint32()
  external int dwForwardViewSet;
}

/// {@category Struct}
class MIB_IPDESTTABLE extends Struct {
  @Uint32()
  external int dwNumEntries;

  @Array(1)
  external Array<MIB_IPDESTRO> table;
}

/// {@category Struct}
class MIB_IPFORWARDNUMBER extends Struct {
  @Uint32()
  external int dwValue;
}

/// {@category Struct}
class MIB_IPFORWARDRO extends Struct {
  @Uint32()
  external int dwForwardDest;

  @Uint32()
  external int dwForwardMask;

  @Uint32()
  external int dwForwardPolicy;

  @Uint32()
  external int dwForwardNextHop;

  @Uint32()
  external int dwForwardIfIndex;

  external _MIB_IPFORWARDROW__Anonymous1_e__Union Anonymous1;

  external _MIB_IPFORWARDROW__Anonymous2_e__Union Anonymous2;

  @Uint32()
  external int dwForwardAge;

  @Uint32()
  external int dwForwardNextHopAS;

  @Uint32()
  external int dwForwardMetric1;

  @Uint32()
  external int dwForwardMetric2;

  @Uint32()
  external int dwForwardMetric3;

  @Uint32()
  external int dwForwardMetric4;

  @Uint32()
  external int dwForwardMetric5;
}

/// {@category Struct}
class _MIB_IPFORWARDROW__Anonymous1_e__Union extends Union {
  @Uint32()
  external int dwForwardType;

  @Int32()
  external int ForwardType;
}

extension MIB_IPFORWARDROW_Extension on MIB_IPFORWARDRO {
  int get dwForwardType => this.Anonymous1.dwForwardType;
  set dwForwardType(int value) => this.Anonymous1.dwForwardType = value;

  int get ForwardType => this.Anonymous1.ForwardType;
  set ForwardType(int value) => this.Anonymous1.ForwardType = value;
}

/// {@category Struct}
class _MIB_IPFORWARDROW__Anonymous2_e__Union extends Union {
  @Uint32()
  external int dwForwardProto;

  @Int32()
  external int ForwardProto;
}

extension MIB_IPFORWARDROW_Extension_1 on MIB_IPFORWARDRO {
  int get dwForwardProto => this.Anonymous2.dwForwardProto;
  set dwForwardProto(int value) => this.Anonymous2.dwForwardProto = value;

  int get ForwardProto => this.Anonymous2.ForwardProto;
  set ForwardProto(int value) => this.Anonymous2.ForwardProto = value;
}

/// {@category Struct}
class MIB_IPFORWARDTABLE extends Struct {
  @Uint32()
  external int dwNumEntries;

  @Array(1)
  external Array<MIB_IPFORWARDRO> table;
}

/// {@category Struct}
class MIB_IPFORWARD_ROW2 extends Struct {
  external NET_LUID_LH InterfaceLuid;

  @Uint32()
  external int InterfaceIndex;

  external IP_ADDRESS_PREFIX DestinationPrefix;

  external SOCKADDR_INET NextHop;

  @Uint8()
  external int SitePrefixLength;

  @Uint32()
  external int ValidLifetime;

  @Uint32()
  external int PreferredLifetime;

  @Uint32()
  external int Metric;

  @Int32()
  external int Protocol;

  @Uint8()
  external int Loopback;

  @Uint8()
  external int AutoconfigureAddress;

  @Uint8()
  external int Publish;

  @Uint8()
  external int Immortal;

  @Uint32()
  external int Age;

  @Int32()
  external int Origin;
}

/// {@category Struct}
class MIB_IPFORWARD_TABLE2 extends Struct {
  @Uint32()
  external int NumEntries;

  @Array(1)
  external Array<MIB_IPFORWARD_ROW2> Table;
}

/// {@category Struct}
class MIB_IPINTERFACE_RO extends Struct {
  @Uint16()
  external int Family;

  external NET_LUID_LH InterfaceLuid;

  @Uint32()
  external int InterfaceIndex;

  @Uint32()
  external int MaxReassemblySize;

  @Uint64()
  external int InterfaceIdentifier;

  @Uint32()
  external int MinRouterAdvertisementInterval;

  @Uint32()
  external int MaxRouterAdvertisementInterval;

  @Uint8()
  external int AdvertisingEnabled;

  @Uint8()
  external int ForwardingEnabled;

  @Uint8()
  external int WeakHostSend;

  @Uint8()
  external int WeakHostReceive;

  @Uint8()
  external int UseAutomaticMetric;

  @Uint8()
  external int UseNeighborUnreachabilityDetection;

  @Uint8()
  external int ManagedAddressConfigurationSupported;

  @Uint8()
  external int OtherStatefulConfigurationSupported;

  @Uint8()
  external int AdvertiseDefaultRoute;

  @Int32()
  external int RouterDiscoveryBehavior;

  @Uint32()
  external int DadTransmits;

  @Uint32()
  external int BaseReachableTime;

  @Uint32()
  external int RetransmitTime;

  @Uint32()
  external int PathMtuDiscoveryTimeout;

  @Int32()
  external int LinkLocalAddressBehavior;

  @Uint32()
  external int LinkLocalAddressTimeout;

  @Array(16)
  external Array<Uint32> ZoneIndices;

  @Uint32()
  external int SitePrefixLength;

  @Uint32()
  external int Metric;

  @Uint32()
  external int NlMtu;

  @Uint8()
  external int Connected;

  @Uint8()
  external int SupportsWakeUpPatterns;

  @Uint8()
  external int SupportsNeighborDiscovery;

  @Uint8()
  external int SupportsRouterDiscovery;

  @Uint32()
  external int ReachableTime;

  external NL_INTERFACE_OFFLOAD_ROD TransmitOffload;

  external NL_INTERFACE_OFFLOAD_ROD ReceiveOffload;

  @Uint8()
  external int DisableDefaultRoutes;
}

/// {@category Struct}
class MIB_IPINTERFACE_TABLE extends Struct {
  @Uint32()
  external int NumEntries;

  @Array(1)
  external Array<MIB_IPINTERFACE_RO> Table;
}

/// {@category Struct}
class MIB_IPMCAST_BOUNDARY extends Struct {
  @Uint32()
  external int dwIfIndex;

  @Uint32()
  external int dwGroupAddress;

  @Uint32()
  external int dwGroupMask;

  @Uint32()
  external int dwStatus;
}

/// {@category Struct}
class MIB_IPMCAST_BOUNDARY_TABLE extends Struct {
  @Uint32()
  external int dwNumEntries;

  @Array(1)
  external Array<MIB_IPMCAST_BOUNDARY> table;
}

/// {@category Struct}
class MIB_IPMCAST_GLOBAL extends Struct {
  @Uint32()
  external int dwEnable;
}

/// {@category Struct}
class MIB_IPMCAST_IF_ENTRY extends Struct {
  @Uint32()
  external int dwIfIndex;

  @Uint32()
  external int dwTtl;

  @Uint32()
  external int dwProtocol;

  @Uint32()
  external int dwRateLimit;

  @Uint32()
  external int ulInMcastOctets;

  @Uint32()
  external int ulOutMcastOctets;
}

/// {@category Struct}
class MIB_IPMCAST_IF_TABLE extends Struct {
  @Uint32()
  external int dwNumEntries;

  @Array(1)
  external Array<MIB_IPMCAST_IF_ENTRY> table;
}

/// {@category Struct}
class MIB_IPMCAST_MFE extends Struct {
  @Uint32()
  external int dwGroup;

  @Uint32()
  external int dwSource;

  @Uint32()
  external int dwSrcMask;

  @Uint32()
  external int dwUpStrmNgbr;

  @Uint32()
  external int dwInIfIndex;

  @Uint32()
  external int dwInIfProtocol;

  @Uint32()
  external int dwRouteProtocol;

  @Uint32()
  external int dwRouteNetwork;

  @Uint32()
  external int dwRouteMask;

  @Uint32()
  external int ulUpTime;

  @Uint32()
  external int ulExpiryTime;

  @Uint32()
  external int ulTimeOut;

  @Uint32()
  external int ulNumOutIf;

  @Uint32()
  external int fFlags;

  @Uint32()
  external int dwReserved;

  @Array(1)
  external Array<MIB_IPMCAST_OIF_XP> rgmioOutInfo;
}

/// {@category Struct}
class MIB_IPMCAST_MFE_STATS extends Struct {
  @Uint32()
  external int dwGroup;

  @Uint32()
  external int dwSource;

  @Uint32()
  external int dwSrcMask;

  @Uint32()
  external int dwUpStrmNgbr;

  @Uint32()
  external int dwInIfIndex;

  @Uint32()
  external int dwInIfProtocol;

  @Uint32()
  external int dwRouteProtocol;

  @Uint32()
  external int dwRouteNetwork;

  @Uint32()
  external int dwRouteMask;

  @Uint32()
  external int ulUpTime;

  @Uint32()
  external int ulExpiryTime;

  @Uint32()
  external int ulNumOutIf;

  @Uint32()
  external int ulInPkts;

  @Uint32()
  external int ulInOctets;

  @Uint32()
  external int ulPktsDifferentIf;

  @Uint32()
  external int ulQueueOverflow;

  @Array(1)
  external Array<MIB_IPMCAST_OIF_STATS_LH> rgmiosOutStats;
}

/// {@category Struct}
class MIB_IPMCAST_MFE_STATS_EX_XP extends Struct {
  @Uint32()
  external int dwGroup;

  @Uint32()
  external int dwSource;

  @Uint32()
  external int dwSrcMask;

  @Uint32()
  external int dwUpStrmNgbr;

  @Uint32()
  external int dwInIfIndex;

  @Uint32()
  external int dwInIfProtocol;

  @Uint32()
  external int dwRouteProtocol;

  @Uint32()
  external int dwRouteNetwork;

  @Uint32()
  external int dwRouteMask;

  @Uint32()
  external int ulUpTime;

  @Uint32()
  external int ulExpiryTime;

  @Uint32()
  external int ulNumOutIf;

  @Uint32()
  external int ulInPkts;

  @Uint32()
  external int ulInOctets;

  @Uint32()
  external int ulPktsDifferentIf;

  @Uint32()
  external int ulQueueOverflow;

  @Uint32()
  external int ulUninitMfe;

  @Uint32()
  external int ulNegativeMfe;

  @Uint32()
  external int ulInDiscards;

  @Uint32()
  external int ulInHdrErrors;

  @Uint32()
  external int ulTotalOutPackets;

  @Array(1)
  external Array<MIB_IPMCAST_OIF_STATS_LH> rgmiosOutStats;
}

/// {@category Struct}
class MIB_IPMCAST_OIF_STATS_LH extends Struct {
  @Uint32()
  external int dwOutIfIndex;

  @Uint32()
  external int dwNextHopAddr;

  @Uint32()
  external int dwDialContext;

  @Uint32()
  external int ulTtlTooLow;

  @Uint32()
  external int ulFragNeeded;

  @Uint32()
  external int ulOutPackets;

  @Uint32()
  external int ulOutDiscards;
}

/// {@category Struct}
class MIB_IPMCAST_OIF_STATS_W2K extends Struct {
  @Uint32()
  external int dwOutIfIndex;

  @Uint32()
  external int dwNextHopAddr;

  external Pointer pvDialContext;

  @Uint32()
  external int ulTtlTooLow;

  @Uint32()
  external int ulFragNeeded;

  @Uint32()
  external int ulOutPackets;

  @Uint32()
  external int ulOutDiscards;
}

/// {@category Struct}
class MIB_IPMCAST_OIF_W2K extends Struct {
  @Uint32()
  external int dwOutIfIndex;

  @Uint32()
  external int dwNextHopAddr;

  external Pointer pvReserved;

  @Uint32()
  external int dwReserved;
}

/// {@category Struct}
class MIB_IPMCAST_OIF_XP extends Struct {
  @Uint32()
  external int dwOutIfIndex;

  @Uint32()
  external int dwNextHopAddr;

  @Uint32()
  external int dwReserved;

  @Uint32()
  external int dwReserved1;
}

/// {@category Struct}
class MIB_IPMCAST_SCOPE extends Struct {
  @Uint32()
  external int dwGroupAddress;

  @Uint32()
  external int dwGroupMask;

  @Array(256)
  external Array<Uint16> snNameBuffer;

  @Uint32()
  external int dwStatus;
}

/// {@category Struct}
class MIB_IPNETROW_LH extends Struct {
  @Uint32()
  external int dwIndex;

  @Uint32()
  external int dwPhysAddrLen;

  @Array(8)
  external Array<Uint8> bPhysAddr;

  @Uint32()
  external int dwAddr;

  external _MIB_IPNETROW_LH__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _MIB_IPNETROW_LH__Anonymous_e__Union extends Union {
  @Uint32()
  external int dwType;

  @Int32()
  external int Type;
}

extension MIB_IPNETROW_LH_Extension on MIB_IPNETROW_LH {
  int get dwType => this.Anonymous.dwType;
  set dwType(int value) => this.Anonymous.dwType = value;

  int get Type => this.Anonymous.Type;
  set Type(int value) => this.Anonymous.Type = value;
}

/// {@category Struct}
class MIB_IPNETROW_W2K extends Struct {
  @Uint32()
  external int dwIndex;

  @Uint32()
  external int dwPhysAddrLen;

  @Array(8)
  external Array<Uint8> bPhysAddr;

  @Uint32()
  external int dwAddr;

  @Uint32()
  external int dwType;
}

/// {@category Struct}
class MIB_IPNETTABLE extends Struct {
  @Uint32()
  external int dwNumEntries;

  @Array(1)
  external Array<MIB_IPNETROW_LH> table;
}

/// {@category Struct}
class MIB_IPNET_ROW2 extends Struct {
  external SOCKADDR_INET Address;

  @Uint32()
  external int InterfaceIndex;

  external NET_LUID_LH InterfaceLuid;

  @Array(32)
  external Array<Uint8> PhysicalAddress;

  @Uint32()
  external int PhysicalAddressLength;

  @Int32()
  external int State;

  external _MIB_IPNET_ROW2__Anonymous_e__Union Anonymous;

  external _MIB_IPNET_ROW2__ReachabilityTime_e__Union ReachabilityTime;
}

/// {@category Struct}
class _MIB_IPNET_ROW2__Anonymous_e__Union extends Union {
  external _MIB_IPNET_ROW2__Anonymous_e__Union__Anonymous_e__Struct Anonymous;

  @Uint8()
  external int Flags;
}

/// {@category Struct}
class _MIB_IPNET_ROW2__Anonymous_e__Union__Anonymous_e__Struct extends Struct {
  @Uint8()
  external int bitfield;
}

extension MIB_IPNET_ROW2__Anonymous_e__Union_Extension on MIB_IPNET_ROW2 {
  int get bitfield => this.Anonymous.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous.Anonymous.bitfield = value;
}

extension MIB_IPNET_ROW2_Extension on MIB_IPNET_ROW2 {
  _MIB_IPNET_ROW2__Anonymous_e__Union__Anonymous_e__Struct get Anonymous =>
      this.Anonymous.Anonymous;
  set Anonymous(
          _MIB_IPNET_ROW2__Anonymous_e__Union__Anonymous_e__Struct value) =>
      this.Anonymous.Anonymous = value;

  int get Flags => this.Anonymous.Flags;
  set Flags(int value) => this.Anonymous.Flags = value;
}

/// {@category Struct}
class _MIB_IPNET_ROW2__ReachabilityTime_e__Union extends Union {
  @Uint32()
  external int LastReachable;

  @Uint32()
  external int LastUnreachable;
}

extension MIB_IPNET_ROW2_Extension_1 on MIB_IPNET_ROW2 {
  int get LastReachable => this.ReachabilityTime.LastReachable;
  set LastReachable(int value) => this.ReachabilityTime.LastReachable = value;

  int get LastUnreachable => this.ReachabilityTime.LastUnreachable;
  set LastUnreachable(int value) =>
      this.ReachabilityTime.LastUnreachable = value;
}

/// {@category Struct}
class MIB_IPNET_TABLE2 extends Struct {
  @Uint32()
  external int NumEntries;

  @Array(1)
  external Array<MIB_IPNET_ROW2> Table;
}

/// {@category Struct}
class MIB_IPPATH_RO extends Struct {
  external SOCKADDR_INET Source;

  external SOCKADDR_INET Destination;

  external NET_LUID_LH InterfaceLuid;

  @Uint32()
  external int InterfaceIndex;

  external SOCKADDR_INET CurrentNextHop;

  @Uint32()
  external int PathMtu;

  @Uint32()
  external int RttMean;

  @Uint32()
  external int RttDeviation;

  external _MIB_IPPATH_ROW__Anonymous_e__Union Anonymous;

  @Uint8()
  external int IsReachable;

  @Uint64()
  external int LinkTransmitSpeed;

  @Uint64()
  external int LinkReceiveSpeed;
}

/// {@category Struct}
class _MIB_IPPATH_ROW__Anonymous_e__Union extends Union {
  @Uint32()
  external int LastReachable;

  @Uint32()
  external int LastUnreachable;
}

extension MIB_IPPATH_ROW_Extension on MIB_IPPATH_RO {
  int get LastReachable => this.Anonymous.LastReachable;
  set LastReachable(int value) => this.Anonymous.LastReachable = value;

  int get LastUnreachable => this.Anonymous.LastUnreachable;
  set LastUnreachable(int value) => this.Anonymous.LastUnreachable = value;
}

/// {@category Struct}
class MIB_IPPATH_TABLE extends Struct {
  @Uint32()
  external int NumEntries;

  @Array(1)
  external Array<MIB_IPPATH_RO> Table;
}

/// {@category Struct}
class MIB_IPSTATS_LH extends Struct {
  external _MIB_IPSTATS_LH__Anonymous_e__Union Anonymous;

  @Uint32()
  external int dwDefaultTTL;

  @Uint32()
  external int dwInReceives;

  @Uint32()
  external int dwInHdrErrors;

  @Uint32()
  external int dwInAddrErrors;

  @Uint32()
  external int dwForwDatagrams;

  @Uint32()
  external int dwInUnknownProtos;

  @Uint32()
  external int dwInDiscards;

  @Uint32()
  external int dwInDelivers;

  @Uint32()
  external int dwOutRequests;

  @Uint32()
  external int dwRoutingDiscards;

  @Uint32()
  external int dwOutDiscards;

  @Uint32()
  external int dwOutNoRoutes;

  @Uint32()
  external int dwReasmTimeout;

  @Uint32()
  external int dwReasmReqds;

  @Uint32()
  external int dwReasmOks;

  @Uint32()
  external int dwReasmFails;

  @Uint32()
  external int dwFragOks;

  @Uint32()
  external int dwFragFails;

  @Uint32()
  external int dwFragCreates;

  @Uint32()
  external int dwNumIf;

  @Uint32()
  external int dwNumAddr;

  @Uint32()
  external int dwNumRoutes;
}

/// {@category Struct}
class _MIB_IPSTATS_LH__Anonymous_e__Union extends Union {
  @Uint32()
  external int dwForwarding;

  @Int32()
  external int Forwarding;
}

extension MIB_IPSTATS_LH_Extension on MIB_IPSTATS_LH {
  int get dwForwarding => this.Anonymous.dwForwarding;
  set dwForwarding(int value) => this.Anonymous.dwForwarding = value;

  int get Forwarding => this.Anonymous.Forwarding;
  set Forwarding(int value) => this.Anonymous.Forwarding = value;
}

/// {@category Struct}
class MIB_IPSTATS_W2K extends Struct {
  @Uint32()
  external int dwForwarding;

  @Uint32()
  external int dwDefaultTTL;

  @Uint32()
  external int dwInReceives;

  @Uint32()
  external int dwInHdrErrors;

  @Uint32()
  external int dwInAddrErrors;

  @Uint32()
  external int dwForwDatagrams;

  @Uint32()
  external int dwInUnknownProtos;

  @Uint32()
  external int dwInDiscards;

  @Uint32()
  external int dwInDelivers;

  @Uint32()
  external int dwOutRequests;

  @Uint32()
  external int dwRoutingDiscards;

  @Uint32()
  external int dwOutDiscards;

  @Uint32()
  external int dwOutNoRoutes;

  @Uint32()
  external int dwReasmTimeout;

  @Uint32()
  external int dwReasmReqds;

  @Uint32()
  external int dwReasmOks;

  @Uint32()
  external int dwReasmFails;

  @Uint32()
  external int dwFragOks;

  @Uint32()
  external int dwFragFails;

  @Uint32()
  external int dwFragCreates;

  @Uint32()
  external int dwNumIf;

  @Uint32()
  external int dwNumAddr;

  @Uint32()
  external int dwNumRoutes;
}

/// {@category Struct}
class MIB_IP_NETWORK_CONNECTION_BANDWIDTH_ESTIMATES extends Struct {
  external NL_BANDWIDTH_INFORMATION InboundBandwidthInformation;

  external NL_BANDWIDTH_INFORMATION OutboundBandwidthInformation;
}

/// {@category Struct}
class MIB_MCAST_LIMIT_RO extends Struct {
  @Uint32()
  external int dwTtl;

  @Uint32()
  external int dwRateLimit;
}

/// {@category Struct}
class MIB_MFE_STATS_TABLE extends Struct {
  @Uint32()
  external int dwNumEntries;

  @Array(1)
  external Array<MIB_IPMCAST_MFE_STATS> table;
}

/// {@category Struct}
class MIB_MFE_STATS_TABLE_EX_XP extends Struct {
  @Uint32()
  external int dwNumEntries;

  @Array(1)
  external Array<Pointer<MIB_IPMCAST_MFE_STATS_EX_XP>> table;
}

/// {@category Struct}
class MIB_MFE_TABLE extends Struct {
  @Uint32()
  external int dwNumEntries;

  @Array(1)
  external Array<MIB_IPMCAST_MFE> table;
}

/// {@category Struct}
class MIB_MULTICASTIPADDRESS_RO extends Struct {
  external SOCKADDR_INET Address;

  @Uint32()
  external int InterfaceIndex;

  external NET_LUID_LH InterfaceLuid;

  external SCOPE_ID ScopeId;
}

/// {@category Struct}
class MIB_MULTICASTIPADDRESS_TABLE extends Struct {
  @Uint32()
  external int NumEntries;

  @Array(1)
  external Array<MIB_MULTICASTIPADDRESS_RO> Table;
}

/// {@category Struct}
class MIB_OPAQUE_INFO extends Struct {
  @Uint32()
  external int dwId;

  external _MIB_OPAQUE_INFO__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _MIB_OPAQUE_INFO__Anonymous_e__Union extends Union {
  @Uint64()
  external int ullAlign;

  @Array(1)
  external Array<Uint8> rgbyData;
}

extension MIB_OPAQUE_INFO_Extension on MIB_OPAQUE_INFO {
  int get ullAlign => this.Anonymous.ullAlign;
  set ullAlign(int value) => this.Anonymous.ullAlign = value;

  Array<Uint8> get rgbyData => this.Anonymous.rgbyData;
  set rgbyData(Array<Uint8> value) => this.Anonymous.rgbyData = value;
}

/// {@category Struct}
class MIB_OPAQUE_QUERY extends Struct {
  @Uint32()
  external int dwVarId;

  @Array(1)
  external Array<Uint32> rgdwVarIndex;
}

/// {@category Struct}
class MIB_PROXYARP extends Struct {
  @Uint32()
  external int dwAddress;

  @Uint32()
  external int dwMask;

  @Uint32()
  external int dwIfIndex;
}

/// {@category Struct}
class MIB_ROUTESTATE extends Struct {
  @Int32()
  external int bRoutesSetToStack;
}

/// {@category Struct}
class MIB_TCP6RO extends Struct {
  @Int32()
  external int State;

  external IN6_ADDR LocalAddr;

  @Uint32()
  external int dwLocalScopeId;

  @Uint32()
  external int dwLocalPort;

  external IN6_ADDR RemoteAddr;

  @Uint32()
  external int dwRemoteScopeId;

  @Uint32()
  external int dwRemotePort;
}

/// {@category Struct}
class MIB_TCP6ROW2 extends Struct {
  external IN6_ADDR LocalAddr;

  @Uint32()
  external int dwLocalScopeId;

  @Uint32()
  external int dwLocalPort;

  external IN6_ADDR RemoteAddr;

  @Uint32()
  external int dwRemoteScopeId;

  @Uint32()
  external int dwRemotePort;

  @Int32()
  external int State;

  @Uint32()
  external int dwOwningPid;

  @Int32()
  external int dwOffloadState;
}

/// {@category Struct}
class MIB_TCP6ROW_OWNER_MODULE extends Struct {
  @Array(16)
  external Array<Uint8> ucLocalAddr;

  @Uint32()
  external int dwLocalScopeId;

  @Uint32()
  external int dwLocalPort;

  @Array(16)
  external Array<Uint8> ucRemoteAddr;

  @Uint32()
  external int dwRemoteScopeId;

  @Uint32()
  external int dwRemotePort;

  @Uint32()
  external int dwState;

  @Uint32()
  external int dwOwningPid;

  @Int64()
  external int liCreateTimestamp;

  @Array(16)
  external Array<Uint64> OwningModuleInfo;
}

/// {@category Struct}
class MIB_TCP6ROW_OWNER_PID extends Struct {
  @Array(16)
  external Array<Uint8> ucLocalAddr;

  @Uint32()
  external int dwLocalScopeId;

  @Uint32()
  external int dwLocalPort;

  @Array(16)
  external Array<Uint8> ucRemoteAddr;

  @Uint32()
  external int dwRemoteScopeId;

  @Uint32()
  external int dwRemotePort;

  @Uint32()
  external int dwState;

  @Uint32()
  external int dwOwningPid;
}

/// {@category Struct}
class MIB_TCP6TABLE extends Struct {
  @Uint32()
  external int dwNumEntries;

  @Array(1)
  external Array<MIB_TCP6RO> table;
}

/// {@category Struct}
class MIB_TCP6TABLE2 extends Struct {
  @Uint32()
  external int dwNumEntries;

  @Array(1)
  external Array<MIB_TCP6ROW2> table;
}

/// {@category Struct}
class MIB_TCP6TABLE_OWNER_MODULE extends Struct {
  @Uint32()
  external int dwNumEntries;

  @Array(1)
  external Array<MIB_TCP6ROW_OWNER_MODULE> table;
}

/// {@category Struct}
class MIB_TCP6TABLE_OWNER_PID extends Struct {
  @Uint32()
  external int dwNumEntries;

  @Array(1)
  external Array<MIB_TCP6ROW_OWNER_PID> table;
}

/// {@category Struct}
class MIB_TCPROW2 extends Struct {
  @Uint32()
  external int dwState;

  @Uint32()
  external int dwLocalAddr;

  @Uint32()
  external int dwLocalPort;

  @Uint32()
  external int dwRemoteAddr;

  @Uint32()
  external int dwRemotePort;

  @Uint32()
  external int dwOwningPid;

  @Int32()
  external int dwOffloadState;
}

/// {@category Struct}
class MIB_TCPROW_LH extends Struct {
  external _MIB_TCPROW_LH__Anonymous_e__Union Anonymous;

  @Uint32()
  external int dwLocalAddr;

  @Uint32()
  external int dwLocalPort;

  @Uint32()
  external int dwRemoteAddr;

  @Uint32()
  external int dwRemotePort;
}

/// {@category Struct}
class _MIB_TCPROW_LH__Anonymous_e__Union extends Union {
  @Uint32()
  external int dwState;

  @Int32()
  external int State;
}

extension MIB_TCPROW_LH_Extension on MIB_TCPROW_LH {
  int get dwState => this.Anonymous.dwState;
  set dwState(int value) => this.Anonymous.dwState = value;

  int get State => this.Anonymous.State;
  set State(int value) => this.Anonymous.State = value;
}

/// {@category Struct}
class MIB_TCPROW_OWNER_MODULE extends Struct {
  @Uint32()
  external int dwState;

  @Uint32()
  external int dwLocalAddr;

  @Uint32()
  external int dwLocalPort;

  @Uint32()
  external int dwRemoteAddr;

  @Uint32()
  external int dwRemotePort;

  @Uint32()
  external int dwOwningPid;

  @Int64()
  external int liCreateTimestamp;

  @Array(16)
  external Array<Uint64> OwningModuleInfo;
}

/// {@category Struct}
class MIB_TCPROW_OWNER_PID extends Struct {
  @Uint32()
  external int dwState;

  @Uint32()
  external int dwLocalAddr;

  @Uint32()
  external int dwLocalPort;

  @Uint32()
  external int dwRemoteAddr;

  @Uint32()
  external int dwRemotePort;

  @Uint32()
  external int dwOwningPid;
}

/// {@category Struct}
class MIB_TCPROW_W2K extends Struct {
  @Uint32()
  external int dwState;

  @Uint32()
  external int dwLocalAddr;

  @Uint32()
  external int dwLocalPort;

  @Uint32()
  external int dwRemoteAddr;

  @Uint32()
  external int dwRemotePort;
}

/// {@category Struct}
class MIB_TCPSTATS2 extends Struct {
  @Int32()
  external int RtoAlgorithm;

  @Uint32()
  external int dwRtoMin;

  @Uint32()
  external int dwRtoMax;

  @Uint32()
  external int dwMaxConn;

  @Uint32()
  external int dwActiveOpens;

  @Uint32()
  external int dwPassiveOpens;

  @Uint32()
  external int dwAttemptFails;

  @Uint32()
  external int dwEstabResets;

  @Uint32()
  external int dwCurrEstab;

  @Uint64()
  external int dw64InSegs;

  @Uint64()
  external int dw64OutSegs;

  @Uint32()
  external int dwRetransSegs;

  @Uint32()
  external int dwInErrs;

  @Uint32()
  external int dwOutRsts;

  @Uint32()
  external int dwNumConns;
}

/// {@category Struct}
class MIB_TCPSTATS_LH extends Struct {
  external _MIB_TCPSTATS_LH__Anonymous_e__Union Anonymous;

  @Uint32()
  external int dwRtoMin;

  @Uint32()
  external int dwRtoMax;

  @Uint32()
  external int dwMaxConn;

  @Uint32()
  external int dwActiveOpens;

  @Uint32()
  external int dwPassiveOpens;

  @Uint32()
  external int dwAttemptFails;

  @Uint32()
  external int dwEstabResets;

  @Uint32()
  external int dwCurrEstab;

  @Uint32()
  external int dwInSegs;

  @Uint32()
  external int dwOutSegs;

  @Uint32()
  external int dwRetransSegs;

  @Uint32()
  external int dwInErrs;

  @Uint32()
  external int dwOutRsts;

  @Uint32()
  external int dwNumConns;
}

/// {@category Struct}
class _MIB_TCPSTATS_LH__Anonymous_e__Union extends Union {
  @Uint32()
  external int dwRtoAlgorithm;

  @Int32()
  external int RtoAlgorithm;
}

extension MIB_TCPSTATS_LH_Extension on MIB_TCPSTATS_LH {
  int get dwRtoAlgorithm => this.Anonymous.dwRtoAlgorithm;
  set dwRtoAlgorithm(int value) => this.Anonymous.dwRtoAlgorithm = value;

  int get RtoAlgorithm => this.Anonymous.RtoAlgorithm;
  set RtoAlgorithm(int value) => this.Anonymous.RtoAlgorithm = value;
}

/// {@category Struct}
class MIB_TCPSTATS_W2K extends Struct {
  @Uint32()
  external int dwRtoAlgorithm;

  @Uint32()
  external int dwRtoMin;

  @Uint32()
  external int dwRtoMax;

  @Uint32()
  external int dwMaxConn;

  @Uint32()
  external int dwActiveOpens;

  @Uint32()
  external int dwPassiveOpens;

  @Uint32()
  external int dwAttemptFails;

  @Uint32()
  external int dwEstabResets;

  @Uint32()
  external int dwCurrEstab;

  @Uint32()
  external int dwInSegs;

  @Uint32()
  external int dwOutSegs;

  @Uint32()
  external int dwRetransSegs;

  @Uint32()
  external int dwInErrs;

  @Uint32()
  external int dwOutRsts;

  @Uint32()
  external int dwNumConns;
}

/// {@category Struct}
class MIB_TCPTABLE extends Struct {
  @Uint32()
  external int dwNumEntries;

  @Array(1)
  external Array<MIB_TCPROW_LH> table;
}

/// {@category Struct}
class MIB_TCPTABLE2 extends Struct {
  @Uint32()
  external int dwNumEntries;

  @Array(1)
  external Array<MIB_TCPROW2> table;
}

/// {@category Struct}
class MIB_TCPTABLE_OWNER_MODULE extends Struct {
  @Uint32()
  external int dwNumEntries;

  @Array(1)
  external Array<MIB_TCPROW_OWNER_MODULE> table;
}

/// {@category Struct}
class MIB_TCPTABLE_OWNER_PID extends Struct {
  @Uint32()
  external int dwNumEntries;

  @Array(1)
  external Array<MIB_TCPROW_OWNER_PID> table;
}

/// {@category Struct}
class MIB_UDP6RO extends Struct {
  external IN6_ADDR dwLocalAddr;

  @Uint32()
  external int dwLocalScopeId;

  @Uint32()
  external int dwLocalPort;
}

/// {@category Struct}
class MIB_UDP6ROW2 extends Struct {
  @Array(16)
  external Array<Uint8> ucLocalAddr;

  @Uint32()
  external int dwLocalScopeId;

  @Uint32()
  external int dwLocalPort;

  @Uint32()
  external int dwOwningPid;

  @Int64()
  external int liCreateTimestamp;

  external _MIB_UDP6ROW2__Anonymous_e__Union Anonymous;

  @Array(16)
  external Array<Uint64> OwningModuleInfo;

  @Array(16)
  external Array<Uint8> ucRemoteAddr;

  @Uint32()
  external int dwRemoteScopeId;

  @Uint32()
  external int dwRemotePort;
}

/// {@category Struct}
class _MIB_UDP6ROW2__Anonymous_e__Union extends Union {
  external _MIB_UDP6ROW2__Anonymous_e__Union__Anonymous_e__Struct Anonymous;

  @Int32()
  external int dwFlags;
}

/// {@category Struct}
class _MIB_UDP6ROW2__Anonymous_e__Union__Anonymous_e__Struct extends Struct {
  @Int32()
  external int bitfield;
}

extension MIB_UDP6ROW2__Anonymous_e__Union_Extension on MIB_UDP6ROW2 {
  int get bitfield => this.Anonymous.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous.Anonymous.bitfield = value;
}

extension MIB_UDP6ROW2_Extension on MIB_UDP6ROW2 {
  _MIB_UDP6ROW2__Anonymous_e__Union__Anonymous_e__Struct get Anonymous =>
      this.Anonymous.Anonymous;
  set Anonymous(_MIB_UDP6ROW2__Anonymous_e__Union__Anonymous_e__Struct value) =>
      this.Anonymous.Anonymous = value;

  int get dwFlags => this.Anonymous.dwFlags;
  set dwFlags(int value) => this.Anonymous.dwFlags = value;
}

/// {@category Struct}
class MIB_UDP6ROW_OWNER_MODULE extends Struct {
  @Array(16)
  external Array<Uint8> ucLocalAddr;

  @Uint32()
  external int dwLocalScopeId;

  @Uint32()
  external int dwLocalPort;

  @Uint32()
  external int dwOwningPid;

  @Int64()
  external int liCreateTimestamp;

  external _MIB_UDP6ROW_OWNER_MODULE__Anonymous_e__Union Anonymous;

  @Array(16)
  external Array<Uint64> OwningModuleInfo;
}

/// {@category Struct}
class _MIB_UDP6ROW_OWNER_MODULE__Anonymous_e__Union extends Union {
  external _MIB_UDP6ROW_OWNER_MODULE__Anonymous_e__Union__Anonymous_e__Struct
      Anonymous;

  @Int32()
  external int dwFlags;
}

/// {@category Struct}
class _MIB_UDP6ROW_OWNER_MODULE__Anonymous_e__Union__Anonymous_e__Struct
    extends Struct {
  @Int32()
  external int bitfield;
}

extension MIB_UDP6ROW_OWNER_MODULE__Anonymous_e__Union_Extension
    on MIB_UDP6ROW_OWNER_MODULE {
  int get bitfield => this.Anonymous.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous.Anonymous.bitfield = value;
}

extension MIB_UDP6ROW_OWNER_MODULE_Extension on MIB_UDP6ROW_OWNER_MODULE {
  _MIB_UDP6ROW_OWNER_MODULE__Anonymous_e__Union__Anonymous_e__Struct
      get Anonymous => this.Anonymous.Anonymous;
  set Anonymous(
          _MIB_UDP6ROW_OWNER_MODULE__Anonymous_e__Union__Anonymous_e__Struct
              value) =>
      this.Anonymous.Anonymous = value;

  int get dwFlags => this.Anonymous.dwFlags;
  set dwFlags(int value) => this.Anonymous.dwFlags = value;
}

/// {@category Struct}
class MIB_UDP6ROW_OWNER_PID extends Struct {
  @Array(16)
  external Array<Uint8> ucLocalAddr;

  @Uint32()
  external int dwLocalScopeId;

  @Uint32()
  external int dwLocalPort;

  @Uint32()
  external int dwOwningPid;
}

/// {@category Struct}
class MIB_UDP6TABLE extends Struct {
  @Uint32()
  external int dwNumEntries;

  @Array(1)
  external Array<MIB_UDP6RO> table;
}

/// {@category Struct}
class MIB_UDP6TABLE2 extends Struct {
  @Uint32()
  external int dwNumEntries;

  @Array(1)
  external Array<MIB_UDP6ROW2> table;
}

/// {@category Struct}
class MIB_UDP6TABLE_OWNER_MODULE extends Struct {
  @Uint32()
  external int dwNumEntries;

  @Array(1)
  external Array<MIB_UDP6ROW_OWNER_MODULE> table;
}

/// {@category Struct}
class MIB_UDP6TABLE_OWNER_PID extends Struct {
  @Uint32()
  external int dwNumEntries;

  @Array(1)
  external Array<MIB_UDP6ROW_OWNER_PID> table;
}

/// {@category Struct}
class MIB_UDPRO extends Struct {
  @Uint32()
  external int dwLocalAddr;

  @Uint32()
  external int dwLocalPort;
}

/// {@category Struct}
class MIB_UDPROW2 extends Struct {
  @Uint32()
  external int dwLocalAddr;

  @Uint32()
  external int dwLocalPort;

  @Uint32()
  external int dwOwningPid;

  @Int64()
  external int liCreateTimestamp;

  external _MIB_UDPROW2__Anonymous_e__Union Anonymous;

  @Array(16)
  external Array<Uint64> OwningModuleInfo;

  @Uint32()
  external int dwRemoteAddr;

  @Uint32()
  external int dwRemotePort;
}

/// {@category Struct}
class _MIB_UDPROW2__Anonymous_e__Union extends Union {
  external _MIB_UDPROW2__Anonymous_e__Union__Anonymous_e__Struct Anonymous;

  @Int32()
  external int dwFlags;
}

/// {@category Struct}
class _MIB_UDPROW2__Anonymous_e__Union__Anonymous_e__Struct extends Struct {
  @Int32()
  external int bitfield;
}

extension MIB_UDPROW2__Anonymous_e__Union_Extension on MIB_UDPROW2 {
  int get bitfield => this.Anonymous.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous.Anonymous.bitfield = value;
}

extension MIB_UDPROW2_Extension on MIB_UDPROW2 {
  _MIB_UDPROW2__Anonymous_e__Union__Anonymous_e__Struct get Anonymous =>
      this.Anonymous.Anonymous;
  set Anonymous(_MIB_UDPROW2__Anonymous_e__Union__Anonymous_e__Struct value) =>
      this.Anonymous.Anonymous = value;

  int get dwFlags => this.Anonymous.dwFlags;
  set dwFlags(int value) => this.Anonymous.dwFlags = value;
}

/// {@category Struct}
class MIB_UDPROW_OWNER_MODULE extends Struct {
  @Uint32()
  external int dwLocalAddr;

  @Uint32()
  external int dwLocalPort;

  @Uint32()
  external int dwOwningPid;

  @Int64()
  external int liCreateTimestamp;

  external _MIB_UDPROW_OWNER_MODULE__Anonymous_e__Union Anonymous;

  @Array(16)
  external Array<Uint64> OwningModuleInfo;
}

/// {@category Struct}
class _MIB_UDPROW_OWNER_MODULE__Anonymous_e__Union extends Union {
  external _MIB_UDPROW_OWNER_MODULE__Anonymous_e__Union__Anonymous_e__Struct
      Anonymous;

  @Int32()
  external int dwFlags;
}

/// {@category Struct}
class _MIB_UDPROW_OWNER_MODULE__Anonymous_e__Union__Anonymous_e__Struct
    extends Struct {
  @Int32()
  external int bitfield;
}

extension MIB_UDPROW_OWNER_MODULE__Anonymous_e__Union_Extension
    on MIB_UDPROW_OWNER_MODULE {
  int get bitfield => this.Anonymous.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous.Anonymous.bitfield = value;
}

extension MIB_UDPROW_OWNER_MODULE_Extension on MIB_UDPROW_OWNER_MODULE {
  _MIB_UDPROW_OWNER_MODULE__Anonymous_e__Union__Anonymous_e__Struct
      get Anonymous => this.Anonymous.Anonymous;
  set Anonymous(
          _MIB_UDPROW_OWNER_MODULE__Anonymous_e__Union__Anonymous_e__Struct
              value) =>
      this.Anonymous.Anonymous = value;

  int get dwFlags => this.Anonymous.dwFlags;
  set dwFlags(int value) => this.Anonymous.dwFlags = value;
}

/// {@category Struct}
class MIB_UDPROW_OWNER_PID extends Struct {
  @Uint32()
  external int dwLocalAddr;

  @Uint32()
  external int dwLocalPort;

  @Uint32()
  external int dwOwningPid;
}

/// {@category Struct}
class MIB_UDPSTATS extends Struct {
  @Uint32()
  external int dwInDatagrams;

  @Uint32()
  external int dwNoPorts;

  @Uint32()
  external int dwInErrors;

  @Uint32()
  external int dwOutDatagrams;

  @Uint32()
  external int dwNumAddrs;
}

/// {@category Struct}
class MIB_UDPSTATS2 extends Struct {
  @Uint64()
  external int dw64InDatagrams;

  @Uint32()
  external int dwNoPorts;

  @Uint32()
  external int dwInErrors;

  @Uint64()
  external int dw64OutDatagrams;

  @Uint32()
  external int dwNumAddrs;
}

/// {@category Struct}
class MIB_UDPTABLE extends Struct {
  @Uint32()
  external int dwNumEntries;

  @Array(1)
  external Array<MIB_UDPRO> table;
}

/// {@category Struct}
class MIB_UDPTABLE2 extends Struct {
  @Uint32()
  external int dwNumEntries;

  @Array(1)
  external Array<MIB_UDPROW2> table;
}

/// {@category Struct}
class MIB_UDPTABLE_OWNER_MODULE extends Struct {
  @Uint32()
  external int dwNumEntries;

  @Array(1)
  external Array<MIB_UDPROW_OWNER_MODULE> table;
}

/// {@category Struct}
class MIB_UDPTABLE_OWNER_PID extends Struct {
  @Uint32()
  external int dwNumEntries;

  @Array(1)
  external Array<MIB_UDPROW_OWNER_PID> table;
}

/// {@category Struct}
class MIB_UNICASTIPADDRESS_RO extends Struct {
  external SOCKADDR_INET Address;

  external NET_LUID_LH InterfaceLuid;

  @Uint32()
  external int InterfaceIndex;

  @Int32()
  external int PrefixOrigin;

  @Int32()
  external int SuffixOrigin;

  @Uint32()
  external int ValidLifetime;

  @Uint32()
  external int PreferredLifetime;

  @Uint8()
  external int OnLinkPrefixLength;

  @Uint8()
  external int SkipAsSource;

  @Int32()
  external int DadState;

  external SCOPE_ID ScopeId;

  @Int64()
  external int CreationTimeStamp;
}

/// {@category Struct}
class MIB_UNICASTIPADDRESS_TABLE extends Struct {
  @Uint32()
  external int NumEntries;

  @Array(1)
  external Array<MIB_UNICASTIPADDRESS_RO> Table;
}

/// {@category Struct}
class NDIS_INTERFACE_INFORMATION extends Struct {
  @Int32()
  external int ifOperStatus;

  @Uint32()
  external int ifOperStatusFlags;

  @Int32()
  external int MediaConnectState;

  @Int32()
  external int MediaDuplexState;

  @Uint32()
  external int ifMtu;

  @Uint8()
  external int ifPromiscuousMode;

  @Uint8()
  external int ifDeviceWakeUpEnable;

  @Uint64()
  external int XmitLinkSpeed;

  @Uint64()
  external int RcvLinkSpeed;

  @Uint64()
  external int ifLastChange;

  @Uint64()
  external int ifCounterDiscontinuityTime;

  @Uint64()
  external int ifInUnknownProtos;

  @Uint64()
  external int ifInDiscards;

  @Uint64()
  external int ifInErrors;

  @Uint64()
  external int ifHCInOctets;

  @Uint64()
  external int ifHCInUcastPkts;

  @Uint64()
  external int ifHCInMulticastPkts;

  @Uint64()
  external int ifHCInBroadcastPkts;

  @Uint64()
  external int ifHCOutOctets;

  @Uint64()
  external int ifHCOutUcastPkts;

  @Uint64()
  external int ifHCOutMulticastPkts;

  @Uint64()
  external int ifHCOutBroadcastPkts;

  @Uint64()
  external int ifOutErrors;

  @Uint64()
  external int ifOutDiscards;

  @Uint64()
  external int ifHCInUcastOctets;

  @Uint64()
  external int ifHCInMulticastOctets;

  @Uint64()
  external int ifHCInBroadcastOctets;

  @Uint64()
  external int ifHCOutUcastOctets;

  @Uint64()
  external int ifHCOutMulticastOctets;

  @Uint64()
  external int ifHCOutBroadcastOctets;

  @Uint32()
  external int CompartmentId;

  @Uint32()
  external int SupportedStatistics;
}

/// {@category Struct}
class NET_IF_ALIAS_LH extends Struct {
  @Uint16()
  external int ifAliasLength;

  @Uint16()
  external int ifAliasOffset;
}

/// {@category Struct}
class NET_IF_RCV_ADDRESS_LH extends Struct {
  @Int32()
  external int ifRcvAddressType;

  @Uint16()
  external int ifRcvAddressLength;

  @Uint16()
  external int ifRcvAddressOffset;
}

/// {@category Struct}
class NET_LUID_LH extends Union {
  @Uint64()
  external int Value;

  external _NET_LUID_LH__Info_e__Struct Info;
}

/// {@category Struct}
class _NET_LUID_LH__Info_e__Struct extends Struct {
  @Uint64()
  external int bitfield;
}

extension NET_LUID_LH_Extension on NET_LUID_LH {
  int get bitfield => this.Info.bitfield;
  set bitfield(int value) => this.Info.bitfield = value;
}

/// {@category Struct}
class NET_PHYSICAL_LOCATION_LH extends Struct {
  @Uint32()
  external int BusNumber;

  @Uint32()
  external int SlotNumber;

  @Uint32()
  external int FunctionNumber;
}

/// {@category Struct}
class PFLOGFRAME extends Struct {
  @Int64()
  external int Timestamp;

  @Int32()
  external int pfeTypeOfFrame;

  @Uint32()
  external int dwTotalSizeUsed;

  @Uint32()
  external int dwFilterRule;

  @Uint16()
  external int wSizeOfAdditionalData;

  @Uint16()
  external int wSizeOfIpHeader;

  @Uint32()
  external int dwInterfaceName;

  @Uint32()
  external int dwIPIndex;

  @Array(1)
  external Array<Uint8> bPacketData;
}

/// {@category Struct}
class PF_FILTER_DESCRIPTOR extends Struct {
  @Uint32()
  external int dwFilterFlags;

  @Uint32()
  external int dwRule;

  @Int32()
  external int pfatType;

  external Pointer<Uint8> SrcAddr;

  external Pointer<Uint8> SrcMask;

  external Pointer<Uint8> DstAddr;

  external Pointer<Uint8> DstMask;

  @Uint32()
  external int dwProtocol;

  @Uint32()
  external int fLateBound;

  @Uint16()
  external int wSrcPort;

  @Uint16()
  external int wDstPort;

  @Uint16()
  external int wSrcPortHighRange;

  @Uint16()
  external int wDstPortHighRange;
}

/// {@category Struct}
class PF_FILTER_STATS extends Struct {
  @Uint32()
  external int dwNumPacketsFiltered;

  external PF_FILTER_DESCRIPTOR info;
}

/// {@category Struct}
class PF_INTERFACE_STATS extends Struct {
  external Pointer pvDriverContext;

  @Uint32()
  external int dwFlags;

  @Uint32()
  external int dwInDrops;

  @Uint32()
  external int dwOutDrops;

  @Int32()
  external int eaInAction;

  @Int32()
  external int eaOutAction;

  @Uint32()
  external int dwNumInFilters;

  @Uint32()
  external int dwNumOutFilters;

  @Uint32()
  external int dwFrag;

  @Uint32()
  external int dwSpoof;

  @Uint32()
  external int dwReserved1;

  @Uint32()
  external int dwReserved2;

  @Int64()
  external int liSYN;

  @Int64()
  external int liTotalLogged;

  @Uint32()
  external int dwLostLogEntries;

  @Array(1)
  external Array<PF_FILTER_STATS> FilterInfo;
}

/// {@category Struct}
class PF_LATEBIND_INFO extends Struct {
  external Pointer<Uint8> SrcAddr;

  external Pointer<Uint8> DstAddr;

  external Pointer<Uint8> Mask;
}

/// {@category Struct}
class TCPIP_OWNER_MODULE_BASIC_INFO extends Struct {
  external Pointer<Utf16> pModuleName;

  external Pointer<Utf16> pModulePath;
}

/// {@category Struct}
class TCP_ESTATS_BANDWIDTH_ROD_v0 extends Struct {
  @Uint64()
  external int OutboundBandwidth;

  @Uint64()
  external int InboundBandwidth;

  @Uint64()
  external int OutboundInstability;

  @Uint64()
  external int InboundInstability;

  @Uint8()
  external int OutboundBandwidthPeaked;

  @Uint8()
  external int InboundBandwidthPeaked;
}

/// {@category Struct}
class TCP_ESTATS_BANDWIDTH_RW_v0 extends Struct {
  @Int32()
  external int EnableCollectionOutbound;

  @Int32()
  external int EnableCollectionInbound;
}

/// {@category Struct}
class TCP_ESTATS_DATA_ROD_v0 extends Struct {
  @Uint64()
  external int DataBytesOut;

  @Uint64()
  external int DataSegsOut;

  @Uint64()
  external int DataBytesIn;

  @Uint64()
  external int DataSegsIn;

  @Uint64()
  external int SegsOut;

  @Uint64()
  external int SegsIn;

  @Uint32()
  external int SoftErrors;

  @Uint32()
  external int SoftErrorReason;

  @Uint32()
  external int SndUna;

  @Uint32()
  external int SndNxt;

  @Uint32()
  external int SndMax;

  @Uint64()
  external int ThruBytesAcked;

  @Uint32()
  external int RcvNxt;

  @Uint64()
  external int ThruBytesReceived;
}

/// {@category Struct}
class TCP_ESTATS_DATA_RW_v0 extends Struct {
  @Uint8()
  external int EnableCollection;
}

/// {@category Struct}
class TCP_ESTATS_FINE_RTT_ROD_v0 extends Struct {
  @Uint32()
  external int RttVar;

  @Uint32()
  external int MaxRtt;

  @Uint32()
  external int MinRtt;

  @Uint32()
  external int SumRtt;
}

/// {@category Struct}
class TCP_ESTATS_FINE_RTT_RW_v0 extends Struct {
  @Uint8()
  external int EnableCollection;
}

/// {@category Struct}
class TCP_ESTATS_OBS_REC_ROD_v0 extends Struct {
  @Uint32()
  external int CurRwinRcvd;

  @Uint32()
  external int MaxRwinRcvd;

  @Uint32()
  external int MinRwinRcvd;

  @Uint8()
  external int WinScaleRcvd;
}

/// {@category Struct}
class TCP_ESTATS_OBS_REC_RW_v0 extends Struct {
  @Uint8()
  external int EnableCollection;
}

/// {@category Struct}
class TCP_ESTATS_PATH_ROD_v0 extends Struct {
  @Uint32()
  external int FastRetran;

  @Uint32()
  external int Timeouts;

  @Uint32()
  external int SubsequentTimeouts;

  @Uint32()
  external int CurTimeoutCount;

  @Uint32()
  external int AbruptTimeouts;

  @Uint32()
  external int PktsRetrans;

  @Uint32()
  external int BytesRetrans;

  @Uint32()
  external int DupAcksIn;

  @Uint32()
  external int SacksRcvd;

  @Uint32()
  external int SackBlocksRcvd;

  @Uint32()
  external int CongSignals;

  @Uint32()
  external int PreCongSumCwnd;

  @Uint32()
  external int PreCongSumRtt;

  @Uint32()
  external int PostCongSumRtt;

  @Uint32()
  external int PostCongCountRtt;

  @Uint32()
  external int EcnSignals;

  @Uint32()
  external int EceRcvd;

  @Uint32()
  external int SendStall;

  @Uint32()
  external int QuenchRcvd;

  @Uint32()
  external int RetranThresh;

  @Uint32()
  external int SndDupAckEpisodes;

  @Uint32()
  external int SumBytesReordered;

  @Uint32()
  external int NonRecovDa;

  @Uint32()
  external int NonRecovDaEpisodes;

  @Uint32()
  external int AckAfterFr;

  @Uint32()
  external int DsackDups;

  @Uint32()
  external int SampleRtt;

  @Uint32()
  external int SmoothedRtt;

  @Uint32()
  external int RttVar;

  @Uint32()
  external int MaxRtt;

  @Uint32()
  external int MinRtt;

  @Uint32()
  external int SumRtt;

  @Uint32()
  external int CountRtt;

  @Uint32()
  external int CurRto;

  @Uint32()
  external int MaxRto;

  @Uint32()
  external int MinRto;

  @Uint32()
  external int CurMss;

  @Uint32()
  external int MaxMss;

  @Uint32()
  external int MinMss;

  @Uint32()
  external int SpuriousRtoDetections;
}

/// {@category Struct}
class TCP_ESTATS_PATH_RW_v0 extends Struct {
  @Uint8()
  external int EnableCollection;
}

/// {@category Struct}
class TCP_ESTATS_REC_ROD_v0 extends Struct {
  @Uint32()
  external int CurRwinSent;

  @Uint32()
  external int MaxRwinSent;

  @Uint32()
  external int MinRwinSent;

  @Uint32()
  external int LimRwin;

  @Uint32()
  external int DupAckEpisodes;

  @Uint32()
  external int DupAcksOut;

  @Uint32()
  external int CeRcvd;

  @Uint32()
  external int EcnSent;

  @Uint32()
  external int EcnNoncesRcvd;

  @Uint32()
  external int CurReasmQueue;

  @Uint32()
  external int MaxReasmQueue;

  @IntPtr()
  external int CurAppRQueue;

  @IntPtr()
  external int MaxAppRQueue;

  @Uint8()
  external int WinScaleSent;
}

/// {@category Struct}
class TCP_ESTATS_REC_RW_v0 extends Struct {
  @Uint8()
  external int EnableCollection;
}

/// {@category Struct}
class TCP_ESTATS_SEND_BUFF_ROD_v0 extends Struct {
  @IntPtr()
  external int CurRetxQueue;

  @IntPtr()
  external int MaxRetxQueue;

  @IntPtr()
  external int CurAppWQueue;

  @IntPtr()
  external int MaxAppWQueue;
}

/// {@category Struct}
class TCP_ESTATS_SEND_BUFF_RW_v0 extends Struct {
  @Uint8()
  external int EnableCollection;
}

/// {@category Struct}
class TCP_ESTATS_SND_CONG_ROD_v0 extends Struct {
  @Uint32()
  external int SndLimTransRwin;

  @Uint32()
  external int SndLimTimeRwin;

  @IntPtr()
  external int SndLimBytesRwin;

  @Uint32()
  external int SndLimTransCwnd;

  @Uint32()
  external int SndLimTimeCwnd;

  @IntPtr()
  external int SndLimBytesCwnd;

  @Uint32()
  external int SndLimTransSnd;

  @Uint32()
  external int SndLimTimeSnd;

  @IntPtr()
  external int SndLimBytesSnd;

  @Uint32()
  external int SlowStart;

  @Uint32()
  external int CongAvoid;

  @Uint32()
  external int OtherReductions;

  @Uint32()
  external int CurCwnd;

  @Uint32()
  external int MaxSsCwnd;

  @Uint32()
  external int MaxCaCwnd;

  @Uint32()
  external int CurSsthresh;

  @Uint32()
  external int MaxSsthresh;

  @Uint32()
  external int MinSsthresh;
}

/// {@category Struct}
class TCP_ESTATS_SND_CONG_ROS_v0 extends Struct {
  @Uint32()
  external int LimCwnd;
}

/// {@category Struct}
class TCP_ESTATS_SND_CONG_RW_v0 extends Struct {
  @Uint8()
  external int EnableCollection;
}

/// {@category Struct}
class TCP_ESTATS_SYN_OPTS_ROS_v0 extends Struct {
  @Uint8()
  external int ActiveOpen;

  @Uint32()
  external int MssRcvd;

  @Uint32()
  external int MssSent;
}

/// {@category Struct}
class arp_send_reply extends Struct {
  @Uint32()
  external int DestAddress;

  @Uint32()
  external int SrcAddress;
}

/// {@category Struct}
class icmp_echo_reply extends Struct {
  @Uint32()
  external int Address;

  @Uint32()
  external int Status;

  @Uint32()
  external int RoundTripTime;

  @Uint16()
  external int DataSize;

  @Uint16()
  external int Reserved;

  external Pointer Data;

  external ip_option_information Options;
}

/// {@category Struct}
class icmp_echo_reply32 extends Struct {
  @Uint32()
  external int Address;

  @Uint32()
  external int Status;

  @Uint32()
  external int RoundTripTime;

  @Uint16()
  external int DataSize;

  @Uint16()
  external int Reserved;

  external Pointer Data;

  external ip_option_information32 Options;
}

/// {@category Struct}
@Packed(1)
class icmpv6_echo_reply_lh extends Struct {
  external IPV6_ADDRESS_EX Address;

  @Uint32()
  external int Status;

  @Uint32()
  external int RoundTripTime;
}

/// {@category Struct}
class ip_interface_name_info_w2ksp1 extends Struct {
  @Uint32()
  external int Index;

  @Uint32()
  external int MediaType;

  @Uint8()
  external int ConnectionType;

  @Uint8()
  external int AccessType;

  external GUID DeviceGuid;

  external GUID InterfaceGuid;
}

/// {@category Struct}
class ip_option_information extends Struct {
  @Uint8()
  external int Ttl;

  @Uint8()
  external int Tos;

  @Uint8()
  external int Flags;

  @Uint8()
  external int OptionsSize;

  external Pointer<Uint8> OptionsData;
}

/// {@category Struct}
class ip_option_information32 extends Struct {
  @Uint8()
  external int Ttl;

  @Uint8()
  external int Tos;

  @Uint8()
  external int Flags;

  @Uint8()
  external int OptionsSize;

  external Pointer<Uint8> OptionsData;
}

/// {@category Struct}
class tcp_reserve_port_range extends Struct {
  @Uint16()
  external int UpperRange;

  @Uint16()
  external int LowerRange;
}
