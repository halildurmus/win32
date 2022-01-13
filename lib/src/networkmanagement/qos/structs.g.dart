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
import '../../networkmanagement/ndis/structs.g.dart';
import '../../networkmanagement/qos/structs.g.dart';
import '../../networking/winsock/structs.g.dart';
import '../../networkmanagement/qos/callbacks.g.dart';
import '../../foundation/structs.g.dart';

/// {@category Struct}
class ADDRESS_LIST_DESCRIPTOR extends Struct {
  @Uint32()
  external int MediaType;

  external NETWORK_ADDRESS_LIST AddressList;
}

/// {@category Struct}
class ADSPEC extends Struct {
  external RsvpObjHdr adspec_header;

  external IS_ADSPEC_BODY adspec_body;
}

/// {@category Struct}
class AD_GENERAL_PARAMS extends Struct {
  @Uint32()
  external int IntServAwareHopCount;

  @Uint32()
  external int PathBandwidthEstimate;

  @Uint32()
  external int MinimumLatency;

  @Uint32()
  external int PathMTU;

  @Uint32()
  external int Flags;
}

/// {@category Struct}
class AD_GUARANTEED extends Struct {
  @Uint32()
  external int CTotal;

  @Uint32()
  external int DTotal;

  @Uint32()
  external int CSum;

  @Uint32()
  external int DSum;
}

/// {@category Struct}
class CONTROL_SERVICE extends Struct {
  @Uint32()
  external int Length;

  @Uint32()
  external int Service;

  external AD_GENERAL_PARAMS Overrides;

  external _CONTROL_SERVICE__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _CONTROL_SERVICE__Anonymous_e__Union extends Union {
  external AD_GUARANTEED Guaranteed;

  @Array(1)
  external Array<PARAM_BUFFER> ParamBuffer;
}

extension CONTROL_SERVICE_Extension on CONTROL_SERVICE {
  AD_GUARANTEED get Guaranteed => this.Anonymous.Guaranteed;
  set Guaranteed(AD_GUARANTEED value) => this.Anonymous.Guaranteed = value;

  Array<PARAM_BUFFER> get ParamBuffer => this.Anonymous.ParamBuffer;
  set ParamBuffer(Array<PARAM_BUFFER> value) =>
      this.Anonymous.ParamBuffer = value;
}

/// {@category Struct}
class CtrlLoadFlowspec extends Struct {
  external IntServServiceHdr CL_spec_serv_hdr;

  external IntServParmHdr CL_spec_parm_hdr;

  external GenTspecParms CL_spec_parms;
}

/// {@category Struct}
class ENUMERATION_BUFFER extends Struct {
  @Uint32()
  external int Length;

  @Uint32()
  external int OwnerProcessId;

  @Uint16()
  external int FlowNameLength;

  @Array(256)
  external Array<Uint16> _FlowName;

  String get FlowName {
    final charCodes = <int>[];
    for (var i = 0; i < 256; i++) {
      charCodes.add(_FlowName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set FlowName(String value) {
    final stringToStore = value.padRight(256, '\x00');
    for (var i = 0; i < 256; i++) {
      _FlowName[i] = stringToStore.codeUnitAt(i);
    }
  }

  external Pointer<TC_GEN_FLO> pFlow;

  @Uint32()
  external int NumberOfFilters;

  @Array(1)
  external Array<TC_GEN_FILTER> GenericFilter;
}

/// {@category Struct}
class ERROR_SPEC extends Struct {
  external RsvpObjHdr errs_header;

  external _ERROR_SPEC__errs_u_e__Union errs_u;
}

/// {@category Struct}
class _ERROR_SPEC__errs_u_e__Union extends Union {
  external Error_Spec_IPv4 errs_ipv4;
}

extension ERROR_SPEC_Extension on ERROR_SPEC {
  Error_Spec_IPv4 get errs_ipv4 => this.errs_u.errs_ipv4;
  set errs_ipv4(Error_Spec_IPv4 value) => this.errs_u.errs_ipv4 = value;
}

/// {@category Struct}
class Error_Spec_IPv4 extends Struct {
  external IN_ADDR errs_errnode;

  @Uint8()
  external int errs_flags;

  @Uint8()
  external int errs_code;

  @Uint16()
  external int errs_value;
}

/// {@category Struct}
class FILTER_SPEC extends Struct {
  external RsvpObjHdr filt_header;

  external _FILTER_SPEC__filt_u_e__Union filt_u;
}

/// {@category Struct}
class _FILTER_SPEC__filt_u_e__Union extends Union {
  external Filter_Spec_IPv4 filt_ipv4;

  external Filter_Spec_IPv4GPI filt_ipv4gpi;
}

extension FILTER_SPEC_Extension on FILTER_SPEC {
  Filter_Spec_IPv4 get filt_ipv4 => this.filt_u.filt_ipv4;
  set filt_ipv4(Filter_Spec_IPv4 value) => this.filt_u.filt_ipv4 = value;

  Filter_Spec_IPv4GPI get filt_ipv4gpi => this.filt_u.filt_ipv4gpi;
  set filt_ipv4gpi(Filter_Spec_IPv4GPI value) =>
      this.filt_u.filt_ipv4gpi = value;
}

/// {@category Struct}
class FLOWDESCRIPTOR extends Struct {
  external FLOWSPEC FlowSpec;

  @Uint32()
  external int NumFilters;

  external Pointer<RSVP_FILTERSPEC> FilterList;
}

/// {@category Struct}
class FLOWSPEC extends Struct {
  @Uint32()
  external int TokenRate;

  @Uint32()
  external int TokenBucketSize;

  @Uint32()
  external int PeakBandwidth;

  @Uint32()
  external int Latency;

  @Uint32()
  external int DelayVariation;

  @Uint32()
  external int ServiceType;

  @Uint32()
  external int MaxSduSize;

  @Uint32()
  external int MinimumPolicedSize;
}

/// {@category Struct}
class Filter_Spec_IPv4 extends Struct {
  external IN_ADDR filt_ipaddr;

  @Uint16()
  external int filt_unused;

  @Uint16()
  external int filt_port;
}

/// {@category Struct}
class Filter_Spec_IPv4GPI extends Struct {
  external IN_ADDR filt_ipaddr;

  @Uint32()
  external int filt_gpi;
}

/// {@category Struct}
class Gads_parms_t extends Struct {
  external IntServServiceHdr Gads_serv_hdr;

  external IntServParmHdr Gads_Ctot_hdr;

  @Uint32()
  external int Gads_Ctot;

  external IntServParmHdr Gads_Dtot_hdr;

  @Uint32()
  external int Gads_Dtot;

  external IntServParmHdr Gads_Csum_hdr;

  @Uint32()
  external int Gads_Csum;

  external IntServParmHdr Gads_Dsum_hdr;

  @Uint32()
  external int Gads_Dsum;
}

/// {@category Struct}
class GenAdspecParams extends Struct {
  external IntServServiceHdr gen_parm_hdr;

  external IntServParmHdr gen_parm_hopcnt_hdr;

  @Uint32()
  external int gen_parm_hopcnt;

  external IntServParmHdr gen_parm_pathbw_hdr;

  @Float()
  external double gen_parm_path_bw;

  external IntServParmHdr gen_parm_minlat_hdr;

  @Uint32()
  external int gen_parm_min_latency;

  external IntServParmHdr gen_parm_compmtu_hdr;

  @Uint32()
  external int gen_parm_composed_MTU;
}

/// {@category Struct}
class GenTspec extends Struct {
  external IntServServiceHdr gen_Tspec_serv_hdr;

  external IntServParmHdr gen_Tspec_parm_hdr;

  external GenTspecParms gen_Tspec_parms;
}

/// {@category Struct}
class GenTspecParms extends Struct {
  @Float()
  external double TB_Tspec_r;

  @Float()
  external double TB_Tspec_b;

  @Float()
  external double TB_Tspec_p;

  @Uint32()
  external int TB_Tspec_m;

  @Uint32()
  external int TB_Tspec_M;
}

/// {@category Struct}
class GuarFlowSpec extends Struct {
  external IntServServiceHdr Guar_serv_hdr;

  external IntServParmHdr Guar_Tspec_hdr;

  external GenTspecParms Guar_Tspec_parms;

  external IntServParmHdr Guar_Rspec_hdr;

  external GuarRspec Guar_Rspec;
}

/// {@category Struct}
class GuarRspec extends Struct {
  @Float()
  external double Guar_R;

  @Uint32()
  external int Guar_S;
}

/// {@category Struct}
class IDPE_ATTR extends Struct {
  @Uint16()
  external int PeAttribLength;

  @Uint8()
  external int PeAttribType;

  @Uint8()
  external int PeAttribSubType;

  @Array(4)
  external Array<Uint8> PeAttribValue;
}

/// {@category Struct}
class ID_ERROR_OBJECT extends Struct {
  @Uint16()
  external int usIdErrLength;

  @Uint8()
  external int ucAType;

  @Uint8()
  external int ucSubType;

  @Uint16()
  external int usReserved;

  @Uint16()
  external int usIdErrorValue;

  @Array(4)
  external Array<Uint8> ucIdErrData;
}

/// {@category Struct}
class IN_ADDR_IPV4 extends Union {
  @Uint32()
  external int Addr;

  @Array(4)
  external Array<Uint8> AddrBytes;
}

/// {@category Struct}
class IN_ADDR_IPV6 extends Struct {
  @Array(16)
  external Array<Uint8> Addr;
}

/// {@category Struct}
class IPX_PATTERN extends Struct {
  external _IPX_PATTERN__Src_e__Struct Src;

  external _IPX_PATTERN__Src_e__Struct Dest;
}

/// {@category Struct}
class _IPX_PATTERN__Src_e__Struct extends Struct {
  @Uint32()
  external int NetworkAddress;

  @Array(6)
  external Array<Uint8> NodeAddress;

  @Uint16()
  external int Socket;
}

extension IPX_PATTERN_Extension on IPX_PATTERN {
  int get NetworkAddress => this.Src.NetworkAddress;
  set NetworkAddress(int value) => this.Src.NetworkAddress = value;

  Array<Uint8> get NodeAddress => this.Src.NodeAddress;
  set NodeAddress(Array<Uint8> value) => this.Src.NodeAddress = value;

  int get Socket => this.Src.Socket;
  set Socket(int value) => this.Src.Socket = value;
}

/// {@category Struct}
class IP_PATTERN extends Struct {
  @Uint32()
  external int Reserved1;

  @Uint32()
  external int Reserved2;

  @Uint32()
  external int SrcAddr;

  @Uint32()
  external int DstAddr;

  external _IP_PATTERN__S_un_e__Union S_un;

  @Uint8()
  external int ProtocolId;

  @Array(3)
  external Array<Uint8> Reserved3;
}

/// {@category Struct}
class _IP_PATTERN__S_un_e__Union extends Union {
  external _IP_PATTERN__S_un_e__Union__S_un_ports_e__Struct S_un_ports;

  external _IP_PATTERN__S_un_e__Union__S_un_icmp_e__Struct S_un_icmp;

  @Uint32()
  external int S_Spi;
}

/// {@category Struct}
class _IP_PATTERN__S_un_e__Union__S_un_ports_e__Struct extends Struct {
  @Uint16()
  external int s_srcport;

  @Uint16()
  external int s_dstport;
}

extension IP_PATTERN__S_un_e__Union_Extension on IP_PATTERN {
  int get s_srcport => this.S_un.S_un_ports.s_srcport;
  set s_srcport(int value) => this.S_un.S_un_ports.s_srcport = value;

  int get s_dstport => this.S_un.S_un_ports.s_dstport;
  set s_dstport(int value) => this.S_un.S_un_ports.s_dstport = value;
}

/// {@category Struct}
class _IP_PATTERN__S_un_e__Union__S_un_icmp_e__Struct extends Struct {
  @Uint8()
  external int s_type;

  @Uint8()
  external int s_code;

  @Uint16()
  external int filler;
}

extension IP_PATTERN__S_un_e__Union_Extension_1 on IP_PATTERN {
  int get s_type => this.S_un.S_un_icmp.s_type;
  set s_type(int value) => this.S_un.S_un_icmp.s_type = value;

  int get s_code => this.S_un.S_un_icmp.s_code;
  set s_code(int value) => this.S_un.S_un_icmp.s_code = value;

  int get filler => this.S_un.S_un_icmp.filler;
  set filler(int value) => this.S_un.S_un_icmp.filler = value;
}

extension IP_PATTERN_Extension on IP_PATTERN {
  _IP_PATTERN__S_un_e__Union__S_un_ports_e__Struct get S_un_ports =>
      this.S_un.S_un_ports;
  set S_un_ports(_IP_PATTERN__S_un_e__Union__S_un_ports_e__Struct value) =>
      this.S_un.S_un_ports = value;

  _IP_PATTERN__S_un_e__Union__S_un_icmp_e__Struct get S_un_icmp =>
      this.S_un.S_un_icmp;
  set S_un_icmp(_IP_PATTERN__S_un_e__Union__S_un_icmp_e__Struct value) =>
      this.S_un.S_un_icmp = value;

  int get S_Spi => this.S_un.S_Spi;
  set S_Spi(int value) => this.S_un.S_Spi = value;
}

/// {@category Struct}
class IS_ADSPEC_BODY extends Struct {
  external IntServMainHdr adspec_mh;

  external GenAdspecParams adspec_genparms;
}

/// {@category Struct}
class IS_FLOWSPEC extends Struct {
  external RsvpObjHdr flow_header;

  external IntServFlowSpec flow_body;
}

/// {@category Struct}
class IntServFlowSpec extends Struct {
  external IntServMainHdr spec_mh;

  external _IntServFlowSpec__spec_u_e__Union spec_u;
}

/// {@category Struct}
class _IntServFlowSpec__spec_u_e__Union extends Union {
  external CtrlLoadFlowspec CL_spec;

  external GuarFlowSpec G_spec;

  external QualAppFlowSpec Q_spec;
}

extension IntServFlowSpec_Extension on IntServFlowSpec {
  CtrlLoadFlowspec get CL_spec => this.spec_u.CL_spec;
  set CL_spec(CtrlLoadFlowspec value) => this.spec_u.CL_spec = value;

  GuarFlowSpec get G_spec => this.spec_u.G_spec;
  set G_spec(GuarFlowSpec value) => this.spec_u.G_spec = value;

  QualAppFlowSpec get Q_spec => this.spec_u.Q_spec;
  set Q_spec(QualAppFlowSpec value) => this.spec_u.Q_spec = value;
}

/// {@category Struct}
class IntServMainHdr extends Struct {
  @Uint8()
  external int ismh_version;

  @Uint8()
  external int ismh_unused;

  @Uint16()
  external int ismh_len32b;
}

/// {@category Struct}
class IntServParmHdr extends Struct {
  @Uint8()
  external int isph_parm_num;

  @Uint8()
  external int isph_flags;

  @Uint16()
  external int isph_len32b;
}

/// {@category Struct}
class IntServServiceHdr extends Struct {
  @Uint8()
  external int issh_service;

  @Uint8()
  external int issh_flags;

  @Uint16()
  external int issh_len32b;
}

/// {@category Struct}
class IntServTspecBody extends Struct {
  external IntServMainHdr st_mh;

  external _IntServTspecBody__tspec_u_e__Union tspec_u;
}

/// {@category Struct}
class _IntServTspecBody__tspec_u_e__Union extends Union {
  external GenTspec gen_stspec;

  external QualTspec qual_stspec;
}

extension IntServTspecBody_Extension on IntServTspecBody {
  GenTspec get gen_stspec => this.tspec_u.gen_stspec;
  set gen_stspec(GenTspec value) => this.tspec_u.gen_stspec = value;

  QualTspec get qual_stspec => this.tspec_u.qual_stspec;
  set qual_stspec(QualTspec value) => this.tspec_u.qual_stspec = value;
}

/// {@category Struct}
class LPM_INIT_INFO extends Struct {
  @Uint32()
  external int PcmVersionNumber;

  @Uint32()
  external int ResultTimeLimit;

  @Int32()
  external int ConfiguredLpmCount;

  external Pointer<NativeFunction<PALLOCMEM>> AllocMemory;

  external Pointer<NativeFunction<PFREEMEM>> FreeMemory;

  external Pointer<NativeFunction<CBADMITRESULT>> PcmAdmitResultCallback;

  external Pointer<NativeFunction<CBGETRSVPOBJECTS>> GetRsvpObjectsCallback;
}

/// {@category Struct}
class PARAM_BUFFER extends Struct {
  @Uint32()
  external int ParameterId;

  @Uint32()
  external int Length;

  @Array(1)
  external Array<Uint8> Buffer;
}

/// {@category Struct}
class POLICY_DATA extends Struct {
  external RsvpObjHdr PolicyObjHdr;

  @Uint16()
  external int usPeOffset;

  @Uint16()
  external int usReserved;
}

/// {@category Struct}
class POLICY_ELEMENT extends Struct {
  @Uint16()
  external int usPeLength;

  @Uint16()
  external int usPeType;

  @Array(4)
  external Array<Uint8> ucPeData;
}

/// {@category Struct}
class QOS extends Struct {
  external FLOWSPEC SendingFlowspec;

  external FLOWSPEC ReceivingFlowspec;

  external WSABUF ProviderSpecific;
}

/// {@category Struct}
class QOS_DESTADDR extends Struct {
  external QOS_OBJECT_HDR ObjectHdr;

  external Pointer<SOCKADDR> SocketAddress;

  @Uint32()
  external int SocketAddressLength;
}

/// {@category Struct}
class QOS_DIFFSERV extends Struct {
  external QOS_OBJECT_HDR ObjectHdr;

  @Uint32()
  external int DSFieldCount;

  @Array(1)
  external Array<Uint8> DiffservRule;
}

/// {@category Struct}
class QOS_DIFFSERV_RULE extends Struct {
  @Uint8()
  external int InboundDSField;

  @Uint8()
  external int ConformingOutboundDSField;

  @Uint8()
  external int NonConformingOutboundDSField;

  @Uint8()
  external int ConformingUserPriority;

  @Uint8()
  external int NonConformingUserPriority;
}

/// {@category Struct}
class QOS_DS_CLASS extends Struct {
  external QOS_OBJECT_HDR ObjectHdr;

  @Uint32()
  external int DSField;
}

/// {@category Struct}
class QOS_FLOWRATE_OUTGOING extends Struct {
  @Uint64()
  external int Bandwidth;

  @Int32()
  external int ShapingBehavior;

  @Int32()
  external int Reason;
}

/// {@category Struct}
class QOS_FLOW_FUNDAMENTALS extends Struct {
  @Int32()
  external int BottleneckBandwidthSet;

  @Uint64()
  external int BottleneckBandwidth;

  @Int32()
  external int AvailableBandwidthSet;

  @Uint64()
  external int AvailableBandwidth;

  @Int32()
  external int RTTSet;

  @Uint32()
  external int RTT;
}

/// {@category Struct}
class QOS_FRIENDLY_NAME extends Struct {
  external QOS_OBJECT_HDR ObjectHdr;

  @Array(256)
  external Array<Uint16> _FriendlyName;

  String get FriendlyName {
    final charCodes = <int>[];
    for (var i = 0; i < 256; i++) {
      charCodes.add(_FriendlyName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set FriendlyName(String value) {
    final stringToStore = value.padRight(256, '\x00');
    for (var i = 0; i < 256; i++) {
      _FriendlyName[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class QOS_OBJECT_HDR extends Struct {
  @Uint32()
  external int ObjectType;

  @Uint32()
  external int ObjectLength;
}

/// {@category Struct}
class QOS_PACKET_PRIORITY extends Struct {
  @Uint32()
  external int ConformantDSCPValue;

  @Uint32()
  external int NonConformantDSCPValue;

  @Uint32()
  external int ConformantL2Value;

  @Uint32()
  external int NonConformantL2Value;
}

/// {@category Struct}
class QOS_SD_MODE extends Struct {
  external QOS_OBJECT_HDR ObjectHdr;

  @Uint32()
  external int ShapeDiscardMode;
}

/// {@category Struct}
class QOS_SHAPING_RATE extends Struct {
  external QOS_OBJECT_HDR ObjectHdr;

  @Uint32()
  external int ShapingRate;
}

/// {@category Struct}
class QOS_TCP_TRAFFIC extends Struct {
  external QOS_OBJECT_HDR ObjectHdr;
}

/// {@category Struct}
class QOS_TRAFFIC_CLASS extends Struct {
  external QOS_OBJECT_HDR ObjectHdr;

  @Uint32()
  external int TrafficClass;
}

/// {@category Struct}
class QOS_VERSION extends Struct {
  @Uint16()
  external int MajorVersion;

  @Uint16()
  external int MinorVersion;
}

/// {@category Struct}
class QualAppFlowSpec extends Struct {
  external IntServServiceHdr Q_spec_serv_hdr;

  external IntServParmHdr Q_spec_parm_hdr;

  external QualTspecParms Q_spec_parms;
}

/// {@category Struct}
class QualTspec extends Struct {
  external IntServServiceHdr qual_Tspec_serv_hdr;

  external IntServParmHdr qual_Tspec_parm_hdr;

  external QualTspecParms qual_Tspec_parms;
}

/// {@category Struct}
class QualTspecParms extends Struct {
  @Uint32()
  external int TB_Tspec_M;
}

/// {@category Struct}
class RESV_STYLE extends Struct {
  external RsvpObjHdr style_header;

  @Uint32()
  external int style_word;
}

/// {@category Struct}
class RSVP_ADSPEC extends Struct {
  external QOS_OBJECT_HDR ObjectHdr;

  external AD_GENERAL_PARAMS GeneralParams;

  @Uint32()
  external int NumberOfServices;

  @Array(1)
  external Array<CONTROL_SERVICE> Services;
}

/// {@category Struct}
class RSVP_FILTERSPEC extends Struct {
  @Int32()
  external int Type;

  external _RSVP_FILTERSPEC__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _RSVP_FILTERSPEC__Anonymous_e__Union extends Union {
  external RSVP_FILTERSPEC_V4 FilterSpecV4;

  external RSVP_FILTERSPEC_V6 FilterSpecV6;

  external RSVP_FILTERSPEC_V6_FLO FilterSpecV6Flow;

  external RSVP_FILTERSPEC_V4_GPI FilterSpecV4Gpi;

  external RSVP_FILTERSPEC_V6_GPI FilterSpecV6Gpi;
}

extension RSVP_FILTERSPEC_Extension on RSVP_FILTERSPEC {
  RSVP_FILTERSPEC_V4 get FilterSpecV4 => this.Anonymous.FilterSpecV4;
  set FilterSpecV4(RSVP_FILTERSPEC_V4 value) =>
      this.Anonymous.FilterSpecV4 = value;

  RSVP_FILTERSPEC_V6 get FilterSpecV6 => this.Anonymous.FilterSpecV6;
  set FilterSpecV6(RSVP_FILTERSPEC_V6 value) =>
      this.Anonymous.FilterSpecV6 = value;

  RSVP_FILTERSPEC_V6_FLO get FilterSpecV6Flow =>
      this.Anonymous.FilterSpecV6Flow;
  set FilterSpecV6Flow(RSVP_FILTERSPEC_V6_FLO value) =>
      this.Anonymous.FilterSpecV6Flow = value;

  RSVP_FILTERSPEC_V4_GPI get FilterSpecV4Gpi => this.Anonymous.FilterSpecV4Gpi;
  set FilterSpecV4Gpi(RSVP_FILTERSPEC_V4_GPI value) =>
      this.Anonymous.FilterSpecV4Gpi = value;

  RSVP_FILTERSPEC_V6_GPI get FilterSpecV6Gpi => this.Anonymous.FilterSpecV6Gpi;
  set FilterSpecV6Gpi(RSVP_FILTERSPEC_V6_GPI value) =>
      this.Anonymous.FilterSpecV6Gpi = value;
}

/// {@category Struct}
class RSVP_FILTERSPEC_V4 extends Struct {
  external IN_ADDR_IPV4 Address;

  @Uint16()
  external int Unused;

  @Uint16()
  external int Port;
}

/// {@category Struct}
class RSVP_FILTERSPEC_V4_GPI extends Struct {
  external IN_ADDR_IPV4 Address;

  @Uint32()
  external int GeneralPortId;
}

/// {@category Struct}
class RSVP_FILTERSPEC_V6 extends Struct {
  external IN_ADDR_IPV6 Address;

  @Uint16()
  external int UnUsed;

  @Uint16()
  external int Port;
}

/// {@category Struct}
class RSVP_FILTERSPEC_V6_FLO extends Struct {
  external IN_ADDR_IPV6 Address;

  @Uint8()
  external int UnUsed;

  @Array(3)
  external Array<Uint8> FlowLabel;
}

/// {@category Struct}
class RSVP_FILTERSPEC_V6_GPI extends Struct {
  external IN_ADDR_IPV6 Address;

  @Uint32()
  external int GeneralPortId;
}

/// {@category Struct}
class RSVP_HOP extends Struct {
  external RsvpObjHdr hop_header;

  external _RSVP_HOP__hop_u_e__Union hop_u;
}

/// {@category Struct}
class _RSVP_HOP__hop_u_e__Union extends Union {
  external Rsvp_Hop_IPv4 hop_ipv4;
}

extension RSVP_HOP_Extension on RSVP_HOP {
  Rsvp_Hop_IPv4 get hop_ipv4 => this.hop_u.hop_ipv4;
  set hop_ipv4(Rsvp_Hop_IPv4 value) => this.hop_u.hop_ipv4 = value;
}

/// {@category Struct}
class RSVP_MSG_OBJS extends Struct {
  @Int32()
  external int RsvpMsgType;

  external Pointer<RSVP_SESSION> pRsvpSession;

  external Pointer<RSVP_HOP> pRsvpFromHop;

  external Pointer<RSVP_HOP> pRsvpToHop;

  external Pointer<RESV_STYLE> pResvStyle;

  external Pointer<RSVP_SCOPE> pRsvpScope;

  @Int32()
  external int FlowDescCount;

  external Pointer<flow_desc> pFlowDescs;

  @Int32()
  external int PdObjectCount;

  external Pointer<Pointer<POLICY_DATA>> ppPdObjects;

  external Pointer<ERROR_SPEC> pErrorSpec;

  external Pointer<ADSPEC> pAdspec;
}

/// {@category Struct}
class RSVP_POLICY extends Struct {
  @Uint16()
  external int Len;

  @Uint16()
  external int Type;

  @Array(4)
  external Array<Uint8> Info;
}

/// {@category Struct}
class RSVP_POLICY_INFO extends Struct {
  external QOS_OBJECT_HDR ObjectHdr;

  @Uint32()
  external int NumPolicyElement;

  @Array(1)
  external Array<RSVP_POLICY> PolicyElement;
}

/// {@category Struct}
class RSVP_RESERVE_INFO extends Struct {
  external QOS_OBJECT_HDR ObjectHdr;

  @Uint32()
  external int Style;

  @Uint32()
  external int ConfirmRequest;

  external Pointer<RSVP_POLICY_INFO> PolicyElementList;

  @Uint32()
  external int NumFlowDesc;

  external Pointer<FLOWDESCRIPTOR> FlowDescList;
}

/// {@category Struct}
class RSVP_SCOPE extends Struct {
  external RsvpObjHdr scopl_header;

  external _RSVP_SCOPE__scope_u_e__Union scope_u;
}

/// {@category Struct}
class _RSVP_SCOPE__scope_u_e__Union extends Union {
  external Scope_list_ipv4 scopl_ipv4;
}

extension RSVP_SCOPE_Extension on RSVP_SCOPE {
  Scope_list_ipv4 get scopl_ipv4 => this.scope_u.scopl_ipv4;
  set scopl_ipv4(Scope_list_ipv4 value) => this.scope_u.scopl_ipv4 = value;
}

/// {@category Struct}
class RSVP_SESSION extends Struct {
  external RsvpObjHdr sess_header;

  external _RSVP_SESSION__sess_u_e__Union sess_u;
}

/// {@category Struct}
class _RSVP_SESSION__sess_u_e__Union extends Union {
  external Session_IPv4 sess_ipv4;
}

extension RSVP_SESSION_Extension on RSVP_SESSION {
  Session_IPv4 get sess_ipv4 => this.sess_u.sess_ipv4;
  set sess_ipv4(Session_IPv4 value) => this.sess_u.sess_ipv4 = value;
}

/// {@category Struct}
class RSVP_STATUS_INFO extends Struct {
  external QOS_OBJECT_HDR ObjectHdr;

  @Uint32()
  external int StatusCode;

  @Uint32()
  external int ExtendedStatus1;

  @Uint32()
  external int ExtendedStatus2;
}

/// {@category Struct}
class RsvpObjHdr extends Struct {
  @Uint16()
  external int obj_length;

  @Uint8()
  external int obj_class;

  @Uint8()
  external int obj_ctype;
}

/// {@category Struct}
class Rsvp_Hop_IPv4 extends Struct {
  external IN_ADDR hop_ipaddr;

  @Uint32()
  external int hop_LIH;
}

/// {@category Struct}
class SENDER_TSPEC extends Struct {
  external RsvpObjHdr stspec_header;

  external IntServTspecBody stspec_body;
}

/// {@category Struct}
class Scope_list_ipv4 extends Struct {
  @Array(1)
  external Array<IN_ADDR> scopl_ipaddr;
}

/// {@category Struct}
class Session_IPv4 extends Struct {
  external IN_ADDR sess_destaddr;

  @Uint8()
  external int sess_protid;

  @Uint8()
  external int sess_flags;

  @Uint16()
  external int sess_destport;
}

/// {@category Struct}
@Packed(1)
class TCG_PCClientPCREventStruct extends Struct {
  @Uint32()
  external int pcrIndex;

  @Uint32()
  external int eventType;

  @Array(20)
  external Array<Uint8> digest;

  @Uint32()
  external int eventDataSize;

  @Array(1)
  external Array<Uint8> event;
}

/// {@category Struct}
@Packed(1)
class TCG_PCClientTaggedEventStruct extends Struct {
  @Uint32()
  external int EventID;

  @Uint32()
  external int EventDataSize;

  @Array(1)
  external Array<Uint8> EventData;
}

/// {@category Struct}
class TCI_CLIENT_FUNC_LIST extends Struct {
  external Pointer<NativeFunction<TCI_NOTIFY_HANDLER>> ClNotifyHandler;

  external Pointer<NativeFunction<TCI_ADD_FLOW_COMPLETE_HANDLER>>
      ClAddFlowCompleteHandler;

  external Pointer<NativeFunction<TCI_MOD_FLOW_COMPLETE_HANDLER>>
      ClModifyFlowCompleteHandler;

  external Pointer<NativeFunction<TCI_DEL_FLOW_COMPLETE_HANDLER>>
      ClDeleteFlowCompleteHandler;
}

/// {@category Struct}
class TC_GEN_FILTER extends Struct {
  @Uint16()
  external int AddressType;

  @Uint32()
  external int PatternSize;

  external Pointer Pattern;

  external Pointer Mask;
}

/// {@category Struct}
class TC_GEN_FLO extends Struct {
  external FLOWSPEC SendingFlowspec;

  external FLOWSPEC ReceivingFlowspec;

  @Uint32()
  external int TcObjectsLength;

  @Array(1)
  external Array<QOS_OBJECT_HDR> TcObjects;
}

/// {@category Struct}
class TC_IFC_DESCRIPTOR extends Struct {
  @Uint32()
  external int Length;

  external Pointer<Utf16> pInterfaceName;

  external Pointer<Utf16> pInterfaceID;

  external ADDRESS_LIST_DESCRIPTOR AddressListDesc;
}

/// {@category Struct}
class TC_SUPPORTED_INFO_BUFFER extends Struct {
  @Uint16()
  external int InstanceIDLength;

  @Array(256)
  external Array<Uint16> _InstanceID;

  String get InstanceID {
    final charCodes = <int>[];
    for (var i = 0; i < 256; i++) {
      charCodes.add(_InstanceID[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set InstanceID(String value) {
    final stringToStore = value.padRight(256, '\x00');
    for (var i = 0; i < 256; i++) {
      _InstanceID[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint64()
  external int InterfaceLuid;

  external ADDRESS_LIST_DESCRIPTOR AddrListDesc;
}

/// {@category Struct}
@Packed(1)
class WBCL_Iterator extends Struct {
  external Pointer firstElementPtr;

  @Uint32()
  external int logSize;

  external Pointer currentElementPtr;

  @Uint32()
  external int currentElementSize;

  @Uint16()
  external int digestSize;

  @Uint16()
  external int logFormat;

  @Uint32()
  external int numberOfDigests;

  external Pointer digestSizes;

  @Uint32()
  external int supportedAlgorithms;

  @Uint16()
  external int hashAlgorithm;
}

/// {@category Struct}
@Packed(1)
class WBCL_LogHdr extends Struct {
  @Uint32()
  external int signature;

  @Uint32()
  external int version;

  @Uint32()
  external int entries;

  @Uint32()
  external int length;
}

/// {@category Struct}
class flow_desc extends Struct {
  external _flow_desc__u1_e__Union u1;

  external _flow_desc__u2_e__Union u2;
}

/// {@category Struct}
class _flow_desc__u1_e__Union extends Union {
  external Pointer<SENDER_TSPEC> stspec;

  external Pointer<IS_FLOWSPEC> isflow;
}

extension flow_desc_Extension on flow_desc {
  Pointer<SENDER_TSPEC> get stspec => this.u1.stspec;
  set stspec(Pointer<SENDER_TSPEC> value) => this.u1.stspec = value;

  Pointer<IS_FLOWSPEC> get isflow => this.u1.isflow;
  set isflow(Pointer<IS_FLOWSPEC> value) => this.u1.isflow = value;
}

/// {@category Struct}
class _flow_desc__u2_e__Union extends Union {
  external Pointer<FILTER_SPEC> stemp;

  external Pointer<FILTER_SPEC> fspec;
}

extension flow_desc_Extension_1 on flow_desc {
  Pointer<FILTER_SPEC> get stemp => this.u2.stemp;
  set stemp(Pointer<FILTER_SPEC> value) => this.u2.stemp = value;

  Pointer<FILTER_SPEC> get fspec => this.u2.fspec;
  set fspec(Pointer<FILTER_SPEC> value) => this.u2.fspec = value;
}

/// {@category Struct}
class lpmiptable extends Struct {
  @Uint32()
  external int ulIfIndex;

  @Uint32()
  external int MediaType;

  external IN_ADDR IfIpAddr;

  external IN_ADDR IfNetMask;
}

/// {@category Struct}
class policy_decision extends Struct {
  @Uint32()
  external int lpvResult;

  @Uint16()
  external int wPolicyErrCode;

  @Uint16()
  external int wPolicyErrValue;
}

/// {@category Struct}
@Packed(1)
class tag_SIPAEVENT_KSR_SIGNATURE_PAYLOAD extends Struct {
  @Uint32()
  external int SignAlgID;

  @Uint32()
  external int SignatureLength;

  @Array(1)
  external Array<Uint8> Signature;
}

/// {@category Struct}
@Packed(1)
class tag_SIPAEVENT_REVOCATION_LIST_PAYLOAD extends Struct {
  @Int64()
  external int CreationTime;

  @Uint32()
  external int DigestLength;

  @Uint16()
  external int HashAlgID;

  @Array(1)
  external Array<Uint8> Digest;
}

/// {@category Struct}
@Packed(1)
class tag_SIPAEVENT_SBCP_INFO_PAYLOAD_V1 extends Struct {
  @Uint32()
  external int PayloadVersion;

  @Uint32()
  external int VarDataOffset;

  @Uint16()
  external int HashAlgID;

  @Uint16()
  external int DigestLength;

  @Uint32()
  external int Options;

  @Uint32()
  external int SignersCount;

  @Array(1)
  external Array<Uint8> VarData;
}

/// {@category Struct}
@Packed(1)
class tag_SIPAEVENT_SI_POLICY_PAYLOAD extends Struct {
  @Uint64()
  external int PolicyVersion;

  @Uint16()
  external int PolicyNameLength;

  @Uint16()
  external int HashAlgID;

  @Uint32()
  external int DigestLength;

  @Array(1)
  external Array<Uint8> VarLengthData;
}

/// {@category Struct}
class tag_SIPAEVENT_VSM_IDK_INFO_PAYLOAD extends Struct {
  @Uint32()
  external int KeyAlgID;

  external _tag_SIPAEVENT_VSM_IDK_INFO_PAYLOAD__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _tag_SIPAEVENT_VSM_IDK_INFO_PAYLOAD__Anonymous_e__Union extends Union {
  external tag_SIPAEVENT_VSM_IDK_RSA_INFO RsaKeyInfo;
}

extension tag_SIPAEVENT_VSM_IDK_INFO_PAYLOAD_Extension
    on tag_SIPAEVENT_VSM_IDK_INFO_PAYLOAD {
  tag_SIPAEVENT_VSM_IDK_RSA_INFO get RsaKeyInfo => this.Anonymous.RsaKeyInfo;
  set RsaKeyInfo(tag_SIPAEVENT_VSM_IDK_RSA_INFO value) =>
      this.Anonymous.RsaKeyInfo = value;
}

/// {@category Struct}
@Packed(1)
class tag_SIPAEVENT_VSM_IDK_RSA_INFO extends Struct {
  @Uint32()
  external int KeyBitLength;

  @Uint32()
  external int PublicExpLengthBytes;

  @Uint32()
  external int ModulusSizeBytes;

  @Array(1)
  external Array<Uint8> PublicKeyData;
}
