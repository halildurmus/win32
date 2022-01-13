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
import '../../networking/winsock/structs.g.dart';
import '../../networkmanagement/qos/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../networking/winsock/callbacks.g.dart';
import '../../system/com/structs.g.dart';
import '../../system/kernel/structs.g.dart';
import '../../specialTypes.dart';

/// {@category Struct}
class AAL5_PARAMETERS extends Struct {
  @Uint32()
  external int ForwardMaxCPCSSDUSize;

  @Uint32()
  external int BackwardMaxCPCSSDUSize;

  @Uint8()
  external int Mode;

  @Uint8()
  external int SSCSType;
}

/// {@category Struct}
class AALUSER_PARAMETERS extends Struct {
  @Uint32()
  external int UserDefined;
}

/// {@category Struct}
class AAL_PARAMETERS_IE extends Struct {
  @Int32()
  external int AALType;

  external _AAL_PARAMETERS_IE__AALSpecificParameters_e__Union
      AALSpecificParameters;
}

/// {@category Struct}
class _AAL_PARAMETERS_IE__AALSpecificParameters_e__Union extends Union {
  external AAL5_PARAMETERS AAL5Parameters;

  external AALUSER_PARAMETERS AALUserParameters;
}

extension AAL_PARAMETERS_IE_Extension on AAL_PARAMETERS_IE {
  AAL5_PARAMETERS get AAL5Parameters =>
      this.AALSpecificParameters.AAL5Parameters;
  set AAL5Parameters(AAL5_PARAMETERS value) =>
      this.AALSpecificParameters.AAL5Parameters = value;

  AALUSER_PARAMETERS get AALUserParameters =>
      this.AALSpecificParameters.AALUserParameters;
  set AALUserParameters(AALUSER_PARAMETERS value) =>
      this.AALSpecificParameters.AALUserParameters = value;
}

/// {@category Struct}
class AFPROTOCOLS extends Struct {
  @Int32()
  external int iAddressFamily;

  @Int32()
  external int iProtocol;
}

/// {@category Struct}
class ASSOCIATE_NAMERES_CONTEXT_INPUT extends Struct {
  external TRANSPORT_SETTING_ID TransportSettingId;

  @Uint64()
  external int $Handle;
}

/// {@category Struct}
class ATM_ADDRESS extends Struct {
  @Uint32()
  external int AddressType;

  @Uint32()
  external int NumofDigits;

  @Array(20)
  external Array<Uint8> Addr;
}

/// {@category Struct}
class ATM_BHLI extends Struct {
  @Uint32()
  external int HighLayerInfoType;

  @Uint32()
  external int HighLayerInfoLength;

  @Array(8)
  external Array<Uint8> HighLayerInfo;
}

/// {@category Struct}
class ATM_BLLI extends Struct {
  @Uint32()
  external int Layer2Protocol;

  @Uint32()
  external int Layer2UserSpecifiedProtocol;

  @Uint32()
  external int Layer3Protocol;

  @Uint32()
  external int Layer3UserSpecifiedProtocol;

  @Uint32()
  external int Layer3IPI;

  @Array(5)
  external Array<Uint8> SnapID;
}

/// {@category Struct}
class ATM_BLLI_IE extends Struct {
  @Uint32()
  external int Layer2Protocol;

  @Uint8()
  external int Layer2Mode;

  @Uint8()
  external int Layer2WindowSize;

  @Uint32()
  external int Layer2UserSpecifiedProtocol;

  @Uint32()
  external int Layer3Protocol;

  @Uint8()
  external int Layer3Mode;

  @Uint8()
  external int Layer3DefaultPacketSize;

  @Uint8()
  external int Layer3PacketWindowSize;

  @Uint32()
  external int Layer3UserSpecifiedProtocol;

  @Uint32()
  external int Layer3IPI;

  @Array(5)
  external Array<Uint8> SnapID;
}

/// {@category Struct}
class ATM_BROADBAND_BEARER_CAPABILITY_IE extends Struct {
  @Uint8()
  external int BearerClass;

  @Uint8()
  external int TrafficType;

  @Uint8()
  external int TimingRequirements;

  @Uint8()
  external int ClippingSusceptability;

  @Uint8()
  external int UserPlaneConnectionConfig;
}

/// {@category Struct}
class ATM_CALLING_PARTY_NUMBER_IE extends Struct {
  external ATM_ADDRESS ATM_Number;

  @Uint8()
  external int Presentation_Indication;

  @Uint8()
  external int Screening_Indicator;
}

/// {@category Struct}
class ATM_CAUSE_IE extends Struct {
  @Uint8()
  external int Location;

  @Uint8()
  external int Cause;

  @Uint8()
  external int DiagnosticsLength;

  @Array(4)
  external Array<Uint8> Diagnostics;
}

/// {@category Struct}
class ATM_CONNECTION_ID extends Struct {
  @Uint32()
  external int DeviceNumber;

  @Uint32()
  external int VPI;

  @Uint32()
  external int VCI;
}

/// {@category Struct}
class ATM_PVC_PARAMS extends Struct {
  external ATM_CONNECTION_ID PvcConnectionId;

  external QOS PvcQos;
}

/// {@category Struct}
class ATM_QOS_CLASS_IE extends Struct {
  @Uint8()
  external int QOSClassForward;

  @Uint8()
  external int QOSClassBackward;
}

/// {@category Struct}
class ATM_TD extends Struct {
  @Uint32()
  external int PeakCellRate_CLP0;

  @Uint32()
  external int PeakCellRate_CLP01;

  @Uint32()
  external int SustainableCellRate_CLP0;

  @Uint32()
  external int SustainableCellRate_CLP01;

  @Uint32()
  external int MaxBurstSize_CLP0;

  @Uint32()
  external int MaxBurstSize_CLP01;

  @Int32()
  external int Tagging;
}

/// {@category Struct}
class ATM_TRAFFIC_DESCRIPTOR_IE extends Struct {
  external ATM_TD Forward;

  external ATM_TD Backward;

  @Int32()
  external int BestEffort;
}

/// {@category Struct}
class ATM_TRANSIT_NETWORK_SELECTION_IE extends Struct {
  @Uint8()
  external int TypeOfNetworkId;

  @Uint8()
  external int NetworkIdPlan;

  @Uint8()
  external int NetworkIdLength;

  @Array(1)
  external Array<Uint8> NetworkId;
}

/// {@category Struct}
class CSADDR_INFO extends Struct {
  external SOCKET_ADDRESS LocalAddr;

  external SOCKET_ADDRESS RemoteAddr;

  @Int32()
  external int iSocketType;

  @Int32()
  external int iProtocol;
}

/// {@category Struct}
class GROUP_FILTER extends Struct {
  @Uint32()
  external int gf_interface;

  external SOCKADDR_STORAGE gf_group;

  @Int32()
  external int gf_fmode;

  @Uint32()
  external int gf_numsrc;

  @Array(1)
  external Array<SOCKADDR_STORAGE> gf_slist;
}

/// {@category Struct}
class GROUP_REQ extends Struct {
  @Uint32()
  external int gr_interface;

  external SOCKADDR_STORAGE gr_group;
}

/// {@category Struct}
class GROUP_SOURCE_REQ extends Struct {
  @Uint32()
  external int gsr_interface;

  external SOCKADDR_STORAGE gsr_group;

  external SOCKADDR_STORAGE gsr_source;
}

/// {@category Struct}
class ICMP_ERROR_INFO extends Struct {
  external SOCKADDR_INET srcaddress;

  @Int32()
  external int protocol;

  @Uint8()
  external int type;

  @Uint8()
  external int code;
}

/// {@category Struct}
class IN6_ADDR extends Struct {
  external _IN6_ADDR__u_e__Union u;
}

/// {@category Struct}
class _IN6_ADDR__u_e__Union extends Union {
  @Array(16)
  external Array<Uint8> Byte;

  @Array(8)
  external Array<Uint16> Word;
}

extension IN6_ADDR_Extension on IN6_ADDR {
  Array<Uint8> get Byte => this.u.Byte;
  set Byte(Array<Uint8> value) => this.u.Byte = value;

  Array<Uint16> get Word => this.u.Word;
  set Word(Array<Uint16> value) => this.u.Word = value;
}

/// {@category Struct}
class IN6_PKTINFO extends Struct {
  external IN6_ADDR ipi6_addr;

  @Uint32()
  external int ipi6_ifindex;
}

/// {@category Struct}
class INET_PORT_RANGE extends Struct {
  @Uint16()
  external int StartPort;

  @Uint16()
  external int NumberOfPorts;
}

/// {@category Struct}
class INET_PORT_RESERVATION_INFORMATION extends Struct {
  @Uint32()
  external int OwningPid;
}

/// {@category Struct}
class INET_PORT_RESERVATION_INSTANCE extends Struct {
  external INET_PORT_RANGE Reservation;

  external INET_PORT_RESERVATION_TOKEN Token;
}

/// {@category Struct}
class INET_PORT_RESERVATION_TOKEN extends Struct {
  @Uint64()
  external int Token;
}

/// {@category Struct}
class INTERFACE_INFO extends Struct {
  @Uint32()
  external int iiFlags;

  external sockaddr_gen iiAddress;

  external sockaddr_gen iiBroadcastAddress;

  external sockaddr_gen iiNetmask;
}

/// {@category Struct}
class INTERFACE_INFO_EX extends Struct {
  @Uint32()
  external int iiFlags;

  external SOCKET_ADDRESS iiAddress;

  external SOCKET_ADDRESS iiBroadcastAddress;

  external SOCKET_ADDRESS iiNetmask;
}

/// {@category Struct}
class IN_ADDR extends Struct {
  external _IN_ADDR__S_un_e__Union S_un;
}

/// {@category Struct}
class _IN_ADDR__S_un_e__Union extends Union {
  external _IN_ADDR__S_un_e__Union__S_un_b_e__Struct S_un_b;

  external _IN_ADDR__S_un_e__Union__S_un_w_e__Struct S_un_w;

  @Uint32()
  external int S_addr;
}

/// {@category Struct}
class _IN_ADDR__S_un_e__Union__S_un_b_e__Struct extends Struct {
  @Uint8()
  external int s_b1;

  @Uint8()
  external int s_b2;

  @Uint8()
  external int s_b3;

  @Uint8()
  external int s_b4;
}

extension IN_ADDR__S_un_e__Union_Extension on IN_ADDR {
  int get s_b1 => this.S_un.S_un_b.s_b1;
  set s_b1(int value) => this.S_un.S_un_b.s_b1 = value;

  int get s_b2 => this.S_un.S_un_b.s_b2;
  set s_b2(int value) => this.S_un.S_un_b.s_b2 = value;

  int get s_b3 => this.S_un.S_un_b.s_b3;
  set s_b3(int value) => this.S_un.S_un_b.s_b3 = value;

  int get s_b4 => this.S_un.S_un_b.s_b4;
  set s_b4(int value) => this.S_un.S_un_b.s_b4 = value;
}

/// {@category Struct}
class _IN_ADDR__S_un_e__Union__S_un_w_e__Struct extends Struct {
  @Uint16()
  external int s_w1;

  @Uint16()
  external int s_w2;
}

extension IN_ADDR__S_un_e__Union_Extension_1 on IN_ADDR {
  int get s_w1 => this.S_un.S_un_w.s_w1;
  set s_w1(int value) => this.S_un.S_un_w.s_w1 = value;

  int get s_w2 => this.S_un.S_un_w.s_w2;
  set s_w2(int value) => this.S_un.S_un_w.s_w2 = value;
}

extension IN_ADDR_Extension on IN_ADDR {
  _IN_ADDR__S_un_e__Union__S_un_b_e__Struct get S_un_b => this.S_un.S_un_b;
  set S_un_b(_IN_ADDR__S_un_e__Union__S_un_b_e__Struct value) =>
      this.S_un.S_un_b = value;

  _IN_ADDR__S_un_e__Union__S_un_w_e__Struct get S_un_w => this.S_un.S_un_w;
  set S_un_w(_IN_ADDR__S_un_e__Union__S_un_w_e__Struct value) =>
      this.S_un.S_un_w = value;

  int get S_addr => this.S_un.S_addr;
  set S_addr(int value) => this.S_un.S_addr = value;
}

/// {@category Struct}
class IN_PKTINFO extends Struct {
  external IN_ADDR ipi_addr;

  @Uint32()
  external int ipi_ifindex;
}

/// {@category Struct}
class IN_PKTINFO_EX extends Struct {
  external IN_PKTINFO pkt_info;

  external SCOPE_ID scope_id;
}

/// {@category Struct}
class IN_RECVERR extends Struct {
  @Int32()
  external int protocol;

  @Uint32()
  external int info;

  @Uint8()
  external int type;

  @Uint8()
  external int code;
}

/// {@category Struct}
class IPV6_MREQ extends Struct {
  external IN6_ADDR ipv6mr_multiaddr;

  @Uint32()
  external int ipv6mr_interface;
}

/// {@category Struct}
class IPX_ADDRESS_DATA extends Struct {
  @Int32()
  external int adapternum;

  @Array(4)
  external Array<Uint8> netnum;

  @Array(6)
  external Array<Uint8> nodenum;

  @Uint8()
  external int wan;

  @Uint8()
  external int status;

  @Int32()
  external int maxpkt;

  @Uint32()
  external int linkspeed;
}

/// {@category Struct}
class IPX_NETNUM_DATA extends Struct {
  @Array(4)
  external Array<Uint8> netnum;

  @Uint16()
  external int hopcount;

  @Uint16()
  external int netdelay;

  @Int32()
  external int cardnum;

  @Array(6)
  external Array<Uint8> router;
}

/// {@category Struct}
class IPX_SPXCONNSTATUS_DATA extends Struct {
  @Uint8()
  external int ConnectionState;

  @Uint8()
  external int WatchDogActive;

  @Uint16()
  external int LocalConnectionId;

  @Uint16()
  external int RemoteConnectionId;

  @Uint16()
  external int LocalSequenceNumber;

  @Uint16()
  external int LocalAckNumber;

  @Uint16()
  external int LocalAllocNumber;

  @Uint16()
  external int RemoteAckNumber;

  @Uint16()
  external int RemoteAllocNumber;

  @Uint16()
  external int LocalSocket;

  @Array(6)
  external Array<Uint8> ImmediateAddress;

  @Array(4)
  external Array<Uint8> RemoteNetwork;

  @Array(6)
  external Array<Uint8> RemoteNode;

  @Uint16()
  external int RemoteSocket;

  @Uint16()
  external int RetransmissionCount;

  @Uint16()
  external int EstimatedRoundTripDelay;

  @Uint16()
  external int RetransmittedPackets;

  @Uint16()
  external int SuppressedPacket;
}

/// {@category Struct}
class IP_MREQ extends Struct {
  external IN_ADDR imr_multiaddr;

  external IN_ADDR imr_interface;
}

/// {@category Struct}
class IP_MREQ_SOURCE extends Struct {
  external IN_ADDR imr_multiaddr;

  external IN_ADDR imr_sourceaddr;

  external IN_ADDR imr_interface;
}

/// {@category Struct}
class IP_MSFILTER extends Struct {
  external IN_ADDR imsf_multiaddr;

  external IN_ADDR imsf_interface;

  @Int32()
  external int imsf_fmode;

  @Uint32()
  external int imsf_numsrc;

  @Array(1)
  external Array<IN_ADDR> imsf_slist;
}

/// {@category Struct}
class LM_IRPARMS extends Struct {
  @Uint32()
  external int nTXDataBytes;

  @Uint32()
  external int nRXDataBytes;

  @Uint32()
  external int nBaudRate;

  @Uint32()
  external int thresholdTime;

  @Uint32()
  external int discTime;

  @Uint16()
  external int nMSLinkTurn;

  @Uint8()
  external int nTXPackets;

  @Uint8()
  external int nRXPackets;
}

/// {@category Struct}
class NAPI_DOMAIN_DESCRIPTION_BLOB extends Struct {
  @Uint32()
  external int AuthLevel;

  @Uint32()
  external int cchDomainName;

  @Uint32()
  external int OffsetNextDomainDescription;

  @Uint32()
  external int OffsetThisDomainName;
}

/// {@category Struct}
class NAPI_PROVIDER_INSTALLATION_BLOB extends Struct {
  @Uint32()
  external int dwVersion;

  @Uint32()
  external int dwProviderType;

  @Uint32()
  external int fSupportsWildCard;

  @Uint32()
  external int cDomains;

  @Uint32()
  external int OffsetFirstDomain;
}

/// {@category Struct}
class NETRESOURCE2 extends Struct {
  @Uint32()
  external int dwScope;

  @Uint32()
  external int dwType;

  @Uint32()
  external int dwUsage;

  @Uint32()
  external int dwDisplayType;

  external Pointer<Utf16> lpLocalName;

  external Pointer<Utf16> lpRemoteName;

  external Pointer<Utf16> lpComment;

  external NS_INFO ns_info;

  external GUID ServiceType;

  @Uint32()
  external int dwProtocols;

  external Pointer<Int32> lpiProtocols;
}

/// {@category Struct}
class NLA_BLOB extends Struct {
  external _NLA_BLOB__header_e__Struct header;

  external _NLA_BLOB__data_e__Union data;
}

/// {@category Struct}
class _NLA_BLOB__header_e__Struct extends Struct {
  @Int32()
  external int type;

  @Uint32()
  external int dwSize;

  @Uint32()
  external int nextOffset;
}

extension NLA_BLOB_Extension on NLA_BLOB {
  int get type => this.header.type;
  set type(int value) => this.header.type = value;

  int get dwSize => this.header.dwSize;
  set dwSize(int value) => this.header.dwSize = value;

  int get nextOffset => this.header.nextOffset;
  set nextOffset(int value) => this.header.nextOffset = value;
}

/// {@category Struct}
class _NLA_BLOB__data_e__Union extends Union {
  @Array(1)
  external Array<Uint8> rawData;

  external _NLA_BLOB__data_e__Union__interfaceData_e__Struct interfaceData;

  external _NLA_BLOB__data_e__Union__locationData_e__Struct locationData;

  external _NLA_BLOB__data_e__Union__connectivity_e__Struct connectivity;

  external _NLA_BLOB__data_e__Union__ICS_e__Struct ICS;
}

/// {@category Struct}
class _NLA_BLOB__data_e__Union__interfaceData_e__Struct extends Struct {
  @Uint32()
  external int dwType;

  @Uint32()
  external int dwSpeed;

  @Array(1)
  external Array<Uint8> adapterName;
}

extension NLA_BLOB__data_e__Union_Extension on NLA_BLOB {
  int get dwType => this.data.interfaceData.dwType;
  set dwType(int value) => this.data.interfaceData.dwType = value;

  int get dwSpeed => this.data.interfaceData.dwSpeed;
  set dwSpeed(int value) => this.data.interfaceData.dwSpeed = value;

  Array<Uint8> get adapterName => this.data.interfaceData.adapterName;
  set adapterName(Array<Uint8> value) =>
      this.data.interfaceData.adapterName = value;
}

/// {@category Struct}
class _NLA_BLOB__data_e__Union__locationData_e__Struct extends Struct {
  @Array(1)
  external Array<Uint8> information;
}

extension NLA_BLOB__data_e__Union_Extension_1 on NLA_BLOB {
  Array<Uint8> get information => this.data.locationData.information;
  set information(Array<Uint8> value) =>
      this.data.locationData.information = value;
}

/// {@category Struct}
class _NLA_BLOB__data_e__Union__connectivity_e__Struct extends Struct {
  @Int32()
  external int type;

  @Int32()
  external int internet;
}

extension NLA_BLOB__data_e__Union_Extension_2 on NLA_BLOB {
  int get type => this.data.connectivity.type;
  set type(int value) => this.data.connectivity.type = value;

  int get internet => this.data.connectivity.internet;
  set internet(int value) => this.data.connectivity.internet = value;
}

/// {@category Struct}
class _NLA_BLOB__data_e__Union__ICS_e__Struct extends Struct {
  external _NLA_BLOB__data_e__Union__ICS_e__Struct__remote_e__Struct remote;
}

/// {@category Struct}
class _NLA_BLOB__data_e__Union__ICS_e__Struct__remote_e__Struct extends Struct {
  @Uint32()
  external int speed;

  @Uint32()
  external int type;

  @Uint32()
  external int state;

  @Array(256)
  external Array<Uint16> _machineName;

  String get machineName {
    final charCodes = <int>[];
    for (var i = 0; i < 256; i++) {
      charCodes.add(_machineName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set machineName(String value) {
    final stringToStore = value.padRight(256, '\x00');
    for (var i = 0; i < 256; i++) {
      _machineName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(256)
  external Array<Uint16> _sharedAdapterName;

  String get sharedAdapterName {
    final charCodes = <int>[];
    for (var i = 0; i < 256; i++) {
      charCodes.add(_sharedAdapterName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set sharedAdapterName(String value) {
    final stringToStore = value.padRight(256, '\x00');
    for (var i = 0; i < 256; i++) {
      _sharedAdapterName[i] = stringToStore.codeUnitAt(i);
    }
  }
}

extension NLA_BLOB__data_e__Union__ICS_e__Struct_Extension on NLA_BLOB {
  int get speed => this.data.ICS.remote.speed;
  set speed(int value) => this.data.ICS.remote.speed = value;

  int get type => this.data.ICS.remote.type;
  set type(int value) => this.data.ICS.remote.type = value;

  int get state => this.data.ICS.remote.state;
  set state(int value) => this.data.ICS.remote.state = value;

  String get machineName => this.data.ICS.remote.machineName;
  set machineName(String value) => this.data.ICS.remote.machineName = value;

  String get sharedAdapterName => this.data.ICS.remote.sharedAdapterName;
  set sharedAdapterName(String value) =>
      this.data.ICS.remote.sharedAdapterName = value;
}

extension NLA_BLOB__data_e__Union_Extension_3 on NLA_BLOB {
  _NLA_BLOB__data_e__Union__ICS_e__Struct__remote_e__Struct get remote =>
      this.data.ICS.remote;
  set remote(_NLA_BLOB__data_e__Union__ICS_e__Struct__remote_e__Struct value) =>
      this.data.ICS.remote = value;
}

extension NLA_BLOB_Extension_1 on NLA_BLOB {
  Array<Uint8> get rawData => this.data.rawData;
  set rawData(Array<Uint8> value) => this.data.rawData = value;

  _NLA_BLOB__data_e__Union__interfaceData_e__Struct get interfaceData =>
      this.data.interfaceData;
  set interfaceData(_NLA_BLOB__data_e__Union__interfaceData_e__Struct value) =>
      this.data.interfaceData = value;

  _NLA_BLOB__data_e__Union__locationData_e__Struct get locationData =>
      this.data.locationData;
  set locationData(_NLA_BLOB__data_e__Union__locationData_e__Struct value) =>
      this.data.locationData = value;

  _NLA_BLOB__data_e__Union__connectivity_e__Struct get connectivity =>
      this.data.connectivity;
  set connectivity(_NLA_BLOB__data_e__Union__connectivity_e__Struct value) =>
      this.data.connectivity = value;

  _NLA_BLOB__data_e__Union__ICS_e__Struct get ICS => this.data.ICS;
  set ICS(_NLA_BLOB__data_e__Union__ICS_e__Struct value) =>
      this.data.ICS = value;
}

/// {@category Struct}
class NL_BANDWIDTH_INFORMATION extends Struct {
  @Uint64()
  external int Bandwidth;

  @Uint64()
  external int Instability;

  @Uint8()
  external int BandwidthPeaked;
}

/// {@category Struct}
class NL_INTERFACE_OFFLOAD_ROD extends Struct {
  @Uint8()
  external int bitfield;
}

/// {@category Struct}
class NL_NETWORK_CONNECTIVITY_HINT extends Struct {
  @Int32()
  external int ConnectivityLevel;

  @Int32()
  external int ConnectivityCost;

  @Uint8()
  external int ApproachingDataLimit;

  @Uint8()
  external int OverDataLimit;

  @Uint8()
  external int Roaming;
}

/// {@category Struct}
class NL_PATH_BANDWIDTH_ROD extends Struct {
  @Uint64()
  external int Bandwidth;

  @Uint64()
  external int Instability;

  @Uint8()
  external int BandwidthPeaked;
}

/// {@category Struct}
class NSPV2_ROUTINE extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int dwMajorVersion;

  @Uint32()
  external int dwMinorVersion;

  external Pointer<NativeFunction<LPNSPV2STARTUP>> NSPv2Startup;

  external Pointer<NativeFunction<LPNSPV2CLEANUP>> NSPv2Cleanup;

  external Pointer<NativeFunction<LPNSPV2LOOKUPSERVICEBEGIN>>
      NSPv2LookupServiceBegin;

  external Pointer<NativeFunction<LPNSPV2LOOKUPSERVICENEXTEX>>
      NSPv2LookupServiceNextEx;

  external Pointer<NativeFunction<LPNSPV2LOOKUPSERVICEEND>>
      NSPv2LookupServiceEnd;

  external Pointer<NativeFunction<LPNSPV2SETSERVICEEX>> NSPv2SetServiceEx;

  external Pointer<NativeFunction<LPNSPV2CLIENTSESSIONRUNDOWN>>
      NSPv2ClientSessionRundown;
}

/// {@category Struct}
class NSP_ROUTINE extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int dwMajorVersion;

  @Uint32()
  external int dwMinorVersion;

  external Pointer<NativeFunction<LPNSPCLEANUP>> NSPCleanup;

  external Pointer<NativeFunction<LPNSPLOOKUPSERVICEBEGIN>>
      NSPLookupServiceBegin;

  external Pointer<NativeFunction<LPNSPLOOKUPSERVICENEXT>> NSPLookupServiceNext;

  external Pointer<NativeFunction<LPNSPLOOKUPSERVICEEND>> NSPLookupServiceEnd;

  external Pointer<NativeFunction<LPNSPSETSERVICE>> NSPSetService;

  external Pointer<NativeFunction<LPNSPINSTALLSERVICECLASS>>
      NSPInstallServiceClass;

  external Pointer<NativeFunction<LPNSPREMOVESERVICECLASS>>
      NSPRemoveServiceClass;

  external Pointer<NativeFunction<LPNSPGETSERVICECLASSINFO>>
      NSPGetServiceClassInfo;

  external Pointer<NativeFunction<LPNSPIOCTL>> NSPIoctl;
}

/// {@category Struct}
class NS_INFO extends Struct {
  @Uint32()
  external int dwNameSpace;

  @Uint32()
  external int dwNameSpaceFlags;

  external Pointer<Utf16> lpNameSpace;
}

/// {@category Struct}
class NS_SERVICE_INFO extends Struct {
  @Uint32()
  external int dwNameSpace;

  external SERVICE_INFO ServiceInfo;
}

/// {@category Struct}
class PRIORITY_STATUS extends Struct {
  @Int32()
  external int Sender;

  @Int32()
  external int Receiver;
}

/// {@category Struct}
class PROTOCOL_INFO extends Struct {
  @Uint32()
  external int dwServiceFlags;

  @Int32()
  external int iAddressFamily;

  @Int32()
  external int iMaxSockAddr;

  @Int32()
  external int iMinSockAddr;

  @Int32()
  external int iSocketType;

  @Int32()
  external int iProtocol;

  @Uint32()
  external int dwMessageSize;

  external Pointer<Utf16> lpProtocol;
}

/// {@category Struct}
class Q2931_IE extends Struct {
  @Int32()
  external int IEType;

  @Uint32()
  external int IELength;

  @Array(1)
  external Array<Uint8> IE;
}

/// {@category Struct}
class RCVALL_IF extends Struct {
  @Int32()
  external int Mode;

  @Uint32()
  external int Interface;
}

/// {@category Struct}
class REAL_TIME_NOTIFICATION_SETTING_INPUT extends Struct {
  external TRANSPORT_SETTING_ID TransportSettingId;

  external GUID BrokerEventGuid;
}

/// {@category Struct}
class REAL_TIME_NOTIFICATION_SETTING_INPUT_EX extends Struct {
  external TRANSPORT_SETTING_ID TransportSettingId;

  external GUID BrokerEventGuid;

  @Uint8()
  external int Unmark;
}

/// {@category Struct}
class REAL_TIME_NOTIFICATION_SETTING_OUTPUT extends Struct {
  @Int32()
  external int ChannelStatus;
}

/// {@category Struct}
class RIORESULT extends Struct {
  @Int32()
  external int Status;

  @Uint32()
  external int BytesTransferred;

  @Uint64()
  external int SocketContext;

  @Uint64()
  external int RequestContext;
}

/// {@category Struct}
class RIO_BUF extends Struct {
  external Pointer<RIO_BUFFERID_t> BufferId;

  @Uint32()
  external int Offset;

  @Uint32()
  external int Length;
}

/// {@category Struct}
class RIO_BUFFERID_t extends Opaque {}

/// {@category Struct}
class RIO_CMSG_BUFFER extends Struct {
  @Uint32()
  external int TotalLength;
}

/// {@category Struct}
class RIO_CQ_t extends Opaque {}

/// {@category Struct}
class RIO_EXTENSION_FUNCTION_TABLE extends Struct {
  @Uint32()
  external int cbSize;

  external Pointer<NativeFunction<LPFN_RIORECEIVE>> RIOReceive;

  external Pointer<NativeFunction<LPFN_RIORECEIVEEX>> RIOReceiveEx;

  external Pointer<NativeFunction<LPFN_RIOSEND>> RIOSend;

  external Pointer<NativeFunction<LPFN_RIOSENDEX>> RIOSendEx;

  external Pointer<NativeFunction<LPFN_RIOCLOSECOMPLETIONQUEUE>>
      RIOCloseCompletionQueue;

  external Pointer<NativeFunction<LPFN_RIOCREATECOMPLETIONQUEUE>>
      RIOCreateCompletionQueue;

  external Pointer<NativeFunction<LPFN_RIOCREATEREQUESTQUEUE>>
      RIOCreateRequestQueue;

  external Pointer<NativeFunction<LPFN_RIODEQUEUECOMPLETION>>
      RIODequeueCompletion;

  external Pointer<NativeFunction<LPFN_RIODEREGISTERBUFFER>>
      RIODeregisterBuffer;

  external Pointer<NativeFunction<LPFN_RIONOTIFY>> RIONotify;

  external Pointer<NativeFunction<LPFN_RIOREGISTERBUFFER>> RIORegisterBuffer;

  external Pointer<NativeFunction<LPFN_RIORESIZECOMPLETIONQUEUE>>
      RIOResizeCompletionQueue;

  external Pointer<NativeFunction<LPFN_RIORESIZEREQUESTQUEUE>>
      RIOResizeRequestQueue;
}

/// {@category Struct}
class RIO_NOTIFICATION_COMPLETION extends Struct {
  @Int32()
  external int Type;

  external _RIO_NOTIFICATION_COMPLETION__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _RIO_NOTIFICATION_COMPLETION__Anonymous_e__Union extends Union {
  external _RIO_NOTIFICATION_COMPLETION__Anonymous_e__Union__Event_e__Struct
      Event;

  external _RIO_NOTIFICATION_COMPLETION__Anonymous_e__Union__Iocp_e__Struct
      Iocp;
}

/// {@category Struct}
class _RIO_NOTIFICATION_COMPLETION__Anonymous_e__Union__Event_e__Struct
    extends Struct {
  @IntPtr()
  external int EventHandle;

  @Int32()
  external int NotifyReset;
}

extension RIO_NOTIFICATION_COMPLETION__Anonymous_e__Union_Extension
    on RIO_NOTIFICATION_COMPLETION {
  int get EventHandle => this.Anonymous.Event.EventHandle;
  set EventHandle(int value) => this.Anonymous.Event.EventHandle = value;

  int get NotifyReset => this.Anonymous.Event.NotifyReset;
  set NotifyReset(int value) => this.Anonymous.Event.NotifyReset = value;
}

/// {@category Struct}
class _RIO_NOTIFICATION_COMPLETION__Anonymous_e__Union__Iocp_e__Struct
    extends Struct {
  @IntPtr()
  external int IocpHandle;

  external Pointer CompletionKey;

  external Pointer Overlapped;
}

extension RIO_NOTIFICATION_COMPLETION__Anonymous_e__Union_Extension_1
    on RIO_NOTIFICATION_COMPLETION {
  int get IocpHandle => this.Anonymous.Iocp.IocpHandle;
  set IocpHandle(int value) => this.Anonymous.Iocp.IocpHandle = value;

  Pointer get CompletionKey => this.Anonymous.Iocp.CompletionKey;
  set CompletionKey(Pointer value) => this.Anonymous.Iocp.CompletionKey = value;

  Pointer get Overlapped => this.Anonymous.Iocp.Overlapped;
  set Overlapped(Pointer value) => this.Anonymous.Iocp.Overlapped = value;
}

extension RIO_NOTIFICATION_COMPLETION_Extension on RIO_NOTIFICATION_COMPLETION {
  _RIO_NOTIFICATION_COMPLETION__Anonymous_e__Union__Event_e__Struct get Event =>
      this.Anonymous.Event;
  set Event(
          _RIO_NOTIFICATION_COMPLETION__Anonymous_e__Union__Event_e__Struct
              value) =>
      this.Anonymous.Event = value;

  _RIO_NOTIFICATION_COMPLETION__Anonymous_e__Union__Iocp_e__Struct get Iocp =>
      this.Anonymous.Iocp;
  set Iocp(
          _RIO_NOTIFICATION_COMPLETION__Anonymous_e__Union__Iocp_e__Struct
              value) =>
      this.Anonymous.Iocp = value;
}

/// {@category Struct}
class RIO_RQ_t extends Opaque {}

/// {@category Struct}
class RM_FEC_INFO extends Struct {
  @Uint16()
  external int FECBlockSize;

  @Uint16()
  external int FECProActivePackets;

  @Uint8()
  external int FECGroupSize;

  @Uint8()
  external int fFECOnDemandParityEnabled;
}

/// {@category Struct}
class RM_RECEIVER_STATS extends Struct {
  @Uint64()
  external int NumODataPacketsReceived;

  @Uint64()
  external int NumRDataPacketsReceived;

  @Uint64()
  external int NumDuplicateDataPackets;

  @Uint64()
  external int DataBytesReceived;

  @Uint64()
  external int TotalBytesReceived;

  @Uint64()
  external int RateKBitsPerSecOverall;

  @Uint64()
  external int RateKBitsPerSecLast;

  @Uint64()
  external int TrailingEdgeSeqId;

  @Uint64()
  external int LeadingEdgeSeqId;

  @Uint64()
  external int AverageSequencesInWindow;

  @Uint64()
  external int MinSequencesInWindow;

  @Uint64()
  external int MaxSequencesInWindow;

  @Uint64()
  external int FirstNakSequenceNumber;

  @Uint64()
  external int NumPendingNaks;

  @Uint64()
  external int NumOutstandingNaks;

  @Uint64()
  external int NumDataPacketsBuffered;

  @Uint64()
  external int TotalSelectiveNaksSent;

  @Uint64()
  external int TotalParityNaksSent;
}

/// {@category Struct}
class RM_SENDER_STATS extends Struct {
  @Uint64()
  external int DataBytesSent;

  @Uint64()
  external int TotalBytesSent;

  @Uint64()
  external int NaksReceived;

  @Uint64()
  external int NaksReceivedTooLate;

  @Uint64()
  external int NumOutstandingNaks;

  @Uint64()
  external int NumNaksAfterRData;

  @Uint64()
  external int RepairPacketsSent;

  @Uint64()
  external int BufferSpaceAvailable;

  @Uint64()
  external int TrailingEdgeSeqId;

  @Uint64()
  external int LeadingEdgeSeqId;

  @Uint64()
  external int RateKBitsPerSecOverall;

  @Uint64()
  external int RateKBitsPerSecLast;

  @Uint64()
  external int TotalODataPacketsSent;
}

/// {@category Struct}
class RM_SEND_WINDO extends Struct {
  @Uint32()
  external int RateKbitsPerSec;

  @Uint32()
  external int WindowSizeInMSecs;

  @Uint32()
  external int WindowSizeInBytes;
}

/// {@category Struct}
class RSS_SCALABILITY_INFO extends Struct {
  @Uint8()
  external int RssEnabled;
}

/// {@category Struct}
class SCOPE_ID extends Struct {
  external _SCOPE_ID__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _SCOPE_ID__Anonymous_e__Union extends Union {
  external _SCOPE_ID__Anonymous_e__Union__Anonymous_e__Struct Anonymous;

  @Uint32()
  external int Value;
}

/// {@category Struct}
class _SCOPE_ID__Anonymous_e__Union__Anonymous_e__Struct extends Struct {
  @Uint32()
  external int bitfield;
}

extension SCOPE_ID__Anonymous_e__Union_Extension on SCOPE_ID {
  int get bitfield => this.Anonymous.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous.Anonymous.bitfield = value;
}

extension SCOPE_ID_Extension on SCOPE_ID {
  _SCOPE_ID__Anonymous_e__Union__Anonymous_e__Struct get Anonymous =>
      this.Anonymous.Anonymous;
  set Anonymous(_SCOPE_ID__Anonymous_e__Union__Anonymous_e__Struct value) =>
      this.Anonymous.Anonymous = value;

  int get Value => this.Anonymous.Value;
  set Value(int value) => this.Anonymous.Value = value;
}

/// {@category Struct}
class SERVICE_ADDRESS extends Struct {
  @Uint32()
  external int dwAddressType;

  @Uint32()
  external int dwAddressFlags;

  @Uint32()
  external int dwAddressLength;

  @Uint32()
  external int dwPrincipalLength;

  external Pointer<Uint8> lpAddress;

  external Pointer<Uint8> lpPrincipal;
}

/// {@category Struct}
class SERVICE_ADDRESSES extends Struct {
  @Uint32()
  external int dwAddressCount;

  @Array(1)
  external Array<SERVICE_ADDRESS> Addresses;
}

/// {@category Struct}
class SERVICE_ASYNC_INFO extends Struct {
  external Pointer<NativeFunction<LPSERVICE_CALLBACK_PROC>>
      lpServiceCallbackProc;

  @IntPtr()
  external int lParam;

  @IntPtr()
  external int hAsyncTaskHandle;
}

/// {@category Struct}
class SERVICE_INFO extends Struct {
  external Pointer<GUID> lpServiceType;

  external Pointer<Utf16> lpServiceName;

  external Pointer<Utf16> lpComment;

  external Pointer<Utf16> lpLocale;

  @Uint32()
  external int dwDisplayHint;

  @Uint32()
  external int dwVersion;

  @Uint32()
  external int dwTime;

  external Pointer<Utf16> lpMachineName;

  external Pointer<SERVICE_ADDRESSES> lpServiceAddress;

  external BLOB ServiceSpecificInfo;
}

/// {@category Struct}
class SERVICE_TYPE_INFO extends Struct {
  @Uint32()
  external int dwTypeNameOffset;

  @Uint32()
  external int dwValueCount;

  @Array(1)
  external Array<SERVICE_TYPE_VALUE> Values;
}

/// {@category Struct}
class SERVICE_TYPE_INFO_ABS extends Struct {
  external Pointer<Utf16> lpTypeName;

  @Uint32()
  external int dwValueCount;

  @Array(1)
  external Array<SERVICE_TYPE_VALUE_ABS> Values;
}

/// {@category Struct}
class SERVICE_TYPE_VALUE extends Struct {
  @Uint32()
  external int dwNameSpace;

  @Uint32()
  external int dwValueType;

  @Uint32()
  external int dwValueSize;

  @Uint32()
  external int dwValueNameOffset;

  @Uint32()
  external int dwValueOffset;
}

/// {@category Struct}
class SERVICE_TYPE_VALUE_ABS extends Struct {
  @Uint32()
  external int dwNameSpace;

  @Uint32()
  external int dwValueType;

  @Uint32()
  external int dwValueSize;

  external Pointer<Utf16> lpValueName;

  external Pointer lpValue;
}

/// {@category Struct}
class SOCKADDR extends Struct {
  @Uint16()
  external int sa_family;

  @Array(14)
  external Array<Uint8> sa_data;
}

/// {@category Struct}
class SOCKADDR_DL extends Struct {
  @Uint16()
  external int sdl_family;

  @Array(8)
  external Array<Uint8> sdl_data;

  @Array(4)
  external Array<Uint8> sdl_zero;
}

/// {@category Struct}
class SOCKADDR_IN extends Struct {
  @Uint16()
  external int sin_family;

  @Uint16()
  external int sin_port;

  external IN_ADDR sin_addr;

  @Array(8)
  external Array<Uint8> sin_zero;
}

/// {@category Struct}
class SOCKADDR_IN6 extends Struct {
  @Uint16()
  external int sin6_family;

  @Uint16()
  external int sin6_port;

  @Uint32()
  external int sin6_flowinfo;

  external IN6_ADDR sin6_addr;

  external _SOCKADDR_IN6__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _SOCKADDR_IN6__Anonymous_e__Union extends Union {
  @Uint32()
  external int sin6_scope_id;

  external SCOPE_ID sin6_scope_struct;
}

extension SOCKADDR_IN6_Extension on SOCKADDR_IN6 {
  int get sin6_scope_id => this.Anonymous.sin6_scope_id;
  set sin6_scope_id(int value) => this.Anonymous.sin6_scope_id = value;

  SCOPE_ID get sin6_scope_struct => this.Anonymous.sin6_scope_struct;
  set sin6_scope_struct(SCOPE_ID value) =>
      this.Anonymous.sin6_scope_struct = value;
}

/// {@category Struct}
class SOCKADDR_IN6_PAIR extends Struct {
  external Pointer<SOCKADDR_IN6> SourceAddress;

  external Pointer<SOCKADDR_IN6> DestinationAddress;
}

/// {@category Struct}
class SOCKADDR_IN6_W2KSP1 extends Struct {
  @Int16()
  external int sin6_family;

  @Uint16()
  external int sin6_port;

  @Uint32()
  external int sin6_flowinfo;

  external IN6_ADDR sin6_addr;

  @Uint32()
  external int sin6_scope_id;
}

/// {@category Struct}
class SOCKADDR_INET extends Union {
  external SOCKADDR_IN Ipv4;

  external SOCKADDR_IN6 Ipv6;

  @Uint16()
  external int si_family;
}

/// {@category Struct}
class SOCKADDR_STORAGE extends Struct {
  @Uint16()
  external int ss_family;

  @Array(6)
  external Array<Uint8> ss_pad1;

  @Int64()
  external int ss_align;

  @Array(112)
  external Array<Uint8> ss_pad2;
}

/// {@category Struct}
class SOCKADDR_STORAGE_XP extends Struct {
  @Int16()
  external int ss_family;

  @Array(6)
  external Array<Uint8> ss_pad1;

  @Int64()
  external int ss_align;

  @Array(112)
  external Array<Uint8> ss_pad2;
}

/// {@category Struct}
class SOCKET_ADDRESS extends Struct {
  external Pointer<SOCKADDR> lpSockaddr;

  @Int32()
  external int iSockaddrLength;
}

/// {@category Struct}
class SOCKET_ADDRESS_LIST extends Struct {
  @Int32()
  external int iAddressCount;

  @Array(1)
  external Array<SOCKET_ADDRESS> Address;
}

/// {@category Struct}
class SOCKET_PEER_TARGET_NAME extends Struct {
  @Int32()
  external int SecurityProtocol;

  external SOCKADDR_STORAGE PeerAddress;

  @Uint32()
  external int PeerTargetNameStringLen;

  @Array(1)
  external Array<Uint16> _AllStrings;

  String get AllStrings {
    final charCodes = <int>[];
    for (var i = 0; i < 1; i++) {
      charCodes.add(_AllStrings[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set AllStrings(String value) {
    final stringToStore = value.padRight(1, '\x00');
    for (var i = 0; i < 1; i++) {
      _AllStrings[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class SOCKET_PROCESSOR_AFFINITY extends Struct {
  external PROCESSOR_NUMBER Processor;

  @Uint16()
  external int NumaNodeId;

  @Uint16()
  external int Reserved;
}

/// {@category Struct}
class SOCKET_SECURITY_QUERY_INFO extends Struct {
  @Int32()
  external int SecurityProtocol;

  @Uint32()
  external int Flags;

  @Uint64()
  external int PeerApplicationAccessTokenHandle;

  @Uint64()
  external int PeerMachineAccessTokenHandle;
}

/// {@category Struct}
class SOCKET_SECURITY_QUERY_INFO_IPSEC2 extends Struct {
  @Int32()
  external int SecurityProtocol;

  @Uint32()
  external int Flags;

  @Uint64()
  external int PeerApplicationAccessTokenHandle;

  @Uint64()
  external int PeerMachineAccessTokenHandle;

  @Uint64()
  external int MmSaId;

  @Uint64()
  external int QmSaId;

  @Uint32()
  external int NegotiationWinerr;

  external GUID SaLookupContext;
}

/// {@category Struct}
class SOCKET_SECURITY_QUERY_TEMPLATE extends Struct {
  @Int32()
  external int SecurityProtocol;

  external SOCKADDR_STORAGE PeerAddress;

  @Uint32()
  external int PeerTokenAccessMask;
}

/// {@category Struct}
class SOCKET_SECURITY_QUERY_TEMPLATE_IPSEC2 extends Struct {
  @Int32()
  external int SecurityProtocol;

  external SOCKADDR_STORAGE PeerAddress;

  @Uint32()
  external int PeerTokenAccessMask;

  @Uint32()
  external int Flags;

  @Uint32()
  external int FieldMask;
}

/// {@category Struct}
class SOCKET_SECURITY_SETTINGS extends Struct {
  @Int32()
  external int SecurityProtocol;

  @Uint32()
  external int SecurityFlags;
}

/// {@category Struct}
class SOCKET_SECURITY_SETTINGS_IPSEC extends Struct {
  @Int32()
  external int SecurityProtocol;

  @Uint32()
  external int SecurityFlags;

  @Uint32()
  external int IpsecFlags;

  external GUID AuthipMMPolicyKey;

  external GUID AuthipQMPolicyKey;

  external GUID Reserved;

  @Uint64()
  external int Reserved2;

  @Uint32()
  external int UserNameStringLen;

  @Uint32()
  external int DomainNameStringLen;

  @Uint32()
  external int PasswordStringLen;

  @Array(1)
  external Array<Uint16> _AllStrings;

  String get AllStrings {
    final charCodes = <int>[];
    for (var i = 0; i < 1; i++) {
      charCodes.add(_AllStrings[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set AllStrings(String value) {
    final stringToStore = value.padRight(1, '\x00');
    for (var i = 0; i < 1; i++) {
      _AllStrings[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class SOCK_NOTIFY_REGISTRATION extends Struct {
  @IntPtr()
  external int socket;

  external Pointer completionKey;

  @Uint16()
  external int eventFilter;

  @Uint8()
  external int operation;

  @Uint8()
  external int triggerFlags;

  @Uint32()
  external int registrationResult;
}

/// {@category Struct}
class TCP_ACK_FREQUENCY_PARAMETERS extends Struct {
  @Uint8()
  external int TcpDelayedAckFrequency;
}

/// {@category Struct}
class TCP_ICW_PARAMETERS extends Struct {
  @Int32()
  external int Level;
}

/// {@category Struct}
class TCP_INFO_v0 extends Struct {
  @Int32()
  external int State;

  @Uint32()
  external int Mss;

  @Uint64()
  external int ConnectionTimeMs;

  @Uint8()
  external int TimestampsEnabled;

  @Uint32()
  external int RttUs;

  @Uint32()
  external int MinRttUs;

  @Uint32()
  external int BytesInFlight;

  @Uint32()
  external int Cwnd;

  @Uint32()
  external int SndWnd;

  @Uint32()
  external int RcvWnd;

  @Uint32()
  external int RcvBuf;

  @Uint64()
  external int BytesOut;

  @Uint64()
  external int BytesIn;

  @Uint32()
  external int BytesReordered;

  @Uint32()
  external int BytesRetrans;

  @Uint32()
  external int FastRetrans;

  @Uint32()
  external int DupAcksIn;

  @Uint32()
  external int TimeoutEpisodes;

  @Uint8()
  external int SynRetrans;
}

/// {@category Struct}
class TCP_INFO_v1 extends Struct {
  @Int32()
  external int State;

  @Uint32()
  external int Mss;

  @Uint64()
  external int ConnectionTimeMs;

  @Uint8()
  external int TimestampsEnabled;

  @Uint32()
  external int RttUs;

  @Uint32()
  external int MinRttUs;

  @Uint32()
  external int BytesInFlight;

  @Uint32()
  external int Cwnd;

  @Uint32()
  external int SndWnd;

  @Uint32()
  external int RcvWnd;

  @Uint32()
  external int RcvBuf;

  @Uint64()
  external int BytesOut;

  @Uint64()
  external int BytesIn;

  @Uint32()
  external int BytesReordered;

  @Uint32()
  external int BytesRetrans;

  @Uint32()
  external int FastRetrans;

  @Uint32()
  external int DupAcksIn;

  @Uint32()
  external int TimeoutEpisodes;

  @Uint8()
  external int SynRetrans;

  @Uint32()
  external int SndLimTransRwin;

  @Uint32()
  external int SndLimTimeRwin;

  @Uint64()
  external int SndLimBytesRwin;

  @Uint32()
  external int SndLimTransCwnd;

  @Uint32()
  external int SndLimTimeCwnd;

  @Uint64()
  external int SndLimBytesCwnd;

  @Uint32()
  external int SndLimTransSnd;

  @Uint32()
  external int SndLimTimeSnd;

  @Uint64()
  external int SndLimBytesSnd;
}

/// {@category Struct}
class TCP_INITIAL_RTO_PARAMETERS extends Struct {
  @Uint16()
  external int Rtt;

  @Uint8()
  external int MaxSynRetransmissions;
}

/// {@category Struct}
class TIMESTAMPING_CONFIG extends Struct {
  @Uint32()
  external int Flags;

  @Uint16()
  external int TxTimestampsBuffered;
}

/// {@category Struct}
class TRANSMIT_FILE_BUFFERS extends Struct {
  external Pointer Head;

  @Uint32()
  external int HeadLength;

  external Pointer Tail;

  @Uint32()
  external int TailLength;
}

/// {@category Struct}
class TRANSMIT_PACKETS_ELEMENT extends Struct {
  @Uint32()
  external int dwElFlags;

  @Uint32()
  external int cLength;

  external _TRANSMIT_PACKETS_ELEMENT__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _TRANSMIT_PACKETS_ELEMENT__Anonymous_e__Union extends Union {
  external _TRANSMIT_PACKETS_ELEMENT__Anonymous_e__Union__Anonymous_e__Struct
      Anonymous;

  external Pointer pBuffer;
}

/// {@category Struct}
class _TRANSMIT_PACKETS_ELEMENT__Anonymous_e__Union__Anonymous_e__Struct
    extends Struct {
  @Int64()
  external int nFileOffset;

  @IntPtr()
  external int hFile;
}

extension TRANSMIT_PACKETS_ELEMENT__Anonymous_e__Union_Extension
    on TRANSMIT_PACKETS_ELEMENT {
  int get nFileOffset => this.Anonymous.Anonymous.nFileOffset;
  set nFileOffset(int value) => this.Anonymous.Anonymous.nFileOffset = value;

  int get hFile => this.Anonymous.Anonymous.hFile;
  set hFile(int value) => this.Anonymous.Anonymous.hFile = value;
}

extension TRANSMIT_PACKETS_ELEMENT_Extension on TRANSMIT_PACKETS_ELEMENT {
  _TRANSMIT_PACKETS_ELEMENT__Anonymous_e__Union__Anonymous_e__Struct
      get Anonymous => this.Anonymous.Anonymous;
  set Anonymous(
          _TRANSMIT_PACKETS_ELEMENT__Anonymous_e__Union__Anonymous_e__Struct
              value) =>
      this.Anonymous.Anonymous = value;

  Pointer get pBuffer => this.Anonymous.pBuffer;
  set pBuffer(Pointer value) => this.Anonymous.pBuffer = value;
}

/// {@category Struct}
class TRANSPORT_SETTING_ID extends Struct {
  external GUID Guid;
}

/// {@category Struct}
class WCE_DEVICELIST extends Struct {
  @Uint32()
  external int numDevice;

  @Array(1)
  external Array<WCE_IRDA_DEVICE_INFO> Device;
}

/// {@category Struct}
class WCE_IRDA_DEVICE_INFO extends Struct {
  @Array(4)
  external Array<Uint8> irdaDeviceID;

  @Array(22)
  external Array<Uint8> irdaDeviceName;

  @Array(2)
  external Array<Uint8> Reserved;
}

/// {@category Struct}
class WINDOWS_DEVICELIST extends Struct {
  @Uint32()
  external int numDevice;

  @Array(1)
  external Array<WINDOWS_IRDA_DEVICE_INFO> Device;
}

/// {@category Struct}
class WINDOWS_IAS_QUERY extends Struct {
  @Array(4)
  external Array<Uint8> irdaDeviceID;

  @Array(64)
  external Array<Uint8> irdaClassName;

  @Array(256)
  external Array<Uint8> irdaAttribName;

  @Uint32()
  external int irdaAttribType;

  external _WINDOWS_IAS_QUERY__irdaAttribute_e__Union irdaAttribute;
}

/// {@category Struct}
class _WINDOWS_IAS_QUERY__irdaAttribute_e__Union extends Union {
  @Int32()
  external int irdaAttribInt;

  external _WINDOWS_IAS_QUERY__irdaAttribute_e__Union__irdaAttribOctetSeq_e__Struct
      irdaAttribOctetSeq;

  external _WINDOWS_IAS_QUERY__irdaAttribute_e__Union__irdaAttribUsrStr_e__Struct
      irdaAttribUsrStr;
}

/// {@category Struct}
class _WINDOWS_IAS_QUERY__irdaAttribute_e__Union__irdaAttribOctetSeq_e__Struct
    extends Struct {
  @Uint32()
  external int Len;

  @Array(1024)
  external Array<Uint8> OctetSeq;
}

extension WINDOWS_IAS_QUERY__irdaAttribute_e__Union_Extension
    on WINDOWS_IAS_QUERY {
  int get Len => this.irdaAttribute.irdaAttribOctetSeq.Len;
  set Len(int value) => this.irdaAttribute.irdaAttribOctetSeq.Len = value;

  Array<Uint8> get OctetSeq => this.irdaAttribute.irdaAttribOctetSeq.OctetSeq;
  set OctetSeq(Array<Uint8> value) =>
      this.irdaAttribute.irdaAttribOctetSeq.OctetSeq = value;
}

/// {@category Struct}
class _WINDOWS_IAS_QUERY__irdaAttribute_e__Union__irdaAttribUsrStr_e__Struct
    extends Struct {
  @Uint32()
  external int Len;

  @Uint32()
  external int CharSet;

  @Array(256)
  external Array<Uint8> UsrStr;
}

extension WINDOWS_IAS_QUERY__irdaAttribute_e__Union_Extension_1
    on WINDOWS_IAS_QUERY {
  int get Len => this.irdaAttribute.irdaAttribUsrStr.Len;
  set Len(int value) => this.irdaAttribute.irdaAttribUsrStr.Len = value;

  int get CharSet => this.irdaAttribute.irdaAttribUsrStr.CharSet;
  set CharSet(int value) => this.irdaAttribute.irdaAttribUsrStr.CharSet = value;

  Array<Uint8> get UsrStr => this.irdaAttribute.irdaAttribUsrStr.UsrStr;
  set UsrStr(Array<Uint8> value) =>
      this.irdaAttribute.irdaAttribUsrStr.UsrStr = value;
}

extension WINDOWS_IAS_QUERY_Extension on WINDOWS_IAS_QUERY {
  int get irdaAttribInt => this.irdaAttribute.irdaAttribInt;
  set irdaAttribInt(int value) => this.irdaAttribute.irdaAttribInt = value;

  _WINDOWS_IAS_QUERY__irdaAttribute_e__Union__irdaAttribOctetSeq_e__Struct
      get irdaAttribOctetSeq => this.irdaAttribute.irdaAttribOctetSeq;
  set irdaAttribOctetSeq(
          _WINDOWS_IAS_QUERY__irdaAttribute_e__Union__irdaAttribOctetSeq_e__Struct
              value) =>
      this.irdaAttribute.irdaAttribOctetSeq = value;

  _WINDOWS_IAS_QUERY__irdaAttribute_e__Union__irdaAttribUsrStr_e__Struct
      get irdaAttribUsrStr => this.irdaAttribute.irdaAttribUsrStr;
  set irdaAttribUsrStr(
          _WINDOWS_IAS_QUERY__irdaAttribute_e__Union__irdaAttribUsrStr_e__Struct
              value) =>
      this.irdaAttribute.irdaAttribUsrStr = value;
}

/// {@category Struct}
class WINDOWS_IAS_SET extends Struct {
  @Array(64)
  external Array<Uint8> irdaClassName;

  @Array(256)
  external Array<Uint8> irdaAttribName;

  @Uint32()
  external int irdaAttribType;

  external _WINDOWS_IAS_SET__irdaAttribute_e__Union irdaAttribute;
}

/// {@category Struct}
class _WINDOWS_IAS_SET__irdaAttribute_e__Union extends Union {
  @Int32()
  external int irdaAttribInt;

  external _WINDOWS_IAS_SET__irdaAttribute_e__Union__irdaAttribOctetSeq_e__Struct
      irdaAttribOctetSeq;

  external _WINDOWS_IAS_SET__irdaAttribute_e__Union__irdaAttribUsrStr_e__Struct
      irdaAttribUsrStr;
}

/// {@category Struct}
class _WINDOWS_IAS_SET__irdaAttribute_e__Union__irdaAttribOctetSeq_e__Struct
    extends Struct {
  @Uint16()
  external int Len;

  @Array(1024)
  external Array<Uint8> OctetSeq;
}

extension WINDOWS_IAS_SET__irdaAttribute_e__Union_Extension on WINDOWS_IAS_SET {
  int get Len => this.irdaAttribute.irdaAttribOctetSeq.Len;
  set Len(int value) => this.irdaAttribute.irdaAttribOctetSeq.Len = value;

  Array<Uint8> get OctetSeq => this.irdaAttribute.irdaAttribOctetSeq.OctetSeq;
  set OctetSeq(Array<Uint8> value) =>
      this.irdaAttribute.irdaAttribOctetSeq.OctetSeq = value;
}

/// {@category Struct}
class _WINDOWS_IAS_SET__irdaAttribute_e__Union__irdaAttribUsrStr_e__Struct
    extends Struct {
  @Uint8()
  external int Len;

  @Uint8()
  external int CharSet;

  @Array(256)
  external Array<Uint8> UsrStr;
}

extension WINDOWS_IAS_SET__irdaAttribute_e__Union_Extension_1
    on WINDOWS_IAS_SET {
  int get Len => this.irdaAttribute.irdaAttribUsrStr.Len;
  set Len(int value) => this.irdaAttribute.irdaAttribUsrStr.Len = value;

  int get CharSet => this.irdaAttribute.irdaAttribUsrStr.CharSet;
  set CharSet(int value) => this.irdaAttribute.irdaAttribUsrStr.CharSet = value;

  Array<Uint8> get UsrStr => this.irdaAttribute.irdaAttribUsrStr.UsrStr;
  set UsrStr(Array<Uint8> value) =>
      this.irdaAttribute.irdaAttribUsrStr.UsrStr = value;
}

extension WINDOWS_IAS_SET_Extension on WINDOWS_IAS_SET {
  int get irdaAttribInt => this.irdaAttribute.irdaAttribInt;
  set irdaAttribInt(int value) => this.irdaAttribute.irdaAttribInt = value;

  _WINDOWS_IAS_SET__irdaAttribute_e__Union__irdaAttribOctetSeq_e__Struct
      get irdaAttribOctetSeq => this.irdaAttribute.irdaAttribOctetSeq;
  set irdaAttribOctetSeq(
          _WINDOWS_IAS_SET__irdaAttribute_e__Union__irdaAttribOctetSeq_e__Struct
              value) =>
      this.irdaAttribute.irdaAttribOctetSeq = value;

  _WINDOWS_IAS_SET__irdaAttribute_e__Union__irdaAttribUsrStr_e__Struct
      get irdaAttribUsrStr => this.irdaAttribute.irdaAttribUsrStr;
  set irdaAttribUsrStr(
          _WINDOWS_IAS_SET__irdaAttribute_e__Union__irdaAttribUsrStr_e__Struct
              value) =>
      this.irdaAttribute.irdaAttribUsrStr = value;
}

/// {@category Struct}
class WINDOWS_IRDA_DEVICE_INFO extends Struct {
  @Array(4)
  external Array<Uint8> irdaDeviceID;

  @Array(22)
  external Array<Uint8> irdaDeviceName;

  @Uint8()
  external int irdaDeviceHints1;

  @Uint8()
  external int irdaDeviceHints2;

  @Uint8()
  external int irdaCharSet;
}

/// {@category Struct}
class WSABUF extends Struct {
  @Uint32()
  external int len;

  external Pointer<Utf8> buf;
}

/// {@category Struct}
class WSACOMPLETION extends Struct {
  @Int32()
  external int Type;

  external _WSACOMPLETION__Parameters_e__Union Parameters;
}

/// {@category Struct}
class _WSACOMPLETION__Parameters_e__Union extends Union {
  external _WSACOMPLETION__Parameters_e__Union__WindowMessage_e__Struct
      WindowMessage;

  external _WSACOMPLETION__Parameters_e__Union__Event_e__Struct Event;

  external _WSACOMPLETION__Parameters_e__Union__Apc_e__Struct Apc;

  external _WSACOMPLETION__Parameters_e__Union__Port_e__Struct Port;
}

/// {@category Struct}
class _WSACOMPLETION__Parameters_e__Union__WindowMessage_e__Struct
    extends Struct {
  @IntPtr()
  external int hWnd;

  @Uint32()
  external int uMsg;

  @IntPtr()
  external int context;
}

extension WSACOMPLETION__Parameters_e__Union_Extension on WSACOMPLETION {
  int get hWnd => this.Parameters.WindowMessage.hWnd;
  set hWnd(int value) => this.Parameters.WindowMessage.hWnd = value;

  int get uMsg => this.Parameters.WindowMessage.uMsg;
  set uMsg(int value) => this.Parameters.WindowMessage.uMsg = value;

  int get context => this.Parameters.WindowMessage.context;
  set context(int value) => this.Parameters.WindowMessage.context = value;
}

/// {@category Struct}
class _WSACOMPLETION__Parameters_e__Union__Event_e__Struct extends Struct {
  external Pointer<OVERLAPPED> lpOverlapped;
}

extension WSACOMPLETION__Parameters_e__Union_Extension_1 on WSACOMPLETION {
  Pointer<OVERLAPPED> get lpOverlapped => this.Parameters.Event.lpOverlapped;
  set lpOverlapped(Pointer<OVERLAPPED> value) =>
      this.Parameters.Event.lpOverlapped = value;
}

/// {@category Struct}
class _WSACOMPLETION__Parameters_e__Union__Apc_e__Struct extends Struct {
  external Pointer<OVERLAPPED> lpOverlapped;

  external Pointer<NativeFunction<LPWSAOVERLAPPED_COMPLETION_ROUTINE>>
      lpfnCompletionProc;
}

extension WSACOMPLETION__Parameters_e__Union_Extension_2 on WSACOMPLETION {
  Pointer<OVERLAPPED> get lpOverlapped => this.Parameters.Apc.lpOverlapped;
  set lpOverlapped(Pointer<OVERLAPPED> value) =>
      this.Parameters.Apc.lpOverlapped = value;

  Pointer<NativeFunction<LPWSAOVERLAPPED_COMPLETION_ROUTINE>>
      get lpfnCompletionProc => this.Parameters.Apc.lpfnCompletionProc;
  set lpfnCompletionProc(
          Pointer<NativeFunction<LPWSAOVERLAPPED_COMPLETION_ROUTINE>> value) =>
      this.Parameters.Apc.lpfnCompletionProc = value;
}

/// {@category Struct}
class _WSACOMPLETION__Parameters_e__Union__Port_e__Struct extends Struct {
  external Pointer<OVERLAPPED> lpOverlapped;

  @IntPtr()
  external int hPort;

  @IntPtr()
  external int Key;
}

extension WSACOMPLETION__Parameters_e__Union_Extension_3 on WSACOMPLETION {
  Pointer<OVERLAPPED> get lpOverlapped => this.Parameters.Port.lpOverlapped;
  set lpOverlapped(Pointer<OVERLAPPED> value) =>
      this.Parameters.Port.lpOverlapped = value;

  int get hPort => this.Parameters.Port.hPort;
  set hPort(int value) => this.Parameters.Port.hPort = value;

  int get Key => this.Parameters.Port.Key;
  set Key(int value) => this.Parameters.Port.Key = value;
}

extension WSACOMPLETION_Extension on WSACOMPLETION {
  _WSACOMPLETION__Parameters_e__Union__WindowMessage_e__Struct
      get WindowMessage => this.Parameters.WindowMessage;
  set WindowMessage(
          _WSACOMPLETION__Parameters_e__Union__WindowMessage_e__Struct value) =>
      this.Parameters.WindowMessage = value;

  _WSACOMPLETION__Parameters_e__Union__Event_e__Struct get Event =>
      this.Parameters.Event;
  set Event(_WSACOMPLETION__Parameters_e__Union__Event_e__Struct value) =>
      this.Parameters.Event = value;

  _WSACOMPLETION__Parameters_e__Union__Apc_e__Struct get Apc =>
      this.Parameters.Apc;
  set Apc(_WSACOMPLETION__Parameters_e__Union__Apc_e__Struct value) =>
      this.Parameters.Apc = value;

  _WSACOMPLETION__Parameters_e__Union__Port_e__Struct get Port =>
      this.Parameters.Port;
  set Port(_WSACOMPLETION__Parameters_e__Union__Port_e__Struct value) =>
      this.Parameters.Port = value;
}

/// {@category Struct}
class WSAData extends Struct {
  @Uint16()
  external int wVersion;

  @Uint16()
  external int wHighVersion;

  @Uint16()
  external int iMaxSockets;

  @Uint16()
  external int iMaxUdpDg;

  external Pointer<Utf8> lpVendorInfo;

  @Array(257)
  external Array<Uint8> szDescription;

  @Array(129)
  external Array<Uint8> szSystemStatus;
}

/// {@category Struct}
class WSAMSG extends Struct {
  external Pointer<SOCKADDR> name;

  @Int32()
  external int namelen;

  external Pointer<WSABUF> lpBuffers;

  @Uint32()
  external int dwBufferCount;

  external WSABUF Control;

  @Uint32()
  external int dwFlags;
}

/// {@category Struct}
class WSANAMESPACE_INFOEX extends Struct {
  external GUID NSProviderId;

  @Uint32()
  external int dwNameSpace;

  @Int32()
  external int fActive;

  @Uint32()
  external int dwVersion;

  external Pointer<Utf16> lpszIdentifier;

  external BLOB ProviderSpecific;
}

/// {@category Struct}
class WSANAMESPACE_INFO extends Struct {
  external GUID NSProviderId;

  @Uint32()
  external int dwNameSpace;

  @Int32()
  external int fActive;

  @Uint32()
  external int dwVersion;

  external Pointer<Utf16> lpszIdentifier;
}

/// {@category Struct}
class WSANETWORKEVENTS extends Struct {
  @Int32()
  external int lNetworkEvents;

  @Array(10)
  external Array<Int32> iErrorCode;
}

/// {@category Struct}
class WSANSCLASSINFO extends Struct {
  external Pointer<Utf16> lpszName;

  @Uint32()
  external int dwNameSpace;

  @Uint32()
  external int dwValueType;

  @Uint32()
  external int dwValueSize;

  external Pointer lpValue;
}

/// {@category Struct}
class WSAPOLLDATA extends Struct {
  @Int32()
  external int result;

  @Uint32()
  external int fds;

  @Int32()
  external int timeout;

  @Array(1)
  external Array<WSAPOLLFD> fdArray;
}

/// {@category Struct}
class WSAPOLLFD extends Struct {
  @IntPtr()
  external int fd;

  @Int16()
  external int events;

  @Int16()
  external int revents;
}

/// {@category Struct}
class WSAPROTOCOLCHAIN extends Struct {
  @Int32()
  external int ChainLen;

  @Array(7)
  external Array<Uint32> ChainEntries;
}

/// {@category Struct}
class WSAPROTOCOL_INFO extends Struct {
  @Uint32()
  external int dwServiceFlags1;

  @Uint32()
  external int dwServiceFlags2;

  @Uint32()
  external int dwServiceFlags3;

  @Uint32()
  external int dwServiceFlags4;

  @Uint32()
  external int dwProviderFlags;

  external GUID ProviderId;

  @Uint32()
  external int dwCatalogEntryId;

  external WSAPROTOCOLCHAIN ProtocolChain;

  @Int32()
  external int iVersion;

  @Int32()
  external int iAddressFamily;

  @Int32()
  external int iMaxSockAddr;

  @Int32()
  external int iMinSockAddr;

  @Int32()
  external int iSocketType;

  @Int32()
  external int iProtocol;

  @Int32()
  external int iProtocolMaxOffset;

  @Int32()
  external int iNetworkByteOrder;

  @Int32()
  external int iSecurityScheme;

  @Uint32()
  external int dwMessageSize;

  @Uint32()
  external int dwProviderReserved;

  @Array(256)
  external Array<Uint16> _szProtocol;

  String get szProtocol {
    final charCodes = <int>[];
    for (var i = 0; i < 256; i++) {
      charCodes.add(_szProtocol[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szProtocol(String value) {
    final stringToStore = value.padRight(256, '\x00');
    for (var i = 0; i < 256; i++) {
      _szProtocol[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class WSAQUERYSET2 extends Struct {
  @Uint32()
  external int dwSize;

  external Pointer<Utf16> lpszServiceInstanceName;

  external Pointer<WSAVERSION> lpVersion;

  external Pointer<Utf16> lpszComment;

  @Uint32()
  external int dwNameSpace;

  external Pointer<GUID> lpNSProviderId;

  external Pointer<Utf16> lpszContext;

  @Uint32()
  external int dwNumberOfProtocols;

  external Pointer<AFPROTOCOLS> lpafpProtocols;

  external Pointer<Utf16> lpszQueryString;

  @Uint32()
  external int dwNumberOfCsAddrs;

  external Pointer<CSADDR_INFO> lpcsaBuffer;

  @Uint32()
  external int dwOutputFlags;

  external Pointer<BLOB> lpBlob;
}

/// {@category Struct}
class WSAQUERYSET extends Struct {
  @Uint32()
  external int dwSize;

  external Pointer<Utf16> lpszServiceInstanceName;

  external Pointer<GUID> lpServiceClassId;

  external Pointer<WSAVERSION> lpVersion;

  external Pointer<Utf16> lpszComment;

  @Uint32()
  external int dwNameSpace;

  external Pointer<GUID> lpNSProviderId;

  external Pointer<Utf16> lpszContext;

  @Uint32()
  external int dwNumberOfProtocols;

  external Pointer<AFPROTOCOLS> lpafpProtocols;

  external Pointer<Utf16> lpszQueryString;

  @Uint32()
  external int dwNumberOfCsAddrs;

  external Pointer<CSADDR_INFO> lpcsaBuffer;

  @Uint32()
  external int dwOutputFlags;

  external Pointer<BLOB> lpBlob;
}

/// {@category Struct}
class WSASENDMSG extends Struct {
  external Pointer<WSAMSG> lpMsg;

  @Uint32()
  external int dwFlags;

  external Pointer<Uint32> lpNumberOfBytesSent;

  external Pointer<OVERLAPPED> lpOverlapped;

  external Pointer<NativeFunction<LPWSAOVERLAPPED_COMPLETION_ROUTINE>>
      lpCompletionRoutine;
}

/// {@category Struct}
class WSASERVICECLASSINFO extends Struct {
  external Pointer<GUID> lpServiceClassId;

  external Pointer<Utf16> lpszServiceClassName;

  @Uint32()
  external int dwCount;

  external Pointer<WSANSCLASSINFO> lpClassInfos;
}

/// {@category Struct}
class WSATHREADID extends Struct {
  @IntPtr()
  external int ThreadHandle;

  @IntPtr()
  external int Reserved;
}

/// {@category Struct}
class WSAVERSION extends Struct {
  @Uint32()
  external int dwVersion;

  @Int32()
  external int ecHow;
}

/// {@category Struct}
class WSA_COMPATIBILITY_MODE extends Struct {
  @Int32()
  external int BehaviorId;

  @Uint32()
  external int TargetOsVersion;
}

/// {@category Struct}
class WSC_PROVIDER_AUDIT_INFO extends Struct {
  @Uint32()
  external int RecordSize;

  external Pointer Reserved;
}

/// {@category Struct}
class WSPData extends Struct {
  @Uint16()
  external int wVersion;

  @Uint16()
  external int wHighVersion;

  @Array(256)
  external Array<Uint16> _szDescription;

  String get szDescription {
    final charCodes = <int>[];
    for (var i = 0; i < 256; i++) {
      charCodes.add(_szDescription[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szDescription(String value) {
    final stringToStore = value.padRight(256, '\x00');
    for (var i = 0; i < 256; i++) {
      _szDescription[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class WSPPROC_TABLE extends Struct {
  external Pointer<NativeFunction<LPWSPACCEPT>> lpWSPAccept;

  external Pointer<NativeFunction<LPWSPADDRESSTOSTRING>> lpWSPAddressToString;

  external Pointer<NativeFunction<LPWSPASYNCSELECT>> lpWSPAsyncSelect;

  external Pointer<NativeFunction<LPWSPBIND>> lpWSPBind;

  external Pointer<NativeFunction<LPWSPCANCELBLOCKINGCALL>>
      lpWSPCancelBlockingCall;

  external Pointer<NativeFunction<LPWSPCLEANUP>> lpWSPCleanup;

  external Pointer<NativeFunction<LPWSPCLOSESOCKET>> lpWSPCloseSocket;

  external Pointer<NativeFunction<LPWSPCONNECT>> lpWSPConnect;

  external Pointer<NativeFunction<LPWSPDUPLICATESOCKET>> lpWSPDuplicateSocket;

  external Pointer<NativeFunction<LPWSPENUMNETWORKEVENTS>>
      lpWSPEnumNetworkEvents;

  external Pointer<NativeFunction<LPWSPEVENTSELECT>> lpWSPEventSelect;

  external Pointer<NativeFunction<LPWSPGETOVERLAPPEDRESULT>>
      lpWSPGetOverlappedResult;

  external Pointer<NativeFunction<LPWSPGETPEERNAME>> lpWSPGetPeerName;

  external Pointer<NativeFunction<LPWSPGETSOCKNAME>> lpWSPGetSockName;

  external Pointer<NativeFunction<LPWSPGETSOCKOPT>> lpWSPGetSockOpt;

  external Pointer<NativeFunction<LPWSPGETQOSBYNAME>> lpWSPGetQOSByName;

  external Pointer<NativeFunction<LPWSPIOCTL>> lpWSPIoctl;

  external Pointer<NativeFunction<LPWSPJOINLEAF>> lpWSPJoinLeaf;

  external Pointer<NativeFunction<LPWSPLISTEN>> lpWSPListen;

  external Pointer<NativeFunction<LPWSPRECV>> lpWSPRecv;

  external Pointer<NativeFunction<LPWSPRECVDISCONNECT>> lpWSPRecvDisconnect;

  external Pointer<NativeFunction<LPWSPRECVFROM>> lpWSPRecvFrom;

  external Pointer<NativeFunction<LPWSPSELECT>> lpWSPSelect;

  external Pointer<NativeFunction<LPWSPSEND>> lpWSPSend;

  external Pointer<NativeFunction<LPWSPSENDDISCONNECT>> lpWSPSendDisconnect;

  external Pointer<NativeFunction<LPWSPSENDTO>> lpWSPSendTo;

  external Pointer<NativeFunction<LPWSPSETSOCKOPT>> lpWSPSetSockOpt;

  external Pointer<NativeFunction<LPWSPSHUTDOWN>> lpWSPShutdown;

  external Pointer<NativeFunction<LPWSPSOCKET>> lpWSPSocket;

  external Pointer<NativeFunction<LPWSPSTRINGTOADDRESS>> lpWSPStringToAddress;
}

/// {@category Struct}
class WSPUPCALLTABLE extends Struct {
  external Pointer<NativeFunction<LPWPUCLOSEEVENT>> lpWPUCloseEvent;

  external Pointer<NativeFunction<LPWPUCLOSESOCKETHANDLE>>
      lpWPUCloseSocketHandle;

  external Pointer<NativeFunction<LPWPUCREATEEVENT>> lpWPUCreateEvent;

  external Pointer<NativeFunction<LPWPUCREATESOCKETHANDLE>>
      lpWPUCreateSocketHandle;

  external Pointer<NativeFunction<LPWPUFDISSET>> lpWPUFDIsSet;

  external Pointer<NativeFunction<LPWPUGETPROVIDERPATH>> lpWPUGetProviderPath;

  external Pointer<NativeFunction<LPWPUMODIFYIFSHANDLE>> lpWPUModifyIFSHandle;

  external Pointer<NativeFunction<LPWPUPOSTMESSAGE>> lpWPUPostMessage;

  external Pointer<NativeFunction<LPWPUQUERYBLOCKINGCALLBACK>>
      lpWPUQueryBlockingCallback;

  external Pointer<NativeFunction<LPWPUQUERYSOCKETHANDLECONTEXT>>
      lpWPUQuerySocketHandleContext;

  external Pointer<NativeFunction<LPWPUQUEUEAPC>> lpWPUQueueApc;

  external Pointer<NativeFunction<LPWPURESETEVENT>> lpWPUResetEvent;

  external Pointer<NativeFunction<LPWPUSETEVENT>> lpWPUSetEvent;

  external Pointer<NativeFunction<LPWPUOPENCURRENTTHREAD>>
      lpWPUOpenCurrentThread;

  external Pointer<NativeFunction<LPWPUCLOSETHREAD>> lpWPUCloseThread;
}

/// {@category Struct}
class addrinfo extends Struct {
  @Int32()
  external int ai_flags;

  @Int32()
  external int ai_family;

  @Int32()
  external int ai_socktype;

  @Int32()
  external int ai_protocol;

  @IntPtr()
  external int ai_addrlen;

  external Pointer<Utf16> ai_canonname;

  external Pointer<SOCKADDR> ai_addr;

  external Pointer<addrinfo> ai_next;
}

/// {@category Struct}
class addrinfo_dns_server extends Struct {
  @Uint32()
  external int ai_servertype;

  @Uint64()
  external int ai_flags;

  @Uint32()
  external int ai_addrlen;

  external Pointer<SOCKADDR> ai_addr;

  external _addrinfo_dns_server__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _addrinfo_dns_server__Anonymous_e__Union extends Union {
  external Pointer<Utf16> ai_template;
}

extension addrinfo_dns_server_Extension on addrinfo_dns_server {
  Pointer<Utf16> get ai_template => this.Anonymous.ai_template;
  set ai_template(Pointer<Utf16> value) => this.Anonymous.ai_template = value;
}

/// {@category Struct}
class addrinfoex2 extends Struct {
  @Int32()
  external int ai_flags;

  @Int32()
  external int ai_family;

  @Int32()
  external int ai_socktype;

  @Int32()
  external int ai_protocol;

  @IntPtr()
  external int ai_addrlen;

  external Pointer<Utf16> ai_canonname;

  external Pointer<SOCKADDR> ai_addr;

  external Pointer ai_blob;

  @IntPtr()
  external int ai_bloblen;

  external Pointer<GUID> ai_provider;

  external Pointer<addrinfoex2> ai_next;

  @Int32()
  external int ai_version;

  external Pointer<Utf16> ai_fqdn;
}

/// {@category Struct}
class addrinfoex3 extends Struct {
  @Int32()
  external int ai_flags;

  @Int32()
  external int ai_family;

  @Int32()
  external int ai_socktype;

  @Int32()
  external int ai_protocol;

  @IntPtr()
  external int ai_addrlen;

  external Pointer<Utf16> ai_canonname;

  external Pointer<SOCKADDR> ai_addr;

  external Pointer ai_blob;

  @IntPtr()
  external int ai_bloblen;

  external Pointer<GUID> ai_provider;

  external Pointer<addrinfoex3> ai_next;

  @Int32()
  external int ai_version;

  external Pointer<Utf16> ai_fqdn;

  @Int32()
  external int ai_interfaceindex;
}

/// {@category Struct}
class addrinfoex4 extends Struct {
  @Int32()
  external int ai_flags;

  @Int32()
  external int ai_family;

  @Int32()
  external int ai_socktype;

  @Int32()
  external int ai_protocol;

  @IntPtr()
  external int ai_addrlen;

  external Pointer<Utf16> ai_canonname;

  external Pointer<SOCKADDR> ai_addr;

  external Pointer ai_blob;

  @IntPtr()
  external int ai_bloblen;

  external Pointer<GUID> ai_provider;

  external Pointer<addrinfoex4> ai_next;

  @Int32()
  external int ai_version;

  external Pointer<Utf16> ai_fqdn;

  @Int32()
  external int ai_interfaceindex;

  @IntPtr()
  external int ai_resolutionhandle;
}

/// {@category Struct}
class addrinfoex5 extends Struct {
  @Int32()
  external int ai_flags;

  @Int32()
  external int ai_family;

  @Int32()
  external int ai_socktype;

  @Int32()
  external int ai_protocol;

  @IntPtr()
  external int ai_addrlen;

  external Pointer<Utf16> ai_canonname;

  external Pointer<SOCKADDR> ai_addr;

  external Pointer ai_blob;

  @IntPtr()
  external int ai_bloblen;

  external Pointer<GUID> ai_provider;

  external Pointer<addrinfoex5> ai_next;

  @Int32()
  external int ai_version;

  external Pointer<Utf16> ai_fqdn;

  @Int32()
  external int ai_interfaceindex;

  @IntPtr()
  external int ai_resolutionhandle;

  @Uint32()
  external int ai_ttl;
}

/// {@category Struct}
class addrinfoex6 extends Struct {
  @Int32()
  external int ai_flags;

  @Int32()
  external int ai_family;

  @Int32()
  external int ai_socktype;

  @Int32()
  external int ai_protocol;

  @IntPtr()
  external int ai_addrlen;

  external Pointer<Utf16> ai_canonname;

  external Pointer<SOCKADDR> ai_addr;

  external Pointer ai_blob;

  @IntPtr()
  external int ai_bloblen;

  external Pointer<GUID> ai_provider;

  external Pointer<addrinfoex5> ai_next;

  @Int32()
  external int ai_version;

  external Pointer<Utf16> ai_fqdn;

  @Int32()
  external int ai_interfaceindex;

  @IntPtr()
  external int ai_resolutionhandle;

  @Uint32()
  external int ai_ttl;

  @Uint32()
  external int ai_numservers;

  external Pointer<addrinfo_dns_server> ai_servers;

  @Uint64()
  external int ai_responseflags;
}

/// {@category Struct}
class addrinfoex extends Struct {
  @Int32()
  external int ai_flags;

  @Int32()
  external int ai_family;

  @Int32()
  external int ai_socktype;

  @Int32()
  external int ai_protocol;

  @IntPtr()
  external int ai_addrlen;

  external Pointer<Utf16> ai_canonname;

  external Pointer<SOCKADDR> ai_addr;

  external Pointer ai_blob;

  @IntPtr()
  external int ai_bloblen;

  external Pointer<GUID> ai_provider;

  external Pointer<addrinfoex> ai_next;
}

/// {@category Struct}
class cmsghdr extends Struct {
  @IntPtr()
  external int cmsg_len;

  @Int32()
  external int cmsg_level;

  @Int32()
  external int cmsg_type;
}

/// {@category Struct}
class fd_set extends Struct {
  @Uint32()
  external int fd_count;

  @Array(64)
  external Array<IntPtr> fd_array;
}

/// {@category Struct}
class hostent extends Struct {
  external Pointer<Utf8> h_name;

  external Pointer<Pointer<Int8>> h_aliases;

  @Int16()
  external int h_addrtype;

  @Int16()
  external int h_length;

  external Pointer<Pointer<Int8>> h_addr_list;
}

/// {@category Struct}
class in6_pktinfo_ex extends Struct {
  external IN6_PKTINFO pkt_info;

  external SCOPE_ID scope_id;
}

/// {@category Struct}
class linger extends Struct {
  @Uint16()
  external int l_onoff;

  @Uint16()
  external int l_linger;
}

/// {@category Struct}
class netent extends Struct {
  external Pointer<Utf8> n_name;

  external Pointer<Pointer<Int8>> n_aliases;

  @Int16()
  external int n_addrtype;

  @Uint32()
  external int n_net;
}

/// {@category Struct}
class protoent extends Struct {
  external Pointer<Utf8> p_name;

  external Pointer<Pointer<Int8>> p_aliases;

  @Int16()
  external int p_proto;
}

/// {@category Struct}
class servent extends Struct {
  external Pointer<Utf8> s_name;

  external Pointer<Pointer<Int8>> s_aliases;

  external Pointer<Utf8> s_proto;

  @Int16()
  external int s_port;
}

/// {@category Struct}
class sockaddr_atm extends Struct {
  @Uint16()
  external int satm_family;

  external ATM_ADDRESS satm_number;

  external ATM_BLLI satm_blli;

  external ATM_BHLI satm_bhli;
}

/// {@category Struct}
class sockaddr_gen extends Union {
  external SOCKADDR Address;

  external SOCKADDR_IN AddressIn;

  external sockaddr_in6_old AddressIn6;
}

/// {@category Struct}
class sockaddr_in6_old extends Struct {
  @Int16()
  external int sin6_family;

  @Uint16()
  external int sin6_port;

  @Uint32()
  external int sin6_flowinfo;

  external IN6_ADDR sin6_addr;
}

/// {@category Struct}
class sockaddr_ipx extends Struct {
  @Int16()
  external int sa_family;

  @Array(4)
  external Array<Uint8> sa_netnum;

  @Array(6)
  external Array<Uint8> sa_nodenum;

  @Uint16()
  external int sa_socket;
}

/// {@category Struct}
class sockaddr_nb extends Struct {
  @Int16()
  external int snb_family;

  @Uint16()
  external int snb_type;

  @Array(16)
  external Array<Uint8> snb_name;
}

/// {@category Struct}
class sockaddr_tp extends Struct {
  @Uint16()
  external int tp_family;

  @Uint16()
  external int tp_addr_type;

  @Uint16()
  external int tp_taddr_len;

  @Uint16()
  external int tp_tsel_len;

  @Array(64)
  external Array<Uint8> tp_addr;
}

/// {@category Struct}
class sockaddr_un extends Struct {
  @Uint16()
  external int sun_family;

  @Array(108)
  external Array<Uint8> sun_path;
}

/// {@category Struct}
class sockaddr_vns extends Struct {
  @Uint16()
  external int sin_family;

  @Array(4)
  external Array<Uint8> net_address;

  @Array(2)
  external Array<Uint8> subnet_addr;

  @Array(2)
  external Array<Uint8> port;

  @Uint8()
  external int hops;

  @Array(5)
  external Array<Uint8> filler;
}

/// {@category Struct}
class sockproto extends Struct {
  @Uint16()
  external int sp_family;

  @Uint16()
  external int sp_protocol;
}

/// {@category Struct}
class tcp_keepalive extends Struct {
  @Uint32()
  external int onoff;

  @Uint32()
  external int keepalivetime;

  @Uint32()
  external int keepaliveinterval;
}

/// {@category Struct}
class timeval extends Struct {
  @Int32()
  external int tv_sec;

  @Int32()
  external int tv_usec;
}
