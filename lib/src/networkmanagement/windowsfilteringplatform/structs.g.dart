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
import '../../networking/winsock/structs.g.dart';
import '../../system/kernel/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../security/structs.g.dart';
import '../../networkmanagement/windowsfilteringplatform/callbacks.g.dart';

/// {@category Struct}
class ARP_HEADER extends Struct {
  @Uint16()
  external int HardwareAddressSpace;

  @Uint16()
  external int ProtocolAddressSpace;

  @Uint8()
  external int HardwareAddressLength;

  @Uint8()
  external int ProtocolAddressLength;

  @Uint16()
  external int Opcode;

  @Array(1)
  external Array<Uint8> SenderHardwareAddress;
}

/// {@category Struct}
class DL_EI48 extends Union {
  @Array(3)
  external Array<Uint8> Byte;
}

/// {@category Struct}
class DL_EI64 extends Union {
  @Array(5)
  external Array<Uint8> Byte;
}

/// {@category Struct}
class DL_EUI48 extends Union {
  @Array(6)
  external Array<Uint8> Byte;

  external _DL_EUI48__Anonymous_e__Struct Anonymous;
}

/// {@category Struct}
class _DL_EUI48__Anonymous_e__Struct extends Struct {
  external DL_OUI Oui;

  external DL_EI48 Ei48;
}

extension DL_EUI48_Extension on DL_EUI48 {
  DL_OUI get Oui => this.Anonymous.Oui;
  set Oui(DL_OUI value) => this.Anonymous.Oui = value;

  DL_EI48 get Ei48 => this.Anonymous.Ei48;
  set Ei48(DL_EI48 value) => this.Anonymous.Ei48 = value;
}

/// {@category Struct}
class DL_EUI64 extends Union {
  @Array(8)
  external Array<Uint8> Byte;

  @Uint64()
  external int Value;

  external _DL_EUI64__Anonymous_e__Struct Anonymous;
}

/// {@category Struct}
class _DL_EUI64__Anonymous_e__Struct extends Struct {
  external DL_OUI Oui;

  external _DL_EUI64__Anonymous_e__Struct__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _DL_EUI64__Anonymous_e__Struct__Anonymous_e__Union extends Union {
  external DL_EI64 Ei64;

  external _DL_EUI64__Anonymous_e__Struct__Anonymous_e__Union__Anonymous_e__Struct
      Anonymous;
}

/// {@category Struct}
class _DL_EUI64__Anonymous_e__Struct__Anonymous_e__Union__Anonymous_e__Struct
    extends Struct {
  @Uint8()
  external int Type;

  @Uint8()
  external int Tse;

  external DL_EI48 Ei48;
}

extension DL_EUI64__Anonymous_e__Struct__Anonymous_e__Union_Extension
    on DL_EUI64 {
  int get Type => this.Anonymous.Anonymous.Anonymous.Type;
  set Type(int value) => this.Anonymous.Anonymous.Anonymous.Type = value;

  int get Tse => this.Anonymous.Anonymous.Anonymous.Tse;
  set Tse(int value) => this.Anonymous.Anonymous.Anonymous.Tse = value;

  DL_EI48 get Ei48 => this.Anonymous.Anonymous.Anonymous.Ei48;
  set Ei48(DL_EI48 value) => this.Anonymous.Anonymous.Anonymous.Ei48 = value;
}

extension DL_EUI64__Anonymous_e__Struct_Extension on DL_EUI64 {
  DL_EI64 get Ei64 => this.Anonymous.Anonymous.Ei64;
  set Ei64(DL_EI64 value) => this.Anonymous.Anonymous.Ei64 = value;

  _DL_EUI64__Anonymous_e__Struct__Anonymous_e__Union__Anonymous_e__Struct
      get Anonymous => this.Anonymous.Anonymous.Anonymous;
  set Anonymous(
          _DL_EUI64__Anonymous_e__Struct__Anonymous_e__Union__Anonymous_e__Struct
              value) =>
      this.Anonymous.Anonymous.Anonymous = value;
}

extension DL_EUI64_Extension on DL_EUI64 {
  DL_OUI get Oui => this.Anonymous.Oui;
  set Oui(DL_OUI value) => this.Anonymous.Oui = value;

  _DL_EUI64__Anonymous_e__Struct__Anonymous_e__Union get Anonymous =>
      this.Anonymous.Anonymous;
  set Anonymous(_DL_EUI64__Anonymous_e__Struct__Anonymous_e__Union value) =>
      this.Anonymous.Anonymous = value;
}

/// {@category Struct}
class DL_OUI extends Union {
  @Array(3)
  external Array<Uint8> Byte;

  external _DL_OUI__Anonymous_e__Struct Anonymous;
}

/// {@category Struct}
class _DL_OUI__Anonymous_e__Struct extends Struct {
  @Uint8()
  external int bitfield;
}

extension DL_OUI_Extension on DL_OUI {
  int get bitfield => this.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous.bitfield = value;
}

/// {@category Struct}
class DL_TEREDO_ADDRESS extends Struct {
  @Array(6)
  external Array<Uint8> Reserved;

  external _DL_TEREDO_ADDRESS__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _DL_TEREDO_ADDRESS__Anonymous_e__Union extends Union {
  external DL_EUI64 Eui64;

  external _DL_TEREDO_ADDRESS__Anonymous_e__Union__Anonymous_e__Struct
      Anonymous;
}

/// {@category Struct}
class _DL_TEREDO_ADDRESS__Anonymous_e__Union__Anonymous_e__Struct
    extends Struct {
  @Uint16()
  external int Flags;

  @Uint16()
  external int MappedPort;

  external IN_ADDR MappedAddress;
}

extension DL_TEREDO_ADDRESS__Anonymous_e__Union_Extension on DL_TEREDO_ADDRESS {
  int get Flags => this.Anonymous.Anonymous.Flags;
  set Flags(int value) => this.Anonymous.Anonymous.Flags = value;

  int get MappedPort => this.Anonymous.Anonymous.MappedPort;
  set MappedPort(int value) => this.Anonymous.Anonymous.MappedPort = value;

  IN_ADDR get MappedAddress => this.Anonymous.Anonymous.MappedAddress;
  set MappedAddress(IN_ADDR value) =>
      this.Anonymous.Anonymous.MappedAddress = value;
}

extension DL_TEREDO_ADDRESS_Extension on DL_TEREDO_ADDRESS {
  DL_EUI64 get Eui64 => this.Anonymous.Eui64;
  set Eui64(DL_EUI64 value) => this.Anonymous.Eui64 = value;

  _DL_TEREDO_ADDRESS__Anonymous_e__Union__Anonymous_e__Struct get Anonymous =>
      this.Anonymous.Anonymous;
  set Anonymous(
          _DL_TEREDO_ADDRESS__Anonymous_e__Union__Anonymous_e__Struct value) =>
      this.Anonymous.Anonymous = value;
}

/// {@category Struct}
class DL_TEREDO_ADDRESS_PRV extends Struct {
  @Array(6)
  external Array<Uint8> Reserved;

  external _DL_TEREDO_ADDRESS_PRV__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _DL_TEREDO_ADDRESS_PRV__Anonymous_e__Union extends Union {
  external DL_EUI64 Eui64;

  external _DL_TEREDO_ADDRESS_PRV__Anonymous_e__Union__Anonymous_e__Struct
      Anonymous;
}

/// {@category Struct}
class _DL_TEREDO_ADDRESS_PRV__Anonymous_e__Union__Anonymous_e__Struct
    extends Struct {
  @Uint16()
  external int Flags;

  @Uint16()
  external int MappedPort;

  external IN_ADDR MappedAddress;

  external IN_ADDR LocalAddress;

  @Uint32()
  external int InterfaceIndex;

  @Uint16()
  external int LocalPort;

  external DL_EUI48 DlDestination;
}

extension DL_TEREDO_ADDRESS_PRV__Anonymous_e__Union_Extension
    on DL_TEREDO_ADDRESS_PRV {
  int get Flags => this.Anonymous.Anonymous.Flags;
  set Flags(int value) => this.Anonymous.Anonymous.Flags = value;

  int get MappedPort => this.Anonymous.Anonymous.MappedPort;
  set MappedPort(int value) => this.Anonymous.Anonymous.MappedPort = value;

  IN_ADDR get MappedAddress => this.Anonymous.Anonymous.MappedAddress;
  set MappedAddress(IN_ADDR value) =>
      this.Anonymous.Anonymous.MappedAddress = value;

  IN_ADDR get LocalAddress => this.Anonymous.Anonymous.LocalAddress;
  set LocalAddress(IN_ADDR value) =>
      this.Anonymous.Anonymous.LocalAddress = value;

  int get InterfaceIndex => this.Anonymous.Anonymous.InterfaceIndex;
  set InterfaceIndex(int value) =>
      this.Anonymous.Anonymous.InterfaceIndex = value;

  int get LocalPort => this.Anonymous.Anonymous.LocalPort;
  set LocalPort(int value) => this.Anonymous.Anonymous.LocalPort = value;

  DL_EUI48 get DlDestination => this.Anonymous.Anonymous.DlDestination;
  set DlDestination(DL_EUI48 value) =>
      this.Anonymous.Anonymous.DlDestination = value;
}

extension DL_TEREDO_ADDRESS_PRV_Extension on DL_TEREDO_ADDRESS_PRV {
  DL_EUI64 get Eui64 => this.Anonymous.Eui64;
  set Eui64(DL_EUI64 value) => this.Anonymous.Eui64 = value;

  _DL_TEREDO_ADDRESS_PRV__Anonymous_e__Union__Anonymous_e__Struct
      get Anonymous => this.Anonymous.Anonymous;
  set Anonymous(
          _DL_TEREDO_ADDRESS_PRV__Anonymous_e__Union__Anonymous_e__Struct
              value) =>
      this.Anonymous.Anonymous = value;
}

/// {@category Struct}
class DL_TUNNEL_ADDRESS extends Struct {
  @Int32()
  external int CompartmentId;

  external SCOPE_ID ScopeId;

  @Array(1)
  external Array<Uint8> IpAddress;
}

/// {@category Struct}
class ETHERNET_HEADER extends Struct {
  external DL_EUI48 Destination;

  external DL_EUI48 Source;

  external _ETHERNET_HEADER__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _ETHERNET_HEADER__Anonymous_e__Union extends Union {
  @Uint16()
  external int Type;

  @Uint16()
  external int Length;
}

extension ETHERNET_HEADER_Extension on ETHERNET_HEADER {
  int get Type => this.Anonymous.Type;
  set Type(int value) => this.Anonymous.Type = value;

  int get Length => this.Anonymous.Length;
  set Length(int value) => this.Anonymous.Length = value;
}

/// {@category Struct}
class FWPM_ACTION0 extends Struct {
  @Uint32()
  external int type;

  external _FWPM_ACTION0__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _FWPM_ACTION0__Anonymous_e__Union extends Union {
  external GUID filterType;

  external GUID calloutKey;
}

extension FWPM_ACTION0_Extension on FWPM_ACTION0 {
  GUID get filterType => this.Anonymous.filterType;
  set filterType(GUID value) => this.Anonymous.filterType = value;

  GUID get calloutKey => this.Anonymous.calloutKey;
  set calloutKey(GUID value) => this.Anonymous.calloutKey = value;
}

/// {@category Struct}
class FWPM_CALLOUT0 extends Struct {
  external GUID calloutKey;

  external FWPM_DISPLAY_DATA0 displayData;

  @Uint32()
  external int flags;

  external Pointer<GUID> providerKey;

  external FWP_BYTE_BLOB providerData;

  external GUID applicableLayer;

  @Uint32()
  external int calloutId;
}

/// {@category Struct}
class FWPM_CALLOUT_CHANGE0 extends Struct {
  @Int32()
  external int changeType;

  external GUID calloutKey;

  @Uint32()
  external int calloutId;
}

/// {@category Struct}
class FWPM_CALLOUT_ENUM_TEMPLATE0 extends Struct {
  external Pointer<GUID> providerKey;

  external GUID layerKey;
}

/// {@category Struct}
class FWPM_CALLOUT_SUBSCRIPTION0 extends Struct {
  external Pointer<FWPM_CALLOUT_ENUM_TEMPLATE0> enumTemplate;

  @Uint32()
  external int flags;

  external GUID sessionKey;
}

/// {@category Struct}
class FWPM_CLASSIFY_OPTION0 extends Struct {
  @Int32()
  external int type;

  external FWP_VALUE0 value;
}

/// {@category Struct}
class FWPM_CLASSIFY_OPTIONS0 extends Struct {
  @Uint32()
  external int numOptions;

  external Pointer<FWPM_CLASSIFY_OPTION0> options;
}

/// {@category Struct}
class FWPM_CONNECTION0 extends Struct {
  @Uint64()
  external int connectionId;

  @Int32()
  external int ipVersion;

  external _FWPM_CONNECTION0__Anonymous1_e__Union Anonymous1;

  external _FWPM_CONNECTION0__Anonymous2_e__Union Anonymous2;

  external Pointer<GUID> providerKey;

  @Int32()
  external int ipsecTrafficModeType;

  @Int32()
  external int keyModuleType;

  external IKEEXT_PROPOSAL0 mmCrypto;

  external IKEEXT_CREDENTIAL2 mmPeer;

  external IKEEXT_CREDENTIAL2 emPeer;

  @Uint64()
  external int bytesTransferredIn;

  @Uint64()
  external int bytesTransferredOut;

  @Uint64()
  external int bytesTransferredTotal;

  external FILETIME startSysTime;
}

/// {@category Struct}
class _FWPM_CONNECTION0__Anonymous1_e__Union extends Union {
  @Uint32()
  external int localV4Address;

  @Array(16)
  external Array<Uint8> localV6Address;
}

extension FWPM_CONNECTION0_Extension on FWPM_CONNECTION0 {
  int get localV4Address => this.Anonymous1.localV4Address;
  set localV4Address(int value) => this.Anonymous1.localV4Address = value;

  Array<Uint8> get localV6Address => this.Anonymous1.localV6Address;
  set localV6Address(Array<Uint8> value) =>
      this.Anonymous1.localV6Address = value;
}

/// {@category Struct}
class _FWPM_CONNECTION0__Anonymous2_e__Union extends Union {
  @Uint32()
  external int remoteV4Address;

  @Array(16)
  external Array<Uint8> remoteV6Address;
}

extension FWPM_CONNECTION0_Extension_1 on FWPM_CONNECTION0 {
  int get remoteV4Address => this.Anonymous2.remoteV4Address;
  set remoteV4Address(int value) => this.Anonymous2.remoteV4Address = value;

  Array<Uint8> get remoteV6Address => this.Anonymous2.remoteV6Address;
  set remoteV6Address(Array<Uint8> value) =>
      this.Anonymous2.remoteV6Address = value;
}

/// {@category Struct}
class FWPM_CONNECTION_ENUM_TEMPLATE0 extends Struct {
  @Uint64()
  external int connectionId;

  @Uint32()
  external int flags;
}

/// {@category Struct}
class FWPM_CONNECTION_SUBSCRIPTION0 extends Struct {
  external Pointer<FWPM_CONNECTION_ENUM_TEMPLATE0> enumTemplate;

  @Uint32()
  external int flags;

  external GUID sessionKey;
}

/// {@category Struct}
class FWPM_DISPLAY_DATA0 extends Struct {
  external Pointer<Utf16> name;

  external Pointer<Utf16> description;
}

/// {@category Struct}
class FWPM_FIELD0 extends Struct {
  external Pointer<GUID> fieldKey;

  @Int32()
  external int type;

  @Int32()
  external int dataType;
}

/// {@category Struct}
class FWPM_FILTER0 extends Struct {
  external GUID filterKey;

  external FWPM_DISPLAY_DATA0 displayData;

  @Uint32()
  external int flags;

  external Pointer<GUID> providerKey;

  external FWP_BYTE_BLOB providerData;

  external GUID layerKey;

  external GUID subLayerKey;

  external FWP_VALUE0 weight;

  @Uint32()
  external int numFilterConditions;

  external Pointer<FWPM_FILTER_CONDITION0> filterCondition;

  external FWPM_ACTION0 action;

  external _FWPM_FILTER0__Anonymous_e__Union Anonymous;

  external Pointer<GUID> reserved;

  @Uint64()
  external int filterId;

  external FWP_VALUE0 effectiveWeight;
}

/// {@category Struct}
class _FWPM_FILTER0__Anonymous_e__Union extends Union {
  @Uint64()
  external int rawContext;

  external GUID providerContextKey;
}

extension FWPM_FILTER0_Extension on FWPM_FILTER0 {
  int get rawContext => this.Anonymous.rawContext;
  set rawContext(int value) => this.Anonymous.rawContext = value;

  GUID get providerContextKey => this.Anonymous.providerContextKey;
  set providerContextKey(GUID value) =>
      this.Anonymous.providerContextKey = value;
}

/// {@category Struct}
class FWPM_FILTER_CHANGE0 extends Struct {
  @Int32()
  external int changeType;

  external GUID filterKey;

  @Uint64()
  external int filterId;
}

/// {@category Struct}
class FWPM_FILTER_CONDITION0 extends Struct {
  external GUID fieldKey;

  @Int32()
  external int matchType;

  external FWP_CONDITION_VALUE0 conditionValue;
}

/// {@category Struct}
class FWPM_FILTER_ENUM_TEMPLATE0 extends Struct {
  external Pointer<GUID> providerKey;

  external GUID layerKey;

  @Int32()
  external int enumType;

  @Uint32()
  external int flags;

  external Pointer<FWPM_PROVIDER_CONTEXT_ENUM_TEMPLATE0>
      providerContextTemplate;

  @Uint32()
  external int numFilterConditions;

  external Pointer<FWPM_FILTER_CONDITION0> filterCondition;

  @Uint32()
  external int actionMask;

  external Pointer<GUID> calloutKey;
}

/// {@category Struct}
class FWPM_FILTER_SUBSCRIPTION0 extends Struct {
  external Pointer<FWPM_FILTER_ENUM_TEMPLATE0> enumTemplate;

  @Uint32()
  external int flags;

  external GUID sessionKey;
}

/// {@category Struct}
class FWPM_LAYER0 extends Struct {
  external GUID layerKey;

  external FWPM_DISPLAY_DATA0 displayData;

  @Uint32()
  external int flags;

  @Uint32()
  external int numFields;

  external Pointer<FWPM_FIELD0> field;

  external GUID defaultSubLayerKey;

  @Uint16()
  external int layerId;
}

/// {@category Struct}
class FWPM_LAYER_ENUM_TEMPLATE0 extends Struct {
  @Uint64()
  external int reserved;
}

/// {@category Struct}
class FWPM_LAYER_STATISTICS0 extends Struct {
  external GUID layerId;

  @Uint32()
  external int classifyPermitCount;

  @Uint32()
  external int classifyBlockCount;

  @Uint32()
  external int classifyVetoCount;

  @Uint32()
  external int numCacheEntries;
}

/// {@category Struct}
class FWPM_NET_EVENT0 extends Struct {
  external FWPM_NET_EVENT_HEADER0 header;

  @Int32()
  external int type;

  external _FWPM_NET_EVENT0__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _FWPM_NET_EVENT0__Anonymous_e__Union extends Union {
  external Pointer<FWPM_NET_EVENT_IKEEXT_MM_FAILURE0> ikeMmFailure;

  external Pointer<FWPM_NET_EVENT_IKEEXT_QM_FAILURE0> ikeQmFailure;

  external Pointer<FWPM_NET_EVENT_IKEEXT_EM_FAILURE0> ikeEmFailure;

  external Pointer<FWPM_NET_EVENT_CLASSIFY_DROP0> classifyDrop;

  external Pointer<FWPM_NET_EVENT_IPSEC_KERNEL_DROP0> ipsecDrop;

  external Pointer<FWPM_NET_EVENT_IPSEC_DOSP_DROP0> idpDrop;
}

extension FWPM_NET_EVENT0_Extension on FWPM_NET_EVENT0 {
  Pointer<FWPM_NET_EVENT_IKEEXT_MM_FAILURE0> get ikeMmFailure =>
      this.Anonymous.ikeMmFailure;
  set ikeMmFailure(Pointer<FWPM_NET_EVENT_IKEEXT_MM_FAILURE0> value) =>
      this.Anonymous.ikeMmFailure = value;

  Pointer<FWPM_NET_EVENT_IKEEXT_QM_FAILURE0> get ikeQmFailure =>
      this.Anonymous.ikeQmFailure;
  set ikeQmFailure(Pointer<FWPM_NET_EVENT_IKEEXT_QM_FAILURE0> value) =>
      this.Anonymous.ikeQmFailure = value;

  Pointer<FWPM_NET_EVENT_IKEEXT_EM_FAILURE0> get ikeEmFailure =>
      this.Anonymous.ikeEmFailure;
  set ikeEmFailure(Pointer<FWPM_NET_EVENT_IKEEXT_EM_FAILURE0> value) =>
      this.Anonymous.ikeEmFailure = value;

  Pointer<FWPM_NET_EVENT_CLASSIFY_DROP0> get classifyDrop =>
      this.Anonymous.classifyDrop;
  set classifyDrop(Pointer<FWPM_NET_EVENT_CLASSIFY_DROP0> value) =>
      this.Anonymous.classifyDrop = value;

  Pointer<FWPM_NET_EVENT_IPSEC_KERNEL_DROP0> get ipsecDrop =>
      this.Anonymous.ipsecDrop;
  set ipsecDrop(Pointer<FWPM_NET_EVENT_IPSEC_KERNEL_DROP0> value) =>
      this.Anonymous.ipsecDrop = value;

  Pointer<FWPM_NET_EVENT_IPSEC_DOSP_DROP0> get idpDrop =>
      this.Anonymous.idpDrop;
  set idpDrop(Pointer<FWPM_NET_EVENT_IPSEC_DOSP_DROP0> value) =>
      this.Anonymous.idpDrop = value;
}

/// {@category Struct}
class FWPM_NET_EVENT1 extends Struct {
  external FWPM_NET_EVENT_HEADER1 header;

  @Int32()
  external int type;

  external _FWPM_NET_EVENT1__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _FWPM_NET_EVENT1__Anonymous_e__Union extends Union {
  external Pointer<FWPM_NET_EVENT_IKEEXT_MM_FAILURE1> ikeMmFailure;

  external Pointer<FWPM_NET_EVENT_IKEEXT_QM_FAILURE0> ikeQmFailure;

  external Pointer<FWPM_NET_EVENT_IKEEXT_EM_FAILURE1> ikeEmFailure;

  external Pointer<FWPM_NET_EVENT_CLASSIFY_DROP1> classifyDrop;

  external Pointer<FWPM_NET_EVENT_IPSEC_KERNEL_DROP0> ipsecDrop;

  external Pointer<FWPM_NET_EVENT_IPSEC_DOSP_DROP0> idpDrop;
}

extension FWPM_NET_EVENT1_Extension on FWPM_NET_EVENT1 {
  Pointer<FWPM_NET_EVENT_IKEEXT_MM_FAILURE1> get ikeMmFailure =>
      this.Anonymous.ikeMmFailure;
  set ikeMmFailure(Pointer<FWPM_NET_EVENT_IKEEXT_MM_FAILURE1> value) =>
      this.Anonymous.ikeMmFailure = value;

  Pointer<FWPM_NET_EVENT_IKEEXT_QM_FAILURE0> get ikeQmFailure =>
      this.Anonymous.ikeQmFailure;
  set ikeQmFailure(Pointer<FWPM_NET_EVENT_IKEEXT_QM_FAILURE0> value) =>
      this.Anonymous.ikeQmFailure = value;

  Pointer<FWPM_NET_EVENT_IKEEXT_EM_FAILURE1> get ikeEmFailure =>
      this.Anonymous.ikeEmFailure;
  set ikeEmFailure(Pointer<FWPM_NET_EVENT_IKEEXT_EM_FAILURE1> value) =>
      this.Anonymous.ikeEmFailure = value;

  Pointer<FWPM_NET_EVENT_CLASSIFY_DROP1> get classifyDrop =>
      this.Anonymous.classifyDrop;
  set classifyDrop(Pointer<FWPM_NET_EVENT_CLASSIFY_DROP1> value) =>
      this.Anonymous.classifyDrop = value;

  Pointer<FWPM_NET_EVENT_IPSEC_KERNEL_DROP0> get ipsecDrop =>
      this.Anonymous.ipsecDrop;
  set ipsecDrop(Pointer<FWPM_NET_EVENT_IPSEC_KERNEL_DROP0> value) =>
      this.Anonymous.ipsecDrop = value;

  Pointer<FWPM_NET_EVENT_IPSEC_DOSP_DROP0> get idpDrop =>
      this.Anonymous.idpDrop;
  set idpDrop(Pointer<FWPM_NET_EVENT_IPSEC_DOSP_DROP0> value) =>
      this.Anonymous.idpDrop = value;
}

/// {@category Struct}
class FWPM_NET_EVENT2 extends Struct {
  external FWPM_NET_EVENT_HEADER2 header;

  @Int32()
  external int type;

  external _FWPM_NET_EVENT2__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _FWPM_NET_EVENT2__Anonymous_e__Union extends Union {
  external Pointer<FWPM_NET_EVENT_IKEEXT_MM_FAILURE1> ikeMmFailure;

  external Pointer<FWPM_NET_EVENT_IKEEXT_QM_FAILURE0> ikeQmFailure;

  external Pointer<FWPM_NET_EVENT_IKEEXT_EM_FAILURE1> ikeEmFailure;

  external Pointer<FWPM_NET_EVENT_CLASSIFY_DROP2> classifyDrop;

  external Pointer<FWPM_NET_EVENT_IPSEC_KERNEL_DROP0> ipsecDrop;

  external Pointer<FWPM_NET_EVENT_IPSEC_DOSP_DROP0> idpDrop;

  external Pointer<FWPM_NET_EVENT_CLASSIFY_ALLOW0> classifyAllow;

  external Pointer<FWPM_NET_EVENT_CAPABILITY_DROP0> capabilityDrop;

  external Pointer<FWPM_NET_EVENT_CAPABILITY_ALLOW0> capabilityAllow;

  external Pointer<FWPM_NET_EVENT_CLASSIFY_DROP_MAC0> classifyDropMac;
}

extension FWPM_NET_EVENT2_Extension on FWPM_NET_EVENT2 {
  Pointer<FWPM_NET_EVENT_IKEEXT_MM_FAILURE1> get ikeMmFailure =>
      this.Anonymous.ikeMmFailure;
  set ikeMmFailure(Pointer<FWPM_NET_EVENT_IKEEXT_MM_FAILURE1> value) =>
      this.Anonymous.ikeMmFailure = value;

  Pointer<FWPM_NET_EVENT_IKEEXT_QM_FAILURE0> get ikeQmFailure =>
      this.Anonymous.ikeQmFailure;
  set ikeQmFailure(Pointer<FWPM_NET_EVENT_IKEEXT_QM_FAILURE0> value) =>
      this.Anonymous.ikeQmFailure = value;

  Pointer<FWPM_NET_EVENT_IKEEXT_EM_FAILURE1> get ikeEmFailure =>
      this.Anonymous.ikeEmFailure;
  set ikeEmFailure(Pointer<FWPM_NET_EVENT_IKEEXT_EM_FAILURE1> value) =>
      this.Anonymous.ikeEmFailure = value;

  Pointer<FWPM_NET_EVENT_CLASSIFY_DROP2> get classifyDrop =>
      this.Anonymous.classifyDrop;
  set classifyDrop(Pointer<FWPM_NET_EVENT_CLASSIFY_DROP2> value) =>
      this.Anonymous.classifyDrop = value;

  Pointer<FWPM_NET_EVENT_IPSEC_KERNEL_DROP0> get ipsecDrop =>
      this.Anonymous.ipsecDrop;
  set ipsecDrop(Pointer<FWPM_NET_EVENT_IPSEC_KERNEL_DROP0> value) =>
      this.Anonymous.ipsecDrop = value;

  Pointer<FWPM_NET_EVENT_IPSEC_DOSP_DROP0> get idpDrop =>
      this.Anonymous.idpDrop;
  set idpDrop(Pointer<FWPM_NET_EVENT_IPSEC_DOSP_DROP0> value) =>
      this.Anonymous.idpDrop = value;

  Pointer<FWPM_NET_EVENT_CLASSIFY_ALLOW0> get classifyAllow =>
      this.Anonymous.classifyAllow;
  set classifyAllow(Pointer<FWPM_NET_EVENT_CLASSIFY_ALLOW0> value) =>
      this.Anonymous.classifyAllow = value;

  Pointer<FWPM_NET_EVENT_CAPABILITY_DROP0> get capabilityDrop =>
      this.Anonymous.capabilityDrop;
  set capabilityDrop(Pointer<FWPM_NET_EVENT_CAPABILITY_DROP0> value) =>
      this.Anonymous.capabilityDrop = value;

  Pointer<FWPM_NET_EVENT_CAPABILITY_ALLOW0> get capabilityAllow =>
      this.Anonymous.capabilityAllow;
  set capabilityAllow(Pointer<FWPM_NET_EVENT_CAPABILITY_ALLOW0> value) =>
      this.Anonymous.capabilityAllow = value;

  Pointer<FWPM_NET_EVENT_CLASSIFY_DROP_MAC0> get classifyDropMac =>
      this.Anonymous.classifyDropMac;
  set classifyDropMac(Pointer<FWPM_NET_EVENT_CLASSIFY_DROP_MAC0> value) =>
      this.Anonymous.classifyDropMac = value;
}

/// {@category Struct}
class FWPM_NET_EVENT3 extends Struct {
  external FWPM_NET_EVENT_HEADER3 header;

  @Int32()
  external int type;

  external _FWPM_NET_EVENT3__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _FWPM_NET_EVENT3__Anonymous_e__Union extends Union {
  external Pointer<FWPM_NET_EVENT_IKEEXT_MM_FAILURE1> ikeMmFailure;

  external Pointer<FWPM_NET_EVENT_IKEEXT_QM_FAILURE0> ikeQmFailure;

  external Pointer<FWPM_NET_EVENT_IKEEXT_EM_FAILURE1> ikeEmFailure;

  external Pointer<FWPM_NET_EVENT_CLASSIFY_DROP2> classifyDrop;

  external Pointer<FWPM_NET_EVENT_IPSEC_KERNEL_DROP0> ipsecDrop;

  external Pointer<FWPM_NET_EVENT_IPSEC_DOSP_DROP0> idpDrop;

  external Pointer<FWPM_NET_EVENT_CLASSIFY_ALLOW0> classifyAllow;

  external Pointer<FWPM_NET_EVENT_CAPABILITY_DROP0> capabilityDrop;

  external Pointer<FWPM_NET_EVENT_CAPABILITY_ALLOW0> capabilityAllow;

  external Pointer<FWPM_NET_EVENT_CLASSIFY_DROP_MAC0> classifyDropMac;
}

extension FWPM_NET_EVENT3_Extension on FWPM_NET_EVENT3 {
  Pointer<FWPM_NET_EVENT_IKEEXT_MM_FAILURE1> get ikeMmFailure =>
      this.Anonymous.ikeMmFailure;
  set ikeMmFailure(Pointer<FWPM_NET_EVENT_IKEEXT_MM_FAILURE1> value) =>
      this.Anonymous.ikeMmFailure = value;

  Pointer<FWPM_NET_EVENT_IKEEXT_QM_FAILURE0> get ikeQmFailure =>
      this.Anonymous.ikeQmFailure;
  set ikeQmFailure(Pointer<FWPM_NET_EVENT_IKEEXT_QM_FAILURE0> value) =>
      this.Anonymous.ikeQmFailure = value;

  Pointer<FWPM_NET_EVENT_IKEEXT_EM_FAILURE1> get ikeEmFailure =>
      this.Anonymous.ikeEmFailure;
  set ikeEmFailure(Pointer<FWPM_NET_EVENT_IKEEXT_EM_FAILURE1> value) =>
      this.Anonymous.ikeEmFailure = value;

  Pointer<FWPM_NET_EVENT_CLASSIFY_DROP2> get classifyDrop =>
      this.Anonymous.classifyDrop;
  set classifyDrop(Pointer<FWPM_NET_EVENT_CLASSIFY_DROP2> value) =>
      this.Anonymous.classifyDrop = value;

  Pointer<FWPM_NET_EVENT_IPSEC_KERNEL_DROP0> get ipsecDrop =>
      this.Anonymous.ipsecDrop;
  set ipsecDrop(Pointer<FWPM_NET_EVENT_IPSEC_KERNEL_DROP0> value) =>
      this.Anonymous.ipsecDrop = value;

  Pointer<FWPM_NET_EVENT_IPSEC_DOSP_DROP0> get idpDrop =>
      this.Anonymous.idpDrop;
  set idpDrop(Pointer<FWPM_NET_EVENT_IPSEC_DOSP_DROP0> value) =>
      this.Anonymous.idpDrop = value;

  Pointer<FWPM_NET_EVENT_CLASSIFY_ALLOW0> get classifyAllow =>
      this.Anonymous.classifyAllow;
  set classifyAllow(Pointer<FWPM_NET_EVENT_CLASSIFY_ALLOW0> value) =>
      this.Anonymous.classifyAllow = value;

  Pointer<FWPM_NET_EVENT_CAPABILITY_DROP0> get capabilityDrop =>
      this.Anonymous.capabilityDrop;
  set capabilityDrop(Pointer<FWPM_NET_EVENT_CAPABILITY_DROP0> value) =>
      this.Anonymous.capabilityDrop = value;

  Pointer<FWPM_NET_EVENT_CAPABILITY_ALLOW0> get capabilityAllow =>
      this.Anonymous.capabilityAllow;
  set capabilityAllow(Pointer<FWPM_NET_EVENT_CAPABILITY_ALLOW0> value) =>
      this.Anonymous.capabilityAllow = value;

  Pointer<FWPM_NET_EVENT_CLASSIFY_DROP_MAC0> get classifyDropMac =>
      this.Anonymous.classifyDropMac;
  set classifyDropMac(Pointer<FWPM_NET_EVENT_CLASSIFY_DROP_MAC0> value) =>
      this.Anonymous.classifyDropMac = value;
}

/// {@category Struct}
class FWPM_NET_EVENT4_ extends Struct {
  external FWPM_NET_EVENT_HEADER3 header;

  @Int32()
  external int type;

  external _FWPM_NET_EVENT4___Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _FWPM_NET_EVENT4___Anonymous_e__Union extends Union {
  external Pointer<FWPM_NET_EVENT_IKEEXT_MM_FAILURE2_> ikeMmFailure;

  external Pointer<FWPM_NET_EVENT_IKEEXT_QM_FAILURE1_> ikeQmFailure;

  external Pointer<FWPM_NET_EVENT_IKEEXT_EM_FAILURE1> ikeEmFailure;

  external Pointer<FWPM_NET_EVENT_CLASSIFY_DROP2> classifyDrop;

  external Pointer<FWPM_NET_EVENT_IPSEC_KERNEL_DROP0> ipsecDrop;

  external Pointer<FWPM_NET_EVENT_IPSEC_DOSP_DROP0> idpDrop;

  external Pointer<FWPM_NET_EVENT_CLASSIFY_ALLOW0> classifyAllow;

  external Pointer<FWPM_NET_EVENT_CAPABILITY_DROP0> capabilityDrop;

  external Pointer<FWPM_NET_EVENT_CAPABILITY_ALLOW0> capabilityAllow;

  external Pointer<FWPM_NET_EVENT_CLASSIFY_DROP_MAC0> classifyDropMac;
}

extension FWPM_NET_EVENT4__Extension on FWPM_NET_EVENT4_ {
  Pointer<FWPM_NET_EVENT_IKEEXT_MM_FAILURE2_> get ikeMmFailure =>
      this.Anonymous.ikeMmFailure;
  set ikeMmFailure(Pointer<FWPM_NET_EVENT_IKEEXT_MM_FAILURE2_> value) =>
      this.Anonymous.ikeMmFailure = value;

  Pointer<FWPM_NET_EVENT_IKEEXT_QM_FAILURE1_> get ikeQmFailure =>
      this.Anonymous.ikeQmFailure;
  set ikeQmFailure(Pointer<FWPM_NET_EVENT_IKEEXT_QM_FAILURE1_> value) =>
      this.Anonymous.ikeQmFailure = value;

  Pointer<FWPM_NET_EVENT_IKEEXT_EM_FAILURE1> get ikeEmFailure =>
      this.Anonymous.ikeEmFailure;
  set ikeEmFailure(Pointer<FWPM_NET_EVENT_IKEEXT_EM_FAILURE1> value) =>
      this.Anonymous.ikeEmFailure = value;

  Pointer<FWPM_NET_EVENT_CLASSIFY_DROP2> get classifyDrop =>
      this.Anonymous.classifyDrop;
  set classifyDrop(Pointer<FWPM_NET_EVENT_CLASSIFY_DROP2> value) =>
      this.Anonymous.classifyDrop = value;

  Pointer<FWPM_NET_EVENT_IPSEC_KERNEL_DROP0> get ipsecDrop =>
      this.Anonymous.ipsecDrop;
  set ipsecDrop(Pointer<FWPM_NET_EVENT_IPSEC_KERNEL_DROP0> value) =>
      this.Anonymous.ipsecDrop = value;

  Pointer<FWPM_NET_EVENT_IPSEC_DOSP_DROP0> get idpDrop =>
      this.Anonymous.idpDrop;
  set idpDrop(Pointer<FWPM_NET_EVENT_IPSEC_DOSP_DROP0> value) =>
      this.Anonymous.idpDrop = value;

  Pointer<FWPM_NET_EVENT_CLASSIFY_ALLOW0> get classifyAllow =>
      this.Anonymous.classifyAllow;
  set classifyAllow(Pointer<FWPM_NET_EVENT_CLASSIFY_ALLOW0> value) =>
      this.Anonymous.classifyAllow = value;

  Pointer<FWPM_NET_EVENT_CAPABILITY_DROP0> get capabilityDrop =>
      this.Anonymous.capabilityDrop;
  set capabilityDrop(Pointer<FWPM_NET_EVENT_CAPABILITY_DROP0> value) =>
      this.Anonymous.capabilityDrop = value;

  Pointer<FWPM_NET_EVENT_CAPABILITY_ALLOW0> get capabilityAllow =>
      this.Anonymous.capabilityAllow;
  set capabilityAllow(Pointer<FWPM_NET_EVENT_CAPABILITY_ALLOW0> value) =>
      this.Anonymous.capabilityAllow = value;

  Pointer<FWPM_NET_EVENT_CLASSIFY_DROP_MAC0> get classifyDropMac =>
      this.Anonymous.classifyDropMac;
  set classifyDropMac(Pointer<FWPM_NET_EVENT_CLASSIFY_DROP_MAC0> value) =>
      this.Anonymous.classifyDropMac = value;
}

/// {@category Struct}
class FWPM_NET_EVENT5_ extends Struct {
  external FWPM_NET_EVENT_HEADER3 header;

  @Int32()
  external int type;

  external _FWPM_NET_EVENT5___Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _FWPM_NET_EVENT5___Anonymous_e__Union extends Union {
  external Pointer<FWPM_NET_EVENT_IKEEXT_MM_FAILURE2_> ikeMmFailure;

  external Pointer<FWPM_NET_EVENT_IKEEXT_QM_FAILURE1_> ikeQmFailure;

  external Pointer<FWPM_NET_EVENT_IKEEXT_EM_FAILURE1> ikeEmFailure;

  external Pointer<FWPM_NET_EVENT_CLASSIFY_DROP2> classifyDrop;

  external Pointer<FWPM_NET_EVENT_IPSEC_KERNEL_DROP0> ipsecDrop;

  external Pointer<FWPM_NET_EVENT_IPSEC_DOSP_DROP0> idpDrop;

  external Pointer<FWPM_NET_EVENT_CLASSIFY_ALLOW0> classifyAllow;

  external Pointer<FWPM_NET_EVENT_CAPABILITY_DROP0> capabilityDrop;

  external Pointer<FWPM_NET_EVENT_CAPABILITY_ALLOW0> capabilityAllow;

  external Pointer<FWPM_NET_EVENT_CLASSIFY_DROP_MAC0> classifyDropMac;

  external Pointer<FWPM_NET_EVENT_LPM_PACKET_ARRIVAL0_> lpmPacketArrival;
}

extension FWPM_NET_EVENT5__Extension on FWPM_NET_EVENT5_ {
  Pointer<FWPM_NET_EVENT_IKEEXT_MM_FAILURE2_> get ikeMmFailure =>
      this.Anonymous.ikeMmFailure;
  set ikeMmFailure(Pointer<FWPM_NET_EVENT_IKEEXT_MM_FAILURE2_> value) =>
      this.Anonymous.ikeMmFailure = value;

  Pointer<FWPM_NET_EVENT_IKEEXT_QM_FAILURE1_> get ikeQmFailure =>
      this.Anonymous.ikeQmFailure;
  set ikeQmFailure(Pointer<FWPM_NET_EVENT_IKEEXT_QM_FAILURE1_> value) =>
      this.Anonymous.ikeQmFailure = value;

  Pointer<FWPM_NET_EVENT_IKEEXT_EM_FAILURE1> get ikeEmFailure =>
      this.Anonymous.ikeEmFailure;
  set ikeEmFailure(Pointer<FWPM_NET_EVENT_IKEEXT_EM_FAILURE1> value) =>
      this.Anonymous.ikeEmFailure = value;

  Pointer<FWPM_NET_EVENT_CLASSIFY_DROP2> get classifyDrop =>
      this.Anonymous.classifyDrop;
  set classifyDrop(Pointer<FWPM_NET_EVENT_CLASSIFY_DROP2> value) =>
      this.Anonymous.classifyDrop = value;

  Pointer<FWPM_NET_EVENT_IPSEC_KERNEL_DROP0> get ipsecDrop =>
      this.Anonymous.ipsecDrop;
  set ipsecDrop(Pointer<FWPM_NET_EVENT_IPSEC_KERNEL_DROP0> value) =>
      this.Anonymous.ipsecDrop = value;

  Pointer<FWPM_NET_EVENT_IPSEC_DOSP_DROP0> get idpDrop =>
      this.Anonymous.idpDrop;
  set idpDrop(Pointer<FWPM_NET_EVENT_IPSEC_DOSP_DROP0> value) =>
      this.Anonymous.idpDrop = value;

  Pointer<FWPM_NET_EVENT_CLASSIFY_ALLOW0> get classifyAllow =>
      this.Anonymous.classifyAllow;
  set classifyAllow(Pointer<FWPM_NET_EVENT_CLASSIFY_ALLOW0> value) =>
      this.Anonymous.classifyAllow = value;

  Pointer<FWPM_NET_EVENT_CAPABILITY_DROP0> get capabilityDrop =>
      this.Anonymous.capabilityDrop;
  set capabilityDrop(Pointer<FWPM_NET_EVENT_CAPABILITY_DROP0> value) =>
      this.Anonymous.capabilityDrop = value;

  Pointer<FWPM_NET_EVENT_CAPABILITY_ALLOW0> get capabilityAllow =>
      this.Anonymous.capabilityAllow;
  set capabilityAllow(Pointer<FWPM_NET_EVENT_CAPABILITY_ALLOW0> value) =>
      this.Anonymous.capabilityAllow = value;

  Pointer<FWPM_NET_EVENT_CLASSIFY_DROP_MAC0> get classifyDropMac =>
      this.Anonymous.classifyDropMac;
  set classifyDropMac(Pointer<FWPM_NET_EVENT_CLASSIFY_DROP_MAC0> value) =>
      this.Anonymous.classifyDropMac = value;

  Pointer<FWPM_NET_EVENT_LPM_PACKET_ARRIVAL0_> get lpmPacketArrival =>
      this.Anonymous.lpmPacketArrival;
  set lpmPacketArrival(Pointer<FWPM_NET_EVENT_LPM_PACKET_ARRIVAL0_> value) =>
      this.Anonymous.lpmPacketArrival = value;
}

/// {@category Struct}
class FWPM_NET_EVENT_CAPABILITY_ALLOW0 extends Struct {
  @Int32()
  external int networkCapabilityId;

  @Uint64()
  external int filterId;

  @Int32()
  external int isLoopback;
}

/// {@category Struct}
class FWPM_NET_EVENT_CAPABILITY_DROP0 extends Struct {
  @Int32()
  external int networkCapabilityId;

  @Uint64()
  external int filterId;

  @Int32()
  external int isLoopback;
}

/// {@category Struct}
class FWPM_NET_EVENT_CLASSIFY_ALLOW0 extends Struct {
  @Uint64()
  external int filterId;

  @Uint16()
  external int layerId;

  @Uint32()
  external int reauthReason;

  @Uint32()
  external int originalProfile;

  @Uint32()
  external int currentProfile;

  @Uint32()
  external int msFwpDirection;

  @Int32()
  external int isLoopback;
}

/// {@category Struct}
class FWPM_NET_EVENT_CLASSIFY_DROP0 extends Struct {
  @Uint64()
  external int filterId;

  @Uint16()
  external int layerId;
}

/// {@category Struct}
class FWPM_NET_EVENT_CLASSIFY_DROP1 extends Struct {
  @Uint64()
  external int filterId;

  @Uint16()
  external int layerId;

  @Uint32()
  external int reauthReason;

  @Uint32()
  external int originalProfile;

  @Uint32()
  external int currentProfile;

  @Uint32()
  external int msFwpDirection;

  @Int32()
  external int isLoopback;
}

/// {@category Struct}
class FWPM_NET_EVENT_CLASSIFY_DROP2 extends Struct {
  @Uint64()
  external int filterId;

  @Uint16()
  external int layerId;

  @Uint32()
  external int reauthReason;

  @Uint32()
  external int originalProfile;

  @Uint32()
  external int currentProfile;

  @Uint32()
  external int msFwpDirection;

  @Int32()
  external int isLoopback;

  external FWP_BYTE_BLOB vSwitchId;

  @Uint32()
  external int vSwitchSourcePort;

  @Uint32()
  external int vSwitchDestinationPort;
}

/// {@category Struct}
class FWPM_NET_EVENT_CLASSIFY_DROP_MAC0 extends Struct {
  external FWP_BYTE_ARRAY6 localMacAddr;

  external FWP_BYTE_ARRAY6 remoteMacAddr;

  @Uint32()
  external int mediaType;

  @Uint32()
  external int ifType;

  @Uint16()
  external int etherType;

  @Uint32()
  external int ndisPortNumber;

  @Uint32()
  external int reserved;

  @Uint16()
  external int vlanTag;

  @Uint64()
  external int ifLuid;

  @Uint64()
  external int filterId;

  @Uint16()
  external int layerId;

  @Uint32()
  external int reauthReason;

  @Uint32()
  external int originalProfile;

  @Uint32()
  external int currentProfile;

  @Uint32()
  external int msFwpDirection;

  @Int32()
  external int isLoopback;

  external FWP_BYTE_BLOB vSwitchId;

  @Uint32()
  external int vSwitchSourcePort;

  @Uint32()
  external int vSwitchDestinationPort;
}

/// {@category Struct}
class FWPM_NET_EVENT_ENUM_TEMPLATE0 extends Struct {
  external FILETIME startTime;

  external FILETIME endTime;

  @Uint32()
  external int numFilterConditions;

  external Pointer<FWPM_FILTER_CONDITION0> filterCondition;
}

/// {@category Struct}
class FWPM_NET_EVENT_HEADER0 extends Struct {
  external FILETIME timeStamp;

  @Uint32()
  external int flags;

  @Int32()
  external int ipVersion;

  @Uint8()
  external int ipProtocol;

  external _FWPM_NET_EVENT_HEADER0__Anonymous1_e__Union Anonymous1;

  external _FWPM_NET_EVENT_HEADER0__Anonymous2_e__Union Anonymous2;

  @Uint16()
  external int localPort;

  @Uint16()
  external int remotePort;

  @Uint32()
  external int scopeId;

  external FWP_BYTE_BLOB appId;

  external Pointer<SID> userId;
}

/// {@category Struct}
class _FWPM_NET_EVENT_HEADER0__Anonymous1_e__Union extends Union {
  @Uint32()
  external int localAddrV4;

  external FWP_BYTE_ARRAY16 localAddrV6;
}

extension FWPM_NET_EVENT_HEADER0_Extension on FWPM_NET_EVENT_HEADER0 {
  int get localAddrV4 => this.Anonymous1.localAddrV4;
  set localAddrV4(int value) => this.Anonymous1.localAddrV4 = value;

  FWP_BYTE_ARRAY16 get localAddrV6 => this.Anonymous1.localAddrV6;
  set localAddrV6(FWP_BYTE_ARRAY16 value) =>
      this.Anonymous1.localAddrV6 = value;
}

/// {@category Struct}
class _FWPM_NET_EVENT_HEADER0__Anonymous2_e__Union extends Union {
  @Uint32()
  external int remoteAddrV4;

  external FWP_BYTE_ARRAY16 remoteAddrV6;
}

extension FWPM_NET_EVENT_HEADER0_Extension_1 on FWPM_NET_EVENT_HEADER0 {
  int get remoteAddrV4 => this.Anonymous2.remoteAddrV4;
  set remoteAddrV4(int value) => this.Anonymous2.remoteAddrV4 = value;

  FWP_BYTE_ARRAY16 get remoteAddrV6 => this.Anonymous2.remoteAddrV6;
  set remoteAddrV6(FWP_BYTE_ARRAY16 value) =>
      this.Anonymous2.remoteAddrV6 = value;
}

/// {@category Struct}
class FWPM_NET_EVENT_HEADER1 extends Struct {
  external FILETIME timeStamp;

  @Uint32()
  external int flags;

  @Int32()
  external int ipVersion;

  @Uint8()
  external int ipProtocol;

  external _FWPM_NET_EVENT_HEADER1__Anonymous1_e__Union Anonymous1;

  external _FWPM_NET_EVENT_HEADER1__Anonymous2_e__Union Anonymous2;

  @Uint16()
  external int localPort;

  @Uint16()
  external int remotePort;

  @Uint32()
  external int scopeId;

  external FWP_BYTE_BLOB appId;

  external Pointer<SID> userId;

  external _FWPM_NET_EVENT_HEADER1__Anonymous3_e__Union Anonymous3;
}

/// {@category Struct}
class _FWPM_NET_EVENT_HEADER1__Anonymous1_e__Union extends Union {
  @Uint32()
  external int localAddrV4;

  external FWP_BYTE_ARRAY16 localAddrV6;
}

extension FWPM_NET_EVENT_HEADER1_Extension on FWPM_NET_EVENT_HEADER1 {
  int get localAddrV4 => this.Anonymous1.localAddrV4;
  set localAddrV4(int value) => this.Anonymous1.localAddrV4 = value;

  FWP_BYTE_ARRAY16 get localAddrV6 => this.Anonymous1.localAddrV6;
  set localAddrV6(FWP_BYTE_ARRAY16 value) =>
      this.Anonymous1.localAddrV6 = value;
}

/// {@category Struct}
class _FWPM_NET_EVENT_HEADER1__Anonymous2_e__Union extends Union {
  @Uint32()
  external int remoteAddrV4;

  external FWP_BYTE_ARRAY16 remoteAddrV6;
}

extension FWPM_NET_EVENT_HEADER1_Extension_1 on FWPM_NET_EVENT_HEADER1 {
  int get remoteAddrV4 => this.Anonymous2.remoteAddrV4;
  set remoteAddrV4(int value) => this.Anonymous2.remoteAddrV4 = value;

  FWP_BYTE_ARRAY16 get remoteAddrV6 => this.Anonymous2.remoteAddrV6;
  set remoteAddrV6(FWP_BYTE_ARRAY16 value) =>
      this.Anonymous2.remoteAddrV6 = value;
}

/// {@category Struct}
class _FWPM_NET_EVENT_HEADER1__Anonymous3_e__Union extends Union {
  external _FWPM_NET_EVENT_HEADER1__Anonymous3_e__Union__Anonymous_e__Struct
      Anonymous;
}

/// {@category Struct}
class _FWPM_NET_EVENT_HEADER1__Anonymous3_e__Union__Anonymous_e__Struct
    extends Struct {
  @Int32()
  external int reserved1;

  external _FWPM_NET_EVENT_HEADER1__Anonymous3_e__Union__Anonymous_e__Struct__Anonymous_e__Union
      Anonymous;
}

/// {@category Struct}
class _FWPM_NET_EVENT_HEADER1__Anonymous3_e__Union__Anonymous_e__Struct__Anonymous_e__Union
    extends Union {
  external _FWPM_NET_EVENT_HEADER1__Anonymous3_e__Union__Anonymous_e__Struct__Anonymous_e__Union__Anonymous_e__Struct
      Anonymous;
}

/// {@category Struct}
class _FWPM_NET_EVENT_HEADER1__Anonymous3_e__Union__Anonymous_e__Struct__Anonymous_e__Union__Anonymous_e__Struct
    extends Struct {
  external FWP_BYTE_ARRAY6 reserved2;

  external FWP_BYTE_ARRAY6 reserved3;

  @Uint32()
  external int reserved4;

  @Uint32()
  external int reserved5;

  @Uint16()
  external int reserved6;

  @Uint32()
  external int reserved7;

  @Uint32()
  external int reserved8;

  @Uint16()
  external int reserved9;

  @Uint64()
  external int reserved10;
}

extension FWPM_NET_EVENT_HEADER1__Anonymous3_e__Union__Anonymous_e__Struct__Anonymous_e__Union_Extension
    on FWPM_NET_EVENT_HEADER1 {
  FWP_BYTE_ARRAY6 get reserved2 =>
      this.Anonymous3.Anonymous.Anonymous.Anonymous.reserved2;
  set reserved2(FWP_BYTE_ARRAY6 value) =>
      this.Anonymous3.Anonymous.Anonymous.Anonymous.reserved2 = value;

  FWP_BYTE_ARRAY6 get reserved3 =>
      this.Anonymous3.Anonymous.Anonymous.Anonymous.reserved3;
  set reserved3(FWP_BYTE_ARRAY6 value) =>
      this.Anonymous3.Anonymous.Anonymous.Anonymous.reserved3 = value;

  int get reserved4 => this.Anonymous3.Anonymous.Anonymous.Anonymous.reserved4;
  set reserved4(int value) =>
      this.Anonymous3.Anonymous.Anonymous.Anonymous.reserved4 = value;

  int get reserved5 => this.Anonymous3.Anonymous.Anonymous.Anonymous.reserved5;
  set reserved5(int value) =>
      this.Anonymous3.Anonymous.Anonymous.Anonymous.reserved5 = value;

  int get reserved6 => this.Anonymous3.Anonymous.Anonymous.Anonymous.reserved6;
  set reserved6(int value) =>
      this.Anonymous3.Anonymous.Anonymous.Anonymous.reserved6 = value;

  int get reserved7 => this.Anonymous3.Anonymous.Anonymous.Anonymous.reserved7;
  set reserved7(int value) =>
      this.Anonymous3.Anonymous.Anonymous.Anonymous.reserved7 = value;

  int get reserved8 => this.Anonymous3.Anonymous.Anonymous.Anonymous.reserved8;
  set reserved8(int value) =>
      this.Anonymous3.Anonymous.Anonymous.Anonymous.reserved8 = value;

  int get reserved9 => this.Anonymous3.Anonymous.Anonymous.Anonymous.reserved9;
  set reserved9(int value) =>
      this.Anonymous3.Anonymous.Anonymous.Anonymous.reserved9 = value;

  int get reserved10 =>
      this.Anonymous3.Anonymous.Anonymous.Anonymous.reserved10;
  set reserved10(int value) =>
      this.Anonymous3.Anonymous.Anonymous.Anonymous.reserved10 = value;
}

extension FWPM_NET_EVENT_HEADER1__Anonymous3_e__Union__Anonymous_e__Struct_Extension
    on FWPM_NET_EVENT_HEADER1 {
  _FWPM_NET_EVENT_HEADER1__Anonymous3_e__Union__Anonymous_e__Struct__Anonymous_e__Union__Anonymous_e__Struct
      get Anonymous => this.Anonymous3.Anonymous.Anonymous.Anonymous;
  set Anonymous(
          _FWPM_NET_EVENT_HEADER1__Anonymous3_e__Union__Anonymous_e__Struct__Anonymous_e__Union__Anonymous_e__Struct
              value) =>
      this.Anonymous3.Anonymous.Anonymous.Anonymous = value;
}

extension FWPM_NET_EVENT_HEADER1__Anonymous3_e__Union_Extension
    on FWPM_NET_EVENT_HEADER1 {
  int get reserved1 => this.Anonymous3.Anonymous.reserved1;
  set reserved1(int value) => this.Anonymous3.Anonymous.reserved1 = value;

  _FWPM_NET_EVENT_HEADER1__Anonymous3_e__Union__Anonymous_e__Struct__Anonymous_e__Union
      get Anonymous => this.Anonymous3.Anonymous.Anonymous;
  set Anonymous(
          _FWPM_NET_EVENT_HEADER1__Anonymous3_e__Union__Anonymous_e__Struct__Anonymous_e__Union
              value) =>
      this.Anonymous3.Anonymous.Anonymous = value;
}

extension FWPM_NET_EVENT_HEADER1_Extension_2 on FWPM_NET_EVENT_HEADER1 {
  _FWPM_NET_EVENT_HEADER1__Anonymous3_e__Union__Anonymous_e__Struct
      get Anonymous => this.Anonymous3.Anonymous;
  set Anonymous(
          _FWPM_NET_EVENT_HEADER1__Anonymous3_e__Union__Anonymous_e__Struct
              value) =>
      this.Anonymous3.Anonymous = value;
}

/// {@category Struct}
class FWPM_NET_EVENT_HEADER2 extends Struct {
  external FILETIME timeStamp;

  @Uint32()
  external int flags;

  @Int32()
  external int ipVersion;

  @Uint8()
  external int ipProtocol;

  external _FWPM_NET_EVENT_HEADER2__Anonymous1_e__Union Anonymous1;

  external _FWPM_NET_EVENT_HEADER2__Anonymous2_e__Union Anonymous2;

  @Uint16()
  external int localPort;

  @Uint16()
  external int remotePort;

  @Uint32()
  external int scopeId;

  external FWP_BYTE_BLOB appId;

  external Pointer<SID> userId;

  @Int32()
  external int addressFamily;

  external Pointer<SID> packageSid;
}

/// {@category Struct}
class _FWPM_NET_EVENT_HEADER2__Anonymous1_e__Union extends Union {
  @Uint32()
  external int localAddrV4;

  external FWP_BYTE_ARRAY16 localAddrV6;
}

extension FWPM_NET_EVENT_HEADER2_Extension on FWPM_NET_EVENT_HEADER2 {
  int get localAddrV4 => this.Anonymous1.localAddrV4;
  set localAddrV4(int value) => this.Anonymous1.localAddrV4 = value;

  FWP_BYTE_ARRAY16 get localAddrV6 => this.Anonymous1.localAddrV6;
  set localAddrV6(FWP_BYTE_ARRAY16 value) =>
      this.Anonymous1.localAddrV6 = value;
}

/// {@category Struct}
class _FWPM_NET_EVENT_HEADER2__Anonymous2_e__Union extends Union {
  @Uint32()
  external int remoteAddrV4;

  external FWP_BYTE_ARRAY16 remoteAddrV6;
}

extension FWPM_NET_EVENT_HEADER2_Extension_1 on FWPM_NET_EVENT_HEADER2 {
  int get remoteAddrV4 => this.Anonymous2.remoteAddrV4;
  set remoteAddrV4(int value) => this.Anonymous2.remoteAddrV4 = value;

  FWP_BYTE_ARRAY16 get remoteAddrV6 => this.Anonymous2.remoteAddrV6;
  set remoteAddrV6(FWP_BYTE_ARRAY16 value) =>
      this.Anonymous2.remoteAddrV6 = value;
}

/// {@category Struct}
class FWPM_NET_EVENT_HEADER3 extends Struct {
  external FILETIME timeStamp;

  @Uint32()
  external int flags;

  @Int32()
  external int ipVersion;

  @Uint8()
  external int ipProtocol;

  external _FWPM_NET_EVENT_HEADER3__Anonymous1_e__Union Anonymous1;

  external _FWPM_NET_EVENT_HEADER3__Anonymous2_e__Union Anonymous2;

  @Uint16()
  external int localPort;

  @Uint16()
  external int remotePort;

  @Uint32()
  external int scopeId;

  external FWP_BYTE_BLOB appId;

  external Pointer<SID> userId;

  @Int32()
  external int addressFamily;

  external Pointer<SID> packageSid;

  external Pointer<Utf16> enterpriseId;

  @Uint64()
  external int policyFlags;

  external FWP_BYTE_BLOB effectiveName;
}

/// {@category Struct}
class _FWPM_NET_EVENT_HEADER3__Anonymous1_e__Union extends Union {
  @Uint32()
  external int localAddrV4;

  external FWP_BYTE_ARRAY16 localAddrV6;
}

extension FWPM_NET_EVENT_HEADER3_Extension on FWPM_NET_EVENT_HEADER3 {
  int get localAddrV4 => this.Anonymous1.localAddrV4;
  set localAddrV4(int value) => this.Anonymous1.localAddrV4 = value;

  FWP_BYTE_ARRAY16 get localAddrV6 => this.Anonymous1.localAddrV6;
  set localAddrV6(FWP_BYTE_ARRAY16 value) =>
      this.Anonymous1.localAddrV6 = value;
}

/// {@category Struct}
class _FWPM_NET_EVENT_HEADER3__Anonymous2_e__Union extends Union {
  @Uint32()
  external int remoteAddrV4;

  external FWP_BYTE_ARRAY16 remoteAddrV6;
}

extension FWPM_NET_EVENT_HEADER3_Extension_1 on FWPM_NET_EVENT_HEADER3 {
  int get remoteAddrV4 => this.Anonymous2.remoteAddrV4;
  set remoteAddrV4(int value) => this.Anonymous2.remoteAddrV4 = value;

  FWP_BYTE_ARRAY16 get remoteAddrV6 => this.Anonymous2.remoteAddrV6;
  set remoteAddrV6(FWP_BYTE_ARRAY16 value) =>
      this.Anonymous2.remoteAddrV6 = value;
}

/// {@category Struct}
class FWPM_NET_EVENT_IKEEXT_EM_FAILURE0 extends Struct {
  @Uint32()
  external int failureErrorCode;

  @Int32()
  external int failurePoint;

  @Uint32()
  external int flags;

  @Int32()
  external int emState;

  @Int32()
  external int saRole;

  @Int32()
  external int emAuthMethod;

  @Array(20)
  external Array<Uint8> endCertHash;

  @Uint64()
  external int mmId;

  @Uint64()
  external int qmFilterId;
}

/// {@category Struct}
class FWPM_NET_EVENT_IKEEXT_EM_FAILURE1 extends Struct {
  @Uint32()
  external int failureErrorCode;

  @Int32()
  external int failurePoint;

  @Uint32()
  external int flags;

  @Int32()
  external int emState;

  @Int32()
  external int saRole;

  @Int32()
  external int emAuthMethod;

  @Array(20)
  external Array<Uint8> endCertHash;

  @Uint64()
  external int mmId;

  @Uint64()
  external int qmFilterId;

  external Pointer<Utf16> localPrincipalNameForAuth;

  external Pointer<Utf16> remotePrincipalNameForAuth;

  @Uint32()
  external int numLocalPrincipalGroupSids;

  external Pointer<Pointer<Utf16>> localPrincipalGroupSids;

  @Uint32()
  external int numRemotePrincipalGroupSids;

  external Pointer<Pointer<Utf16>> remotePrincipalGroupSids;

  @Int32()
  external int saTrafficType;
}

/// {@category Struct}
class FWPM_NET_EVENT_IKEEXT_MM_FAILURE0 extends Struct {
  @Uint32()
  external int failureErrorCode;

  @Int32()
  external int failurePoint;

  @Uint32()
  external int flags;

  @Int32()
  external int keyingModuleType;

  @Int32()
  external int mmState;

  @Int32()
  external int saRole;

  @Int32()
  external int mmAuthMethod;

  @Array(20)
  external Array<Uint8> endCertHash;

  @Uint64()
  external int mmId;

  @Uint64()
  external int mmFilterId;
}

/// {@category Struct}
class FWPM_NET_EVENT_IKEEXT_MM_FAILURE1 extends Struct {
  @Uint32()
  external int failureErrorCode;

  @Int32()
  external int failurePoint;

  @Uint32()
  external int flags;

  @Int32()
  external int keyingModuleType;

  @Int32()
  external int mmState;

  @Int32()
  external int saRole;

  @Int32()
  external int mmAuthMethod;

  @Array(20)
  external Array<Uint8> endCertHash;

  @Uint64()
  external int mmId;

  @Uint64()
  external int mmFilterId;

  external Pointer<Utf16> localPrincipalNameForAuth;

  external Pointer<Utf16> remotePrincipalNameForAuth;

  @Uint32()
  external int numLocalPrincipalGroupSids;

  external Pointer<Pointer<Utf16>> localPrincipalGroupSids;

  @Uint32()
  external int numRemotePrincipalGroupSids;

  external Pointer<Pointer<Utf16>> remotePrincipalGroupSids;
}

/// {@category Struct}
class FWPM_NET_EVENT_IKEEXT_MM_FAILURE2_ extends Struct {
  @Uint32()
  external int failureErrorCode;

  @Int32()
  external int failurePoint;

  @Uint32()
  external int flags;

  @Int32()
  external int keyingModuleType;

  @Int32()
  external int mmState;

  @Int32()
  external int saRole;

  @Int32()
  external int mmAuthMethod;

  @Array(20)
  external Array<Uint8> endCertHash;

  @Uint64()
  external int mmId;

  @Uint64()
  external int mmFilterId;

  external Pointer<Utf16> localPrincipalNameForAuth;

  external Pointer<Utf16> remotePrincipalNameForAuth;

  @Uint32()
  external int numLocalPrincipalGroupSids;

  external Pointer<Pointer<Utf16>> localPrincipalGroupSids;

  @Uint32()
  external int numRemotePrincipalGroupSids;

  external Pointer<Pointer<Utf16>> remotePrincipalGroupSids;

  external Pointer<GUID> providerContextKey;
}

/// {@category Struct}
class FWPM_NET_EVENT_IKEEXT_QM_FAILURE0 extends Struct {
  @Uint32()
  external int failureErrorCode;

  @Int32()
  external int failurePoint;

  @Int32()
  external int keyingModuleType;

  @Int32()
  external int qmState;

  @Int32()
  external int saRole;

  @Int32()
  external int saTrafficType;

  external _FWPM_NET_EVENT_IKEEXT_QM_FAILURE0__Anonymous1_e__Union Anonymous1;

  external _FWPM_NET_EVENT_IKEEXT_QM_FAILURE0__Anonymous2_e__Union Anonymous2;

  @Uint64()
  external int qmFilterId;
}

/// {@category Struct}
class _FWPM_NET_EVENT_IKEEXT_QM_FAILURE0__Anonymous1_e__Union extends Union {
  external FWP_CONDITION_VALUE0 localSubNet;
}

extension FWPM_NET_EVENT_IKEEXT_QM_FAILURE0_Extension
    on FWPM_NET_EVENT_IKEEXT_QM_FAILURE0 {
  FWP_CONDITION_VALUE0 get localSubNet => this.Anonymous1.localSubNet;
  set localSubNet(FWP_CONDITION_VALUE0 value) =>
      this.Anonymous1.localSubNet = value;
}

/// {@category Struct}
class _FWPM_NET_EVENT_IKEEXT_QM_FAILURE0__Anonymous2_e__Union extends Union {
  external FWP_CONDITION_VALUE0 remoteSubNet;
}

extension FWPM_NET_EVENT_IKEEXT_QM_FAILURE0_Extension_1
    on FWPM_NET_EVENT_IKEEXT_QM_FAILURE0 {
  FWP_CONDITION_VALUE0 get remoteSubNet => this.Anonymous2.remoteSubNet;
  set remoteSubNet(FWP_CONDITION_VALUE0 value) =>
      this.Anonymous2.remoteSubNet = value;
}

/// {@category Struct}
class FWPM_NET_EVENT_IKEEXT_QM_FAILURE1_ extends Struct {
  @Uint32()
  external int failureErrorCode;

  @Int32()
  external int failurePoint;

  @Int32()
  external int keyingModuleType;

  @Int32()
  external int qmState;

  @Int32()
  external int saRole;

  @Int32()
  external int saTrafficType;

  external _FWPM_NET_EVENT_IKEEXT_QM_FAILURE1___Anonymous1_e__Union Anonymous1;

  external _FWPM_NET_EVENT_IKEEXT_QM_FAILURE1___Anonymous2_e__Union Anonymous2;

  @Uint64()
  external int qmFilterId;

  @Uint64()
  external int mmSaLuid;

  external GUID mmProviderContextKey;
}

/// {@category Struct}
class _FWPM_NET_EVENT_IKEEXT_QM_FAILURE1___Anonymous1_e__Union extends Union {
  external FWP_CONDITION_VALUE0 localSubNet;
}

extension FWPM_NET_EVENT_IKEEXT_QM_FAILURE1__Extension
    on FWPM_NET_EVENT_IKEEXT_QM_FAILURE1_ {
  FWP_CONDITION_VALUE0 get localSubNet => this.Anonymous1.localSubNet;
  set localSubNet(FWP_CONDITION_VALUE0 value) =>
      this.Anonymous1.localSubNet = value;
}

/// {@category Struct}
class _FWPM_NET_EVENT_IKEEXT_QM_FAILURE1___Anonymous2_e__Union extends Union {
  external FWP_CONDITION_VALUE0 remoteSubNet;
}

extension FWPM_NET_EVENT_IKEEXT_QM_FAILURE1__Extension_1
    on FWPM_NET_EVENT_IKEEXT_QM_FAILURE1_ {
  FWP_CONDITION_VALUE0 get remoteSubNet => this.Anonymous2.remoteSubNet;
  set remoteSubNet(FWP_CONDITION_VALUE0 value) =>
      this.Anonymous2.remoteSubNet = value;
}

/// {@category Struct}
class FWPM_NET_EVENT_IPSEC_DOSP_DROP0 extends Struct {
  @Int32()
  external int ipVersion;

  external _FWPM_NET_EVENT_IPSEC_DOSP_DROP0__Anonymous1_e__Union Anonymous1;

  external _FWPM_NET_EVENT_IPSEC_DOSP_DROP0__Anonymous2_e__Union Anonymous2;

  @Int32()
  external int failureStatus;

  @Int32()
  external int direction;
}

/// {@category Struct}
class _FWPM_NET_EVENT_IPSEC_DOSP_DROP0__Anonymous1_e__Union extends Union {
  @Uint32()
  external int publicHostV4Addr;

  @Array(16)
  external Array<Uint8> publicHostV6Addr;
}

extension FWPM_NET_EVENT_IPSEC_DOSP_DROP0_Extension
    on FWPM_NET_EVENT_IPSEC_DOSP_DROP0 {
  int get publicHostV4Addr => this.Anonymous1.publicHostV4Addr;
  set publicHostV4Addr(int value) => this.Anonymous1.publicHostV4Addr = value;

  Array<Uint8> get publicHostV6Addr => this.Anonymous1.publicHostV6Addr;
  set publicHostV6Addr(Array<Uint8> value) =>
      this.Anonymous1.publicHostV6Addr = value;
}

/// {@category Struct}
class _FWPM_NET_EVENT_IPSEC_DOSP_DROP0__Anonymous2_e__Union extends Union {
  @Uint32()
  external int internalHostV4Addr;

  @Array(16)
  external Array<Uint8> internalHostV6Addr;
}

extension FWPM_NET_EVENT_IPSEC_DOSP_DROP0_Extension_1
    on FWPM_NET_EVENT_IPSEC_DOSP_DROP0 {
  int get internalHostV4Addr => this.Anonymous2.internalHostV4Addr;
  set internalHostV4Addr(int value) =>
      this.Anonymous2.internalHostV4Addr = value;

  Array<Uint8> get internalHostV6Addr => this.Anonymous2.internalHostV6Addr;
  set internalHostV6Addr(Array<Uint8> value) =>
      this.Anonymous2.internalHostV6Addr = value;
}

/// {@category Struct}
class FWPM_NET_EVENT_IPSEC_KERNEL_DROP0 extends Struct {
  @Int32()
  external int failureStatus;

  @Int32()
  external int direction;

  @Uint32()
  external int spi;

  @Uint64()
  external int filterId;

  @Uint16()
  external int layerId;
}

/// {@category Struct}
class FWPM_NET_EVENT_LPM_PACKET_ARRIVAL0_ extends Struct {
  @Uint32()
  external int spi;
}

/// {@category Struct}
class FWPM_NET_EVENT_SUBSCRIPTION0 extends Struct {
  external Pointer<FWPM_NET_EVENT_ENUM_TEMPLATE0> enumTemplate;

  @Uint32()
  external int flags;

  external GUID sessionKey;
}

/// {@category Struct}
class FWPM_PROVIDER0 extends Struct {
  external GUID providerKey;

  external FWPM_DISPLAY_DATA0 displayData;

  @Uint32()
  external int flags;

  external FWP_BYTE_BLOB providerData;

  external Pointer<Utf16> serviceName;
}

/// {@category Struct}
class FWPM_PROVIDER_CHANGE0 extends Struct {
  @Int32()
  external int changeType;

  external GUID providerKey;
}

/// {@category Struct}
class FWPM_PROVIDER_CONTEXT0 extends Struct {
  external GUID providerContextKey;

  external FWPM_DISPLAY_DATA0 displayData;

  @Uint32()
  external int flags;

  external Pointer<GUID> providerKey;

  external FWP_BYTE_BLOB providerData;

  @Int32()
  external int type;

  external _FWPM_PROVIDER_CONTEXT0__Anonymous_e__Union Anonymous;

  @Uint64()
  external int providerContextId;
}

/// {@category Struct}
class _FWPM_PROVIDER_CONTEXT0__Anonymous_e__Union extends Union {
  external Pointer<IPSEC_KEYING_POLICY0> keyingPolicy;

  external Pointer<IPSEC_TRANSPORT_POLICY0> ikeQmTransportPolicy;

  external Pointer<IPSEC_TUNNEL_POLICY0> ikeQmTunnelPolicy;

  external Pointer<IPSEC_TRANSPORT_POLICY0> authipQmTransportPolicy;

  external Pointer<IPSEC_TUNNEL_POLICY0> authipQmTunnelPolicy;

  external Pointer<IKEEXT_POLICY0> ikeMmPolicy;

  external Pointer<IKEEXT_POLICY0> authIpMmPolicy;

  external Pointer<FWP_BYTE_BLOB> dataBuffer;

  external Pointer<FWPM_CLASSIFY_OPTIONS0> classifyOptions;
}

extension FWPM_PROVIDER_CONTEXT0_Extension on FWPM_PROVIDER_CONTEXT0 {
  Pointer<IPSEC_KEYING_POLICY0> get keyingPolicy => this.Anonymous.keyingPolicy;
  set keyingPolicy(Pointer<IPSEC_KEYING_POLICY0> value) =>
      this.Anonymous.keyingPolicy = value;

  Pointer<IPSEC_TRANSPORT_POLICY0> get ikeQmTransportPolicy =>
      this.Anonymous.ikeQmTransportPolicy;
  set ikeQmTransportPolicy(Pointer<IPSEC_TRANSPORT_POLICY0> value) =>
      this.Anonymous.ikeQmTransportPolicy = value;

  Pointer<IPSEC_TUNNEL_POLICY0> get ikeQmTunnelPolicy =>
      this.Anonymous.ikeQmTunnelPolicy;
  set ikeQmTunnelPolicy(Pointer<IPSEC_TUNNEL_POLICY0> value) =>
      this.Anonymous.ikeQmTunnelPolicy = value;

  Pointer<IPSEC_TRANSPORT_POLICY0> get authipQmTransportPolicy =>
      this.Anonymous.authipQmTransportPolicy;
  set authipQmTransportPolicy(Pointer<IPSEC_TRANSPORT_POLICY0> value) =>
      this.Anonymous.authipQmTransportPolicy = value;

  Pointer<IPSEC_TUNNEL_POLICY0> get authipQmTunnelPolicy =>
      this.Anonymous.authipQmTunnelPolicy;
  set authipQmTunnelPolicy(Pointer<IPSEC_TUNNEL_POLICY0> value) =>
      this.Anonymous.authipQmTunnelPolicy = value;

  Pointer<IKEEXT_POLICY0> get ikeMmPolicy => this.Anonymous.ikeMmPolicy;
  set ikeMmPolicy(Pointer<IKEEXT_POLICY0> value) =>
      this.Anonymous.ikeMmPolicy = value;

  Pointer<IKEEXT_POLICY0> get authIpMmPolicy => this.Anonymous.authIpMmPolicy;
  set authIpMmPolicy(Pointer<IKEEXT_POLICY0> value) =>
      this.Anonymous.authIpMmPolicy = value;

  Pointer<FWP_BYTE_BLOB> get dataBuffer => this.Anonymous.dataBuffer;
  set dataBuffer(Pointer<FWP_BYTE_BLOB> value) =>
      this.Anonymous.dataBuffer = value;

  Pointer<FWPM_CLASSIFY_OPTIONS0> get classifyOptions =>
      this.Anonymous.classifyOptions;
  set classifyOptions(Pointer<FWPM_CLASSIFY_OPTIONS0> value) =>
      this.Anonymous.classifyOptions = value;
}

/// {@category Struct}
class FWPM_PROVIDER_CONTEXT1 extends Struct {
  external GUID providerContextKey;

  external FWPM_DISPLAY_DATA0 displayData;

  @Uint32()
  external int flags;

  external Pointer<GUID> providerKey;

  external FWP_BYTE_BLOB providerData;

  @Int32()
  external int type;

  external _FWPM_PROVIDER_CONTEXT1__Anonymous_e__Union Anonymous;

  @Uint64()
  external int providerContextId;
}

/// {@category Struct}
class _FWPM_PROVIDER_CONTEXT1__Anonymous_e__Union extends Union {
  external Pointer<IPSEC_KEYING_POLICY0> keyingPolicy;

  external Pointer<IPSEC_TRANSPORT_POLICY1> ikeQmTransportPolicy;

  external Pointer<IPSEC_TUNNEL_POLICY1> ikeQmTunnelPolicy;

  external Pointer<IPSEC_TRANSPORT_POLICY1> authipQmTransportPolicy;

  external Pointer<IPSEC_TUNNEL_POLICY1> authipQmTunnelPolicy;

  external Pointer<IKEEXT_POLICY1> ikeMmPolicy;

  external Pointer<IKEEXT_POLICY1> authIpMmPolicy;

  external Pointer<FWP_BYTE_BLOB> dataBuffer;

  external Pointer<FWPM_CLASSIFY_OPTIONS0> classifyOptions;

  external Pointer<IPSEC_TUNNEL_POLICY1> ikeV2QmTunnelPolicy;

  external Pointer<IKEEXT_POLICY1> ikeV2MmPolicy;

  external Pointer<IPSEC_DOSP_OPTIONS0> idpOptions;
}

extension FWPM_PROVIDER_CONTEXT1_Extension on FWPM_PROVIDER_CONTEXT1 {
  Pointer<IPSEC_KEYING_POLICY0> get keyingPolicy => this.Anonymous.keyingPolicy;
  set keyingPolicy(Pointer<IPSEC_KEYING_POLICY0> value) =>
      this.Anonymous.keyingPolicy = value;

  Pointer<IPSEC_TRANSPORT_POLICY1> get ikeQmTransportPolicy =>
      this.Anonymous.ikeQmTransportPolicy;
  set ikeQmTransportPolicy(Pointer<IPSEC_TRANSPORT_POLICY1> value) =>
      this.Anonymous.ikeQmTransportPolicy = value;

  Pointer<IPSEC_TUNNEL_POLICY1> get ikeQmTunnelPolicy =>
      this.Anonymous.ikeQmTunnelPolicy;
  set ikeQmTunnelPolicy(Pointer<IPSEC_TUNNEL_POLICY1> value) =>
      this.Anonymous.ikeQmTunnelPolicy = value;

  Pointer<IPSEC_TRANSPORT_POLICY1> get authipQmTransportPolicy =>
      this.Anonymous.authipQmTransportPolicy;
  set authipQmTransportPolicy(Pointer<IPSEC_TRANSPORT_POLICY1> value) =>
      this.Anonymous.authipQmTransportPolicy = value;

  Pointer<IPSEC_TUNNEL_POLICY1> get authipQmTunnelPolicy =>
      this.Anonymous.authipQmTunnelPolicy;
  set authipQmTunnelPolicy(Pointer<IPSEC_TUNNEL_POLICY1> value) =>
      this.Anonymous.authipQmTunnelPolicy = value;

  Pointer<IKEEXT_POLICY1> get ikeMmPolicy => this.Anonymous.ikeMmPolicy;
  set ikeMmPolicy(Pointer<IKEEXT_POLICY1> value) =>
      this.Anonymous.ikeMmPolicy = value;

  Pointer<IKEEXT_POLICY1> get authIpMmPolicy => this.Anonymous.authIpMmPolicy;
  set authIpMmPolicy(Pointer<IKEEXT_POLICY1> value) =>
      this.Anonymous.authIpMmPolicy = value;

  Pointer<FWP_BYTE_BLOB> get dataBuffer => this.Anonymous.dataBuffer;
  set dataBuffer(Pointer<FWP_BYTE_BLOB> value) =>
      this.Anonymous.dataBuffer = value;

  Pointer<FWPM_CLASSIFY_OPTIONS0> get classifyOptions =>
      this.Anonymous.classifyOptions;
  set classifyOptions(Pointer<FWPM_CLASSIFY_OPTIONS0> value) =>
      this.Anonymous.classifyOptions = value;

  Pointer<IPSEC_TUNNEL_POLICY1> get ikeV2QmTunnelPolicy =>
      this.Anonymous.ikeV2QmTunnelPolicy;
  set ikeV2QmTunnelPolicy(Pointer<IPSEC_TUNNEL_POLICY1> value) =>
      this.Anonymous.ikeV2QmTunnelPolicy = value;

  Pointer<IKEEXT_POLICY1> get ikeV2MmPolicy => this.Anonymous.ikeV2MmPolicy;
  set ikeV2MmPolicy(Pointer<IKEEXT_POLICY1> value) =>
      this.Anonymous.ikeV2MmPolicy = value;

  Pointer<IPSEC_DOSP_OPTIONS0> get idpOptions => this.Anonymous.idpOptions;
  set idpOptions(Pointer<IPSEC_DOSP_OPTIONS0> value) =>
      this.Anonymous.idpOptions = value;
}

/// {@category Struct}
class FWPM_PROVIDER_CONTEXT2 extends Struct {
  external GUID providerContextKey;

  external FWPM_DISPLAY_DATA0 displayData;

  @Uint32()
  external int flags;

  external Pointer<GUID> providerKey;

  external FWP_BYTE_BLOB providerData;

  @Int32()
  external int type;

  external _FWPM_PROVIDER_CONTEXT2__Anonymous_e__Union Anonymous;

  @Uint64()
  external int providerContextId;
}

/// {@category Struct}
class _FWPM_PROVIDER_CONTEXT2__Anonymous_e__Union extends Union {
  external Pointer<IPSEC_KEYING_POLICY1> keyingPolicy;

  external Pointer<IPSEC_TRANSPORT_POLICY2> ikeQmTransportPolicy;

  external Pointer<IPSEC_TUNNEL_POLICY2> ikeQmTunnelPolicy;

  external Pointer<IPSEC_TRANSPORT_POLICY2> authipQmTransportPolicy;

  external Pointer<IPSEC_TUNNEL_POLICY2> authipQmTunnelPolicy;

  external Pointer<IKEEXT_POLICY2> ikeMmPolicy;

  external Pointer<IKEEXT_POLICY2> authIpMmPolicy;

  external Pointer<FWP_BYTE_BLOB> dataBuffer;

  external Pointer<FWPM_CLASSIFY_OPTIONS0> classifyOptions;

  external Pointer<IPSEC_TUNNEL_POLICY2> ikeV2QmTunnelPolicy;

  external Pointer<IPSEC_TRANSPORT_POLICY2> ikeV2QmTransportPolicy;

  external Pointer<IKEEXT_POLICY2> ikeV2MmPolicy;

  external Pointer<IPSEC_DOSP_OPTIONS0> idpOptions;
}

extension FWPM_PROVIDER_CONTEXT2_Extension on FWPM_PROVIDER_CONTEXT2 {
  Pointer<IPSEC_KEYING_POLICY1> get keyingPolicy => this.Anonymous.keyingPolicy;
  set keyingPolicy(Pointer<IPSEC_KEYING_POLICY1> value) =>
      this.Anonymous.keyingPolicy = value;

  Pointer<IPSEC_TRANSPORT_POLICY2> get ikeQmTransportPolicy =>
      this.Anonymous.ikeQmTransportPolicy;
  set ikeQmTransportPolicy(Pointer<IPSEC_TRANSPORT_POLICY2> value) =>
      this.Anonymous.ikeQmTransportPolicy = value;

  Pointer<IPSEC_TUNNEL_POLICY2> get ikeQmTunnelPolicy =>
      this.Anonymous.ikeQmTunnelPolicy;
  set ikeQmTunnelPolicy(Pointer<IPSEC_TUNNEL_POLICY2> value) =>
      this.Anonymous.ikeQmTunnelPolicy = value;

  Pointer<IPSEC_TRANSPORT_POLICY2> get authipQmTransportPolicy =>
      this.Anonymous.authipQmTransportPolicy;
  set authipQmTransportPolicy(Pointer<IPSEC_TRANSPORT_POLICY2> value) =>
      this.Anonymous.authipQmTransportPolicy = value;

  Pointer<IPSEC_TUNNEL_POLICY2> get authipQmTunnelPolicy =>
      this.Anonymous.authipQmTunnelPolicy;
  set authipQmTunnelPolicy(Pointer<IPSEC_TUNNEL_POLICY2> value) =>
      this.Anonymous.authipQmTunnelPolicy = value;

  Pointer<IKEEXT_POLICY2> get ikeMmPolicy => this.Anonymous.ikeMmPolicy;
  set ikeMmPolicy(Pointer<IKEEXT_POLICY2> value) =>
      this.Anonymous.ikeMmPolicy = value;

  Pointer<IKEEXT_POLICY2> get authIpMmPolicy => this.Anonymous.authIpMmPolicy;
  set authIpMmPolicy(Pointer<IKEEXT_POLICY2> value) =>
      this.Anonymous.authIpMmPolicy = value;

  Pointer<FWP_BYTE_BLOB> get dataBuffer => this.Anonymous.dataBuffer;
  set dataBuffer(Pointer<FWP_BYTE_BLOB> value) =>
      this.Anonymous.dataBuffer = value;

  Pointer<FWPM_CLASSIFY_OPTIONS0> get classifyOptions =>
      this.Anonymous.classifyOptions;
  set classifyOptions(Pointer<FWPM_CLASSIFY_OPTIONS0> value) =>
      this.Anonymous.classifyOptions = value;

  Pointer<IPSEC_TUNNEL_POLICY2> get ikeV2QmTunnelPolicy =>
      this.Anonymous.ikeV2QmTunnelPolicy;
  set ikeV2QmTunnelPolicy(Pointer<IPSEC_TUNNEL_POLICY2> value) =>
      this.Anonymous.ikeV2QmTunnelPolicy = value;

  Pointer<IPSEC_TRANSPORT_POLICY2> get ikeV2QmTransportPolicy =>
      this.Anonymous.ikeV2QmTransportPolicy;
  set ikeV2QmTransportPolicy(Pointer<IPSEC_TRANSPORT_POLICY2> value) =>
      this.Anonymous.ikeV2QmTransportPolicy = value;

  Pointer<IKEEXT_POLICY2> get ikeV2MmPolicy => this.Anonymous.ikeV2MmPolicy;
  set ikeV2MmPolicy(Pointer<IKEEXT_POLICY2> value) =>
      this.Anonymous.ikeV2MmPolicy = value;

  Pointer<IPSEC_DOSP_OPTIONS0> get idpOptions => this.Anonymous.idpOptions;
  set idpOptions(Pointer<IPSEC_DOSP_OPTIONS0> value) =>
      this.Anonymous.idpOptions = value;
}

/// {@category Struct}
class FWPM_PROVIDER_CONTEXT3_ extends Struct {
  external GUID providerContextKey;

  external FWPM_DISPLAY_DATA0 displayData;

  @Uint32()
  external int flags;

  external Pointer<GUID> providerKey;

  external FWP_BYTE_BLOB providerData;

  @Int32()
  external int type;

  external _FWPM_PROVIDER_CONTEXT3___Anonymous_e__Union Anonymous;

  @Uint64()
  external int providerContextId;
}

/// {@category Struct}
class _FWPM_PROVIDER_CONTEXT3___Anonymous_e__Union extends Union {
  external Pointer<IPSEC_KEYING_POLICY1> keyingPolicy;

  external Pointer<IPSEC_TRANSPORT_POLICY2> ikeQmTransportPolicy;

  external Pointer<IPSEC_TUNNEL_POLICY3_> ikeQmTunnelPolicy;

  external Pointer<IPSEC_TRANSPORT_POLICY2> authipQmTransportPolicy;

  external Pointer<IPSEC_TUNNEL_POLICY3_> authipQmTunnelPolicy;

  external Pointer<IKEEXT_POLICY2> ikeMmPolicy;

  external Pointer<IKEEXT_POLICY2> authIpMmPolicy;

  external Pointer<FWP_BYTE_BLOB> dataBuffer;

  external Pointer<FWPM_CLASSIFY_OPTIONS0> classifyOptions;

  external Pointer<IPSEC_TUNNEL_POLICY3_> ikeV2QmTunnelPolicy;

  external Pointer<IPSEC_TRANSPORT_POLICY2> ikeV2QmTransportPolicy;

  external Pointer<IKEEXT_POLICY2> ikeV2MmPolicy;

  external Pointer<IPSEC_DOSP_OPTIONS0> idpOptions;
}

extension FWPM_PROVIDER_CONTEXT3__Extension on FWPM_PROVIDER_CONTEXT3_ {
  Pointer<IPSEC_KEYING_POLICY1> get keyingPolicy => this.Anonymous.keyingPolicy;
  set keyingPolicy(Pointer<IPSEC_KEYING_POLICY1> value) =>
      this.Anonymous.keyingPolicy = value;

  Pointer<IPSEC_TRANSPORT_POLICY2> get ikeQmTransportPolicy =>
      this.Anonymous.ikeQmTransportPolicy;
  set ikeQmTransportPolicy(Pointer<IPSEC_TRANSPORT_POLICY2> value) =>
      this.Anonymous.ikeQmTransportPolicy = value;

  Pointer<IPSEC_TUNNEL_POLICY3_> get ikeQmTunnelPolicy =>
      this.Anonymous.ikeQmTunnelPolicy;
  set ikeQmTunnelPolicy(Pointer<IPSEC_TUNNEL_POLICY3_> value) =>
      this.Anonymous.ikeQmTunnelPolicy = value;

  Pointer<IPSEC_TRANSPORT_POLICY2> get authipQmTransportPolicy =>
      this.Anonymous.authipQmTransportPolicy;
  set authipQmTransportPolicy(Pointer<IPSEC_TRANSPORT_POLICY2> value) =>
      this.Anonymous.authipQmTransportPolicy = value;

  Pointer<IPSEC_TUNNEL_POLICY3_> get authipQmTunnelPolicy =>
      this.Anonymous.authipQmTunnelPolicy;
  set authipQmTunnelPolicy(Pointer<IPSEC_TUNNEL_POLICY3_> value) =>
      this.Anonymous.authipQmTunnelPolicy = value;

  Pointer<IKEEXT_POLICY2> get ikeMmPolicy => this.Anonymous.ikeMmPolicy;
  set ikeMmPolicy(Pointer<IKEEXT_POLICY2> value) =>
      this.Anonymous.ikeMmPolicy = value;

  Pointer<IKEEXT_POLICY2> get authIpMmPolicy => this.Anonymous.authIpMmPolicy;
  set authIpMmPolicy(Pointer<IKEEXT_POLICY2> value) =>
      this.Anonymous.authIpMmPolicy = value;

  Pointer<FWP_BYTE_BLOB> get dataBuffer => this.Anonymous.dataBuffer;
  set dataBuffer(Pointer<FWP_BYTE_BLOB> value) =>
      this.Anonymous.dataBuffer = value;

  Pointer<FWPM_CLASSIFY_OPTIONS0> get classifyOptions =>
      this.Anonymous.classifyOptions;
  set classifyOptions(Pointer<FWPM_CLASSIFY_OPTIONS0> value) =>
      this.Anonymous.classifyOptions = value;

  Pointer<IPSEC_TUNNEL_POLICY3_> get ikeV2QmTunnelPolicy =>
      this.Anonymous.ikeV2QmTunnelPolicy;
  set ikeV2QmTunnelPolicy(Pointer<IPSEC_TUNNEL_POLICY3_> value) =>
      this.Anonymous.ikeV2QmTunnelPolicy = value;

  Pointer<IPSEC_TRANSPORT_POLICY2> get ikeV2QmTransportPolicy =>
      this.Anonymous.ikeV2QmTransportPolicy;
  set ikeV2QmTransportPolicy(Pointer<IPSEC_TRANSPORT_POLICY2> value) =>
      this.Anonymous.ikeV2QmTransportPolicy = value;

  Pointer<IKEEXT_POLICY2> get ikeV2MmPolicy => this.Anonymous.ikeV2MmPolicy;
  set ikeV2MmPolicy(Pointer<IKEEXT_POLICY2> value) =>
      this.Anonymous.ikeV2MmPolicy = value;

  Pointer<IPSEC_DOSP_OPTIONS0> get idpOptions => this.Anonymous.idpOptions;
  set idpOptions(Pointer<IPSEC_DOSP_OPTIONS0> value) =>
      this.Anonymous.idpOptions = value;
}

/// {@category Struct}
class FWPM_PROVIDER_CONTEXT_CHANGE0 extends Struct {
  @Int32()
  external int changeType;

  external GUID providerContextKey;

  @Uint64()
  external int providerContextId;
}

/// {@category Struct}
class FWPM_PROVIDER_CONTEXT_ENUM_TEMPLATE0 extends Struct {
  external Pointer<GUID> providerKey;

  @Int32()
  external int providerContextType;
}

/// {@category Struct}
class FWPM_PROVIDER_CONTEXT_SUBSCRIPTION0 extends Struct {
  external Pointer<FWPM_PROVIDER_CONTEXT_ENUM_TEMPLATE0> enumTemplate;

  @Uint32()
  external int flags;

  external GUID sessionKey;
}

/// {@category Struct}
class FWPM_PROVIDER_ENUM_TEMPLATE0 extends Struct {
  @Uint64()
  external int reserved;
}

/// {@category Struct}
class FWPM_PROVIDER_SUBSCRIPTION0 extends Struct {
  external Pointer<FWPM_PROVIDER_ENUM_TEMPLATE0> enumTemplate;

  @Uint32()
  external int flags;

  external GUID sessionKey;
}

/// {@category Struct}
class FWPM_SESSION0 extends Struct {
  external GUID sessionKey;

  external FWPM_DISPLAY_DATA0 displayData;

  @Uint32()
  external int flags;

  @Uint32()
  external int txnWaitTimeoutInMSec;

  @Uint32()
  external int processId;

  external Pointer<SID> sid;

  external Pointer<Utf16> username;

  @Int32()
  external int kernelMode;
}

/// {@category Struct}
class FWPM_SESSION_ENUM_TEMPLATE0 extends Struct {
  @Uint64()
  external int reserved;
}

/// {@category Struct}
class FWPM_STATISTICS0 extends Struct {
  @Uint32()
  external int numLayerStatistics;

  external Pointer<FWPM_LAYER_STATISTICS0> layerStatistics;

  @Uint32()
  external int inboundAllowedConnectionsV4;

  @Uint32()
  external int inboundBlockedConnectionsV4;

  @Uint32()
  external int outboundAllowedConnectionsV4;

  @Uint32()
  external int outboundBlockedConnectionsV4;

  @Uint32()
  external int inboundAllowedConnectionsV6;

  @Uint32()
  external int inboundBlockedConnectionsV6;

  @Uint32()
  external int outboundAllowedConnectionsV6;

  @Uint32()
  external int outboundBlockedConnectionsV6;

  @Uint32()
  external int inboundActiveConnectionsV4;

  @Uint32()
  external int outboundActiveConnectionsV4;

  @Uint32()
  external int inboundActiveConnectionsV6;

  @Uint32()
  external int outboundActiveConnectionsV6;

  @Uint64()
  external int reauthDirInbound;

  @Uint64()
  external int reauthDirOutbound;

  @Uint64()
  external int reauthFamilyV4;

  @Uint64()
  external int reauthFamilyV6;

  @Uint64()
  external int reauthProtoOther;

  @Uint64()
  external int reauthProtoIPv4;

  @Uint64()
  external int reauthProtoIPv6;

  @Uint64()
  external int reauthProtoICMP;

  @Uint64()
  external int reauthProtoICMP6;

  @Uint64()
  external int reauthProtoUDP;

  @Uint64()
  external int reauthProtoTCP;

  @Uint64()
  external int reauthReasonPolicyChange;

  @Uint64()
  external int reauthReasonNewArrivalInterface;

  @Uint64()
  external int reauthReasonNewNextHopInterface;

  @Uint64()
  external int reauthReasonProfileCrossing;

  @Uint64()
  external int reauthReasonClassifyCompletion;

  @Uint64()
  external int reauthReasonIPSecPropertiesChanged;

  @Uint64()
  external int reauthReasonMidStreamInspection;

  @Uint64()
  external int reauthReasonSocketPropertyChanged;

  @Uint64()
  external int reauthReasonNewInboundMCastBCastPacket;

  @Uint64()
  external int reauthReasonEDPPolicyChanged;

  @Uint64()
  external int reauthReasonProxyHandleChanged;
}

/// {@category Struct}
class FWPM_SUBLAYER0 extends Struct {
  external GUID subLayerKey;

  external FWPM_DISPLAY_DATA0 displayData;

  @Uint32()
  external int flags;

  external Pointer<GUID> providerKey;

  external FWP_BYTE_BLOB providerData;

  @Uint16()
  external int weight;
}

/// {@category Struct}
class FWPM_SUBLAYER_CHANGE0 extends Struct {
  @Int32()
  external int changeType;

  external GUID subLayerKey;
}

/// {@category Struct}
class FWPM_SUBLAYER_ENUM_TEMPLATE0 extends Struct {
  external Pointer<GUID> providerKey;
}

/// {@category Struct}
class FWPM_SUBLAYER_SUBSCRIPTION0 extends Struct {
  external Pointer<FWPM_SUBLAYER_ENUM_TEMPLATE0> enumTemplate;

  @Uint32()
  external int flags;

  external GUID sessionKey;
}

/// {@category Struct}
class FWPM_SYSTEM_PORTS0 extends Struct {
  @Uint32()
  external int numTypes;

  external Pointer<FWPM_SYSTEM_PORTS_BY_TYPE0> types;
}

/// {@category Struct}
class FWPM_SYSTEM_PORTS_BY_TYPE0 extends Struct {
  @Int32()
  external int type;

  @Uint32()
  external int numPorts;

  external Pointer<Uint16> ports;
}

/// {@category Struct}
class FWPM_VSWITCH_EVENT0 extends Struct {
  @Int32()
  external int eventType;

  external Pointer<Utf16> vSwitchId;

  external _FWPM_VSWITCH_EVENT0__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _FWPM_VSWITCH_EVENT0__Anonymous_e__Union extends Union {
  external _FWPM_VSWITCH_EVENT0__Anonymous_e__Union__positionInfo_e__Struct
      positionInfo;

  external _FWPM_VSWITCH_EVENT0__Anonymous_e__Union__reorderInfo_e__Struct
      reorderInfo;
}

/// {@category Struct}
class _FWPM_VSWITCH_EVENT0__Anonymous_e__Union__positionInfo_e__Struct
    extends Struct {
  @Uint32()
  external int numvSwitchFilterExtensions;

  external Pointer<Pointer<Utf16>> vSwitchFilterExtensions;
}

extension FWPM_VSWITCH_EVENT0__Anonymous_e__Union_Extension
    on FWPM_VSWITCH_EVENT0 {
  int get numvSwitchFilterExtensions =>
      this.Anonymous.positionInfo.numvSwitchFilterExtensions;
  set numvSwitchFilterExtensions(int value) =>
      this.Anonymous.positionInfo.numvSwitchFilterExtensions = value;

  Pointer<Pointer<Utf16>> get vSwitchFilterExtensions =>
      this.Anonymous.positionInfo.vSwitchFilterExtensions;
  set vSwitchFilterExtensions(Pointer<Pointer<Utf16>> value) =>
      this.Anonymous.positionInfo.vSwitchFilterExtensions = value;
}

/// {@category Struct}
class _FWPM_VSWITCH_EVENT0__Anonymous_e__Union__reorderInfo_e__Struct
    extends Struct {
  @Int32()
  external int inRequiredPosition;

  @Uint32()
  external int numvSwitchFilterExtensions;

  external Pointer<Pointer<Utf16>> vSwitchFilterExtensions;
}

extension FWPM_VSWITCH_EVENT0__Anonymous_e__Union_Extension_1
    on FWPM_VSWITCH_EVENT0 {
  int get inRequiredPosition => this.Anonymous.reorderInfo.inRequiredPosition;
  set inRequiredPosition(int value) =>
      this.Anonymous.reorderInfo.inRequiredPosition = value;

  int get numvSwitchFilterExtensions =>
      this.Anonymous.reorderInfo.numvSwitchFilterExtensions;
  set numvSwitchFilterExtensions(int value) =>
      this.Anonymous.reorderInfo.numvSwitchFilterExtensions = value;

  Pointer<Pointer<Utf16>> get vSwitchFilterExtensions =>
      this.Anonymous.reorderInfo.vSwitchFilterExtensions;
  set vSwitchFilterExtensions(Pointer<Pointer<Utf16>> value) =>
      this.Anonymous.reorderInfo.vSwitchFilterExtensions = value;
}

extension FWPM_VSWITCH_EVENT0_Extension on FWPM_VSWITCH_EVENT0 {
  _FWPM_VSWITCH_EVENT0__Anonymous_e__Union__positionInfo_e__Struct
      get positionInfo => this.Anonymous.positionInfo;
  set positionInfo(
          _FWPM_VSWITCH_EVENT0__Anonymous_e__Union__positionInfo_e__Struct
              value) =>
      this.Anonymous.positionInfo = value;

  _FWPM_VSWITCH_EVENT0__Anonymous_e__Union__reorderInfo_e__Struct
      get reorderInfo => this.Anonymous.reorderInfo;
  set reorderInfo(
          _FWPM_VSWITCH_EVENT0__Anonymous_e__Union__reorderInfo_e__Struct
              value) =>
      this.Anonymous.reorderInfo = value;
}

/// {@category Struct}
class FWPM_VSWITCH_EVENT_SUBSCRIPTION0 extends Struct {
  @Uint32()
  external int flags;

  external GUID sessionKey;
}

/// {@category Struct}
class FWP_BYTE_ARRAY16 extends Struct {
  @Array(16)
  external Array<Uint8> byteArray16;
}

/// {@category Struct}
class FWP_BYTE_ARRAY6 extends Struct {
  @Array(6)
  external Array<Uint8> byteArray6;
}

/// {@category Struct}
class FWP_BYTE_BLOB extends Struct {
  @Uint32()
  external int size;

  external Pointer<Uint8> data;
}

/// {@category Struct}
class FWP_CONDITION_VALUE0 extends Struct {
  @Int32()
  external int type;

  external _FWP_CONDITION_VALUE0__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _FWP_CONDITION_VALUE0__Anonymous_e__Union extends Union {
  @Uint8()
  external int uint8;

  @Uint16()
  external int uint16;

  @Uint32()
  external int uint32;

  external Pointer<Uint64> uint64;

  @Int8()
  external int int8;

  @Int16()
  external int int16;

  @Int32()
  external int int32;

  external Pointer<Int64> int64;

  @Float()
  external double float32;

  external Pointer<Double> double64;

  external Pointer<FWP_BYTE_ARRAY16> byteArray16;

  external Pointer<FWP_BYTE_BLOB> byteBlob;

  external Pointer<SID> sid;

  external Pointer<FWP_BYTE_BLOB> sd;

  external Pointer<FWP_TOKEN_INFORMATION> tokenInformation;

  external Pointer<FWP_BYTE_BLOB> tokenAccessInformation;

  external Pointer<Utf16> unicodeString;

  external Pointer<FWP_BYTE_ARRAY6> byteArray6;

  external Pointer<FWP_V4_ADDR_AND_MASK> v4AddrMask;

  external Pointer<FWP_V6_ADDR_AND_MASK> v6AddrMask;

  external Pointer<FWP_RANGE0> rangeValue;
}

extension FWP_CONDITION_VALUE0_Extension on FWP_CONDITION_VALUE0 {
  int get uint8 => this.Anonymous.uint8;
  set uint8(int value) => this.Anonymous.uint8 = value;

  int get uint16 => this.Anonymous.uint16;
  set uint16(int value) => this.Anonymous.uint16 = value;

  int get uint32 => this.Anonymous.uint32;
  set uint32(int value) => this.Anonymous.uint32 = value;

  Pointer<Uint64> get uint64 => this.Anonymous.uint64;
  set uint64(Pointer<Uint64> value) => this.Anonymous.uint64 = value;

  int get int8 => this.Anonymous.int8;
  set int8(int value) => this.Anonymous.int8 = value;

  int get int16 => this.Anonymous.int16;
  set int16(int value) => this.Anonymous.int16 = value;

  int get int32 => this.Anonymous.int32;
  set int32(int value) => this.Anonymous.int32 = value;

  Pointer<Int64> get int64 => this.Anonymous.int64;
  set int64(Pointer<Int64> value) => this.Anonymous.int64 = value;

  double get float32 => this.Anonymous.float32;
  set float32(double value) => this.Anonymous.float32 = value;

  Pointer<Double> get double64 => this.Anonymous.double64;
  set double64(Pointer<Double> value) => this.Anonymous.double64 = value;

  Pointer<FWP_BYTE_ARRAY16> get byteArray16 => this.Anonymous.byteArray16;
  set byteArray16(Pointer<FWP_BYTE_ARRAY16> value) =>
      this.Anonymous.byteArray16 = value;

  Pointer<FWP_BYTE_BLOB> get byteBlob => this.Anonymous.byteBlob;
  set byteBlob(Pointer<FWP_BYTE_BLOB> value) => this.Anonymous.byteBlob = value;

  Pointer<SID> get sid => this.Anonymous.sid;
  set sid(Pointer<SID> value) => this.Anonymous.sid = value;

  Pointer<FWP_BYTE_BLOB> get sd => this.Anonymous.sd;
  set sd(Pointer<FWP_BYTE_BLOB> value) => this.Anonymous.sd = value;

  Pointer<FWP_TOKEN_INFORMATION> get tokenInformation =>
      this.Anonymous.tokenInformation;
  set tokenInformation(Pointer<FWP_TOKEN_INFORMATION> value) =>
      this.Anonymous.tokenInformation = value;

  Pointer<FWP_BYTE_BLOB> get tokenAccessInformation =>
      this.Anonymous.tokenAccessInformation;
  set tokenAccessInformation(Pointer<FWP_BYTE_BLOB> value) =>
      this.Anonymous.tokenAccessInformation = value;

  Pointer<Utf16> get unicodeString => this.Anonymous.unicodeString;
  set unicodeString(Pointer<Utf16> value) =>
      this.Anonymous.unicodeString = value;

  Pointer<FWP_BYTE_ARRAY6> get byteArray6 => this.Anonymous.byteArray6;
  set byteArray6(Pointer<FWP_BYTE_ARRAY6> value) =>
      this.Anonymous.byteArray6 = value;

  Pointer<FWP_V4_ADDR_AND_MASK> get v4AddrMask => this.Anonymous.v4AddrMask;
  set v4AddrMask(Pointer<FWP_V4_ADDR_AND_MASK> value) =>
      this.Anonymous.v4AddrMask = value;

  Pointer<FWP_V6_ADDR_AND_MASK> get v6AddrMask => this.Anonymous.v6AddrMask;
  set v6AddrMask(Pointer<FWP_V6_ADDR_AND_MASK> value) =>
      this.Anonymous.v6AddrMask = value;

  Pointer<FWP_RANGE0> get rangeValue => this.Anonymous.rangeValue;
  set rangeValue(Pointer<FWP_RANGE0> value) =>
      this.Anonymous.rangeValue = value;
}

/// {@category Struct}
class FWP_RANGE0 extends Struct {
  external FWP_VALUE0 valueLow;

  external FWP_VALUE0 valueHigh;
}

/// {@category Struct}
class FWP_TOKEN_INFORMATION extends Struct {
  @Uint32()
  external int sidCount;

  external Pointer<SID_AND_ATTRIBUTES> sids;

  @Uint32()
  external int restrictedSidCount;

  external Pointer<SID_AND_ATTRIBUTES> restrictedSids;
}

/// {@category Struct}
class FWP_V4_ADDR_AND_MASK extends Struct {
  @Uint32()
  external int addr;

  @Uint32()
  external int mask;
}

/// {@category Struct}
class FWP_V6_ADDR_AND_MASK extends Struct {
  @Array(16)
  external Array<Uint8> addr;

  @Uint8()
  external int prefixLength;
}

/// {@category Struct}
class FWP_VALUE0 extends Struct {
  @Int32()
  external int type;

  external _FWP_VALUE0__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _FWP_VALUE0__Anonymous_e__Union extends Union {
  @Uint8()
  external int uint8;

  @Uint16()
  external int uint16;

  @Uint32()
  external int uint32;

  external Pointer<Uint64> uint64;

  @Int8()
  external int int8;

  @Int16()
  external int int16;

  @Int32()
  external int int32;

  external Pointer<Int64> int64;

  @Float()
  external double float32;

  external Pointer<Double> double64;

  external Pointer<FWP_BYTE_ARRAY16> byteArray16;

  external Pointer<FWP_BYTE_BLOB> byteBlob;

  external Pointer<SID> sid;

  external Pointer<FWP_BYTE_BLOB> sd;

  external Pointer<FWP_TOKEN_INFORMATION> tokenInformation;

  external Pointer<FWP_BYTE_BLOB> tokenAccessInformation;

  external Pointer<Utf16> unicodeString;

  external Pointer<FWP_BYTE_ARRAY6> byteArray6;
}

extension FWP_VALUE0_Extension on FWP_VALUE0 {
  int get uint8 => this.Anonymous.uint8;
  set uint8(int value) => this.Anonymous.uint8 = value;

  int get uint16 => this.Anonymous.uint16;
  set uint16(int value) => this.Anonymous.uint16 = value;

  int get uint32 => this.Anonymous.uint32;
  set uint32(int value) => this.Anonymous.uint32 = value;

  Pointer<Uint64> get uint64 => this.Anonymous.uint64;
  set uint64(Pointer<Uint64> value) => this.Anonymous.uint64 = value;

  int get int8 => this.Anonymous.int8;
  set int8(int value) => this.Anonymous.int8 = value;

  int get int16 => this.Anonymous.int16;
  set int16(int value) => this.Anonymous.int16 = value;

  int get int32 => this.Anonymous.int32;
  set int32(int value) => this.Anonymous.int32 = value;

  Pointer<Int64> get int64 => this.Anonymous.int64;
  set int64(Pointer<Int64> value) => this.Anonymous.int64 = value;

  double get float32 => this.Anonymous.float32;
  set float32(double value) => this.Anonymous.float32 = value;

  Pointer<Double> get double64 => this.Anonymous.double64;
  set double64(Pointer<Double> value) => this.Anonymous.double64 = value;

  Pointer<FWP_BYTE_ARRAY16> get byteArray16 => this.Anonymous.byteArray16;
  set byteArray16(Pointer<FWP_BYTE_ARRAY16> value) =>
      this.Anonymous.byteArray16 = value;

  Pointer<FWP_BYTE_BLOB> get byteBlob => this.Anonymous.byteBlob;
  set byteBlob(Pointer<FWP_BYTE_BLOB> value) => this.Anonymous.byteBlob = value;

  Pointer<SID> get sid => this.Anonymous.sid;
  set sid(Pointer<SID> value) => this.Anonymous.sid = value;

  Pointer<FWP_BYTE_BLOB> get sd => this.Anonymous.sd;
  set sd(Pointer<FWP_BYTE_BLOB> value) => this.Anonymous.sd = value;

  Pointer<FWP_TOKEN_INFORMATION> get tokenInformation =>
      this.Anonymous.tokenInformation;
  set tokenInformation(Pointer<FWP_TOKEN_INFORMATION> value) =>
      this.Anonymous.tokenInformation = value;

  Pointer<FWP_BYTE_BLOB> get tokenAccessInformation =>
      this.Anonymous.tokenAccessInformation;
  set tokenAccessInformation(Pointer<FWP_BYTE_BLOB> value) =>
      this.Anonymous.tokenAccessInformation = value;

  Pointer<Utf16> get unicodeString => this.Anonymous.unicodeString;
  set unicodeString(Pointer<Utf16> value) =>
      this.Anonymous.unicodeString = value;

  Pointer<FWP_BYTE_ARRAY6> get byteArray6 => this.Anonymous.byteArray6;
  set byteArray6(Pointer<FWP_BYTE_ARRAY6> value) =>
      this.Anonymous.byteArray6 = value;
}

/// {@category Struct}
class ICMPV4_ADDRESS_MASK_MESSAGE extends Struct {
  external ICMP_MESSAGE Header;

  @Uint32()
  external int AddressMask;
}

/// {@category Struct}
class ICMPV4_ROUTER_ADVERT_ENTRY extends Struct {
  external IN_ADDR RouterAdvertAddr;

  @Int32()
  external int PreferenceLevel;
}

/// {@category Struct}
class ICMPV4_ROUTER_ADVERT_HEADER extends Struct {
  external ICMP_MESSAGE RaHeader;
}

/// {@category Struct}
class ICMPV4_ROUTER_SOLICIT extends Struct {
  external ICMP_MESSAGE RsHeader;
}

/// {@category Struct}
class ICMPV4_TIMESTAMP_MESSAGE extends Struct {
  external ICMP_MESSAGE Header;

  @Uint32()
  external int OriginateTimestamp;

  @Uint32()
  external int ReceiveTimestamp;

  @Uint32()
  external int TransmitTimestamp;
}

/// {@category Struct}
class ICMP_HEADER extends Struct {
  @Uint8()
  external int Type;

  @Uint8()
  external int Code;

  @Uint16()
  external int Checksum;
}

/// {@category Struct}
class ICMP_MESSAGE extends Struct {
  external ICMP_HEADER Header;

  external _ICMP_MESSAGE__Data_e__Union Data;
}

/// {@category Struct}
class _ICMP_MESSAGE__Data_e__Union extends Union {
  @Array(1)
  external Array<Uint32> Data32;

  @Array(2)
  external Array<Uint16> Data16;

  @Array(4)
  external Array<Uint8> Data8;
}

extension ICMP_MESSAGE_Extension on ICMP_MESSAGE {
  Array<Uint32> get Data32 => this.Data.Data32;
  set Data32(Array<Uint32> value) => this.Data.Data32 = value;

  Array<Uint16> get Data16 => this.Data.Data16;
  set Data16(Array<Uint16> value) => this.Data.Data16 = value;

  Array<Uint8> get Data8 => this.Data.Data8;
  set Data8(Array<Uint8> value) => this.Data.Data8 = value;
}

/// {@category Struct}
class IGMPV3_QUERY_HEADER extends Struct {
  @Uint8()
  external int Type;

  external _IGMPV3_QUERY_HEADER__Anonymous1_e__Union Anonymous1;

  @Uint16()
  external int Checksum;

  external IN_ADDR MulticastAddress;

  @Uint8()
  external int bitfield;

  external _IGMPV3_QUERY_HEADER__Anonymous2_e__Union Anonymous2;

  @Uint16()
  external int SourceCount;
}

/// {@category Struct}
class _IGMPV3_QUERY_HEADER__Anonymous1_e__Union extends Union {
  @Uint8()
  external int MaxRespCode;

  external _IGMPV3_QUERY_HEADER__Anonymous1_e__Union__Anonymous_e__Struct
      Anonymous;
}

/// {@category Struct}
class _IGMPV3_QUERY_HEADER__Anonymous1_e__Union__Anonymous_e__Struct
    extends Struct {
  @Uint8()
  external int bitfield;
}

extension IGMPV3_QUERY_HEADER__Anonymous1_e__Union_Extension
    on IGMPV3_QUERY_HEADER {
  int get bitfield => this.Anonymous1.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous1.Anonymous.bitfield = value;
}

extension IGMPV3_QUERY_HEADER_Extension on IGMPV3_QUERY_HEADER {
  int get MaxRespCode => this.Anonymous1.MaxRespCode;
  set MaxRespCode(int value) => this.Anonymous1.MaxRespCode = value;

  _IGMPV3_QUERY_HEADER__Anonymous1_e__Union__Anonymous_e__Struct
      get Anonymous => this.Anonymous1.Anonymous;
  set Anonymous(
          _IGMPV3_QUERY_HEADER__Anonymous1_e__Union__Anonymous_e__Struct
              value) =>
      this.Anonymous1.Anonymous = value;
}

/// {@category Struct}
class _IGMPV3_QUERY_HEADER__Anonymous2_e__Union extends Union {
  @Uint8()
  external int QueriersQueryInterfaceCode;

  external _IGMPV3_QUERY_HEADER__Anonymous2_e__Union__Anonymous_e__Struct
      Anonymous;
}

/// {@category Struct}
class _IGMPV3_QUERY_HEADER__Anonymous2_e__Union__Anonymous_e__Struct
    extends Struct {
  @Uint8()
  external int bitfield;
}

extension IGMPV3_QUERY_HEADER__Anonymous2_e__Union_Extension
    on IGMPV3_QUERY_HEADER {
  int get bitfield => this.Anonymous2.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous2.Anonymous.bitfield = value;
}

extension IGMPV3_QUERY_HEADER_Extension_1 on IGMPV3_QUERY_HEADER {
  int get QueriersQueryInterfaceCode =>
      this.Anonymous2.QueriersQueryInterfaceCode;
  set QueriersQueryInterfaceCode(int value) =>
      this.Anonymous2.QueriersQueryInterfaceCode = value;

  _IGMPV3_QUERY_HEADER__Anonymous2_e__Union__Anonymous_e__Struct
      get Anonymous => this.Anonymous2.Anonymous;
  set Anonymous(
          _IGMPV3_QUERY_HEADER__Anonymous2_e__Union__Anonymous_e__Struct
              value) =>
      this.Anonymous2.Anonymous = value;
}

/// {@category Struct}
class IGMPV3_REPORT_HEADER extends Struct {
  @Uint8()
  external int Type;

  @Uint8()
  external int Reserved;

  @Uint16()
  external int Checksum;

  @Uint16()
  external int Reserved2;

  @Uint16()
  external int RecordCount;
}

/// {@category Struct}
class IGMPV3_REPORT_RECORD_HEADER extends Struct {
  @Uint8()
  external int Type;

  @Uint8()
  external int AuxillaryDataLength;

  @Uint16()
  external int SourceCount;

  external IN_ADDR MulticastAddress;
}

/// {@category Struct}
class IGMP_HEADER extends Struct {
  external _IGMP_HEADER__Anonymous1_e__Union Anonymous1;

  external _IGMP_HEADER__Anonymous2_e__Union Anonymous2;

  @Uint16()
  external int Checksum;

  external IN_ADDR MulticastAddress;
}

/// {@category Struct}
class _IGMP_HEADER__Anonymous1_e__Union extends Union {
  external _IGMP_HEADER__Anonymous1_e__Union__Anonymous_e__Struct Anonymous;

  @Uint8()
  external int VersionType;
}

/// {@category Struct}
class _IGMP_HEADER__Anonymous1_e__Union__Anonymous_e__Struct extends Struct {
  @Uint8()
  external int bitfield;
}

extension IGMP_HEADER__Anonymous1_e__Union_Extension on IGMP_HEADER {
  int get bitfield => this.Anonymous1.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous1.Anonymous.bitfield = value;
}

extension IGMP_HEADER_Extension on IGMP_HEADER {
  _IGMP_HEADER__Anonymous1_e__Union__Anonymous_e__Struct get Anonymous =>
      this.Anonymous1.Anonymous;
  set Anonymous(_IGMP_HEADER__Anonymous1_e__Union__Anonymous_e__Struct value) =>
      this.Anonymous1.Anonymous = value;

  int get VersionType => this.Anonymous1.VersionType;
  set VersionType(int value) => this.Anonymous1.VersionType = value;
}

/// {@category Struct}
class _IGMP_HEADER__Anonymous2_e__Union extends Union {
  @Uint8()
  external int Reserved;

  @Uint8()
  external int MaxRespTime;

  @Uint8()
  external int Code;
}

extension IGMP_HEADER_Extension_1 on IGMP_HEADER {
  int get Reserved => this.Anonymous2.Reserved;
  set Reserved(int value) => this.Anonymous2.Reserved = value;

  int get MaxRespTime => this.Anonymous2.MaxRespTime;
  set MaxRespTime(int value) => this.Anonymous2.MaxRespTime = value;

  int get Code => this.Anonymous2.Code;
  set Code(int value) => this.Anonymous2.Code = value;
}

/// {@category Struct}
class IKEEXT_AUTHENTICATION_METHOD0 extends Struct {
  @Int32()
  external int authenticationMethodType;

  external _IKEEXT_AUTHENTICATION_METHOD0__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _IKEEXT_AUTHENTICATION_METHOD0__Anonymous_e__Union extends Union {
  external IKEEXT_PRESHARED_KEY_AUTHENTICATION0 presharedKeyAuthentication;

  external IKEEXT_CERTIFICATE_AUTHENTICATION0 certificateAuthentication;

  external IKEEXT_KERBEROS_AUTHENTICATION0 kerberosAuthentication;

  external IKEEXT_NTLM_V2_AUTHENTICATION0 ntlmV2Authentication;

  external IKEEXT_CERTIFICATE_AUTHENTICATION0 sslAuthentication;

  external IKEEXT_IPV6_CGA_AUTHENTICATION0 cgaAuthentication;
}

extension IKEEXT_AUTHENTICATION_METHOD0_Extension
    on IKEEXT_AUTHENTICATION_METHOD0 {
  IKEEXT_PRESHARED_KEY_AUTHENTICATION0 get presharedKeyAuthentication =>
      this.Anonymous.presharedKeyAuthentication;
  set presharedKeyAuthentication(IKEEXT_PRESHARED_KEY_AUTHENTICATION0 value) =>
      this.Anonymous.presharedKeyAuthentication = value;

  IKEEXT_CERTIFICATE_AUTHENTICATION0 get certificateAuthentication =>
      this.Anonymous.certificateAuthentication;
  set certificateAuthentication(IKEEXT_CERTIFICATE_AUTHENTICATION0 value) =>
      this.Anonymous.certificateAuthentication = value;

  IKEEXT_KERBEROS_AUTHENTICATION0 get kerberosAuthentication =>
      this.Anonymous.kerberosAuthentication;
  set kerberosAuthentication(IKEEXT_KERBEROS_AUTHENTICATION0 value) =>
      this.Anonymous.kerberosAuthentication = value;

  IKEEXT_NTLM_V2_AUTHENTICATION0 get ntlmV2Authentication =>
      this.Anonymous.ntlmV2Authentication;
  set ntlmV2Authentication(IKEEXT_NTLM_V2_AUTHENTICATION0 value) =>
      this.Anonymous.ntlmV2Authentication = value;

  IKEEXT_CERTIFICATE_AUTHENTICATION0 get sslAuthentication =>
      this.Anonymous.sslAuthentication;
  set sslAuthentication(IKEEXT_CERTIFICATE_AUTHENTICATION0 value) =>
      this.Anonymous.sslAuthentication = value;

  IKEEXT_IPV6_CGA_AUTHENTICATION0 get cgaAuthentication =>
      this.Anonymous.cgaAuthentication;
  set cgaAuthentication(IKEEXT_IPV6_CGA_AUTHENTICATION0 value) =>
      this.Anonymous.cgaAuthentication = value;
}

/// {@category Struct}
class IKEEXT_AUTHENTICATION_METHOD1 extends Struct {
  @Int32()
  external int authenticationMethodType;

  external _IKEEXT_AUTHENTICATION_METHOD1__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _IKEEXT_AUTHENTICATION_METHOD1__Anonymous_e__Union extends Union {
  external IKEEXT_PRESHARED_KEY_AUTHENTICATION1 presharedKeyAuthentication;

  external IKEEXT_CERTIFICATE_AUTHENTICATION1 certificateAuthentication;

  external IKEEXT_KERBEROS_AUTHENTICATION0 kerberosAuthentication;

  external IKEEXT_NTLM_V2_AUTHENTICATION0 ntlmV2Authentication;

  external IKEEXT_CERTIFICATE_AUTHENTICATION1 sslAuthentication;

  external IKEEXT_IPV6_CGA_AUTHENTICATION0 cgaAuthentication;

  external IKEEXT_EAP_AUTHENTICATION0 eapAuthentication;
}

extension IKEEXT_AUTHENTICATION_METHOD1_Extension
    on IKEEXT_AUTHENTICATION_METHOD1 {
  IKEEXT_PRESHARED_KEY_AUTHENTICATION1 get presharedKeyAuthentication =>
      this.Anonymous.presharedKeyAuthentication;
  set presharedKeyAuthentication(IKEEXT_PRESHARED_KEY_AUTHENTICATION1 value) =>
      this.Anonymous.presharedKeyAuthentication = value;

  IKEEXT_CERTIFICATE_AUTHENTICATION1 get certificateAuthentication =>
      this.Anonymous.certificateAuthentication;
  set certificateAuthentication(IKEEXT_CERTIFICATE_AUTHENTICATION1 value) =>
      this.Anonymous.certificateAuthentication = value;

  IKEEXT_KERBEROS_AUTHENTICATION0 get kerberosAuthentication =>
      this.Anonymous.kerberosAuthentication;
  set kerberosAuthentication(IKEEXT_KERBEROS_AUTHENTICATION0 value) =>
      this.Anonymous.kerberosAuthentication = value;

  IKEEXT_NTLM_V2_AUTHENTICATION0 get ntlmV2Authentication =>
      this.Anonymous.ntlmV2Authentication;
  set ntlmV2Authentication(IKEEXT_NTLM_V2_AUTHENTICATION0 value) =>
      this.Anonymous.ntlmV2Authentication = value;

  IKEEXT_CERTIFICATE_AUTHENTICATION1 get sslAuthentication =>
      this.Anonymous.sslAuthentication;
  set sslAuthentication(IKEEXT_CERTIFICATE_AUTHENTICATION1 value) =>
      this.Anonymous.sslAuthentication = value;

  IKEEXT_IPV6_CGA_AUTHENTICATION0 get cgaAuthentication =>
      this.Anonymous.cgaAuthentication;
  set cgaAuthentication(IKEEXT_IPV6_CGA_AUTHENTICATION0 value) =>
      this.Anonymous.cgaAuthentication = value;

  IKEEXT_EAP_AUTHENTICATION0 get eapAuthentication =>
      this.Anonymous.eapAuthentication;
  set eapAuthentication(IKEEXT_EAP_AUTHENTICATION0 value) =>
      this.Anonymous.eapAuthentication = value;
}

/// {@category Struct}
class IKEEXT_AUTHENTICATION_METHOD2 extends Struct {
  @Int32()
  external int authenticationMethodType;

  external _IKEEXT_AUTHENTICATION_METHOD2__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _IKEEXT_AUTHENTICATION_METHOD2__Anonymous_e__Union extends Union {
  external IKEEXT_PRESHARED_KEY_AUTHENTICATION1 presharedKeyAuthentication;

  external IKEEXT_CERTIFICATE_AUTHENTICATION2 certificateAuthentication;

  external IKEEXT_KERBEROS_AUTHENTICATION1 kerberosAuthentication;

  external IKEEXT_RESERVED_AUTHENTICATION0 reservedAuthentication;

  external IKEEXT_NTLM_V2_AUTHENTICATION0 ntlmV2Authentication;

  external IKEEXT_CERTIFICATE_AUTHENTICATION2 sslAuthentication;

  external IKEEXT_IPV6_CGA_AUTHENTICATION0 cgaAuthentication;

  external IKEEXT_EAP_AUTHENTICATION0 eapAuthentication;
}

extension IKEEXT_AUTHENTICATION_METHOD2_Extension
    on IKEEXT_AUTHENTICATION_METHOD2 {
  IKEEXT_PRESHARED_KEY_AUTHENTICATION1 get presharedKeyAuthentication =>
      this.Anonymous.presharedKeyAuthentication;
  set presharedKeyAuthentication(IKEEXT_PRESHARED_KEY_AUTHENTICATION1 value) =>
      this.Anonymous.presharedKeyAuthentication = value;

  IKEEXT_CERTIFICATE_AUTHENTICATION2 get certificateAuthentication =>
      this.Anonymous.certificateAuthentication;
  set certificateAuthentication(IKEEXT_CERTIFICATE_AUTHENTICATION2 value) =>
      this.Anonymous.certificateAuthentication = value;

  IKEEXT_KERBEROS_AUTHENTICATION1 get kerberosAuthentication =>
      this.Anonymous.kerberosAuthentication;
  set kerberosAuthentication(IKEEXT_KERBEROS_AUTHENTICATION1 value) =>
      this.Anonymous.kerberosAuthentication = value;

  IKEEXT_RESERVED_AUTHENTICATION0 get reservedAuthentication =>
      this.Anonymous.reservedAuthentication;
  set reservedAuthentication(IKEEXT_RESERVED_AUTHENTICATION0 value) =>
      this.Anonymous.reservedAuthentication = value;

  IKEEXT_NTLM_V2_AUTHENTICATION0 get ntlmV2Authentication =>
      this.Anonymous.ntlmV2Authentication;
  set ntlmV2Authentication(IKEEXT_NTLM_V2_AUTHENTICATION0 value) =>
      this.Anonymous.ntlmV2Authentication = value;

  IKEEXT_CERTIFICATE_AUTHENTICATION2 get sslAuthentication =>
      this.Anonymous.sslAuthentication;
  set sslAuthentication(IKEEXT_CERTIFICATE_AUTHENTICATION2 value) =>
      this.Anonymous.sslAuthentication = value;

  IKEEXT_IPV6_CGA_AUTHENTICATION0 get cgaAuthentication =>
      this.Anonymous.cgaAuthentication;
  set cgaAuthentication(IKEEXT_IPV6_CGA_AUTHENTICATION0 value) =>
      this.Anonymous.cgaAuthentication = value;

  IKEEXT_EAP_AUTHENTICATION0 get eapAuthentication =>
      this.Anonymous.eapAuthentication;
  set eapAuthentication(IKEEXT_EAP_AUTHENTICATION0 value) =>
      this.Anonymous.eapAuthentication = value;
}

/// {@category Struct}
class IKEEXT_CERTIFICATE_AUTHENTICATION0 extends Struct {
  @Int32()
  external int inboundConfigType;

  external _IKEEXT_CERTIFICATE_AUTHENTICATION0__Anonymous1_e__Union Anonymous1;

  @Int32()
  external int outboundConfigType;

  external _IKEEXT_CERTIFICATE_AUTHENTICATION0__Anonymous2_e__Union Anonymous2;

  @Uint32()
  external int flags;
}

/// {@category Struct}
class _IKEEXT_CERTIFICATE_AUTHENTICATION0__Anonymous1_e__Union extends Union {
  external _IKEEXT_CERTIFICATE_AUTHENTICATION0__Anonymous1_e__Union__Anonymous_e__Struct
      Anonymous;

  external Pointer<IKEEXT_CERT_ROOT_CONFIG0> inboundEnterpriseStoreConfig;

  external Pointer<IKEEXT_CERT_ROOT_CONFIG0> inboundTrustedRootStoreConfig;
}

/// {@category Struct}
class _IKEEXT_CERTIFICATE_AUTHENTICATION0__Anonymous1_e__Union__Anonymous_e__Struct
    extends Struct {
  @Uint32()
  external int inboundRootArraySize;

  external Pointer<IKEEXT_CERT_ROOT_CONFIG0> inboundRootArray;
}

extension IKEEXT_CERTIFICATE_AUTHENTICATION0__Anonymous1_e__Union_Extension
    on IKEEXT_CERTIFICATE_AUTHENTICATION0 {
  int get inboundRootArraySize =>
      this.Anonymous1.Anonymous.inboundRootArraySize;
  set inboundRootArraySize(int value) =>
      this.Anonymous1.Anonymous.inboundRootArraySize = value;

  Pointer<IKEEXT_CERT_ROOT_CONFIG0> get inboundRootArray =>
      this.Anonymous1.Anonymous.inboundRootArray;
  set inboundRootArray(Pointer<IKEEXT_CERT_ROOT_CONFIG0> value) =>
      this.Anonymous1.Anonymous.inboundRootArray = value;
}

extension IKEEXT_CERTIFICATE_AUTHENTICATION0_Extension
    on IKEEXT_CERTIFICATE_AUTHENTICATION0 {
  _IKEEXT_CERTIFICATE_AUTHENTICATION0__Anonymous1_e__Union__Anonymous_e__Struct
      get Anonymous => this.Anonymous1.Anonymous;
  set Anonymous(
          _IKEEXT_CERTIFICATE_AUTHENTICATION0__Anonymous1_e__Union__Anonymous_e__Struct
              value) =>
      this.Anonymous1.Anonymous = value;

  Pointer<IKEEXT_CERT_ROOT_CONFIG0> get inboundEnterpriseStoreConfig =>
      this.Anonymous1.inboundEnterpriseStoreConfig;
  set inboundEnterpriseStoreConfig(Pointer<IKEEXT_CERT_ROOT_CONFIG0> value) =>
      this.Anonymous1.inboundEnterpriseStoreConfig = value;

  Pointer<IKEEXT_CERT_ROOT_CONFIG0> get inboundTrustedRootStoreConfig =>
      this.Anonymous1.inboundTrustedRootStoreConfig;
  set inboundTrustedRootStoreConfig(Pointer<IKEEXT_CERT_ROOT_CONFIG0> value) =>
      this.Anonymous1.inboundTrustedRootStoreConfig = value;
}

/// {@category Struct}
class _IKEEXT_CERTIFICATE_AUTHENTICATION0__Anonymous2_e__Union extends Union {
  external _IKEEXT_CERTIFICATE_AUTHENTICATION0__Anonymous2_e__Union__Anonymous_e__Struct
      Anonymous;

  external Pointer<IKEEXT_CERT_ROOT_CONFIG0> outboundEnterpriseStoreConfig;

  external Pointer<IKEEXT_CERT_ROOT_CONFIG0> outboundTrustedRootStoreConfig;
}

/// {@category Struct}
class _IKEEXT_CERTIFICATE_AUTHENTICATION0__Anonymous2_e__Union__Anonymous_e__Struct
    extends Struct {
  @Uint32()
  external int outboundRootArraySize;

  external Pointer<IKEEXT_CERT_ROOT_CONFIG0> outboundRootArray;
}

extension IKEEXT_CERTIFICATE_AUTHENTICATION0__Anonymous2_e__Union_Extension
    on IKEEXT_CERTIFICATE_AUTHENTICATION0 {
  int get outboundRootArraySize =>
      this.Anonymous2.Anonymous.outboundRootArraySize;
  set outboundRootArraySize(int value) =>
      this.Anonymous2.Anonymous.outboundRootArraySize = value;

  Pointer<IKEEXT_CERT_ROOT_CONFIG0> get outboundRootArray =>
      this.Anonymous2.Anonymous.outboundRootArray;
  set outboundRootArray(Pointer<IKEEXT_CERT_ROOT_CONFIG0> value) =>
      this.Anonymous2.Anonymous.outboundRootArray = value;
}

extension IKEEXT_CERTIFICATE_AUTHENTICATION0_Extension_1
    on IKEEXT_CERTIFICATE_AUTHENTICATION0 {
  _IKEEXT_CERTIFICATE_AUTHENTICATION0__Anonymous2_e__Union__Anonymous_e__Struct
      get Anonymous => this.Anonymous2.Anonymous;
  set Anonymous(
          _IKEEXT_CERTIFICATE_AUTHENTICATION0__Anonymous2_e__Union__Anonymous_e__Struct
              value) =>
      this.Anonymous2.Anonymous = value;

  Pointer<IKEEXT_CERT_ROOT_CONFIG0> get outboundEnterpriseStoreConfig =>
      this.Anonymous2.outboundEnterpriseStoreConfig;
  set outboundEnterpriseStoreConfig(Pointer<IKEEXT_CERT_ROOT_CONFIG0> value) =>
      this.Anonymous2.outboundEnterpriseStoreConfig = value;

  Pointer<IKEEXT_CERT_ROOT_CONFIG0> get outboundTrustedRootStoreConfig =>
      this.Anonymous2.outboundTrustedRootStoreConfig;
  set outboundTrustedRootStoreConfig(Pointer<IKEEXT_CERT_ROOT_CONFIG0> value) =>
      this.Anonymous2.outboundTrustedRootStoreConfig = value;
}

/// {@category Struct}
class IKEEXT_CERTIFICATE_AUTHENTICATION1 extends Struct {
  @Int32()
  external int inboundConfigType;

  external _IKEEXT_CERTIFICATE_AUTHENTICATION1__Anonymous1_e__Union Anonymous1;

  @Int32()
  external int outboundConfigType;

  external _IKEEXT_CERTIFICATE_AUTHENTICATION1__Anonymous2_e__Union Anonymous2;

  @Uint32()
  external int flags;

  external FWP_BYTE_BLOB localCertLocationUrl;
}

/// {@category Struct}
class _IKEEXT_CERTIFICATE_AUTHENTICATION1__Anonymous1_e__Union extends Union {
  external _IKEEXT_CERTIFICATE_AUTHENTICATION1__Anonymous1_e__Union__Anonymous_e__Struct
      Anonymous;

  external Pointer<IKEEXT_CERT_ROOT_CONFIG0> inboundEnterpriseStoreConfig;

  external Pointer<IKEEXT_CERT_ROOT_CONFIG0> inboundTrustedRootStoreConfig;
}

/// {@category Struct}
class _IKEEXT_CERTIFICATE_AUTHENTICATION1__Anonymous1_e__Union__Anonymous_e__Struct
    extends Struct {
  @Uint32()
  external int inboundRootArraySize;

  external Pointer<IKEEXT_CERT_ROOT_CONFIG0> inboundRootArray;
}

extension IKEEXT_CERTIFICATE_AUTHENTICATION1__Anonymous1_e__Union_Extension
    on IKEEXT_CERTIFICATE_AUTHENTICATION1 {
  int get inboundRootArraySize =>
      this.Anonymous1.Anonymous.inboundRootArraySize;
  set inboundRootArraySize(int value) =>
      this.Anonymous1.Anonymous.inboundRootArraySize = value;

  Pointer<IKEEXT_CERT_ROOT_CONFIG0> get inboundRootArray =>
      this.Anonymous1.Anonymous.inboundRootArray;
  set inboundRootArray(Pointer<IKEEXT_CERT_ROOT_CONFIG0> value) =>
      this.Anonymous1.Anonymous.inboundRootArray = value;
}

extension IKEEXT_CERTIFICATE_AUTHENTICATION1_Extension
    on IKEEXT_CERTIFICATE_AUTHENTICATION1 {
  _IKEEXT_CERTIFICATE_AUTHENTICATION1__Anonymous1_e__Union__Anonymous_e__Struct
      get Anonymous => this.Anonymous1.Anonymous;
  set Anonymous(
          _IKEEXT_CERTIFICATE_AUTHENTICATION1__Anonymous1_e__Union__Anonymous_e__Struct
              value) =>
      this.Anonymous1.Anonymous = value;

  Pointer<IKEEXT_CERT_ROOT_CONFIG0> get inboundEnterpriseStoreConfig =>
      this.Anonymous1.inboundEnterpriseStoreConfig;
  set inboundEnterpriseStoreConfig(Pointer<IKEEXT_CERT_ROOT_CONFIG0> value) =>
      this.Anonymous1.inboundEnterpriseStoreConfig = value;

  Pointer<IKEEXT_CERT_ROOT_CONFIG0> get inboundTrustedRootStoreConfig =>
      this.Anonymous1.inboundTrustedRootStoreConfig;
  set inboundTrustedRootStoreConfig(Pointer<IKEEXT_CERT_ROOT_CONFIG0> value) =>
      this.Anonymous1.inboundTrustedRootStoreConfig = value;
}

/// {@category Struct}
class _IKEEXT_CERTIFICATE_AUTHENTICATION1__Anonymous2_e__Union extends Union {
  external _IKEEXT_CERTIFICATE_AUTHENTICATION1__Anonymous2_e__Union__Anonymous_e__Struct
      Anonymous;

  external Pointer<IKEEXT_CERT_ROOT_CONFIG0> outboundEnterpriseStoreConfig;

  external Pointer<IKEEXT_CERT_ROOT_CONFIG0> outboundTrustedRootStoreConfig;
}

/// {@category Struct}
class _IKEEXT_CERTIFICATE_AUTHENTICATION1__Anonymous2_e__Union__Anonymous_e__Struct
    extends Struct {
  @Uint32()
  external int outboundRootArraySize;

  external Pointer<IKEEXT_CERT_ROOT_CONFIG0> outboundRootArray;
}

extension IKEEXT_CERTIFICATE_AUTHENTICATION1__Anonymous2_e__Union_Extension
    on IKEEXT_CERTIFICATE_AUTHENTICATION1 {
  int get outboundRootArraySize =>
      this.Anonymous2.Anonymous.outboundRootArraySize;
  set outboundRootArraySize(int value) =>
      this.Anonymous2.Anonymous.outboundRootArraySize = value;

  Pointer<IKEEXT_CERT_ROOT_CONFIG0> get outboundRootArray =>
      this.Anonymous2.Anonymous.outboundRootArray;
  set outboundRootArray(Pointer<IKEEXT_CERT_ROOT_CONFIG0> value) =>
      this.Anonymous2.Anonymous.outboundRootArray = value;
}

extension IKEEXT_CERTIFICATE_AUTHENTICATION1_Extension_1
    on IKEEXT_CERTIFICATE_AUTHENTICATION1 {
  _IKEEXT_CERTIFICATE_AUTHENTICATION1__Anonymous2_e__Union__Anonymous_e__Struct
      get Anonymous => this.Anonymous2.Anonymous;
  set Anonymous(
          _IKEEXT_CERTIFICATE_AUTHENTICATION1__Anonymous2_e__Union__Anonymous_e__Struct
              value) =>
      this.Anonymous2.Anonymous = value;

  Pointer<IKEEXT_CERT_ROOT_CONFIG0> get outboundEnterpriseStoreConfig =>
      this.Anonymous2.outboundEnterpriseStoreConfig;
  set outboundEnterpriseStoreConfig(Pointer<IKEEXT_CERT_ROOT_CONFIG0> value) =>
      this.Anonymous2.outboundEnterpriseStoreConfig = value;

  Pointer<IKEEXT_CERT_ROOT_CONFIG0> get outboundTrustedRootStoreConfig =>
      this.Anonymous2.outboundTrustedRootStoreConfig;
  set outboundTrustedRootStoreConfig(Pointer<IKEEXT_CERT_ROOT_CONFIG0> value) =>
      this.Anonymous2.outboundTrustedRootStoreConfig = value;
}

/// {@category Struct}
class IKEEXT_CERTIFICATE_AUTHENTICATION2 extends Struct {
  @Int32()
  external int inboundConfigType;

  external _IKEEXT_CERTIFICATE_AUTHENTICATION2__Anonymous1_e__Union Anonymous1;

  @Int32()
  external int outboundConfigType;

  external _IKEEXT_CERTIFICATE_AUTHENTICATION2__Anonymous2_e__Union Anonymous2;

  @Uint32()
  external int flags;

  external FWP_BYTE_BLOB localCertLocationUrl;
}

/// {@category Struct}
class _IKEEXT_CERTIFICATE_AUTHENTICATION2__Anonymous1_e__Union extends Union {
  external _IKEEXT_CERTIFICATE_AUTHENTICATION2__Anonymous1_e__Union__Anonymous1_e__Struct
      Anonymous1;

  external _IKEEXT_CERTIFICATE_AUTHENTICATION2__Anonymous1_e__Union__Anonymous2_e__Struct
      Anonymous2;

  external _IKEEXT_CERTIFICATE_AUTHENTICATION2__Anonymous1_e__Union__Anonymous3_e__Struct
      Anonymous3;
}

/// {@category Struct}
class _IKEEXT_CERTIFICATE_AUTHENTICATION2__Anonymous1_e__Union__Anonymous1_e__Struct
    extends Struct {
  @Uint32()
  external int inboundRootArraySize;

  external Pointer<IKEEXT_CERTIFICATE_CRITERIA0> inboundRootCriteria;
}

extension IKEEXT_CERTIFICATE_AUTHENTICATION2__Anonymous1_e__Union_Extension
    on IKEEXT_CERTIFICATE_AUTHENTICATION2 {
  int get inboundRootArraySize =>
      this.Anonymous1.Anonymous1.inboundRootArraySize;
  set inboundRootArraySize(int value) =>
      this.Anonymous1.Anonymous1.inboundRootArraySize = value;

  Pointer<IKEEXT_CERTIFICATE_CRITERIA0> get inboundRootCriteria =>
      this.Anonymous1.Anonymous1.inboundRootCriteria;
  set inboundRootCriteria(Pointer<IKEEXT_CERTIFICATE_CRITERIA0> value) =>
      this.Anonymous1.Anonymous1.inboundRootCriteria = value;
}

/// {@category Struct}
class _IKEEXT_CERTIFICATE_AUTHENTICATION2__Anonymous1_e__Union__Anonymous2_e__Struct
    extends Struct {
  @Uint32()
  external int inboundEnterpriseStoreArraySize;

  external Pointer<IKEEXT_CERTIFICATE_CRITERIA0> inboundEnterpriseStoreCriteria;
}

extension IKEEXT_CERTIFICATE_AUTHENTICATION2__Anonymous1_e__Union_Extension_1
    on IKEEXT_CERTIFICATE_AUTHENTICATION2 {
  int get inboundEnterpriseStoreArraySize =>
      this.Anonymous1.Anonymous2.inboundEnterpriseStoreArraySize;
  set inboundEnterpriseStoreArraySize(int value) =>
      this.Anonymous1.Anonymous2.inboundEnterpriseStoreArraySize = value;

  Pointer<IKEEXT_CERTIFICATE_CRITERIA0> get inboundEnterpriseStoreCriteria =>
      this.Anonymous1.Anonymous2.inboundEnterpriseStoreCriteria;
  set inboundEnterpriseStoreCriteria(
          Pointer<IKEEXT_CERTIFICATE_CRITERIA0> value) =>
      this.Anonymous1.Anonymous2.inboundEnterpriseStoreCriteria = value;
}

/// {@category Struct}
class _IKEEXT_CERTIFICATE_AUTHENTICATION2__Anonymous1_e__Union__Anonymous3_e__Struct
    extends Struct {
  @Uint32()
  external int inboundRootStoreArraySize;

  external Pointer<IKEEXT_CERTIFICATE_CRITERIA0>
      inboundTrustedRootStoreCriteria;
}

extension IKEEXT_CERTIFICATE_AUTHENTICATION2__Anonymous1_e__Union_Extension_2
    on IKEEXT_CERTIFICATE_AUTHENTICATION2 {
  int get inboundRootStoreArraySize =>
      this.Anonymous1.Anonymous3.inboundRootStoreArraySize;
  set inboundRootStoreArraySize(int value) =>
      this.Anonymous1.Anonymous3.inboundRootStoreArraySize = value;

  Pointer<IKEEXT_CERTIFICATE_CRITERIA0> get inboundTrustedRootStoreCriteria =>
      this.Anonymous1.Anonymous3.inboundTrustedRootStoreCriteria;
  set inboundTrustedRootStoreCriteria(
          Pointer<IKEEXT_CERTIFICATE_CRITERIA0> value) =>
      this.Anonymous1.Anonymous3.inboundTrustedRootStoreCriteria = value;
}

extension IKEEXT_CERTIFICATE_AUTHENTICATION2_Extension
    on IKEEXT_CERTIFICATE_AUTHENTICATION2 {
  _IKEEXT_CERTIFICATE_AUTHENTICATION2__Anonymous1_e__Union__Anonymous1_e__Struct
      get Anonymous1 => this.Anonymous1.Anonymous1;
  set Anonymous1(
          _IKEEXT_CERTIFICATE_AUTHENTICATION2__Anonymous1_e__Union__Anonymous1_e__Struct
              value) =>
      this.Anonymous1.Anonymous1 = value;

  _IKEEXT_CERTIFICATE_AUTHENTICATION2__Anonymous1_e__Union__Anonymous2_e__Struct
      get Anonymous2 => this.Anonymous1.Anonymous2;
  set Anonymous2(
          _IKEEXT_CERTIFICATE_AUTHENTICATION2__Anonymous1_e__Union__Anonymous2_e__Struct
              value) =>
      this.Anonymous1.Anonymous2 = value;

  _IKEEXT_CERTIFICATE_AUTHENTICATION2__Anonymous1_e__Union__Anonymous3_e__Struct
      get Anonymous3 => this.Anonymous1.Anonymous3;
  set Anonymous3(
          _IKEEXT_CERTIFICATE_AUTHENTICATION2__Anonymous1_e__Union__Anonymous3_e__Struct
              value) =>
      this.Anonymous1.Anonymous3 = value;
}

/// {@category Struct}
class _IKEEXT_CERTIFICATE_AUTHENTICATION2__Anonymous2_e__Union extends Union {
  external _IKEEXT_CERTIFICATE_AUTHENTICATION2__Anonymous2_e__Union__Anonymous1_e__Struct
      Anonymous1;

  external _IKEEXT_CERTIFICATE_AUTHENTICATION2__Anonymous2_e__Union__Anonymous2_e__Struct
      Anonymous2;

  external _IKEEXT_CERTIFICATE_AUTHENTICATION2__Anonymous2_e__Union__Anonymous3_e__Struct
      Anonymous3;
}

/// {@category Struct}
class _IKEEXT_CERTIFICATE_AUTHENTICATION2__Anonymous2_e__Union__Anonymous1_e__Struct
    extends Struct {
  @Uint32()
  external int outboundRootArraySize;

  external Pointer<IKEEXT_CERTIFICATE_CRITERIA0> outboundRootCriteria;
}

extension IKEEXT_CERTIFICATE_AUTHENTICATION2__Anonymous2_e__Union_Extension
    on IKEEXT_CERTIFICATE_AUTHENTICATION2 {
  int get outboundRootArraySize =>
      this.Anonymous2.Anonymous1.outboundRootArraySize;
  set outboundRootArraySize(int value) =>
      this.Anonymous2.Anonymous1.outboundRootArraySize = value;

  Pointer<IKEEXT_CERTIFICATE_CRITERIA0> get outboundRootCriteria =>
      this.Anonymous2.Anonymous1.outboundRootCriteria;
  set outboundRootCriteria(Pointer<IKEEXT_CERTIFICATE_CRITERIA0> value) =>
      this.Anonymous2.Anonymous1.outboundRootCriteria = value;
}

/// {@category Struct}
class _IKEEXT_CERTIFICATE_AUTHENTICATION2__Anonymous2_e__Union__Anonymous2_e__Struct
    extends Struct {
  @Uint32()
  external int outboundEnterpriseStoreArraySize;

  external Pointer<IKEEXT_CERTIFICATE_CRITERIA0>
      outboundEnterpriseStoreCriteria;
}

extension IKEEXT_CERTIFICATE_AUTHENTICATION2__Anonymous2_e__Union_Extension_1
    on IKEEXT_CERTIFICATE_AUTHENTICATION2 {
  int get outboundEnterpriseStoreArraySize =>
      this.Anonymous2.Anonymous2.outboundEnterpriseStoreArraySize;
  set outboundEnterpriseStoreArraySize(int value) =>
      this.Anonymous2.Anonymous2.outboundEnterpriseStoreArraySize = value;

  Pointer<IKEEXT_CERTIFICATE_CRITERIA0> get outboundEnterpriseStoreCriteria =>
      this.Anonymous2.Anonymous2.outboundEnterpriseStoreCriteria;
  set outboundEnterpriseStoreCriteria(
          Pointer<IKEEXT_CERTIFICATE_CRITERIA0> value) =>
      this.Anonymous2.Anonymous2.outboundEnterpriseStoreCriteria = value;
}

/// {@category Struct}
class _IKEEXT_CERTIFICATE_AUTHENTICATION2__Anonymous2_e__Union__Anonymous3_e__Struct
    extends Struct {
  @Uint32()
  external int outboundRootStoreArraySize;

  external Pointer<IKEEXT_CERTIFICATE_CRITERIA0>
      outboundTrustedRootStoreCriteria;
}

extension IKEEXT_CERTIFICATE_AUTHENTICATION2__Anonymous2_e__Union_Extension_2
    on IKEEXT_CERTIFICATE_AUTHENTICATION2 {
  int get outboundRootStoreArraySize =>
      this.Anonymous2.Anonymous3.outboundRootStoreArraySize;
  set outboundRootStoreArraySize(int value) =>
      this.Anonymous2.Anonymous3.outboundRootStoreArraySize = value;

  Pointer<IKEEXT_CERTIFICATE_CRITERIA0> get outboundTrustedRootStoreCriteria =>
      this.Anonymous2.Anonymous3.outboundTrustedRootStoreCriteria;
  set outboundTrustedRootStoreCriteria(
          Pointer<IKEEXT_CERTIFICATE_CRITERIA0> value) =>
      this.Anonymous2.Anonymous3.outboundTrustedRootStoreCriteria = value;
}

extension IKEEXT_CERTIFICATE_AUTHENTICATION2_Extension_1
    on IKEEXT_CERTIFICATE_AUTHENTICATION2 {
  _IKEEXT_CERTIFICATE_AUTHENTICATION2__Anonymous2_e__Union__Anonymous1_e__Struct
      get Anonymous1 => this.Anonymous2.Anonymous1;
  set Anonymous1(
          _IKEEXT_CERTIFICATE_AUTHENTICATION2__Anonymous2_e__Union__Anonymous1_e__Struct
              value) =>
      this.Anonymous2.Anonymous1 = value;

  _IKEEXT_CERTIFICATE_AUTHENTICATION2__Anonymous2_e__Union__Anonymous2_e__Struct
      get Anonymous2 => this.Anonymous2.Anonymous2;
  set Anonymous2(
          _IKEEXT_CERTIFICATE_AUTHENTICATION2__Anonymous2_e__Union__Anonymous2_e__Struct
              value) =>
      this.Anonymous2.Anonymous2 = value;

  _IKEEXT_CERTIFICATE_AUTHENTICATION2__Anonymous2_e__Union__Anonymous3_e__Struct
      get Anonymous3 => this.Anonymous2.Anonymous3;
  set Anonymous3(
          _IKEEXT_CERTIFICATE_AUTHENTICATION2__Anonymous2_e__Union__Anonymous3_e__Struct
              value) =>
      this.Anonymous2.Anonymous3 = value;
}

/// {@category Struct}
class IKEEXT_CERTIFICATE_CREDENTIAL0 extends Struct {
  external FWP_BYTE_BLOB subjectName;

  external FWP_BYTE_BLOB certHash;

  @Uint32()
  external int flags;
}

/// {@category Struct}
class IKEEXT_CERTIFICATE_CREDENTIAL1 extends Struct {
  external FWP_BYTE_BLOB subjectName;

  external FWP_BYTE_BLOB certHash;

  @Uint32()
  external int flags;

  external FWP_BYTE_BLOB certificate;
}

/// {@category Struct}
class IKEEXT_CERTIFICATE_CRITERIA0 extends Struct {
  external FWP_BYTE_BLOB certData;

  external FWP_BYTE_BLOB certHash;

  external Pointer<IKEEXT_CERT_EKUS0> eku;

  external Pointer<IKEEXT_CERT_NAME0> name;

  @Uint32()
  external int flags;
}

/// {@category Struct}
class IKEEXT_CERT_EKUS0 extends Struct {
  @Uint32()
  external int numEku;

  external Pointer<Pointer<Utf8>> eku;
}

/// {@category Struct}
class IKEEXT_CERT_NAME0 extends Struct {
  @Int32()
  external int nameType;

  external Pointer<Utf16> certName;
}

/// {@category Struct}
class IKEEXT_CERT_ROOT_CONFIG0 extends Struct {
  external FWP_BYTE_BLOB certData;

  @Uint32()
  external int flags;
}

/// {@category Struct}
class IKEEXT_CIPHER_ALGORITHM0 extends Struct {
  @Int32()
  external int algoIdentifier;

  @Uint32()
  external int keyLen;

  @Uint32()
  external int rounds;
}

/// {@category Struct}
class IKEEXT_COMMON_STATISTICS0 extends Struct {
  external IKEEXT_IP_VERSION_SPECIFIC_COMMON_STATISTICS0 v4Statistics;

  external IKEEXT_IP_VERSION_SPECIFIC_COMMON_STATISTICS0 v6Statistics;

  @Uint32()
  external int totalPacketsReceived;

  @Uint32()
  external int totalInvalidPacketsReceived;

  @Uint32()
  external int currentQueuedWorkitems;
}

/// {@category Struct}
class IKEEXT_COMMON_STATISTICS1 extends Struct {
  external IKEEXT_IP_VERSION_SPECIFIC_COMMON_STATISTICS1 v4Statistics;

  external IKEEXT_IP_VERSION_SPECIFIC_COMMON_STATISTICS1 v6Statistics;

  @Uint32()
  external int totalPacketsReceived;

  @Uint32()
  external int totalInvalidPacketsReceived;

  @Uint32()
  external int currentQueuedWorkitems;
}

/// {@category Struct}
class IKEEXT_COOKIE_PAIR0 extends Struct {
  @Uint64()
  external int initiator;

  @Uint64()
  external int responder;
}

/// {@category Struct}
class IKEEXT_CREDENTIAL0 extends Struct {
  @Int32()
  external int authenticationMethodType;

  @Int32()
  external int impersonationType;

  external _IKEEXT_CREDENTIAL0__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _IKEEXT_CREDENTIAL0__Anonymous_e__Union extends Union {
  external Pointer<IKEEXT_PRESHARED_KEY_AUTHENTICATION0> presharedKey;

  external Pointer<IKEEXT_CERTIFICATE_CREDENTIAL0> certificate;

  external Pointer<IKEEXT_NAME_CREDENTIAL0> name;
}

extension IKEEXT_CREDENTIAL0_Extension on IKEEXT_CREDENTIAL0 {
  Pointer<IKEEXT_PRESHARED_KEY_AUTHENTICATION0> get presharedKey =>
      this.Anonymous.presharedKey;
  set presharedKey(Pointer<IKEEXT_PRESHARED_KEY_AUTHENTICATION0> value) =>
      this.Anonymous.presharedKey = value;

  Pointer<IKEEXT_CERTIFICATE_CREDENTIAL0> get certificate =>
      this.Anonymous.certificate;
  set certificate(Pointer<IKEEXT_CERTIFICATE_CREDENTIAL0> value) =>
      this.Anonymous.certificate = value;

  Pointer<IKEEXT_NAME_CREDENTIAL0> get name => this.Anonymous.name;
  set name(Pointer<IKEEXT_NAME_CREDENTIAL0> value) =>
      this.Anonymous.name = value;
}

/// {@category Struct}
class IKEEXT_CREDENTIAL1 extends Struct {
  @Int32()
  external int authenticationMethodType;

  @Int32()
  external int impersonationType;

  external _IKEEXT_CREDENTIAL1__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _IKEEXT_CREDENTIAL1__Anonymous_e__Union extends Union {
  external Pointer<IKEEXT_PRESHARED_KEY_AUTHENTICATION1> presharedKey;

  external Pointer<IKEEXT_CERTIFICATE_CREDENTIAL1> certificate;

  external Pointer<IKEEXT_NAME_CREDENTIAL0> name;
}

extension IKEEXT_CREDENTIAL1_Extension on IKEEXT_CREDENTIAL1 {
  Pointer<IKEEXT_PRESHARED_KEY_AUTHENTICATION1> get presharedKey =>
      this.Anonymous.presharedKey;
  set presharedKey(Pointer<IKEEXT_PRESHARED_KEY_AUTHENTICATION1> value) =>
      this.Anonymous.presharedKey = value;

  Pointer<IKEEXT_CERTIFICATE_CREDENTIAL1> get certificate =>
      this.Anonymous.certificate;
  set certificate(Pointer<IKEEXT_CERTIFICATE_CREDENTIAL1> value) =>
      this.Anonymous.certificate = value;

  Pointer<IKEEXT_NAME_CREDENTIAL0> get name => this.Anonymous.name;
  set name(Pointer<IKEEXT_NAME_CREDENTIAL0> value) =>
      this.Anonymous.name = value;
}

/// {@category Struct}
class IKEEXT_CREDENTIAL2 extends Struct {
  @Int32()
  external int authenticationMethodType;

  @Int32()
  external int impersonationType;

  external _IKEEXT_CREDENTIAL2__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _IKEEXT_CREDENTIAL2__Anonymous_e__Union extends Union {
  external Pointer<IKEEXT_PRESHARED_KEY_AUTHENTICATION1> presharedKey;

  external Pointer<IKEEXT_CERTIFICATE_CREDENTIAL1> certificate;

  external Pointer<IKEEXT_NAME_CREDENTIAL0> name;
}

extension IKEEXT_CREDENTIAL2_Extension on IKEEXT_CREDENTIAL2 {
  Pointer<IKEEXT_PRESHARED_KEY_AUTHENTICATION1> get presharedKey =>
      this.Anonymous.presharedKey;
  set presharedKey(Pointer<IKEEXT_PRESHARED_KEY_AUTHENTICATION1> value) =>
      this.Anonymous.presharedKey = value;

  Pointer<IKEEXT_CERTIFICATE_CREDENTIAL1> get certificate =>
      this.Anonymous.certificate;
  set certificate(Pointer<IKEEXT_CERTIFICATE_CREDENTIAL1> value) =>
      this.Anonymous.certificate = value;

  Pointer<IKEEXT_NAME_CREDENTIAL0> get name => this.Anonymous.name;
  set name(Pointer<IKEEXT_NAME_CREDENTIAL0> value) =>
      this.Anonymous.name = value;
}

/// {@category Struct}
class IKEEXT_CREDENTIALS0 extends Struct {
  @Uint32()
  external int numCredentials;

  external Pointer<IKEEXT_CREDENTIAL_PAIR0> credentials;
}

/// {@category Struct}
class IKEEXT_CREDENTIALS1 extends Struct {
  @Uint32()
  external int numCredentials;

  external Pointer<IKEEXT_CREDENTIAL_PAIR1> credentials;
}

/// {@category Struct}
class IKEEXT_CREDENTIALS2 extends Struct {
  @Uint32()
  external int numCredentials;

  external Pointer<IKEEXT_CREDENTIAL_PAIR2> credentials;
}

/// {@category Struct}
class IKEEXT_CREDENTIAL_PAIR0 extends Struct {
  external IKEEXT_CREDENTIAL0 localCredentials;

  external IKEEXT_CREDENTIAL0 peerCredentials;
}

/// {@category Struct}
class IKEEXT_CREDENTIAL_PAIR1 extends Struct {
  external IKEEXT_CREDENTIAL1 localCredentials;

  external IKEEXT_CREDENTIAL1 peerCredentials;
}

/// {@category Struct}
class IKEEXT_CREDENTIAL_PAIR2 extends Struct {
  external IKEEXT_CREDENTIAL2 localCredentials;

  external IKEEXT_CREDENTIAL2 peerCredentials;
}

/// {@category Struct}
class IKEEXT_EAP_AUTHENTICATION0 extends Struct {
  @Uint32()
  external int flags;
}

/// {@category Struct}
class IKEEXT_EM_POLICY0 extends Struct {
  @Uint32()
  external int numAuthenticationMethods;

  external Pointer<IKEEXT_AUTHENTICATION_METHOD0> authenticationMethods;

  @Int32()
  external int initiatorImpersonationType;
}

/// {@category Struct}
class IKEEXT_EM_POLICY1 extends Struct {
  @Uint32()
  external int numAuthenticationMethods;

  external Pointer<IKEEXT_AUTHENTICATION_METHOD1> authenticationMethods;

  @Int32()
  external int initiatorImpersonationType;
}

/// {@category Struct}
class IKEEXT_EM_POLICY2 extends Struct {
  @Uint32()
  external int numAuthenticationMethods;

  external Pointer<IKEEXT_AUTHENTICATION_METHOD2> authenticationMethods;

  @Int32()
  external int initiatorImpersonationType;
}

/// {@category Struct}
class IKEEXT_INTEGRITY_ALGORITHM0 extends Struct {
  @Int32()
  external int algoIdentifier;
}

/// {@category Struct}
class IKEEXT_IPV6_CGA_AUTHENTICATION0 extends Struct {
  external Pointer<Utf16> keyContainerName;

  external Pointer<Utf16> cspName;

  @Uint32()
  external int cspType;

  external FWP_BYTE_ARRAY16 cgaModifier;

  @Uint8()
  external int cgaCollisionCount;
}

/// {@category Struct}
class IKEEXT_IP_VERSION_SPECIFIC_COMMON_STATISTICS0 extends Struct {
  @Uint32()
  external int totalSocketReceiveFailures;

  @Uint32()
  external int totalSocketSendFailures;
}

/// {@category Struct}
class IKEEXT_IP_VERSION_SPECIFIC_COMMON_STATISTICS1 extends Struct {
  @Uint32()
  external int totalSocketReceiveFailures;

  @Uint32()
  external int totalSocketSendFailures;
}

/// {@category Struct}
class IKEEXT_IP_VERSION_SPECIFIC_KEYMODULE_STATISTICS0 extends Struct {
  @Uint32()
  external int currentActiveMainModes;

  @Uint32()
  external int totalMainModesStarted;

  @Uint32()
  external int totalSuccessfulMainModes;

  @Uint32()
  external int totalFailedMainModes;

  @Uint32()
  external int totalResponderMainModes;

  @Uint32()
  external int currentNewResponderMainModes;

  @Uint32()
  external int currentActiveQuickModes;

  @Uint32()
  external int totalQuickModesStarted;

  @Uint32()
  external int totalSuccessfulQuickModes;

  @Uint32()
  external int totalFailedQuickModes;

  @Uint32()
  external int totalAcquires;

  @Uint32()
  external int totalReinitAcquires;

  @Uint32()
  external int currentActiveExtendedModes;

  @Uint32()
  external int totalExtendedModesStarted;

  @Uint32()
  external int totalSuccessfulExtendedModes;

  @Uint32()
  external int totalFailedExtendedModes;

  @Uint32()
  external int totalImpersonationExtendedModes;

  @Uint32()
  external int totalImpersonationMainModes;
}

/// {@category Struct}
class IKEEXT_IP_VERSION_SPECIFIC_KEYMODULE_STATISTICS1 extends Struct {
  @Uint32()
  external int currentActiveMainModes;

  @Uint32()
  external int totalMainModesStarted;

  @Uint32()
  external int totalSuccessfulMainModes;

  @Uint32()
  external int totalFailedMainModes;

  @Uint32()
  external int totalResponderMainModes;

  @Uint32()
  external int currentNewResponderMainModes;

  @Uint32()
  external int currentActiveQuickModes;

  @Uint32()
  external int totalQuickModesStarted;

  @Uint32()
  external int totalSuccessfulQuickModes;

  @Uint32()
  external int totalFailedQuickModes;

  @Uint32()
  external int totalAcquires;

  @Uint32()
  external int totalReinitAcquires;

  @Uint32()
  external int currentActiveExtendedModes;

  @Uint32()
  external int totalExtendedModesStarted;

  @Uint32()
  external int totalSuccessfulExtendedModes;

  @Uint32()
  external int totalFailedExtendedModes;

  @Uint32()
  external int totalImpersonationExtendedModes;

  @Uint32()
  external int totalImpersonationMainModes;
}

/// {@category Struct}
class IKEEXT_KERBEROS_AUTHENTICATION0 extends Struct {
  @Uint32()
  external int flags;
}

/// {@category Struct}
class IKEEXT_KERBEROS_AUTHENTICATION1 extends Struct {
  @Uint32()
  external int flags;

  external Pointer<Utf16> proxyServer;
}

/// {@category Struct}
class IKEEXT_KEYMODULE_STATISTICS0 extends Struct {
  external IKEEXT_IP_VERSION_SPECIFIC_KEYMODULE_STATISTICS0 v4Statistics;

  external IKEEXT_IP_VERSION_SPECIFIC_KEYMODULE_STATISTICS0 v6Statistics;

  @Array(97)
  external Array<Uint32> errorFrequencyTable;

  @Uint32()
  external int mainModeNegotiationTime;

  @Uint32()
  external int quickModeNegotiationTime;

  @Uint32()
  external int extendedModeNegotiationTime;
}

/// {@category Struct}
class IKEEXT_KEYMODULE_STATISTICS1 extends Struct {
  external IKEEXT_IP_VERSION_SPECIFIC_KEYMODULE_STATISTICS1 v4Statistics;

  external IKEEXT_IP_VERSION_SPECIFIC_KEYMODULE_STATISTICS1 v6Statistics;

  @Array(97)
  external Array<Uint32> errorFrequencyTable;

  @Uint32()
  external int mainModeNegotiationTime;

  @Uint32()
  external int quickModeNegotiationTime;

  @Uint32()
  external int extendedModeNegotiationTime;
}

/// {@category Struct}
class IKEEXT_NAME_CREDENTIAL0 extends Struct {
  external Pointer<Utf16> principalName;
}

/// {@category Struct}
class IKEEXT_NTLM_V2_AUTHENTICATION0 extends Struct {
  @Uint32()
  external int flags;
}

/// {@category Struct}
class IKEEXT_POLICY0 extends Struct {
  @Uint32()
  external int softExpirationTime;

  @Uint32()
  external int numAuthenticationMethods;

  external Pointer<IKEEXT_AUTHENTICATION_METHOD0> authenticationMethods;

  @Int32()
  external int initiatorImpersonationType;

  @Uint32()
  external int numIkeProposals;

  external Pointer<IKEEXT_PROPOSAL0> ikeProposals;

  @Uint32()
  external int flags;

  @Uint32()
  external int maxDynamicFilters;
}

/// {@category Struct}
class IKEEXT_POLICY1 extends Struct {
  @Uint32()
  external int softExpirationTime;

  @Uint32()
  external int numAuthenticationMethods;

  external Pointer<IKEEXT_AUTHENTICATION_METHOD1> authenticationMethods;

  @Int32()
  external int initiatorImpersonationType;

  @Uint32()
  external int numIkeProposals;

  external Pointer<IKEEXT_PROPOSAL0> ikeProposals;

  @Uint32()
  external int flags;

  @Uint32()
  external int maxDynamicFilters;

  @Uint32()
  external int retransmitDurationSecs;
}

/// {@category Struct}
class IKEEXT_POLICY2 extends Struct {
  @Uint32()
  external int softExpirationTime;

  @Uint32()
  external int numAuthenticationMethods;

  external Pointer<IKEEXT_AUTHENTICATION_METHOD2> authenticationMethods;

  @Int32()
  external int initiatorImpersonationType;

  @Uint32()
  external int numIkeProposals;

  external Pointer<IKEEXT_PROPOSAL0> ikeProposals;

  @Uint32()
  external int flags;

  @Uint32()
  external int maxDynamicFilters;

  @Uint32()
  external int retransmitDurationSecs;
}

/// {@category Struct}
class IKEEXT_PRESHARED_KEY_AUTHENTICATION0 extends Struct {
  external FWP_BYTE_BLOB presharedKey;
}

/// {@category Struct}
class IKEEXT_PRESHARED_KEY_AUTHENTICATION1 extends Struct {
  external FWP_BYTE_BLOB presharedKey;

  @Uint32()
  external int flags;
}

/// {@category Struct}
class IKEEXT_PROPOSAL0 extends Struct {
  external IKEEXT_CIPHER_ALGORITHM0 cipherAlgorithm;

  external IKEEXT_INTEGRITY_ALGORITHM0 integrityAlgorithm;

  @Uint32()
  external int maxLifetimeSeconds;

  @Int32()
  external int dhGroup;

  @Uint32()
  external int quickModeLimit;
}

/// {@category Struct}
class IKEEXT_RESERVED_AUTHENTICATION0 extends Struct {
  @Uint32()
  external int flags;
}

/// {@category Struct}
class IKEEXT_SA_DETAILS0 extends Struct {
  @Uint64()
  external int saId;

  @Int32()
  external int keyModuleType;

  @Int32()
  external int ipVersion;

  external _IKEEXT_SA_DETAILS0__Anonymous_e__Union Anonymous;

  external IKEEXT_TRAFFIC0 ikeTraffic;

  external IKEEXT_PROPOSAL0 ikeProposal;

  external IKEEXT_COOKIE_PAIR0 cookiePair;

  external IKEEXT_CREDENTIALS0 ikeCredentials;

  external GUID ikePolicyKey;

  @Uint64()
  external int virtualIfTunnelId;
}

/// {@category Struct}
class _IKEEXT_SA_DETAILS0__Anonymous_e__Union extends Union {
  external Pointer<IPSEC_V4_UDP_ENCAPSULATION0> v4UdpEncapsulation;
}

extension IKEEXT_SA_DETAILS0_Extension on IKEEXT_SA_DETAILS0 {
  Pointer<IPSEC_V4_UDP_ENCAPSULATION0> get v4UdpEncapsulation =>
      this.Anonymous.v4UdpEncapsulation;
  set v4UdpEncapsulation(Pointer<IPSEC_V4_UDP_ENCAPSULATION0> value) =>
      this.Anonymous.v4UdpEncapsulation = value;
}

/// {@category Struct}
class IKEEXT_SA_DETAILS1 extends Struct {
  @Uint64()
  external int saId;

  @Int32()
  external int keyModuleType;

  @Int32()
  external int ipVersion;

  external _IKEEXT_SA_DETAILS1__Anonymous_e__Union Anonymous;

  external IKEEXT_TRAFFIC0 ikeTraffic;

  external IKEEXT_PROPOSAL0 ikeProposal;

  external IKEEXT_COOKIE_PAIR0 cookiePair;

  external IKEEXT_CREDENTIALS1 ikeCredentials;

  external GUID ikePolicyKey;

  @Uint64()
  external int virtualIfTunnelId;

  external FWP_BYTE_BLOB correlationKey;
}

/// {@category Struct}
class _IKEEXT_SA_DETAILS1__Anonymous_e__Union extends Union {
  external Pointer<IPSEC_V4_UDP_ENCAPSULATION0> v4UdpEncapsulation;
}

extension IKEEXT_SA_DETAILS1_Extension on IKEEXT_SA_DETAILS1 {
  Pointer<IPSEC_V4_UDP_ENCAPSULATION0> get v4UdpEncapsulation =>
      this.Anonymous.v4UdpEncapsulation;
  set v4UdpEncapsulation(Pointer<IPSEC_V4_UDP_ENCAPSULATION0> value) =>
      this.Anonymous.v4UdpEncapsulation = value;
}

/// {@category Struct}
class IKEEXT_SA_DETAILS2 extends Struct {
  @Uint64()
  external int saId;

  @Int32()
  external int keyModuleType;

  @Int32()
  external int ipVersion;

  external _IKEEXT_SA_DETAILS2__Anonymous_e__Union Anonymous;

  external IKEEXT_TRAFFIC0 ikeTraffic;

  external IKEEXT_PROPOSAL0 ikeProposal;

  external IKEEXT_COOKIE_PAIR0 cookiePair;

  external IKEEXT_CREDENTIALS2 ikeCredentials;

  external GUID ikePolicyKey;

  @Uint64()
  external int virtualIfTunnelId;

  external FWP_BYTE_BLOB correlationKey;
}

/// {@category Struct}
class _IKEEXT_SA_DETAILS2__Anonymous_e__Union extends Union {
  external Pointer<IPSEC_V4_UDP_ENCAPSULATION0> v4UdpEncapsulation;
}

extension IKEEXT_SA_DETAILS2_Extension on IKEEXT_SA_DETAILS2 {
  Pointer<IPSEC_V4_UDP_ENCAPSULATION0> get v4UdpEncapsulation =>
      this.Anonymous.v4UdpEncapsulation;
  set v4UdpEncapsulation(Pointer<IPSEC_V4_UDP_ENCAPSULATION0> value) =>
      this.Anonymous.v4UdpEncapsulation = value;
}

/// {@category Struct}
class IKEEXT_SA_ENUM_TEMPLATE0 extends Struct {
  external FWP_CONDITION_VALUE0 localSubNet;

  external FWP_CONDITION_VALUE0 remoteSubNet;

  external FWP_BYTE_BLOB localMainModeCertHash;
}

/// {@category Struct}
class IKEEXT_STATISTICS0 extends Struct {
  external IKEEXT_KEYMODULE_STATISTICS0 ikeStatistics;

  external IKEEXT_KEYMODULE_STATISTICS0 authipStatistics;

  external IKEEXT_COMMON_STATISTICS0 commonStatistics;
}

/// {@category Struct}
class IKEEXT_STATISTICS1 extends Struct {
  external IKEEXT_KEYMODULE_STATISTICS1 ikeStatistics;

  external IKEEXT_KEYMODULE_STATISTICS1 authipStatistics;

  external IKEEXT_KEYMODULE_STATISTICS1 ikeV2Statistics;

  external IKEEXT_COMMON_STATISTICS1 commonStatistics;
}

/// {@category Struct}
class IKEEXT_TRAFFIC0 extends Struct {
  @Int32()
  external int ipVersion;

  external _IKEEXT_TRAFFIC0__Anonymous1_e__Union Anonymous1;

  external _IKEEXT_TRAFFIC0__Anonymous2_e__Union Anonymous2;

  @Uint64()
  external int authIpFilterId;
}

/// {@category Struct}
class _IKEEXT_TRAFFIC0__Anonymous1_e__Union extends Union {
  @Uint32()
  external int localV4Address;

  @Array(16)
  external Array<Uint8> localV6Address;
}

extension IKEEXT_TRAFFIC0_Extension on IKEEXT_TRAFFIC0 {
  int get localV4Address => this.Anonymous1.localV4Address;
  set localV4Address(int value) => this.Anonymous1.localV4Address = value;

  Array<Uint8> get localV6Address => this.Anonymous1.localV6Address;
  set localV6Address(Array<Uint8> value) =>
      this.Anonymous1.localV6Address = value;
}

/// {@category Struct}
class _IKEEXT_TRAFFIC0__Anonymous2_e__Union extends Union {
  @Uint32()
  external int remoteV4Address;

  @Array(16)
  external Array<Uint8> remoteV6Address;
}

extension IKEEXT_TRAFFIC0_Extension_1 on IKEEXT_TRAFFIC0 {
  int get remoteV4Address => this.Anonymous2.remoteV4Address;
  set remoteV4Address(int value) => this.Anonymous2.remoteV4Address = value;

  Array<Uint8> get remoteV6Address => this.Anonymous2.remoteV6Address;
  set remoteV6Address(Array<Uint8> value) =>
      this.Anonymous2.remoteV6Address = value;
}

/// {@category Struct}
class IPSEC_ADDRESS_INFO0 extends Struct {
  @Uint32()
  external int numV4Addresses;

  external Pointer<Uint32> v4Addresses;

  @Uint32()
  external int numV6Addresses;

  external Pointer<FWP_BYTE_ARRAY16> v6Addresses;
}

/// {@category Struct}
class IPSEC_AGGREGATE_DROP_PACKET_STATISTICS0 extends Struct {
  @Uint32()
  external int invalidSpisOnInbound;

  @Uint32()
  external int decryptionFailuresOnInbound;

  @Uint32()
  external int authenticationFailuresOnInbound;

  @Uint32()
  external int udpEspValidationFailuresOnInbound;

  @Uint32()
  external int replayCheckFailuresOnInbound;

  @Uint32()
  external int invalidClearTextInbound;

  @Uint32()
  external int saNotInitializedOnInbound;

  @Uint32()
  external int receiveOverIncorrectSaInbound;

  @Uint32()
  external int secureReceivesNotMatchingFilters;
}

/// {@category Struct}
class IPSEC_AGGREGATE_DROP_PACKET_STATISTICS1 extends Struct {
  @Uint32()
  external int invalidSpisOnInbound;

  @Uint32()
  external int decryptionFailuresOnInbound;

  @Uint32()
  external int authenticationFailuresOnInbound;

  @Uint32()
  external int udpEspValidationFailuresOnInbound;

  @Uint32()
  external int replayCheckFailuresOnInbound;

  @Uint32()
  external int invalidClearTextInbound;

  @Uint32()
  external int saNotInitializedOnInbound;

  @Uint32()
  external int receiveOverIncorrectSaInbound;

  @Uint32()
  external int secureReceivesNotMatchingFilters;

  @Uint32()
  external int totalDropPacketsInbound;
}

/// {@category Struct}
class IPSEC_AGGREGATE_SA_STATISTICS0 extends Struct {
  @Uint32()
  external int activeSas;

  @Uint32()
  external int pendingSaNegotiations;

  @Uint32()
  external int totalSasAdded;

  @Uint32()
  external int totalSasDeleted;

  @Uint32()
  external int successfulRekeys;

  @Uint32()
  external int activeTunnels;

  @Uint32()
  external int offloadedSas;
}

/// {@category Struct}
class IPSEC_AH_DROP_PACKET_STATISTICS0 extends Struct {
  @Uint32()
  external int invalidSpisOnInbound;

  @Uint32()
  external int authenticationFailuresOnInbound;

  @Uint32()
  external int replayCheckFailuresOnInbound;

  @Uint32()
  external int saNotInitializedOnInbound;
}

/// {@category Struct}
class IPSEC_AUTH_AND_CIPHER_TRANSFORM0 extends Struct {
  external IPSEC_AUTH_TRANSFORM0 authTransform;

  external IPSEC_CIPHER_TRANSFORM0 cipherTransform;
}

/// {@category Struct}
class IPSEC_AUTH_TRANSFORM0 extends Struct {
  external IPSEC_AUTH_TRANSFORM_ID0 authTransformId;

  external Pointer<GUID> cryptoModuleId;
}

/// {@category Struct}
class IPSEC_AUTH_TRANSFORM_ID0 extends Struct {
  @Int32()
  external int authType;

  @Uint8()
  external int authConfig;
}

/// {@category Struct}
class IPSEC_CIPHER_TRANSFORM0 extends Struct {
  external IPSEC_CIPHER_TRANSFORM_ID0 cipherTransformId;

  external Pointer<GUID> cryptoModuleId;
}

/// {@category Struct}
class IPSEC_CIPHER_TRANSFORM_ID0 extends Struct {
  @Int32()
  external int cipherType;

  @Uint8()
  external int cipherConfig;
}

/// {@category Struct}
class IPSEC_DOSP_OPTIONS0 extends Struct {
  @Uint32()
  external int stateIdleTimeoutSeconds;

  @Uint32()
  external int perIPRateLimitQueueIdleTimeoutSeconds;

  @Uint8()
  external int ipV6IPsecUnauthDscp;

  @Uint32()
  external int ipV6IPsecUnauthRateLimitBytesPerSec;

  @Uint32()
  external int ipV6IPsecUnauthPerIPRateLimitBytesPerSec;

  @Uint8()
  external int ipV6IPsecAuthDscp;

  @Uint32()
  external int ipV6IPsecAuthRateLimitBytesPerSec;

  @Uint8()
  external int icmpV6Dscp;

  @Uint32()
  external int icmpV6RateLimitBytesPerSec;

  @Uint8()
  external int ipV6FilterExemptDscp;

  @Uint32()
  external int ipV6FilterExemptRateLimitBytesPerSec;

  @Uint8()
  external int defBlockExemptDscp;

  @Uint32()
  external int defBlockExemptRateLimitBytesPerSec;

  @Uint32()
  external int maxStateEntries;

  @Uint32()
  external int maxPerIPRateLimitQueues;

  @Uint32()
  external int flags;

  @Uint32()
  external int numPublicIFLuids;

  external Pointer<Uint64> publicIFLuids;

  @Uint32()
  external int numInternalIFLuids;

  external Pointer<Uint64> internalIFLuids;

  external FWP_V6_ADDR_AND_MASK publicV6AddrMask;

  external FWP_V6_ADDR_AND_MASK internalV6AddrMask;
}

/// {@category Struct}
class IPSEC_DOSP_STATE0 extends Struct {
  @Array(16)
  external Array<Uint8> publicHostV6Addr;

  @Array(16)
  external Array<Uint8> internalHostV6Addr;

  @Uint64()
  external int totalInboundIPv6IPsecAuthPackets;

  @Uint64()
  external int totalOutboundIPv6IPsecAuthPackets;

  @Uint32()
  external int durationSecs;
}

/// {@category Struct}
class IPSEC_DOSP_STATE_ENUM_TEMPLATE0 extends Struct {
  external FWP_V6_ADDR_AND_MASK publicV6AddrMask;

  external FWP_V6_ADDR_AND_MASK internalV6AddrMask;
}

/// {@category Struct}
class IPSEC_DOSP_STATISTICS0 extends Struct {
  @Uint64()
  external int totalStateEntriesCreated;

  @Uint64()
  external int currentStateEntries;

  @Uint64()
  external int totalInboundAllowedIPv6IPsecUnauthPkts;

  @Uint64()
  external int totalInboundRatelimitDiscardedIPv6IPsecUnauthPkts;

  @Uint64()
  external int totalInboundPerIPRatelimitDiscardedIPv6IPsecUnauthPkts;

  @Uint64()
  external int totalInboundOtherDiscardedIPv6IPsecUnauthPkts;

  @Uint64()
  external int totalInboundAllowedIPv6IPsecAuthPkts;

  @Uint64()
  external int totalInboundRatelimitDiscardedIPv6IPsecAuthPkts;

  @Uint64()
  external int totalInboundOtherDiscardedIPv6IPsecAuthPkts;

  @Uint64()
  external int totalInboundAllowedICMPv6Pkts;

  @Uint64()
  external int totalInboundRatelimitDiscardedICMPv6Pkts;

  @Uint64()
  external int totalInboundAllowedIPv6FilterExemptPkts;

  @Uint64()
  external int totalInboundRatelimitDiscardedIPv6FilterExemptPkts;

  @Uint64()
  external int totalInboundDiscardedIPv6FilterBlockPkts;

  @Uint64()
  external int totalInboundAllowedDefBlockExemptPkts;

  @Uint64()
  external int totalInboundRatelimitDiscardedDefBlockExemptPkts;

  @Uint64()
  external int totalInboundDiscardedDefBlockPkts;

  @Uint64()
  external int currentInboundIPv6IPsecUnauthPerIPRateLimitQueues;
}

/// {@category Struct}
class IPSEC_ESP_DROP_PACKET_STATISTICS0 extends Struct {
  @Uint32()
  external int invalidSpisOnInbound;

  @Uint32()
  external int decryptionFailuresOnInbound;

  @Uint32()
  external int authenticationFailuresOnInbound;

  @Uint32()
  external int replayCheckFailuresOnInbound;

  @Uint32()
  external int saNotInitializedOnInbound;
}

/// {@category Struct}
class IPSEC_GETSPI0 extends Struct {
  external IPSEC_TRAFFIC0 inboundIpsecTraffic;

  @Int32()
  external int ipVersion;

  external _IPSEC_GETSPI0__Anonymous_e__Union Anonymous;

  external Pointer<GUID> rngCryptoModuleID;
}

/// {@category Struct}
class _IPSEC_GETSPI0__Anonymous_e__Union extends Union {
  external Pointer<IPSEC_V4_UDP_ENCAPSULATION0> inboundUdpEncapsulation;
}

extension IPSEC_GETSPI0_Extension on IPSEC_GETSPI0 {
  Pointer<IPSEC_V4_UDP_ENCAPSULATION0> get inboundUdpEncapsulation =>
      this.Anonymous.inboundUdpEncapsulation;
  set inboundUdpEncapsulation(Pointer<IPSEC_V4_UDP_ENCAPSULATION0> value) =>
      this.Anonymous.inboundUdpEncapsulation = value;
}

/// {@category Struct}
class IPSEC_GETSPI1 extends Struct {
  external IPSEC_TRAFFIC1 inboundIpsecTraffic;

  @Int32()
  external int ipVersion;

  external _IPSEC_GETSPI1__Anonymous_e__Union Anonymous;

  external Pointer<GUID> rngCryptoModuleID;
}

/// {@category Struct}
class _IPSEC_GETSPI1__Anonymous_e__Union extends Union {
  external Pointer<IPSEC_V4_UDP_ENCAPSULATION0> inboundUdpEncapsulation;
}

extension IPSEC_GETSPI1_Extension on IPSEC_GETSPI1 {
  Pointer<IPSEC_V4_UDP_ENCAPSULATION0> get inboundUdpEncapsulation =>
      this.Anonymous.inboundUdpEncapsulation;
  set inboundUdpEncapsulation(Pointer<IPSEC_V4_UDP_ENCAPSULATION0> value) =>
      this.Anonymous.inboundUdpEncapsulation = value;
}

/// {@category Struct}
class IPSEC_ID0 extends Struct {
  external Pointer<Utf16> mmTargetName;

  external Pointer<Utf16> emTargetName;

  @Uint32()
  external int numTokens;

  external Pointer<IPSEC_TOKEN0> tokens;

  @Uint64()
  external int explicitCredentials;

  @Uint64()
  external int logonId;
}

/// {@category Struct}
class IPSEC_KEYING_POLICY0 extends Struct {
  @Uint32()
  external int numKeyMods;

  external Pointer<GUID> keyModKeys;
}

/// {@category Struct}
class IPSEC_KEYING_POLICY1 extends Struct {
  @Uint32()
  external int numKeyMods;

  external Pointer<GUID> keyModKeys;

  @Uint32()
  external int flags;
}

/// {@category Struct}
class IPSEC_KEYMODULE_STATE0 extends Struct {
  external GUID keyModuleKey;

  external FWP_BYTE_BLOB stateBlob;
}

/// {@category Struct}
class IPSEC_KEY_MANAGER0 extends Struct {
  external GUID keyManagerKey;

  external FWPM_DISPLAY_DATA0 displayData;

  @Uint32()
  external int flags;

  @Uint8()
  external int keyDictationTimeoutHint;
}

/// {@category Struct}
class IPSEC_KEY_MANAGER_CALLBACKS0 extends Struct {
  external GUID reserved;

  @Uint32()
  external int flags;

  external Pointer<NativeFunction<IPSEC_KEY_MANAGER_KEY_DICTATION_CHECK0>>
      keyDictationCheck;

  external Pointer<NativeFunction<IPSEC_KEY_MANAGER_DICTATE_KEY0>> keyDictation;

  external Pointer<NativeFunction<IPSEC_KEY_MANAGER_NOTIFY_KEY0>> keyNotify;
}

/// {@category Struct}
class IPSEC_PROPOSAL0 extends Struct {
  external IPSEC_SA_LIFETIME0 lifetime;

  @Uint32()
  external int numSaTransforms;

  external Pointer<IPSEC_SA_TRANSFORM0> saTransforms;

  @Int32()
  external int pfsGroup;
}

/// {@category Struct}
class IPSEC_SA0 extends Struct {
  @Uint32()
  external int spi;

  @Int32()
  external int saTransformType;

  external _IPSEC_SA0__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _IPSEC_SA0__Anonymous_e__Union extends Union {
  external Pointer<IPSEC_SA_AUTH_INFORMATION0> ahInformation;

  external Pointer<IPSEC_SA_AUTH_INFORMATION0> espAuthInformation;

  external Pointer<IPSEC_SA_CIPHER_INFORMATION0> espCipherInformation;

  external Pointer<IPSEC_SA_AUTH_AND_CIPHER_INFORMATION0>
      espAuthAndCipherInformation;

  external Pointer<IPSEC_SA_AUTH_INFORMATION0> espAuthFwInformation;
}

extension IPSEC_SA0_Extension on IPSEC_SA0 {
  Pointer<IPSEC_SA_AUTH_INFORMATION0> get ahInformation =>
      this.Anonymous.ahInformation;
  set ahInformation(Pointer<IPSEC_SA_AUTH_INFORMATION0> value) =>
      this.Anonymous.ahInformation = value;

  Pointer<IPSEC_SA_AUTH_INFORMATION0> get espAuthInformation =>
      this.Anonymous.espAuthInformation;
  set espAuthInformation(Pointer<IPSEC_SA_AUTH_INFORMATION0> value) =>
      this.Anonymous.espAuthInformation = value;

  Pointer<IPSEC_SA_CIPHER_INFORMATION0> get espCipherInformation =>
      this.Anonymous.espCipherInformation;
  set espCipherInformation(Pointer<IPSEC_SA_CIPHER_INFORMATION0> value) =>
      this.Anonymous.espCipherInformation = value;

  Pointer<IPSEC_SA_AUTH_AND_CIPHER_INFORMATION0>
      get espAuthAndCipherInformation =>
          this.Anonymous.espAuthAndCipherInformation;
  set espAuthAndCipherInformation(
          Pointer<IPSEC_SA_AUTH_AND_CIPHER_INFORMATION0> value) =>
      this.Anonymous.espAuthAndCipherInformation = value;

  Pointer<IPSEC_SA_AUTH_INFORMATION0> get espAuthFwInformation =>
      this.Anonymous.espAuthFwInformation;
  set espAuthFwInformation(Pointer<IPSEC_SA_AUTH_INFORMATION0> value) =>
      this.Anonymous.espAuthFwInformation = value;
}

/// {@category Struct}
class IPSEC_SA_AUTH_AND_CIPHER_INFORMATION0 extends Struct {
  external IPSEC_SA_CIPHER_INFORMATION0 saCipherInformation;

  external IPSEC_SA_AUTH_INFORMATION0 saAuthInformation;
}

/// {@category Struct}
class IPSEC_SA_AUTH_INFORMATION0 extends Struct {
  external IPSEC_AUTH_TRANSFORM0 authTransform;

  external FWP_BYTE_BLOB authKey;
}

/// {@category Struct}
class IPSEC_SA_BUNDLE0 extends Struct {
  @Uint32()
  external int flags;

  external IPSEC_SA_LIFETIME0 lifetime;

  @Uint32()
  external int idleTimeoutSeconds;

  @Uint32()
  external int ndAllowClearTimeoutSeconds;

  external Pointer<IPSEC_ID0> ipsecId;

  @Uint32()
  external int napContext;

  @Uint32()
  external int qmSaId;

  @Uint32()
  external int numSAs;

  external Pointer<IPSEC_SA0> saList;

  external Pointer<IPSEC_KEYMODULE_STATE0> keyModuleState;

  @Int32()
  external int ipVersion;

  external _IPSEC_SA_BUNDLE0__Anonymous_e__Union Anonymous;

  @Uint64()
  external int mmSaId;

  @Int32()
  external int pfsGroup;
}

/// {@category Struct}
class _IPSEC_SA_BUNDLE0__Anonymous_e__Union extends Union {
  @Uint32()
  external int peerV4PrivateAddress;
}

extension IPSEC_SA_BUNDLE0_Extension on IPSEC_SA_BUNDLE0 {
  int get peerV4PrivateAddress => this.Anonymous.peerV4PrivateAddress;
  set peerV4PrivateAddress(int value) =>
      this.Anonymous.peerV4PrivateAddress = value;
}

/// {@category Struct}
class IPSEC_SA_BUNDLE1 extends Struct {
  @Uint32()
  external int flags;

  external IPSEC_SA_LIFETIME0 lifetime;

  @Uint32()
  external int idleTimeoutSeconds;

  @Uint32()
  external int ndAllowClearTimeoutSeconds;

  external Pointer<IPSEC_ID0> ipsecId;

  @Uint32()
  external int napContext;

  @Uint32()
  external int qmSaId;

  @Uint32()
  external int numSAs;

  external Pointer<IPSEC_SA0> saList;

  external Pointer<IPSEC_KEYMODULE_STATE0> keyModuleState;

  @Int32()
  external int ipVersion;

  external _IPSEC_SA_BUNDLE1__Anonymous_e__Union Anonymous;

  @Uint64()
  external int mmSaId;

  @Int32()
  external int pfsGroup;

  external GUID saLookupContext;

  @Uint64()
  external int qmFilterId;
}

/// {@category Struct}
class _IPSEC_SA_BUNDLE1__Anonymous_e__Union extends Union {
  @Uint32()
  external int peerV4PrivateAddress;
}

extension IPSEC_SA_BUNDLE1_Extension on IPSEC_SA_BUNDLE1 {
  int get peerV4PrivateAddress => this.Anonymous.peerV4PrivateAddress;
  set peerV4PrivateAddress(int value) =>
      this.Anonymous.peerV4PrivateAddress = value;
}

/// {@category Struct}
class IPSEC_SA_CIPHER_INFORMATION0 extends Struct {
  external IPSEC_CIPHER_TRANSFORM0 cipherTransform;

  external FWP_BYTE_BLOB cipherKey;
}

/// {@category Struct}
class IPSEC_SA_CONTEXT0 extends Struct {
  @Uint64()
  external int saContextId;

  external Pointer<IPSEC_SA_DETAILS0> inboundSa;

  external Pointer<IPSEC_SA_DETAILS0> outboundSa;
}

/// {@category Struct}
class IPSEC_SA_CONTEXT1 extends Struct {
  @Uint64()
  external int saContextId;

  external Pointer<IPSEC_SA_DETAILS1> inboundSa;

  external Pointer<IPSEC_SA_DETAILS1> outboundSa;
}

/// {@category Struct}
class IPSEC_SA_CONTEXT_CHANGE0 extends Struct {
  @Int32()
  external int changeType;

  @Uint64()
  external int saContextId;
}

/// {@category Struct}
class IPSEC_SA_CONTEXT_ENUM_TEMPLATE0 extends Struct {
  external FWP_CONDITION_VALUE0 localSubNet;

  external FWP_CONDITION_VALUE0 remoteSubNet;
}

/// {@category Struct}
class IPSEC_SA_CONTEXT_SUBSCRIPTION0 extends Struct {
  external Pointer<IPSEC_SA_CONTEXT_ENUM_TEMPLATE0> enumTemplate;

  @Uint32()
  external int flags;

  external GUID sessionKey;
}

/// {@category Struct}
class IPSEC_SA_DETAILS0 extends Struct {
  @Int32()
  external int ipVersion;

  @Int32()
  external int saDirection;

  external IPSEC_TRAFFIC0 traffic;

  external IPSEC_SA_BUNDLE0 saBundle;

  external _IPSEC_SA_DETAILS0__Anonymous_e__Union Anonymous;

  external Pointer<FWPM_FILTER0> transportFilter;
}

/// {@category Struct}
class _IPSEC_SA_DETAILS0__Anonymous_e__Union extends Union {
  external Pointer<IPSEC_V4_UDP_ENCAPSULATION0> udpEncapsulation;
}

extension IPSEC_SA_DETAILS0_Extension on IPSEC_SA_DETAILS0 {
  Pointer<IPSEC_V4_UDP_ENCAPSULATION0> get udpEncapsulation =>
      this.Anonymous.udpEncapsulation;
  set udpEncapsulation(Pointer<IPSEC_V4_UDP_ENCAPSULATION0> value) =>
      this.Anonymous.udpEncapsulation = value;
}

/// {@category Struct}
class IPSEC_SA_DETAILS1 extends Struct {
  @Int32()
  external int ipVersion;

  @Int32()
  external int saDirection;

  external IPSEC_TRAFFIC1 traffic;

  external IPSEC_SA_BUNDLE1 saBundle;

  external _IPSEC_SA_DETAILS1__Anonymous_e__Union Anonymous;

  external Pointer<FWPM_FILTER0> transportFilter;

  external IPSEC_VIRTUAL_IF_TUNNEL_INFO0 virtualIfTunnelInfo;
}

/// {@category Struct}
class _IPSEC_SA_DETAILS1__Anonymous_e__Union extends Union {
  external Pointer<IPSEC_V4_UDP_ENCAPSULATION0> udpEncapsulation;
}

extension IPSEC_SA_DETAILS1_Extension on IPSEC_SA_DETAILS1 {
  Pointer<IPSEC_V4_UDP_ENCAPSULATION0> get udpEncapsulation =>
      this.Anonymous.udpEncapsulation;
  set udpEncapsulation(Pointer<IPSEC_V4_UDP_ENCAPSULATION0> value) =>
      this.Anonymous.udpEncapsulation = value;
}

/// {@category Struct}
class IPSEC_SA_ENUM_TEMPLATE0 extends Struct {
  @Int32()
  external int saDirection;
}

/// {@category Struct}
class IPSEC_SA_IDLE_TIMEOUT0 extends Struct {
  @Uint32()
  external int idleTimeoutSeconds;

  @Uint32()
  external int idleTimeoutSecondsFailOver;
}

/// {@category Struct}
class IPSEC_SA_LIFETIME0 extends Struct {
  @Uint32()
  external int lifetimeSeconds;

  @Uint32()
  external int lifetimeKilobytes;

  @Uint32()
  external int lifetimePackets;
}

/// {@category Struct}
class IPSEC_SA_TRANSFORM0 extends Struct {
  @Int32()
  external int ipsecTransformType;

  external _IPSEC_SA_TRANSFORM0__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _IPSEC_SA_TRANSFORM0__Anonymous_e__Union extends Union {
  external Pointer<IPSEC_AUTH_TRANSFORM0> ahTransform;

  external Pointer<IPSEC_AUTH_TRANSFORM0> espAuthTransform;

  external Pointer<IPSEC_CIPHER_TRANSFORM0> espCipherTransform;

  external Pointer<IPSEC_AUTH_AND_CIPHER_TRANSFORM0> espAuthAndCipherTransform;

  external Pointer<IPSEC_AUTH_TRANSFORM0> espAuthFwTransform;
}

extension IPSEC_SA_TRANSFORM0_Extension on IPSEC_SA_TRANSFORM0 {
  Pointer<IPSEC_AUTH_TRANSFORM0> get ahTransform => this.Anonymous.ahTransform;
  set ahTransform(Pointer<IPSEC_AUTH_TRANSFORM0> value) =>
      this.Anonymous.ahTransform = value;

  Pointer<IPSEC_AUTH_TRANSFORM0> get espAuthTransform =>
      this.Anonymous.espAuthTransform;
  set espAuthTransform(Pointer<IPSEC_AUTH_TRANSFORM0> value) =>
      this.Anonymous.espAuthTransform = value;

  Pointer<IPSEC_CIPHER_TRANSFORM0> get espCipherTransform =>
      this.Anonymous.espCipherTransform;
  set espCipherTransform(Pointer<IPSEC_CIPHER_TRANSFORM0> value) =>
      this.Anonymous.espCipherTransform = value;

  Pointer<IPSEC_AUTH_AND_CIPHER_TRANSFORM0> get espAuthAndCipherTransform =>
      this.Anonymous.espAuthAndCipherTransform;
  set espAuthAndCipherTransform(
          Pointer<IPSEC_AUTH_AND_CIPHER_TRANSFORM0> value) =>
      this.Anonymous.espAuthAndCipherTransform = value;

  Pointer<IPSEC_AUTH_TRANSFORM0> get espAuthFwTransform =>
      this.Anonymous.espAuthFwTransform;
  set espAuthFwTransform(Pointer<IPSEC_AUTH_TRANSFORM0> value) =>
      this.Anonymous.espAuthFwTransform = value;
}

/// {@category Struct}
class IPSEC_STATISTICS0 extends Struct {
  external IPSEC_AGGREGATE_SA_STATISTICS0 aggregateSaStatistics;

  external IPSEC_ESP_DROP_PACKET_STATISTICS0 espDropPacketStatistics;

  external IPSEC_AH_DROP_PACKET_STATISTICS0 ahDropPacketStatistics;

  external IPSEC_AGGREGATE_DROP_PACKET_STATISTICS0
      aggregateDropPacketStatistics;

  external IPSEC_TRAFFIC_STATISTICS0 inboundTrafficStatistics;

  external IPSEC_TRAFFIC_STATISTICS0 outboundTrafficStatistics;
}

/// {@category Struct}
class IPSEC_STATISTICS1 extends Struct {
  external IPSEC_AGGREGATE_SA_STATISTICS0 aggregateSaStatistics;

  external IPSEC_ESP_DROP_PACKET_STATISTICS0 espDropPacketStatistics;

  external IPSEC_AH_DROP_PACKET_STATISTICS0 ahDropPacketStatistics;

  external IPSEC_AGGREGATE_DROP_PACKET_STATISTICS1
      aggregateDropPacketStatistics;

  external IPSEC_TRAFFIC_STATISTICS1 inboundTrafficStatistics;

  external IPSEC_TRAFFIC_STATISTICS1 outboundTrafficStatistics;
}

/// {@category Struct}
class IPSEC_TOKEN0 extends Struct {
  @Int32()
  external int type;

  @Int32()
  external int principal;

  @Int32()
  external int mode;

  @Uint64()
  external int token;
}

/// {@category Struct}
class IPSEC_TRAFFIC0 extends Struct {
  @Int32()
  external int ipVersion;

  external _IPSEC_TRAFFIC0__Anonymous1_e__Union Anonymous1;

  external _IPSEC_TRAFFIC0__Anonymous2_e__Union Anonymous2;

  @Int32()
  external int trafficType;

  external _IPSEC_TRAFFIC0__Anonymous3_e__Union Anonymous3;

  @Uint16()
  external int remotePort;
}

/// {@category Struct}
class _IPSEC_TRAFFIC0__Anonymous1_e__Union extends Union {
  @Uint32()
  external int localV4Address;

  @Array(16)
  external Array<Uint8> localV6Address;
}

extension IPSEC_TRAFFIC0_Extension on IPSEC_TRAFFIC0 {
  int get localV4Address => this.Anonymous1.localV4Address;
  set localV4Address(int value) => this.Anonymous1.localV4Address = value;

  Array<Uint8> get localV6Address => this.Anonymous1.localV6Address;
  set localV6Address(Array<Uint8> value) =>
      this.Anonymous1.localV6Address = value;
}

/// {@category Struct}
class _IPSEC_TRAFFIC0__Anonymous2_e__Union extends Union {
  @Uint32()
  external int remoteV4Address;

  @Array(16)
  external Array<Uint8> remoteV6Address;
}

extension IPSEC_TRAFFIC0_Extension_1 on IPSEC_TRAFFIC0 {
  int get remoteV4Address => this.Anonymous2.remoteV4Address;
  set remoteV4Address(int value) => this.Anonymous2.remoteV4Address = value;

  Array<Uint8> get remoteV6Address => this.Anonymous2.remoteV6Address;
  set remoteV6Address(Array<Uint8> value) =>
      this.Anonymous2.remoteV6Address = value;
}

/// {@category Struct}
class _IPSEC_TRAFFIC0__Anonymous3_e__Union extends Union {
  @Uint64()
  external int ipsecFilterId;

  @Uint64()
  external int tunnelPolicyId;
}

extension IPSEC_TRAFFIC0_Extension_2 on IPSEC_TRAFFIC0 {
  int get ipsecFilterId => this.Anonymous3.ipsecFilterId;
  set ipsecFilterId(int value) => this.Anonymous3.ipsecFilterId = value;

  int get tunnelPolicyId => this.Anonymous3.tunnelPolicyId;
  set tunnelPolicyId(int value) => this.Anonymous3.tunnelPolicyId = value;
}

/// {@category Struct}
class IPSEC_TRAFFIC1 extends Struct {
  @Int32()
  external int ipVersion;

  external _IPSEC_TRAFFIC1__Anonymous1_e__Union Anonymous1;

  external _IPSEC_TRAFFIC1__Anonymous2_e__Union Anonymous2;

  @Int32()
  external int trafficType;

  external _IPSEC_TRAFFIC1__Anonymous3_e__Union Anonymous3;

  @Uint16()
  external int remotePort;

  @Uint16()
  external int localPort;

  @Uint8()
  external int ipProtocol;

  @Uint64()
  external int localIfLuid;

  @Uint32()
  external int realIfProfileId;
}

/// {@category Struct}
class _IPSEC_TRAFFIC1__Anonymous1_e__Union extends Union {
  @Uint32()
  external int localV4Address;

  @Array(16)
  external Array<Uint8> localV6Address;
}

extension IPSEC_TRAFFIC1_Extension on IPSEC_TRAFFIC1 {
  int get localV4Address => this.Anonymous1.localV4Address;
  set localV4Address(int value) => this.Anonymous1.localV4Address = value;

  Array<Uint8> get localV6Address => this.Anonymous1.localV6Address;
  set localV6Address(Array<Uint8> value) =>
      this.Anonymous1.localV6Address = value;
}

/// {@category Struct}
class _IPSEC_TRAFFIC1__Anonymous2_e__Union extends Union {
  @Uint32()
  external int remoteV4Address;

  @Array(16)
  external Array<Uint8> remoteV6Address;
}

extension IPSEC_TRAFFIC1_Extension_1 on IPSEC_TRAFFIC1 {
  int get remoteV4Address => this.Anonymous2.remoteV4Address;
  set remoteV4Address(int value) => this.Anonymous2.remoteV4Address = value;

  Array<Uint8> get remoteV6Address => this.Anonymous2.remoteV6Address;
  set remoteV6Address(Array<Uint8> value) =>
      this.Anonymous2.remoteV6Address = value;
}

/// {@category Struct}
class _IPSEC_TRAFFIC1__Anonymous3_e__Union extends Union {
  @Uint64()
  external int ipsecFilterId;

  @Uint64()
  external int tunnelPolicyId;
}

extension IPSEC_TRAFFIC1_Extension_2 on IPSEC_TRAFFIC1 {
  int get ipsecFilterId => this.Anonymous3.ipsecFilterId;
  set ipsecFilterId(int value) => this.Anonymous3.ipsecFilterId = value;

  int get tunnelPolicyId => this.Anonymous3.tunnelPolicyId;
  set tunnelPolicyId(int value) => this.Anonymous3.tunnelPolicyId = value;
}

/// {@category Struct}
class IPSEC_TRAFFIC_SELECTOR0_ extends Struct {
  @Uint8()
  external int protocolId;

  @Uint16()
  external int portStart;

  @Uint16()
  external int portEnd;

  @Int32()
  external int ipVersion;

  external _IPSEC_TRAFFIC_SELECTOR0___Anonymous1_e__Union Anonymous1;

  external _IPSEC_TRAFFIC_SELECTOR0___Anonymous2_e__Union Anonymous2;
}

/// {@category Struct}
class _IPSEC_TRAFFIC_SELECTOR0___Anonymous1_e__Union extends Union {
  @Uint32()
  external int startV4Address;

  @Array(16)
  external Array<Uint8> startV6Address;
}

extension IPSEC_TRAFFIC_SELECTOR0__Extension on IPSEC_TRAFFIC_SELECTOR0_ {
  int get startV4Address => this.Anonymous1.startV4Address;
  set startV4Address(int value) => this.Anonymous1.startV4Address = value;

  Array<Uint8> get startV6Address => this.Anonymous1.startV6Address;
  set startV6Address(Array<Uint8> value) =>
      this.Anonymous1.startV6Address = value;
}

/// {@category Struct}
class _IPSEC_TRAFFIC_SELECTOR0___Anonymous2_e__Union extends Union {
  @Uint32()
  external int endV4Address;

  @Array(16)
  external Array<Uint8> endV6Address;
}

extension IPSEC_TRAFFIC_SELECTOR0__Extension_1 on IPSEC_TRAFFIC_SELECTOR0_ {
  int get endV4Address => this.Anonymous2.endV4Address;
  set endV4Address(int value) => this.Anonymous2.endV4Address = value;

  Array<Uint8> get endV6Address => this.Anonymous2.endV6Address;
  set endV6Address(Array<Uint8> value) => this.Anonymous2.endV6Address = value;
}

/// {@category Struct}
class IPSEC_TRAFFIC_SELECTOR_POLICY0_ extends Struct {
  @Uint32()
  external int flags;

  @Uint32()
  external int numLocalTrafficSelectors;

  external Pointer<IPSEC_TRAFFIC_SELECTOR0_> localTrafficSelectors;

  @Uint32()
  external int numRemoteTrafficSelectors;

  external Pointer<IPSEC_TRAFFIC_SELECTOR0_> remoteTrafficSelectors;
}

/// {@category Struct}
class IPSEC_TRAFFIC_STATISTICS0 extends Struct {
  @Uint64()
  external int encryptedByteCount;

  @Uint64()
  external int authenticatedAHByteCount;

  @Uint64()
  external int authenticatedESPByteCount;

  @Uint64()
  external int transportByteCount;

  @Uint64()
  external int tunnelByteCount;

  @Uint64()
  external int offloadByteCount;
}

/// {@category Struct}
class IPSEC_TRAFFIC_STATISTICS1 extends Struct {
  @Uint64()
  external int encryptedByteCount;

  @Uint64()
  external int authenticatedAHByteCount;

  @Uint64()
  external int authenticatedESPByteCount;

  @Uint64()
  external int transportByteCount;

  @Uint64()
  external int tunnelByteCount;

  @Uint64()
  external int offloadByteCount;

  @Uint64()
  external int totalSuccessfulPackets;
}

/// {@category Struct}
class IPSEC_TRANSPORT_POLICY0 extends Struct {
  @Uint32()
  external int numIpsecProposals;

  external Pointer<IPSEC_PROPOSAL0> ipsecProposals;

  @Uint32()
  external int flags;

  @Uint32()
  external int ndAllowClearTimeoutSeconds;

  external IPSEC_SA_IDLE_TIMEOUT0 saIdleTimeout;

  external Pointer<IKEEXT_EM_POLICY0> emPolicy;
}

/// {@category Struct}
class IPSEC_TRANSPORT_POLICY1 extends Struct {
  @Uint32()
  external int numIpsecProposals;

  external Pointer<IPSEC_PROPOSAL0> ipsecProposals;

  @Uint32()
  external int flags;

  @Uint32()
  external int ndAllowClearTimeoutSeconds;

  external IPSEC_SA_IDLE_TIMEOUT0 saIdleTimeout;

  external Pointer<IKEEXT_EM_POLICY1> emPolicy;
}

/// {@category Struct}
class IPSEC_TRANSPORT_POLICY2 extends Struct {
  @Uint32()
  external int numIpsecProposals;

  external Pointer<IPSEC_PROPOSAL0> ipsecProposals;

  @Uint32()
  external int flags;

  @Uint32()
  external int ndAllowClearTimeoutSeconds;

  external IPSEC_SA_IDLE_TIMEOUT0 saIdleTimeout;

  external Pointer<IKEEXT_EM_POLICY2> emPolicy;
}

/// {@category Struct}
class IPSEC_TUNNEL_ENDPOINT0 extends Struct {
  @Int32()
  external int ipVersion;

  external _IPSEC_TUNNEL_ENDPOINT0__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _IPSEC_TUNNEL_ENDPOINT0__Anonymous_e__Union extends Union {
  @Uint32()
  external int v4Address;

  @Array(16)
  external Array<Uint8> v6Address;
}

extension IPSEC_TUNNEL_ENDPOINT0_Extension on IPSEC_TUNNEL_ENDPOINT0 {
  int get v4Address => this.Anonymous.v4Address;
  set v4Address(int value) => this.Anonymous.v4Address = value;

  Array<Uint8> get v6Address => this.Anonymous.v6Address;
  set v6Address(Array<Uint8> value) => this.Anonymous.v6Address = value;
}

/// {@category Struct}
class IPSEC_TUNNEL_ENDPOINTS0 extends Struct {
  @Int32()
  external int ipVersion;

  external _IPSEC_TUNNEL_ENDPOINTS0__Anonymous1_e__Union Anonymous1;

  external _IPSEC_TUNNEL_ENDPOINTS0__Anonymous2_e__Union Anonymous2;
}

/// {@category Struct}
class _IPSEC_TUNNEL_ENDPOINTS0__Anonymous1_e__Union extends Union {
  @Uint32()
  external int localV4Address;

  @Array(16)
  external Array<Uint8> localV6Address;
}

extension IPSEC_TUNNEL_ENDPOINTS0_Extension on IPSEC_TUNNEL_ENDPOINTS0 {
  int get localV4Address => this.Anonymous1.localV4Address;
  set localV4Address(int value) => this.Anonymous1.localV4Address = value;

  Array<Uint8> get localV6Address => this.Anonymous1.localV6Address;
  set localV6Address(Array<Uint8> value) =>
      this.Anonymous1.localV6Address = value;
}

/// {@category Struct}
class _IPSEC_TUNNEL_ENDPOINTS0__Anonymous2_e__Union extends Union {
  @Uint32()
  external int remoteV4Address;

  @Array(16)
  external Array<Uint8> remoteV6Address;
}

extension IPSEC_TUNNEL_ENDPOINTS0_Extension_1 on IPSEC_TUNNEL_ENDPOINTS0 {
  int get remoteV4Address => this.Anonymous2.remoteV4Address;
  set remoteV4Address(int value) => this.Anonymous2.remoteV4Address = value;

  Array<Uint8> get remoteV6Address => this.Anonymous2.remoteV6Address;
  set remoteV6Address(Array<Uint8> value) =>
      this.Anonymous2.remoteV6Address = value;
}

/// {@category Struct}
class IPSEC_TUNNEL_ENDPOINTS1 extends Struct {
  @Int32()
  external int ipVersion;

  external _IPSEC_TUNNEL_ENDPOINTS1__Anonymous1_e__Union Anonymous1;

  external _IPSEC_TUNNEL_ENDPOINTS1__Anonymous2_e__Union Anonymous2;

  @Uint64()
  external int localIfLuid;
}

/// {@category Struct}
class _IPSEC_TUNNEL_ENDPOINTS1__Anonymous1_e__Union extends Union {
  @Uint32()
  external int localV4Address;

  @Array(16)
  external Array<Uint8> localV6Address;
}

extension IPSEC_TUNNEL_ENDPOINTS1_Extension on IPSEC_TUNNEL_ENDPOINTS1 {
  int get localV4Address => this.Anonymous1.localV4Address;
  set localV4Address(int value) => this.Anonymous1.localV4Address = value;

  Array<Uint8> get localV6Address => this.Anonymous1.localV6Address;
  set localV6Address(Array<Uint8> value) =>
      this.Anonymous1.localV6Address = value;
}

/// {@category Struct}
class _IPSEC_TUNNEL_ENDPOINTS1__Anonymous2_e__Union extends Union {
  @Uint32()
  external int remoteV4Address;

  @Array(16)
  external Array<Uint8> remoteV6Address;
}

extension IPSEC_TUNNEL_ENDPOINTS1_Extension_1 on IPSEC_TUNNEL_ENDPOINTS1 {
  int get remoteV4Address => this.Anonymous2.remoteV4Address;
  set remoteV4Address(int value) => this.Anonymous2.remoteV4Address = value;

  Array<Uint8> get remoteV6Address => this.Anonymous2.remoteV6Address;
  set remoteV6Address(Array<Uint8> value) =>
      this.Anonymous2.remoteV6Address = value;
}

/// {@category Struct}
class IPSEC_TUNNEL_ENDPOINTS2 extends Struct {
  @Int32()
  external int ipVersion;

  external _IPSEC_TUNNEL_ENDPOINTS2__Anonymous1_e__Union Anonymous1;

  external _IPSEC_TUNNEL_ENDPOINTS2__Anonymous2_e__Union Anonymous2;

  @Uint64()
  external int localIfLuid;

  external Pointer<Utf16> remoteFqdn;

  @Uint32()
  external int numAddresses;

  external Pointer<IPSEC_TUNNEL_ENDPOINT0> remoteAddresses;
}

/// {@category Struct}
class _IPSEC_TUNNEL_ENDPOINTS2__Anonymous1_e__Union extends Union {
  @Uint32()
  external int localV4Address;

  @Array(16)
  external Array<Uint8> localV6Address;
}

extension IPSEC_TUNNEL_ENDPOINTS2_Extension on IPSEC_TUNNEL_ENDPOINTS2 {
  int get localV4Address => this.Anonymous1.localV4Address;
  set localV4Address(int value) => this.Anonymous1.localV4Address = value;

  Array<Uint8> get localV6Address => this.Anonymous1.localV6Address;
  set localV6Address(Array<Uint8> value) =>
      this.Anonymous1.localV6Address = value;
}

/// {@category Struct}
class _IPSEC_TUNNEL_ENDPOINTS2__Anonymous2_e__Union extends Union {
  @Uint32()
  external int remoteV4Address;

  @Array(16)
  external Array<Uint8> remoteV6Address;
}

extension IPSEC_TUNNEL_ENDPOINTS2_Extension_1 on IPSEC_TUNNEL_ENDPOINTS2 {
  int get remoteV4Address => this.Anonymous2.remoteV4Address;
  set remoteV4Address(int value) => this.Anonymous2.remoteV4Address = value;

  Array<Uint8> get remoteV6Address => this.Anonymous2.remoteV6Address;
  set remoteV6Address(Array<Uint8> value) =>
      this.Anonymous2.remoteV6Address = value;
}

/// {@category Struct}
class IPSEC_TUNNEL_POLICY0 extends Struct {
  @Uint32()
  external int flags;

  @Uint32()
  external int numIpsecProposals;

  external Pointer<IPSEC_PROPOSAL0> ipsecProposals;

  external IPSEC_TUNNEL_ENDPOINTS0 tunnelEndpoints;

  external IPSEC_SA_IDLE_TIMEOUT0 saIdleTimeout;

  external Pointer<IKEEXT_EM_POLICY0> emPolicy;
}

/// {@category Struct}
class IPSEC_TUNNEL_POLICY1 extends Struct {
  @Uint32()
  external int flags;

  @Uint32()
  external int numIpsecProposals;

  external Pointer<IPSEC_PROPOSAL0> ipsecProposals;

  external IPSEC_TUNNEL_ENDPOINTS1 tunnelEndpoints;

  external IPSEC_SA_IDLE_TIMEOUT0 saIdleTimeout;

  external Pointer<IKEEXT_EM_POLICY1> emPolicy;
}

/// {@category Struct}
class IPSEC_TUNNEL_POLICY2 extends Struct {
  @Uint32()
  external int flags;

  @Uint32()
  external int numIpsecProposals;

  external Pointer<IPSEC_PROPOSAL0> ipsecProposals;

  external IPSEC_TUNNEL_ENDPOINTS2 tunnelEndpoints;

  external IPSEC_SA_IDLE_TIMEOUT0 saIdleTimeout;

  external Pointer<IKEEXT_EM_POLICY2> emPolicy;

  @Uint32()
  external int fwdPathSaLifetime;
}

/// {@category Struct}
class IPSEC_TUNNEL_POLICY3_ extends Struct {
  @Uint32()
  external int flags;

  @Uint32()
  external int numIpsecProposals;

  external Pointer<IPSEC_PROPOSAL0> ipsecProposals;

  external IPSEC_TUNNEL_ENDPOINTS2 tunnelEndpoints;

  external IPSEC_SA_IDLE_TIMEOUT0 saIdleTimeout;

  external Pointer<IKEEXT_EM_POLICY2> emPolicy;

  @Uint32()
  external int fwdPathSaLifetime;

  @Uint32()
  external int compartmentId;

  @Uint32()
  external int numTrafficSelectorPolicy;

  external Pointer<IPSEC_TRAFFIC_SELECTOR_POLICY0_> trafficSelectorPolicies;
}

/// {@category Struct}
class IPSEC_V4_UDP_ENCAPSULATION0 extends Struct {
  @Uint16()
  external int localUdpEncapPort;

  @Uint16()
  external int remoteUdpEncapPort;
}

/// {@category Struct}
class IPSEC_VIRTUAL_IF_TUNNEL_INFO0 extends Struct {
  @Uint64()
  external int virtualIfTunnelId;

  @Uint64()
  external int trafficSelectorId;
}

/// {@category Struct}
@Packed(1)
class IPTLS_METADATA extends Struct {
  @Uint64()
  external int SequenceNumber;
}

/// {@category Struct}
class IPV4_HEADER extends Struct {
  external _IPV4_HEADER__Anonymous1_e__Union Anonymous1;

  external _IPV4_HEADER__Anonymous2_e__Union Anonymous2;

  @Uint16()
  external int TotalLength;

  @Uint16()
  external int Identification;

  external _IPV4_HEADER__Anonymous3_e__Union Anonymous3;

  @Uint8()
  external int TimeToLive;

  @Uint8()
  external int Protocol;

  @Uint16()
  external int HeaderChecksum;

  external IN_ADDR SourceAddress;

  external IN_ADDR DestinationAddress;
}

/// {@category Struct}
class _IPV4_HEADER__Anonymous1_e__Union extends Union {
  @Uint8()
  external int VersionAndHeaderLength;

  external _IPV4_HEADER__Anonymous1_e__Union__Anonymous_e__Struct Anonymous;
}

/// {@category Struct}
class _IPV4_HEADER__Anonymous1_e__Union__Anonymous_e__Struct extends Struct {
  @Uint8()
  external int bitfield;
}

extension IPV4_HEADER__Anonymous1_e__Union_Extension on IPV4_HEADER {
  int get bitfield => this.Anonymous1.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous1.Anonymous.bitfield = value;
}

extension IPV4_HEADER_Extension on IPV4_HEADER {
  int get VersionAndHeaderLength => this.Anonymous1.VersionAndHeaderLength;
  set VersionAndHeaderLength(int value) =>
      this.Anonymous1.VersionAndHeaderLength = value;

  _IPV4_HEADER__Anonymous1_e__Union__Anonymous_e__Struct get Anonymous =>
      this.Anonymous1.Anonymous;
  set Anonymous(_IPV4_HEADER__Anonymous1_e__Union__Anonymous_e__Struct value) =>
      this.Anonymous1.Anonymous = value;
}

/// {@category Struct}
class _IPV4_HEADER__Anonymous2_e__Union extends Union {
  @Uint8()
  external int TypeOfServiceAndEcnField;

  external _IPV4_HEADER__Anonymous2_e__Union__Anonymous_e__Struct Anonymous;
}

/// {@category Struct}
class _IPV4_HEADER__Anonymous2_e__Union__Anonymous_e__Struct extends Struct {
  @Uint8()
  external int bitfield;
}

extension IPV4_HEADER__Anonymous2_e__Union_Extension on IPV4_HEADER {
  int get bitfield => this.Anonymous2.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous2.Anonymous.bitfield = value;
}

extension IPV4_HEADER_Extension_1 on IPV4_HEADER {
  int get TypeOfServiceAndEcnField => this.Anonymous2.TypeOfServiceAndEcnField;
  set TypeOfServiceAndEcnField(int value) =>
      this.Anonymous2.TypeOfServiceAndEcnField = value;

  _IPV4_HEADER__Anonymous2_e__Union__Anonymous_e__Struct get Anonymous =>
      this.Anonymous2.Anonymous;
  set Anonymous(_IPV4_HEADER__Anonymous2_e__Union__Anonymous_e__Struct value) =>
      this.Anonymous2.Anonymous = value;
}

/// {@category Struct}
class _IPV4_HEADER__Anonymous3_e__Union extends Union {
  @Uint16()
  external int FlagsAndOffset;

  external _IPV4_HEADER__Anonymous3_e__Union__Anonymous_e__Struct Anonymous;
}

/// {@category Struct}
class _IPV4_HEADER__Anonymous3_e__Union__Anonymous_e__Struct extends Struct {
  @Uint16()
  external int bitfield;
}

extension IPV4_HEADER__Anonymous3_e__Union_Extension on IPV4_HEADER {
  int get bitfield => this.Anonymous3.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous3.Anonymous.bitfield = value;
}

extension IPV4_HEADER_Extension_2 on IPV4_HEADER {
  int get FlagsAndOffset => this.Anonymous3.FlagsAndOffset;
  set FlagsAndOffset(int value) => this.Anonymous3.FlagsAndOffset = value;

  _IPV4_HEADER__Anonymous3_e__Union__Anonymous_e__Struct get Anonymous =>
      this.Anonymous3.Anonymous;
  set Anonymous(_IPV4_HEADER__Anonymous3_e__Union__Anonymous_e__Struct value) =>
      this.Anonymous3.Anonymous = value;
}

/// {@category Struct}
class IPV4_OPTION_HEADER extends Struct {
  external _IPV4_OPTION_HEADER__Anonymous_e__Union Anonymous;

  @Uint8()
  external int OptionLength;
}

/// {@category Struct}
class _IPV4_OPTION_HEADER__Anonymous_e__Union extends Union {
  @Uint8()
  external int OptionType;

  external _IPV4_OPTION_HEADER__Anonymous_e__Union__Anonymous_e__Struct
      Anonymous;
}

/// {@category Struct}
class _IPV4_OPTION_HEADER__Anonymous_e__Union__Anonymous_e__Struct
    extends Struct {
  @Uint8()
  external int bitfield;
}

extension IPV4_OPTION_HEADER__Anonymous_e__Union_Extension
    on IPV4_OPTION_HEADER {
  int get bitfield => this.Anonymous.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous.Anonymous.bitfield = value;
}

extension IPV4_OPTION_HEADER_Extension on IPV4_OPTION_HEADER {
  int get OptionType => this.Anonymous.OptionType;
  set OptionType(int value) => this.Anonymous.OptionType = value;

  _IPV4_OPTION_HEADER__Anonymous_e__Union__Anonymous_e__Struct get Anonymous =>
      this.Anonymous.Anonymous;
  set Anonymous(
          _IPV4_OPTION_HEADER__Anonymous_e__Union__Anonymous_e__Struct value) =>
      this.Anonymous.Anonymous = value;
}

/// {@category Struct}
class IPV4_ROUTING_HEADER extends Struct {
  external IPV4_OPTION_HEADER OptionHeader;

  @Uint8()
  external int $Pointer;
}

/// {@category Struct}
class IPV4_TIMESTAMP_OPTION extends Struct {
  external IPV4_OPTION_HEADER OptionHeader;

  @Uint8()
  external int $Pointer;

  external _IPV4_TIMESTAMP_OPTION__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _IPV4_TIMESTAMP_OPTION__Anonymous_e__Union extends Union {
  @Uint8()
  external int FlagsOverflow;

  external _IPV4_TIMESTAMP_OPTION__Anonymous_e__Union__Anonymous_e__Struct
      Anonymous;
}

/// {@category Struct}
class _IPV4_TIMESTAMP_OPTION__Anonymous_e__Union__Anonymous_e__Struct
    extends Struct {
  @Uint8()
  external int bitfield;
}

extension IPV4_TIMESTAMP_OPTION__Anonymous_e__Union_Extension
    on IPV4_TIMESTAMP_OPTION {
  int get bitfield => this.Anonymous.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous.Anonymous.bitfield = value;
}

extension IPV4_TIMESTAMP_OPTION_Extension on IPV4_TIMESTAMP_OPTION {
  int get FlagsOverflow => this.Anonymous.FlagsOverflow;
  set FlagsOverflow(int value) => this.Anonymous.FlagsOverflow = value;

  _IPV4_TIMESTAMP_OPTION__Anonymous_e__Union__Anonymous_e__Struct
      get Anonymous => this.Anonymous.Anonymous;
  set Anonymous(
          _IPV4_TIMESTAMP_OPTION__Anonymous_e__Union__Anonymous_e__Struct
              value) =>
      this.Anonymous.Anonymous = value;
}

/// {@category Struct}
class IPV6_EXTENSION_HEADER extends Struct {
  @Uint8()
  external int NextHeader;

  @Uint8()
  external int Length;
}

/// {@category Struct}
class IPV6_FRAGMENT_HEADER extends Struct {
  @Uint8()
  external int NextHeader;

  @Uint8()
  external int Reserved;

  external _IPV6_FRAGMENT_HEADER__Anonymous_e__Union Anonymous;

  @Uint32()
  external int Id;
}

/// {@category Struct}
class _IPV6_FRAGMENT_HEADER__Anonymous_e__Union extends Union {
  external _IPV6_FRAGMENT_HEADER__Anonymous_e__Union__Anonymous_e__Struct
      Anonymous;

  @Uint16()
  external int OffsetAndFlags;
}

/// {@category Struct}
class _IPV6_FRAGMENT_HEADER__Anonymous_e__Union__Anonymous_e__Struct
    extends Struct {
  @Uint16()
  external int bitfield;
}

extension IPV6_FRAGMENT_HEADER__Anonymous_e__Union_Extension
    on IPV6_FRAGMENT_HEADER {
  int get bitfield => this.Anonymous.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous.Anonymous.bitfield = value;
}

extension IPV6_FRAGMENT_HEADER_Extension on IPV6_FRAGMENT_HEADER {
  _IPV6_FRAGMENT_HEADER__Anonymous_e__Union__Anonymous_e__Struct
      get Anonymous => this.Anonymous.Anonymous;
  set Anonymous(
          _IPV6_FRAGMENT_HEADER__Anonymous_e__Union__Anonymous_e__Struct
              value) =>
      this.Anonymous.Anonymous = value;

  int get OffsetAndFlags => this.Anonymous.OffsetAndFlags;
  set OffsetAndFlags(int value) => this.Anonymous.OffsetAndFlags = value;
}

/// {@category Struct}
class IPV6_HEADER extends Struct {
  external _IPV6_HEADER__Anonymous_e__Union Anonymous;

  @Uint16()
  external int PayloadLength;

  @Uint8()
  external int NextHeader;

  @Uint8()
  external int HopLimit;

  external IN6_ADDR SourceAddress;

  external IN6_ADDR DestinationAddress;
}

/// {@category Struct}
class _IPV6_HEADER__Anonymous_e__Union extends Union {
  @Uint32()
  external int VersionClassFlow;

  external _IPV6_HEADER__Anonymous_e__Union__Anonymous_e__Struct Anonymous;
}

/// {@category Struct}
class _IPV6_HEADER__Anonymous_e__Union__Anonymous_e__Struct extends Struct {
  @Uint32()
  external int bitfield;
}

extension IPV6_HEADER__Anonymous_e__Union_Extension on IPV6_HEADER {
  int get bitfield => this.Anonymous.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous.Anonymous.bitfield = value;
}

extension IPV6_HEADER_Extension on IPV6_HEADER {
  int get VersionClassFlow => this.Anonymous.VersionClassFlow;
  set VersionClassFlow(int value) => this.Anonymous.VersionClassFlow = value;

  _IPV6_HEADER__Anonymous_e__Union__Anonymous_e__Struct get Anonymous =>
      this.Anonymous.Anonymous;
  set Anonymous(_IPV6_HEADER__Anonymous_e__Union__Anonymous_e__Struct value) =>
      this.Anonymous.Anonymous = value;
}

/// {@category Struct}
class IPV6_NEIGHBOR_ADVERTISEMENT_FLAGS extends Union {
  external _IPV6_NEIGHBOR_ADVERTISEMENT_FLAGS__Anonymous_e__Struct Anonymous;

  @Uint32()
  external int Value;
}

/// {@category Struct}
class _IPV6_NEIGHBOR_ADVERTISEMENT_FLAGS__Anonymous_e__Struct extends Struct {
  @Uint8()
  external int bitfield;

  @Array(3)
  external Array<Uint8> Reserved2;
}

extension IPV6_NEIGHBOR_ADVERTISEMENT_FLAGS_Extension
    on IPV6_NEIGHBOR_ADVERTISEMENT_FLAGS {
  int get bitfield => this.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous.bitfield = value;

  Array<Uint8> get Reserved2 => this.Anonymous.Reserved2;
  set Reserved2(Array<Uint8> value) => this.Anonymous.Reserved2 = value;
}

/// {@category Struct}
class IPV6_OPTION_HEADER extends Struct {
  @Uint8()
  external int Type;

  @Uint8()
  external int DataLength;
}

/// {@category Struct}
class IPV6_OPTION_JUMBOGRAM extends Struct {
  external IPV6_OPTION_HEADER Header;

  @Array(4)
  external Array<Uint8> JumbogramLength;
}

/// {@category Struct}
class IPV6_OPTION_ROUTER_ALERT extends Struct {
  external IPV6_OPTION_HEADER Header;

  @Array(2)
  external Array<Uint8> Value;
}

/// {@category Struct}
class IPV6_ROUTER_ADVERTISEMENT_FLAGS extends Union {
  external _IPV6_ROUTER_ADVERTISEMENT_FLAGS__Anonymous_e__Struct Anonymous;

  @Uint8()
  external int Value;
}

/// {@category Struct}
class _IPV6_ROUTER_ADVERTISEMENT_FLAGS__Anonymous_e__Struct extends Struct {
  @Uint8()
  external int bitfield;
}

extension IPV6_ROUTER_ADVERTISEMENT_FLAGS_Extension
    on IPV6_ROUTER_ADVERTISEMENT_FLAGS {
  int get bitfield => this.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous.bitfield = value;
}

/// {@category Struct}
class IPV6_ROUTING_HEADER extends Struct {
  @Uint8()
  external int NextHeader;

  @Uint8()
  external int Length;

  @Uint8()
  external int RoutingType;

  @Uint8()
  external int SegmentsLeft;

  @Array(4)
  external Array<Uint8> Reserved;
}

/// {@category Struct}
class MLDV2_QUERY_HEADER extends Struct {
  external ICMP_HEADER IcmpHeader;

  external _MLDV2_QUERY_HEADER__Anonymous1_e__Union Anonymous1;

  @Uint16()
  external int Reserved;

  external IN6_ADDR MulticastAddress;

  @Uint8()
  external int bitfield;

  external _MLDV2_QUERY_HEADER__Anonymous2_e__Union Anonymous2;

  @Uint16()
  external int SourceCount;
}

/// {@category Struct}
class _MLDV2_QUERY_HEADER__Anonymous1_e__Union extends Union {
  @Uint16()
  external int MaxRespCode;

  external _MLDV2_QUERY_HEADER__Anonymous1_e__Union__Anonymous_e__Struct
      Anonymous;
}

/// {@category Struct}
class _MLDV2_QUERY_HEADER__Anonymous1_e__Union__Anonymous_e__Struct
    extends Struct {
  @Uint16()
  external int bitfield;
}

extension MLDV2_QUERY_HEADER__Anonymous1_e__Union_Extension
    on MLDV2_QUERY_HEADER {
  int get bitfield => this.Anonymous1.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous1.Anonymous.bitfield = value;
}

extension MLDV2_QUERY_HEADER_Extension on MLDV2_QUERY_HEADER {
  int get MaxRespCode => this.Anonymous1.MaxRespCode;
  set MaxRespCode(int value) => this.Anonymous1.MaxRespCode = value;

  _MLDV2_QUERY_HEADER__Anonymous1_e__Union__Anonymous_e__Struct get Anonymous =>
      this.Anonymous1.Anonymous;
  set Anonymous(
          _MLDV2_QUERY_HEADER__Anonymous1_e__Union__Anonymous_e__Struct
              value) =>
      this.Anonymous1.Anonymous = value;
}

/// {@category Struct}
class _MLDV2_QUERY_HEADER__Anonymous2_e__Union extends Union {
  @Uint8()
  external int QueriersQueryInterfaceCode;

  external _MLDV2_QUERY_HEADER__Anonymous2_e__Union__Anonymous_e__Struct
      Anonymous;
}

/// {@category Struct}
class _MLDV2_QUERY_HEADER__Anonymous2_e__Union__Anonymous_e__Struct
    extends Struct {
  @Uint8()
  external int bitfield;
}

extension MLDV2_QUERY_HEADER__Anonymous2_e__Union_Extension
    on MLDV2_QUERY_HEADER {
  int get bitfield => this.Anonymous2.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous2.Anonymous.bitfield = value;
}

extension MLDV2_QUERY_HEADER_Extension_1 on MLDV2_QUERY_HEADER {
  int get QueriersQueryInterfaceCode =>
      this.Anonymous2.QueriersQueryInterfaceCode;
  set QueriersQueryInterfaceCode(int value) =>
      this.Anonymous2.QueriersQueryInterfaceCode = value;

  _MLDV2_QUERY_HEADER__Anonymous2_e__Union__Anonymous_e__Struct get Anonymous =>
      this.Anonymous2.Anonymous;
  set Anonymous(
          _MLDV2_QUERY_HEADER__Anonymous2_e__Union__Anonymous_e__Struct
              value) =>
      this.Anonymous2.Anonymous = value;
}

/// {@category Struct}
class MLDV2_REPORT_HEADER extends Struct {
  external ICMP_HEADER IcmpHeader;

  @Uint16()
  external int Reserved;

  @Uint16()
  external int RecordCount;
}

/// {@category Struct}
class MLDV2_REPORT_RECORD_HEADER extends Struct {
  @Uint8()
  external int Type;

  @Uint8()
  external int AuxillaryDataLength;

  @Uint16()
  external int SourceCount;

  external IN6_ADDR MulticastAddress;
}

/// {@category Struct}
class MLD_HEADER extends Struct {
  external ICMP_HEADER IcmpHeader;

  @Uint16()
  external int MaxRespTime;

  @Uint16()
  external int Reserved;

  external IN6_ADDR MulticastAddress;
}

/// {@category Struct}
class NPI_MODULEID extends Struct {
  @Uint16()
  external int Length;

  @Int32()
  external int Type;

  external _NPI_MODULEID__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _NPI_MODULEID__Anonymous_e__Union extends Union {
  external GUID Guid;

  external LUID IfLuid;
}

extension NPI_MODULEID_Extension on NPI_MODULEID {
  GUID get Guid => this.Anonymous.Guid;
  set Guid(GUID value) => this.Anonymous.Guid = value;

  LUID get IfLuid => this.Anonymous.IfLuid;
  set IfLuid(LUID value) => this.Anonymous.IfLuid = value;
}

/// {@category Struct}
class SNAP_HEADER extends Struct {
  @Uint8()
  external int Dsap;

  @Uint8()
  external int Ssap;

  @Uint8()
  external int Control;

  @Array(3)
  external Array<Uint8> Oui;

  @Uint16()
  external int Type;
}

/// {@category Struct}
class VLAN_TAG extends Struct {
  external _VLAN_TAG__Anonymous_e__Union Anonymous;

  @Uint16()
  external int Type;
}

/// {@category Struct}
class _VLAN_TAG__Anonymous_e__Union extends Union {
  @Uint16()
  external int Tag;

  external _VLAN_TAG__Anonymous_e__Union__Anonymous_e__Struct Anonymous;
}

/// {@category Struct}
class _VLAN_TAG__Anonymous_e__Union__Anonymous_e__Struct extends Struct {
  @Uint16()
  external int bitfield;
}

extension VLAN_TAG__Anonymous_e__Union_Extension on VLAN_TAG {
  int get bitfield => this.Anonymous.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous.Anonymous.bitfield = value;
}

extension VLAN_TAG_Extension on VLAN_TAG {
  int get Tag => this.Anonymous.Tag;
  set Tag(int value) => this.Anonymous.Tag = value;

  _VLAN_TAG__Anonymous_e__Union__Anonymous_e__Struct get Anonymous =>
      this.Anonymous.Anonymous;
  set Anonymous(_VLAN_TAG__Anonymous_e__Union__Anonymous_e__Struct value) =>
      this.Anonymous.Anonymous = value;
}

/// {@category Struct}
class nd_neighbor_advert extends Struct {
  external ICMP_MESSAGE nd_na_hdr;

  external IN6_ADDR nd_na_target;
}

/// {@category Struct}
class nd_neighbor_solicit extends Struct {
  external ICMP_MESSAGE nd_ns_hdr;

  external IN6_ADDR nd_ns_target;
}

/// {@category Struct}
class nd_opt_dnssl extends Struct {
  @Uint8()
  external int nd_opt_dnssl_type;

  @Uint8()
  external int nd_opt_dnssl_len;

  @Uint16()
  external int nd_opt_dnssl_reserved;

  @Uint32()
  external int nd_opt_dnssl_lifetime;
}

/// {@category Struct}
class nd_opt_hdr extends Struct {
  @Uint8()
  external int nd_opt_type;

  @Uint8()
  external int nd_opt_len;
}

/// {@category Struct}
class nd_opt_mtu extends Struct {
  @Uint8()
  external int nd_opt_mtu_type;

  @Uint8()
  external int nd_opt_mtu_len;

  @Uint16()
  external int nd_opt_mtu_reserved;

  @Uint32()
  external int nd_opt_mtu_mtu;
}

/// {@category Struct}
class nd_opt_prefix_info extends Struct {
  @Uint8()
  external int nd_opt_pi_type;

  @Uint8()
  external int nd_opt_pi_len;

  @Uint8()
  external int nd_opt_pi_prefix_len;

  external _nd_opt_prefix_info__Anonymous1_e__Union Anonymous1;

  @Uint32()
  external int nd_opt_pi_valid_time;

  @Uint32()
  external int nd_opt_pi_preferred_time;

  external _nd_opt_prefix_info__Anonymous2_e__Union Anonymous2;

  external IN6_ADDR nd_opt_pi_prefix;
}

/// {@category Struct}
class _nd_opt_prefix_info__Anonymous1_e__Union extends Union {
  @Uint8()
  external int nd_opt_pi_flags_reserved;

  external _nd_opt_prefix_info__Anonymous1_e__Union__Flags_e__Struct Flags;
}

/// {@category Struct}
class _nd_opt_prefix_info__Anonymous1_e__Union__Flags_e__Struct extends Struct {
  @Uint8()
  external int bitfield;
}

extension nd_opt_prefix_info__Anonymous1_e__Union_Extension
    on nd_opt_prefix_info {
  int get bitfield => this.Anonymous1.Flags.bitfield;
  set bitfield(int value) => this.Anonymous1.Flags.bitfield = value;
}

extension nd_opt_prefix_info_Extension on nd_opt_prefix_info {
  int get nd_opt_pi_flags_reserved => this.Anonymous1.nd_opt_pi_flags_reserved;
  set nd_opt_pi_flags_reserved(int value) =>
      this.Anonymous1.nd_opt_pi_flags_reserved = value;

  _nd_opt_prefix_info__Anonymous1_e__Union__Flags_e__Struct get Flags =>
      this.Anonymous1.Flags;
  set Flags(_nd_opt_prefix_info__Anonymous1_e__Union__Flags_e__Struct value) =>
      this.Anonymous1.Flags = value;
}

/// {@category Struct}
class _nd_opt_prefix_info__Anonymous2_e__Union extends Union {
  @Uint32()
  external int nd_opt_pi_reserved2;

  external _nd_opt_prefix_info__Anonymous2_e__Union__Anonymous_e__Struct
      Anonymous;
}

/// {@category Struct}
class _nd_opt_prefix_info__Anonymous2_e__Union__Anonymous_e__Struct
    extends Struct {
  @Array(3)
  external Array<Uint8> nd_opt_pi_reserved3;

  @Uint8()
  external int nd_opt_pi_site_prefix_len;
}

extension nd_opt_prefix_info__Anonymous2_e__Union_Extension
    on nd_opt_prefix_info {
  Array<Uint8> get nd_opt_pi_reserved3 =>
      this.Anonymous2.Anonymous.nd_opt_pi_reserved3;
  set nd_opt_pi_reserved3(Array<Uint8> value) =>
      this.Anonymous2.Anonymous.nd_opt_pi_reserved3 = value;

  int get nd_opt_pi_site_prefix_len =>
      this.Anonymous2.Anonymous.nd_opt_pi_site_prefix_len;
  set nd_opt_pi_site_prefix_len(int value) =>
      this.Anonymous2.Anonymous.nd_opt_pi_site_prefix_len = value;
}

extension nd_opt_prefix_info_Extension_1 on nd_opt_prefix_info {
  int get nd_opt_pi_reserved2 => this.Anonymous2.nd_opt_pi_reserved2;
  set nd_opt_pi_reserved2(int value) =>
      this.Anonymous2.nd_opt_pi_reserved2 = value;

  _nd_opt_prefix_info__Anonymous2_e__Union__Anonymous_e__Struct get Anonymous =>
      this.Anonymous2.Anonymous;
  set Anonymous(
          _nd_opt_prefix_info__Anonymous2_e__Union__Anonymous_e__Struct
              value) =>
      this.Anonymous2.Anonymous = value;
}

/// {@category Struct}
class nd_opt_rd_hdr extends Struct {
  @Uint8()
  external int nd_opt_rh_type;

  @Uint8()
  external int nd_opt_rh_len;

  @Uint16()
  external int nd_opt_rh_reserved1;

  @Uint32()
  external int nd_opt_rh_reserved2;
}

/// {@category Struct}
class nd_opt_rdnss extends Struct {
  @Uint8()
  external int nd_opt_rdnss_type;

  @Uint8()
  external int nd_opt_rdnss_len;

  @Uint16()
  external int nd_opt_rdnss_reserved;

  @Uint32()
  external int nd_opt_rdnss_lifetime;
}

/// {@category Struct}
class nd_opt_route_info extends Struct {
  @Uint8()
  external int nd_opt_ri_type;

  @Uint8()
  external int nd_opt_ri_len;

  @Uint8()
  external int nd_opt_ri_prefix_len;

  external _nd_opt_route_info__Anonymous_e__Union Anonymous;

  @Uint32()
  external int nd_opt_ri_route_lifetime;

  external IN6_ADDR nd_opt_ri_prefix;
}

/// {@category Struct}
class _nd_opt_route_info__Anonymous_e__Union extends Union {
  @Uint8()
  external int nd_opt_ri_flags_reserved;

  external _nd_opt_route_info__Anonymous_e__Union__Flags_e__Struct Flags;
}

/// {@category Struct}
class _nd_opt_route_info__Anonymous_e__Union__Flags_e__Struct extends Struct {
  @Uint8()
  external int bitfield;
}

extension nd_opt_route_info__Anonymous_e__Union_Extension on nd_opt_route_info {
  int get bitfield => this.Anonymous.Flags.bitfield;
  set bitfield(int value) => this.Anonymous.Flags.bitfield = value;
}

extension nd_opt_route_info_Extension on nd_opt_route_info {
  int get nd_opt_ri_flags_reserved => this.Anonymous.nd_opt_ri_flags_reserved;
  set nd_opt_ri_flags_reserved(int value) =>
      this.Anonymous.nd_opt_ri_flags_reserved = value;

  _nd_opt_route_info__Anonymous_e__Union__Flags_e__Struct get Flags =>
      this.Anonymous.Flags;
  set Flags(_nd_opt_route_info__Anonymous_e__Union__Flags_e__Struct value) =>
      this.Anonymous.Flags = value;
}

/// {@category Struct}
class nd_redirect extends Struct {
  external ICMP_MESSAGE nd_rd_hdr;

  external IN6_ADDR nd_rd_target;

  external IN6_ADDR nd_rd_dst;
}

/// {@category Struct}
class nd_router_advert extends Struct {
  external ICMP_MESSAGE nd_ra_hdr;

  @Uint32()
  external int nd_ra_reachable;

  @Uint32()
  external int nd_ra_retransmit;
}

/// {@category Struct}
class nd_router_solicit extends Struct {
  external ICMP_MESSAGE nd_rs_hdr;
}

/// {@category Struct}
@Packed(1)
class tcp_hdr extends Struct {
  @Uint16()
  external int th_sport;

  @Uint16()
  external int th_dport;

  @Uint32()
  external int th_seq;

  @Uint32()
  external int th_ack;

  @Uint8()
  external int bitfield;

  @Uint8()
  external int th_flags;

  @Uint16()
  external int th_win;

  @Uint16()
  external int th_sum;

  @Uint16()
  external int th_urp;
}

/// {@category Struct}
class tcp_opt_fastopen extends Struct {
  @Uint8()
  external int Kind;

  @Uint8()
  external int Length;

  @Array(1)
  external Array<Uint8> Cookie;
}

/// {@category Struct}
@Packed(1)
class tcp_opt_mss extends Struct {
  @Uint8()
  external int Kind;

  @Uint8()
  external int Length;

  @Uint16()
  external int Mss;
}

/// {@category Struct}
@Packed(1)
class tcp_opt_sack extends Struct {
  @Uint8()
  external int Kind;

  @Uint8()
  external int Length;

  @Array(1)
  external Array<_tcp_opt_sack_tcp_opt_sack_block> Block;
}

/// {@category Struct}
@Packed(1)
class _tcp_opt_sack_tcp_opt_sack_block extends Struct {
  @Uint32()
  external int Left;

  @Uint32()
  external int Right;
}

/// {@category Struct}
class tcp_opt_sack_permitted extends Struct {
  @Uint8()
  external int Kind;

  @Uint8()
  external int Length;
}

/// {@category Struct}
@Packed(1)
class tcp_opt_ts extends Struct {
  @Uint8()
  external int Kind;

  @Uint8()
  external int Length;

  @Uint32()
  external int Val;

  @Uint32()
  external int EcR;
}

/// {@category Struct}
class tcp_opt_unknown extends Struct {
  @Uint8()
  external int Kind;

  @Uint8()
  external int Length;
}

/// {@category Struct}
class tcp_opt_ws extends Struct {
  @Uint8()
  external int Kind;

  @Uint8()
  external int Length;

  @Uint8()
  external int ShiftCnt;
}
