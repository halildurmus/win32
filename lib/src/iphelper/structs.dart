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

class SOCKADDR_INET extends Struct {
  external sockaddr_in Ipv4;
  external SOCKADDR_IN6_LH Ipv6;
  @Uint16() external int si_family;
}

class SOCKADDR_IN6_PAIR extends Struct {
  external Pointer<SOCKADDR_IN6_LH> SourceAddress;
  external Pointer<SOCKADDR_IN6_LH> DestinationAddress;
}

class NL_NETWORK_CONNECTIVITY_HINT extends Struct {
  @Uint32() external int ConnectivityLevel;
  @Uint32() external int ConnectivityCost;
  @Uint8() external int ApproachingDataLimit;
  @Uint8() external int OverDataLimit;
  @Uint8() external int Roaming;
}

class NL_BANDWIDTH_INFORMATION extends Struct {
  @Uint64() external int Bandwidth;
  @Uint64() external int Instability;
  @Uint8() external int BandwidthPeaked;
}

class HIFTIMESTAMPCHANGE extends Struct {
  @IntPtr() external int Value;
}

class IcmpHandle extends Struct {
  @IntPtr() external int Value;
}

class ip_option_information extends Struct {
  @Uint8() external int Ttl;
  @Uint8() external int Tos;
  @Uint8() external int Flags;
  @Uint8() external int OptionsSize;
  external Pointer<Uint8> OptionsData;
}

class icmp_echo_reply extends Struct {
  @Uint32() external int Address;
  @Uint32() external int Status;
  @Uint32() external int RoundTripTime;
  @Uint16() external int DataSize;
  @Uint16() external int Reserved;
  external Pointer Data;
  external ip_option_information Options;
}

class IPV6_ADDRESS_EX extends Struct {
  @Uint16() external int sin6_port;
  @Uint32() external int sin6_flowinfo;
  external __ushort__ sin6_addr;
  @Uint32() external int sin6_scope_id;
}

class icmpv6_echo_reply_lh extends Struct {
  external IPV6_ADDRESS_EX Address;
  @Uint32() external int Status;
  @Uint32() external int RoundTripTime;
}

class arp_send_reply extends Struct {
  @Uint32() external int DestAddress;
  @Uint32() external int SrcAddress;
}

class tcp_reserve_port_range extends Struct {
  @Uint16() external int UpperRange;
  @Uint16() external int LowerRange;
}

class IP_ADAPTER_INDEX_MAP extends Struct {
  @Uint32() external int Index;
  external __ushort__ Name;
}

class IP_INTERFACE_INFO extends Struct {
  @Int32() external int NumAdapters;
  external IP_ADAPTER_INDEX_MAP Adapter;
}

class IP_UNIDIRECTIONAL_ADAPTER_ADDRESS extends Struct {
  @Uint32() external int NumAdapters;
  external __uint__ Address;
}

class IP_ADAPTER_ORDER_MAP extends Struct {
  @Uint32() external int NumAdapters;
  external __uint__ AdapterOrder;
}

class IP_MCAST_COUNTER_INFO extends Struct {
  @Uint64() external int InMcastOctets;
  @Uint64() external int OutMcastOctets;
  @Uint64() external int InMcastPkts;
  @Uint64() external int OutMcastPkts;
}

class NET_IF_RCV_ADDRESS_LH extends Struct {
  @Uint32() external int ifRcvAddressType;
  @Uint16() external int ifRcvAddressLength;
  @Uint16() external int ifRcvAddressOffset;
}

class NET_IF_ALIAS_LH extends Struct {
  @Uint16() external int ifAliasLength;
  @Uint16() external int ifAliasOffset;
}

class IF_PHYSICAL_ADDRESS_LH extends Struct {
  @Uint16() external int Length;
  external __ubyte__ Address;
}

class IP_ADDRESS_PREFIX extends Struct {
  external SOCKADDR_INET Prefix;
  @Uint8() external int PrefixLength;
}

class DNS_SETTINGS extends Struct {
  @Uint32() external int Version;
  @Uint64() external int Flags;
  external Pointer<Utf16> Hostname;
  external Pointer<Utf16> Domain;
  external Pointer<Utf16> SearchList;
}

class DNS_INTERFACE_SETTINGS extends Struct {
  @Uint32() external int Version;
  @Uint64() external int Flags;
  external Pointer<Utf16> Domain;
  external Pointer<Utf16> NameServer;
  external Pointer<Utf16> SearchList;
  @Uint32() external int RegistrationEnabled;
  @Uint32() external int RegisterAdapterName;
  @Uint32() external int EnableLLMNR;
  @Uint32() external int QueryAdapterName;
  external Pointer<Utf16> ProfileNameServer;
}

class DNS_INTERFACE_SETTINGS_EX extends Struct {
  external DNS_INTERFACE_SETTINGS SettingsV1;
  @Uint32() external int DisableUnconstrainedQueries;
  external Pointer<Utf16> SupplementalSearchList;
}

class TCPIP_OWNER_MODULE_BASIC_INFO extends Struct {
  external Pointer<Utf16> pModuleName;
  external Pointer<Utf16> pModulePath;
}

class MIB_IPDESTROW extends Struct {
  external MIB_IPFORWARDROW ForwardRow;
  @Uint32() external int dwForwardPreference;
  @Uint32() external int dwForwardViewSet;
}

class MIB_IPDESTTABLE extends Struct {
  @Uint32() external int dwNumEntries;
  external MIB_IPDESTROW table;
}

class MIB_ROUTESTATE extends Struct {
  @Int32() external int bRoutesSetToStack;
}

class IP_ADDRESS_STRING extends Struct {
  external __byte__ String;
}

class IP_ADDR_STRING extends Struct {
  external Pointer<IP_ADDR_STRING> Next;
  external IP_ADDRESS_STRING IpAddress;
  external IP_ADDRESS_STRING IpMask;
  @Uint32() external int Context;
}

class IP_ADAPTER_INFO extends Struct {
  external Pointer<IP_ADAPTER_INFO> Next;
  @Uint32() external int ComboIndex;
  external __byte__ AdapterName;
  external __byte__ Description;
  @Uint32() external int AddressLength;
  external __ubyte__ Address;
  @Uint32() external int Index;
  @Uint32() external int Type;
  @Uint32() external int DhcpEnabled;
  external Pointer<IP_ADDR_STRING> CurrentIpAddress;
  external IP_ADDR_STRING IpAddressList;
  external IP_ADDR_STRING GatewayList;
  external IP_ADDR_STRING DhcpServer;
  @Int32() external int HaveWins;
  external IP_ADDR_STRING PrimaryWinsServer;
  external IP_ADDR_STRING SecondaryWinsServer;
  @Int64() external int LeaseObtained;
  @Int64() external int LeaseExpires;
}

class IP_ADAPTER_DNS_SUFFIX extends Struct {
  external Pointer<IP_ADAPTER_DNS_SUFFIX> Next;
  external __ushort__ String;
}

class IP_PER_ADAPTER_INFO_W2KSP1 extends Struct {
  @Uint32() external int AutoconfigEnabled;
  @Uint32() external int AutoconfigActive;
  external Pointer<IP_ADDR_STRING> CurrentDnsServer;
  external IP_ADDR_STRING DnsServerList;
}

class FIXED_INFO_W2KSP1 extends Struct {
  external __byte__ HostName;
  external __byte__ DomainName;
  external Pointer<IP_ADDR_STRING> CurrentDnsServer;
  external IP_ADDR_STRING DnsServerList;
  @Uint32() external int NodeType;
  external __byte__ ScopeId;
  @Uint32() external int EnableRouting;
  @Uint32() external int EnableProxy;
  @Uint32() external int EnableDns;
}

class ip_interface_name_info_w2ksp1 extends Struct {
  @Uint32() external int Index;
  @Uint32() external int MediaType;
  @Uint8() external int ConnectionType;
  @Uint8() external int AccessType;
  external GUID DeviceGuid;
  external GUID InterfaceGuid;
}

class TCP_ESTATS_SYN_OPTS_ROS_v0 extends Struct {
  @Uint8() external int ActiveOpen;
  @Uint32() external int MssRcvd;
  @Uint32() external int MssSent;
}

class TCP_ESTATS_DATA_ROD_v0 extends Struct {
  @Uint64() external int DataBytesOut;
  @Uint64() external int DataSegsOut;
  @Uint64() external int DataBytesIn;
  @Uint64() external int DataSegsIn;
  @Uint64() external int SegsOut;
  @Uint64() external int SegsIn;
  @Uint32() external int SoftErrors;
  @Uint32() external int SoftErrorReason;
  @Uint32() external int SndUna;
  @Uint32() external int SndNxt;
  @Uint32() external int SndMax;
  @Uint64() external int ThruBytesAcked;
  @Uint32() external int RcvNxt;
  @Uint64() external int ThruBytesReceived;
}

class TCP_ESTATS_DATA_RW_v0 extends Struct {
  @Uint8() external int EnableCollection;
}

class TCP_ESTATS_SND_CONG_ROD_v0 extends Struct {
  @Uint32() external int SndLimTransRwin;
  @Uint32() external int SndLimTimeRwin;
  @IntPtr() external int SndLimBytesRwin;
  @Uint32() external int SndLimTransCwnd;
  @Uint32() external int SndLimTimeCwnd;
  @IntPtr() external int SndLimBytesCwnd;
  @Uint32() external int SndLimTransSnd;
  @Uint32() external int SndLimTimeSnd;
  @IntPtr() external int SndLimBytesSnd;
  @Uint32() external int SlowStart;
  @Uint32() external int CongAvoid;
  @Uint32() external int OtherReductions;
  @Uint32() external int CurCwnd;
  @Uint32() external int MaxSsCwnd;
  @Uint32() external int MaxCaCwnd;
  @Uint32() external int CurSsthresh;
  @Uint32() external int MaxSsthresh;
  @Uint32() external int MinSsthresh;
}

class TCP_ESTATS_SND_CONG_ROS_v0 extends Struct {
  @Uint32() external int LimCwnd;
}

class TCP_ESTATS_SND_CONG_RW_v0 extends Struct {
  @Uint8() external int EnableCollection;
}

class TCP_ESTATS_PATH_ROD_v0 extends Struct {
  @Uint32() external int FastRetran;
  @Uint32() external int Timeouts;
  @Uint32() external int SubsequentTimeouts;
  @Uint32() external int CurTimeoutCount;
  @Uint32() external int AbruptTimeouts;
  @Uint32() external int PktsRetrans;
  @Uint32() external int BytesRetrans;
  @Uint32() external int DupAcksIn;
  @Uint32() external int SacksRcvd;
  @Uint32() external int SackBlocksRcvd;
  @Uint32() external int CongSignals;
  @Uint32() external int PreCongSumCwnd;
  @Uint32() external int PreCongSumRtt;
  @Uint32() external int PostCongSumRtt;
  @Uint32() external int PostCongCountRtt;
  @Uint32() external int EcnSignals;
  @Uint32() external int EceRcvd;
  @Uint32() external int SendStall;
  @Uint32() external int QuenchRcvd;
  @Uint32() external int RetranThresh;
  @Uint32() external int SndDupAckEpisodes;
  @Uint32() external int SumBytesReordered;
  @Uint32() external int NonRecovDa;
  @Uint32() external int NonRecovDaEpisodes;
  @Uint32() external int AckAfterFr;
  @Uint32() external int DsackDups;
  @Uint32() external int SampleRtt;
  @Uint32() external int SmoothedRtt;
  @Uint32() external int RttVar;
  @Uint32() external int MaxRtt;
  @Uint32() external int MinRtt;
  @Uint32() external int SumRtt;
  @Uint32() external int CountRtt;
  @Uint32() external int CurRto;
  @Uint32() external int MaxRto;
  @Uint32() external int MinRto;
  @Uint32() external int CurMss;
  @Uint32() external int MaxMss;
  @Uint32() external int MinMss;
  @Uint32() external int SpuriousRtoDetections;
}

class TCP_ESTATS_PATH_RW_v0 extends Struct {
  @Uint8() external int EnableCollection;
}

class TCP_ESTATS_SEND_BUFF_ROD_v0 extends Struct {
  @IntPtr() external int CurRetxQueue;
  @IntPtr() external int MaxRetxQueue;
  @IntPtr() external int CurAppWQueue;
  @IntPtr() external int MaxAppWQueue;
}

class TCP_ESTATS_SEND_BUFF_RW_v0 extends Struct {
  @Uint8() external int EnableCollection;
}

class TCP_ESTATS_REC_ROD_v0 extends Struct {
  @Uint32() external int CurRwinSent;
  @Uint32() external int MaxRwinSent;
  @Uint32() external int MinRwinSent;
  @Uint32() external int LimRwin;
  @Uint32() external int DupAckEpisodes;
  @Uint32() external int DupAcksOut;
  @Uint32() external int CeRcvd;
  @Uint32() external int EcnSent;
  @Uint32() external int EcnNoncesRcvd;
  @Uint32() external int CurReasmQueue;
  @Uint32() external int MaxReasmQueue;
  @IntPtr() external int CurAppRQueue;
  @IntPtr() external int MaxAppRQueue;
  @Uint8() external int WinScaleSent;
}

class TCP_ESTATS_REC_RW_v0 extends Struct {
  @Uint8() external int EnableCollection;
}

class TCP_ESTATS_OBS_REC_ROD_v0 extends Struct {
  @Uint32() external int CurRwinRcvd;
  @Uint32() external int MaxRwinRcvd;
  @Uint32() external int MinRwinRcvd;
  @Uint8() external int WinScaleRcvd;
}

class TCP_ESTATS_OBS_REC_RW_v0 extends Struct {
  @Uint8() external int EnableCollection;
}

class TCP_ESTATS_BANDWIDTH_RW_v0 extends Struct {
  @Uint32() external int EnableCollectionOutbound;
  @Uint32() external int EnableCollectionInbound;
}

class TCP_ESTATS_BANDWIDTH_ROD_v0 extends Struct {
  @Uint64() external int OutboundBandwidth;
  @Uint64() external int InboundBandwidth;
  @Uint64() external int OutboundInstability;
  @Uint64() external int InboundInstability;
  @Uint8() external int OutboundBandwidthPeaked;
  @Uint8() external int InboundBandwidthPeaked;
}

class TCP_ESTATS_FINE_RTT_RW_v0 extends Struct {
  @Uint8() external int EnableCollection;
}

class TCP_ESTATS_FINE_RTT_ROD_v0 extends Struct {
  @Uint32() external int RttVar;
  @Uint32() external int MaxRtt;
  @Uint32() external int MinRtt;
  @Uint32() external int SumRtt;
}

class INTERFACE_TIMESTAMP_CAPABILITY_FLAGS extends Struct {
  @Uint8() external int PtpV2OverUdpIPv4EventMsgReceiveHw;
  @Uint8() external int PtpV2OverUdpIPv4AllMsgReceiveHw;
  @Uint8() external int PtpV2OverUdpIPv4EventMsgTransmitHw;
  @Uint8() external int PtpV2OverUdpIPv4AllMsgTransmitHw;
  @Uint8() external int PtpV2OverUdpIPv6EventMsgReceiveHw;
  @Uint8() external int PtpV2OverUdpIPv6AllMsgReceiveHw;
  @Uint8() external int PtpV2OverUdpIPv6EventMsgTransmitHw;
  @Uint8() external int PtpV2OverUdpIPv6AllMsgTransmitHw;
  @Uint8() external int AllReceiveHw;
  @Uint8() external int AllTransmitHw;
  @Uint8() external int TaggedTransmitHw;
  @Uint8() external int AllReceiveSw;
  @Uint8() external int AllTransmitSw;
  @Uint8() external int TaggedTransmitSw;
}

class INTERFACE_TIMESTAMP_CAPABILITIES extends Struct {
  @Uint32() external int Version;
  @Uint64() external int HardwareClockFrequencyHz;
  @Uint8() external int CrossTimestamp;
  @Uint64() external int Reserved1;
  @Uint64() external int Reserved2;
  external INTERFACE_TIMESTAMP_CAPABILITY_FLAGS TimestampFlags;
}

class INTERFACE_HARDWARE_CROSSTIMESTAMP extends Struct {
  @Uint32() external int Version;
  @Uint32() external int Flags;
  @Uint64() external int SystemTimestamp1;
  @Uint64() external int HardwareClockTimestamp;
  @Uint64() external int SystemTimestamp2;
}

class NET_ADDRESS_INFO extends Struct {
}

