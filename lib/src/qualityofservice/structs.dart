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

class LPM_HANDLE extends Struct {
  @IntPtr()
  external int Value;
}

class RHANDLE extends Struct {
  @IntPtr()
  external int Value;
}

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

class QOS_OBJECT_HDR extends Struct {
  @Uint32()
  external int ObjectType;
  @Uint32()
  external int ObjectLength;
}

class QOS_SD_MODE extends Struct {
  external QOS_OBJECT_HDR ObjectHdr;
  @Uint32()
  external int ShapeDiscardMode;
}

class QOS_SHAPING_RATE extends Struct {
  external QOS_OBJECT_HDR ObjectHdr;
  @Uint32()
  external int ShapingRate;
}

class RsvpObjHdr extends Struct {
  @Uint16()
  external int obj_length;
  @Uint8()
  external int obj_class;
  @Uint8()
  external int obj_ctype;
}

class Session_IPv4 extends Struct {
  external IN_ADDR sess_destaddr;
  @Uint8()
  external int sess_protid;
  @Uint8()
  external int sess_flags;
  @Uint16()
  external int sess_destport;
}

class RSVP_SESSION extends Struct {
  external RsvpObjHdr sess_header;
  @Uint32()
  external int sess_u;
}

class Rsvp_Hop_IPv4 extends Struct {
  external IN_ADDR hop_ipaddr;
  @Uint32()
  external int hop_LIH;
}

class RSVP_HOP extends Struct {
  external RsvpObjHdr hop_header;
  @Uint32()
  external int hop_u;
}

class RESV_STYLE extends Struct {
  external RsvpObjHdr style_header;
  @Uint32()
  external int style_word;
}

class Filter_Spec_IPv4 extends Struct {
  external IN_ADDR filt_ipaddr;
  @Uint16()
  external int filt_unused;
  @Uint16()
  external int filt_port;
}

class Filter_Spec_IPv4GPI extends Struct {
  external IN_ADDR filt_ipaddr;
  @Uint32()
  external int filt_gpi;
}

class FILTER_SPEC extends Struct {
  external RsvpObjHdr filt_header;
  @Uint32()
  external int filt_u;
}

class Scope_list_ipv4 extends Struct {
  @Array(1)
  external Array<IN_ADDR> scopl_ipaddr;
}

class RSVP_SCOPE extends Struct {
  external RsvpObjHdr scopl_header;
  @Uint32()
  external int scope_u;
}

class Error_Spec_IPv4 extends Struct {
  external IN_ADDR errs_errnode;
  @Uint8()
  external int errs_flags;
  @Uint8()
  external int errs_code;
  @Uint16()
  external int errs_value;
}

class ERROR_SPEC extends Struct {
  external RsvpObjHdr errs_header;
  @Uint32()
  external int errs_u;
}

class POLICY_DATA extends Struct {
  external RsvpObjHdr PolicyObjHdr;
  @Uint16()
  external int usPeOffset;
  @Uint16()
  external int usReserved;
}

class POLICY_ELEMENT extends Struct {
  @Uint16()
  external int usPeLength;
  @Uint16()
  external int usPeType;
  @Array(4)
  external Array<Uint8> ucPeData;
}

class IntServMainHdr extends Struct {
  @Uint8()
  external int ismh_version;
  @Uint8()
  external int ismh_unused;
  @Uint16()
  external int ismh_len32b;
}

class IntServServiceHdr extends Struct {
  @Uint8()
  external int issh_service;
  @Uint8()
  external int issh_flags;
  @Uint16()
  external int issh_len32b;
}

class IntServParmHdr extends Struct {
  @Uint8()
  external int isph_parm_num;
  @Uint8()
  external int isph_flags;
  @Uint16()
  external int isph_len32b;
}

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

class GenTspec extends Struct {
  external IntServServiceHdr gen_Tspec_serv_hdr;
  external IntServParmHdr gen_Tspec_parm_hdr;
  external GenTspecParms gen_Tspec_parms;
}

class QualTspecParms extends Struct {
  @Uint32()
  external int TB_Tspec_M;
}

class QualTspec extends Struct {
  external IntServServiceHdr qual_Tspec_serv_hdr;
  external IntServParmHdr qual_Tspec_parm_hdr;
  external QualTspecParms qual_Tspec_parms;
}

class QualAppFlowSpec extends Struct {
  external IntServServiceHdr Q_spec_serv_hdr;
  external IntServParmHdr Q_spec_parm_hdr;
  external QualTspecParms Q_spec_parms;
}

class IntServTspecBody extends Struct {
  external IntServMainHdr st_mh;
  @Uint32()
  external int tspec_u;
}

class SENDER_TSPEC extends Struct {
  external RsvpObjHdr stspec_header;
  external IntServTspecBody stspec_body;
}

class CtrlLoadFlowspec extends Struct {
  external IntServServiceHdr CL_spec_serv_hdr;
  external IntServParmHdr CL_spec_parm_hdr;
  external GenTspecParms CL_spec_parms;
}

class GuarRspec extends Struct {
  @Float()
  external double Guar_R;
  @Uint32()
  external int Guar_S;
}

class GuarFlowSpec extends Struct {
  external IntServServiceHdr Guar_serv_hdr;
  external IntServParmHdr Guar_Tspec_hdr;
  external GenTspecParms Guar_Tspec_parms;
  external IntServParmHdr Guar_Rspec_hdr;
  external GuarRspec Guar_Rspec;
}

class IntServFlowSpec extends Struct {
  external IntServMainHdr spec_mh;
  @Uint32()
  external int spec_u;
}

class IS_FLOWSPEC extends Struct {
  external RsvpObjHdr flow_header;
  external IntServFlowSpec flow_body;
}

class flow_desc extends Struct {
  @Uint32()
  external int u1;
  @Uint32()
  external int u2;
}

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

class IS_ADSPEC_BODY extends Struct {
  external IntServMainHdr adspec_mh;
  external GenAdspecParams adspec_genparms;
}

class ADSPEC extends Struct {
  external RsvpObjHdr adspec_header;
  external IS_ADSPEC_BODY adspec_body;
}

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

class policy_decision extends Struct {
  @Uint32()
  external int lpvResult;
  @Uint16()
  external int wPolicyErrCode;
  @Uint16()
  external int wPolicyErrValue;
}

class LPM_INIT_INFO extends Struct {
  @Uint32()
  external int PcmVersionNumber;
  @Uint32()
  external int ResultTimeLimit;
  @Int32()
  external int ConfiguredLpmCount;
  external PALLOCMEM AllocMemory;
  external PFREEMEM FreeMemory;
  external CBADMITRESULT PcmAdmitResultCallback;
  external CBGETRSVPOBJECTS GetRsvpObjectsCallback;
}

class lpmiptable extends Struct {
  @Uint32()
  external int ulIfIndex;
  @Uint32()
  external int MediaType;
  external IN_ADDR IfIpAddr;
  external IN_ADDR IfNetMask;
}

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

class QOS_FLOWRATE_OUTGOING extends Struct {
  @Uint64()
  external int Bandwidth;
  @Uint32()
  external int ShapingBehavior;
  @Uint32()
  external int Reason;
}

class QOS_VERSION extends Struct {
  @Uint16()
  external int MajorVersion;
  @Uint16()
  external int MinorVersion;
}

class QOS_FRIENDLY_NAME extends Struct {
  external QOS_OBJECT_HDR ObjectHdr;
  @Array(129)
  external Array<Uint16> FriendlyName;
}

class QOS_TRAFFIC_CLASS extends Struct {
  external QOS_OBJECT_HDR ObjectHdr;
  @Uint32()
  external int TrafficClass;
}

class QOS_DS_CLASS extends Struct {
  external QOS_OBJECT_HDR ObjectHdr;
  @Uint32()
  external int DSField;
}

class QOS_DIFFSERV extends Struct {
  external QOS_OBJECT_HDR ObjectHdr;
  @Uint32()
  external int DSFieldCount;
  @Array(1)
  external Array<Uint8> DiffservRule;
}

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

class QOS_TCP_TRAFFIC extends Struct {
  external QOS_OBJECT_HDR ObjectHdr;
}

class TCI_CLIENT_FUNC_LIST extends Struct {
  external TCI_NOTIFY_HANDLER ClNotifyHandler;
  external TCI_ADD_FLOW_COMPLETE_HANDLER ClAddFlowCompleteHandler;
  external TCI_MOD_FLOW_COMPLETE_HANDLER ClModifyFlowCompleteHandler;
  external TCI_DEL_FLOW_COMPLETE_HANDLER ClDeleteFlowCompleteHandler;
}

class ADDRESS_LIST_DESCRIPTOR extends Struct {
  @Uint32()
  external int MediaType;
  external NETWORK_ADDRESS_LIST AddressList;
}

class TC_IFC_DESCRIPTOR extends Struct {
  @Uint32()
  external int Length;
  external Pointer<Utf16> pInterfaceName;
  external Pointer<Utf16> pInterfaceID;
  external ADDRESS_LIST_DESCRIPTOR AddressListDesc;
}

class TC_SUPPORTED_INFO_BUFFER extends Struct {
  @Uint16()
  external int InstanceIDLength;
  @Array(129)
  external Array<Uint16> InstanceID;
  @Uint64()
  external int InterfaceLuid;
  external ADDRESS_LIST_DESCRIPTOR AddrListDesc;
}

class TC_GEN_FILTER extends Struct {
  @Uint16()
  external int AddressType;
  @Uint32()
  external int PatternSize;
  external Pointer Pattern;
  external Pointer Mask;
}

class TC_GEN_FLOW extends Struct {
  external FLOWSPEC SendingFlowspec;
  external FLOWSPEC ReceivingFlowspec;
  @Uint32()
  external int TcObjectsLength;
  @Array(1)
  external Array<QOS_OBJECT_HDR> TcObjects;
}

class IP_PATTERN extends Struct {
  @Uint32()
  external int Reserved1;
  @Uint32()
  external int Reserved2;
  @Uint32()
  external int SrcAddr;
  @Uint32()
  external int DstAddr;
  @Uint32()
  external int S_un;
  @Uint8()
  external int ProtocolId;
  @Array(3)
  external Array<Uint8> Reserved3;
}

class IPX_PATTERN extends Struct {
  @Uint32()
  external int Src;
  @Uint32()
  external int Dest;
}

class ENUMERATION_BUFFER extends Struct {
  @Uint32()
  external int Length;
  @Uint32()
  external int OwnerProcessId;
  @Uint16()
  external int FlowNameLength;
  @Array(129)
  external Array<Uint16> FlowName;
  external Pointer<TC_GEN_FLO> pFlow;
  @Uint32()
  external int NumberOfFilters;
  @Array(1)
  external Array<TC_GEN_FILTER> GenericFilter;
}

class QOS extends Struct {
  external FLOWSPEC SendingFlowspec;
  external FLOWSPEC ReceivingFlowspec;
  external WSABUF ProviderSpecific;
}
