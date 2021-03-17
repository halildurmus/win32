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

class NL_INTERFACE_OFFLOAD_ROD extends Struct {
  @Uint8() external int _bitfield;
}

class MIB_IF_TABLE2 extends Struct {
  @Uint32() external int NumEntries;
  external MIB_IF_ROW2 Table;
}

class MIB_IPINTERFACE_ROW extends Struct {
  @Uint16() external int Family;
  external NET_LUID_LH InterfaceLuid;
  @Uint32() external int InterfaceIndex;
  @Uint32() external int MaxReassemblySize;
  @Uint64() external int InterfaceIdentifier;
  @Uint32() external int MinRouterAdvertisementInterval;
  @Uint32() external int MaxRouterAdvertisementInterval;
  @Uint8() external int AdvertisingEnabled;
  @Uint8() external int ForwardingEnabled;
  @Uint8() external int WeakHostSend;
  @Uint8() external int WeakHostReceive;
  @Uint8() external int UseAutomaticMetric;
  @Uint8() external int UseNeighborUnreachabilityDetection;
  @Uint8() external int ManagedAddressConfigurationSupported;
  @Uint8() external int OtherStatefulConfigurationSupported;
  @Uint8() external int AdvertiseDefaultRoute;
  @Uint32() external int RouterDiscoveryBehavior;
  @Uint32() external int DadTransmits;
  @Uint32() external int BaseReachableTime;
  @Uint32() external int RetransmitTime;
  @Uint32() external int PathMtuDiscoveryTimeout;
  @Uint32() external int LinkLocalAddressBehavior;
  @Uint32() external int LinkLocalAddressTimeout;
  external __uint__ ZoneIndices;
  @Uint32() external int SitePrefixLength;
  @Uint32() external int Metric;
  @Uint32() external int NlMtu;
  @Uint8() external int Connected;
  @Uint8() external int SupportsWakeUpPatterns;
  @Uint8() external int SupportsNeighborDiscovery;
  @Uint8() external int SupportsRouterDiscovery;
  @Uint32() external int ReachableTime;
  external NL_INTERFACE_OFFLOAD_ROD TransmitOffload;
  external NL_INTERFACE_OFFLOAD_ROD ReceiveOffload;
  @Uint8() external int DisableDefaultRoutes;
}

class MIB_IPINTERFACE_TABLE extends Struct {
  @Uint32() external int NumEntries;
  external MIB_IPINTERFACE_ROW Table;
}

class MIB_IFSTACK_ROW extends Struct {
  @Uint32() external int HigherLayerInterfaceIndex;
  @Uint32() external int LowerLayerInterfaceIndex;
}

class MIB_INVERTEDIFSTACK_ROW extends Struct {
  @Uint32() external int LowerLayerInterfaceIndex;
  @Uint32() external int HigherLayerInterfaceIndex;
}

class MIB_IFSTACK_TABLE extends Struct {
  @Uint32() external int NumEntries;
  external MIB_IFSTACK_ROW Table;
}

class MIB_INVERTEDIFSTACK_TABLE extends Struct {
  @Uint32() external int NumEntries;
  external MIB_INVERTEDIFSTACK_ROW Table;
}

class MIB_IP_NETWORK_CONNECTION_BANDWIDTH_ESTIMATES extends Struct {
  external NL_BANDWIDTH_INFORMATION InboundBandwidthInformation;
  external NL_BANDWIDTH_INFORMATION OutboundBandwidthInformation;
}

class MIB_UNICASTIPADDRESS_ROW extends Struct {
  external SOCKADDR_INET Address;
  external NET_LUID_LH InterfaceLuid;
  @Uint32() external int InterfaceIndex;
  @Uint32() external int PrefixOrigin;
  @Uint32() external int SuffixOrigin;
  @Uint32() external int ValidLifetime;
  @Uint32() external int PreferredLifetime;
  @Uint8() external int OnLinkPrefixLength;
  @Uint8() external int SkipAsSource;
  @Uint32() external int DadState;
  external SCOPE_ID ScopeId;
  @Int64() external int CreationTimeStamp;
}

class MIB_UNICASTIPADDRESS_TABLE extends Struct {
  @Uint32() external int NumEntries;
  external MIB_UNICASTIPADDRESS_ROW Table;
}

class MIB_ANYCASTIPADDRESS_ROW extends Struct {
  external SOCKADDR_INET Address;
  external NET_LUID_LH InterfaceLuid;
  @Uint32() external int InterfaceIndex;
  external SCOPE_ID ScopeId;
}

class MIB_ANYCASTIPADDRESS_TABLE extends Struct {
  @Uint32() external int NumEntries;
  external MIB_ANYCASTIPADDRESS_ROW Table;
}

class MIB_MULTICASTIPADDRESS_ROW extends Struct {
  external SOCKADDR_INET Address;
  @Uint32() external int InterfaceIndex;
  external NET_LUID_LH InterfaceLuid;
  external SCOPE_ID ScopeId;
}

class MIB_MULTICASTIPADDRESS_TABLE extends Struct {
  @Uint32() external int NumEntries;
  external MIB_MULTICASTIPADDRESS_ROW Table;
}

class MIB_IPFORWARD_ROW2 extends Struct {
  external NET_LUID_LH InterfaceLuid;
  @Uint32() external int InterfaceIndex;
  external IP_ADDRESS_PREFIX DestinationPrefix;
  external SOCKADDR_INET NextHop;
  @Uint8() external int SitePrefixLength;
  @Uint32() external int ValidLifetime;
  @Uint32() external int PreferredLifetime;
  @Uint32() external int Metric;
  @Uint32() external int Protocol;
  @Uint8() external int Loopback;
  @Uint8() external int AutoconfigureAddress;
  @Uint8() external int Publish;
  @Uint8() external int Immortal;
  @Uint32() external int Age;
  @Uint32() external int Origin;
}

class MIB_IPFORWARD_TABLE2 extends Struct {
  @Uint32() external int NumEntries;
  external MIB_IPFORWARD_ROW2 Table;
}

class MIB_IPPATH_TABLE extends Struct {
  @Uint32() external int NumEntries;
  external MIB_IPPATH_ROW Table;
}

class MIB_IPNET_TABLE2 extends Struct {
  @Uint32() external int NumEntries;
  external MIB_IPNET_ROW2 Table;
}

class MIB_OPAQUE_QUERY extends Struct {
  @Uint32() external int dwVarId;
  external __uint__ rgdwVarIndex;
}

class MIB_IFNUMBER extends Struct {
  @Uint32() external int dwValue;
}

class MIB_IFROW extends Struct {
  external __ushort__ wszName;
  @Uint32() external int dwIndex;
  @Uint32() external int dwType;
  @Uint32() external int dwMtu;
  @Uint32() external int dwSpeed;
  @Uint32() external int dwPhysAddrLen;
  external __ubyte__ bPhysAddr;
  @Uint32() external int dwAdminStatus;
  @Uint32() external int dwOperStatus;
  @Uint32() external int dwLastChange;
  @Uint32() external int dwInOctets;
  @Uint32() external int dwInUcastPkts;
  @Uint32() external int dwInNUcastPkts;
  @Uint32() external int dwInDiscards;
  @Uint32() external int dwInErrors;
  @Uint32() external int dwInUnknownProtos;
  @Uint32() external int dwOutOctets;
  @Uint32() external int dwOutUcastPkts;
  @Uint32() external int dwOutNUcastPkts;
  @Uint32() external int dwOutDiscards;
  @Uint32() external int dwOutErrors;
  @Uint32() external int dwOutQLen;
  @Uint32() external int dwDescrLen;
  external __ubyte__ bDescr;
}

class MIB_IFTABLE extends Struct {
  @Uint32() external int dwNumEntries;
  external MIB_IFROW table;
}

class MIB_IPADDRROW_XP extends Struct {
  @Uint32() external int dwAddr;
  @Uint32() external int dwIndex;
  @Uint32() external int dwMask;
  @Uint32() external int dwBCastAddr;
  @Uint32() external int dwReasmSize;
  @Uint16() external int unused1;
  @Uint16() external int wType;
}

class MIB_IPADDRROW_W2K extends Struct {
  @Uint32() external int dwAddr;
  @Uint32() external int dwIndex;
  @Uint32() external int dwMask;
  @Uint32() external int dwBCastAddr;
  @Uint32() external int dwReasmSize;
  @Uint16() external int unused1;
  @Uint16() external int unused2;
}

class MIB_IPADDRTABLE extends Struct {
  @Uint32() external int dwNumEntries;
  external MIB_IPADDRROW_XP table;
}

class MIB_IPFORWARDNUMBER extends Struct {
  @Uint32() external int dwValue;
}

class MIB_IPFORWARDTABLE extends Struct {
  @Uint32() external int dwNumEntries;
  external MIB_IPFORWARDROW table;
}

class MIB_IPNETROW_W2K extends Struct {
  @Uint32() external int dwIndex;
  @Uint32() external int dwPhysAddrLen;
  external __ubyte__ bPhysAddr;
  @Uint32() external int dwAddr;
  @Uint32() external int dwType;
}

class MIB_IPNETTABLE extends Struct {
  @Uint32() external int dwNumEntries;
  external MIB_IPNETROW_LH table;
}

class MIB_IPSTATS_W2K extends Struct {
  @Uint32() external int dwForwarding;
  @Uint32() external int dwDefaultTTL;
  @Uint32() external int dwInReceives;
  @Uint32() external int dwInHdrErrors;
  @Uint32() external int dwInAddrErrors;
  @Uint32() external int dwForwDatagrams;
  @Uint32() external int dwInUnknownProtos;
  @Uint32() external int dwInDiscards;
  @Uint32() external int dwInDelivers;
  @Uint32() external int dwOutRequests;
  @Uint32() external int dwRoutingDiscards;
  @Uint32() external int dwOutDiscards;
  @Uint32() external int dwOutNoRoutes;
  @Uint32() external int dwReasmTimeout;
  @Uint32() external int dwReasmReqds;
  @Uint32() external int dwReasmOks;
  @Uint32() external int dwReasmFails;
  @Uint32() external int dwFragOks;
  @Uint32() external int dwFragFails;
  @Uint32() external int dwFragCreates;
  @Uint32() external int dwNumIf;
  @Uint32() external int dwNumAddr;
  @Uint32() external int dwNumRoutes;
}

class MIBICMPSTATS extends Struct {
  @Uint32() external int dwMsgs;
  @Uint32() external int dwErrors;
  @Uint32() external int dwDestUnreachs;
  @Uint32() external int dwTimeExcds;
  @Uint32() external int dwParmProbs;
  @Uint32() external int dwSrcQuenchs;
  @Uint32() external int dwRedirects;
  @Uint32() external int dwEchos;
  @Uint32() external int dwEchoReps;
  @Uint32() external int dwTimestamps;
  @Uint32() external int dwTimestampReps;
  @Uint32() external int dwAddrMasks;
  @Uint32() external int dwAddrMaskReps;
}

class MIBICMPINFO extends Struct {
  external MIBICMPSTATS icmpInStats;
  external MIBICMPSTATS icmpOutStats;
}

class MIB_ICMP extends Struct {
  external MIBICMPINFO stats;
}

class MIBICMPSTATS_EX_XPSP1 extends Struct {
  @Uint32() external int dwMsgs;
  @Uint32() external int dwErrors;
  external __uint__ rgdwTypeCount;
}

class MIB_ICMP_EX_XPSP1 extends Struct {
  external MIBICMPSTATS_EX_XPSP1 icmpInStats;
  external MIBICMPSTATS_EX_XPSP1 icmpOutStats;
}

class MIB_IPMCAST_OIF_XP extends Struct {
  @Uint32() external int dwOutIfIndex;
  @Uint32() external int dwNextHopAddr;
  @Uint32() external int dwReserved;
  @Uint32() external int dwReserved1;
}

class MIB_IPMCAST_OIF_W2K extends Struct {
  @Uint32() external int dwOutIfIndex;
  @Uint32() external int dwNextHopAddr;
  external Pointer pvReserved;
  @Uint32() external int dwReserved;
}

class MIB_IPMCAST_MFE extends Struct {
  @Uint32() external int dwGroup;
  @Uint32() external int dwSource;
  @Uint32() external int dwSrcMask;
  @Uint32() external int dwUpStrmNgbr;
  @Uint32() external int dwInIfIndex;
  @Uint32() external int dwInIfProtocol;
  @Uint32() external int dwRouteProtocol;
  @Uint32() external int dwRouteNetwork;
  @Uint32() external int dwRouteMask;
  @Uint32() external int ulUpTime;
  @Uint32() external int ulExpiryTime;
  @Uint32() external int ulTimeOut;
  @Uint32() external int ulNumOutIf;
  @Uint32() external int fFlags;
  @Uint32() external int dwReserved;
  external MIB_IPMCAST_OIF_XP rgmioOutInfo;
}

class MIB_MFE_TABLE extends Struct {
  @Uint32() external int dwNumEntries;
  external MIB_IPMCAST_MFE table;
}

class MIB_IPMCAST_OIF_STATS_LH extends Struct {
  @Uint32() external int dwOutIfIndex;
  @Uint32() external int dwNextHopAddr;
  @Uint32() external int dwDialContext;
  @Uint32() external int ulTtlTooLow;
  @Uint32() external int ulFragNeeded;
  @Uint32() external int ulOutPackets;
  @Uint32() external int ulOutDiscards;
}

class MIB_IPMCAST_OIF_STATS_W2K extends Struct {
  @Uint32() external int dwOutIfIndex;
  @Uint32() external int dwNextHopAddr;
  external Pointer pvDialContext;
  @Uint32() external int ulTtlTooLow;
  @Uint32() external int ulFragNeeded;
  @Uint32() external int ulOutPackets;
  @Uint32() external int ulOutDiscards;
}

class MIB_IPMCAST_MFE_STATS extends Struct {
  @Uint32() external int dwGroup;
  @Uint32() external int dwSource;
  @Uint32() external int dwSrcMask;
  @Uint32() external int dwUpStrmNgbr;
  @Uint32() external int dwInIfIndex;
  @Uint32() external int dwInIfProtocol;
  @Uint32() external int dwRouteProtocol;
  @Uint32() external int dwRouteNetwork;
  @Uint32() external int dwRouteMask;
  @Uint32() external int ulUpTime;
  @Uint32() external int ulExpiryTime;
  @Uint32() external int ulNumOutIf;
  @Uint32() external int ulInPkts;
  @Uint32() external int ulInOctets;
  @Uint32() external int ulPktsDifferentIf;
  @Uint32() external int ulQueueOverflow;
  external MIB_IPMCAST_OIF_STATS_LH rgmiosOutStats;
}

class MIB_MFE_STATS_TABLE extends Struct {
  @Uint32() external int dwNumEntries;
  external MIB_IPMCAST_MFE_STATS table;
}

class MIB_IPMCAST_MFE_STATS_EX_XP extends Struct {
  @Uint32() external int dwGroup;
  @Uint32() external int dwSource;
  @Uint32() external int dwSrcMask;
  @Uint32() external int dwUpStrmNgbr;
  @Uint32() external int dwInIfIndex;
  @Uint32() external int dwInIfProtocol;
  @Uint32() external int dwRouteProtocol;
  @Uint32() external int dwRouteNetwork;
  @Uint32() external int dwRouteMask;
  @Uint32() external int ulUpTime;
  @Uint32() external int ulExpiryTime;
  @Uint32() external int ulNumOutIf;
  @Uint32() external int ulInPkts;
  @Uint32() external int ulInOctets;
  @Uint32() external int ulPktsDifferentIf;
  @Uint32() external int ulQueueOverflow;
  @Uint32() external int ulUninitMfe;
  @Uint32() external int ulNegativeMfe;
  @Uint32() external int ulInDiscards;
  @Uint32() external int ulInHdrErrors;
  @Uint32() external int ulTotalOutPackets;
  external MIB_IPMCAST_OIF_STATS_LH rgmiosOutStats;
}

class MIB_MFE_STATS_TABLE_EX_XP extends Struct {
  @Uint32() external int dwNumEntries;
  external ____ table;
}

class MIB_IPMCAST_GLOBAL extends Struct {
  @Uint32() external int dwEnable;
}

class MIB_IPMCAST_IF_ENTRY extends Struct {
  @Uint32() external int dwIfIndex;
  @Uint32() external int dwTtl;
  @Uint32() external int dwProtocol;
  @Uint32() external int dwRateLimit;
  @Uint32() external int ulInMcastOctets;
  @Uint32() external int ulOutMcastOctets;
}

class MIB_IPMCAST_IF_TABLE extends Struct {
  @Uint32() external int dwNumEntries;
  external MIB_IPMCAST_IF_ENTRY table;
}

class MIB_TCPROW_W2K extends Struct {
  @Uint32() external int dwState;
  @Uint32() external int dwLocalAddr;
  @Uint32() external int dwLocalPort;
  @Uint32() external int dwRemoteAddr;
  @Uint32() external int dwRemotePort;
}

class MIB_TCPTABLE extends Struct {
  @Uint32() external int dwNumEntries;
  external MIB_TCPROW_LH table;
}

class MIB_TCPROW2 extends Struct {
  @Uint32() external int dwState;
  @Uint32() external int dwLocalAddr;
  @Uint32() external int dwLocalPort;
  @Uint32() external int dwRemoteAddr;
  @Uint32() external int dwRemotePort;
  @Uint32() external int dwOwningPid;
  @Uint32() external int dwOffloadState;
}

class MIB_TCPTABLE2 extends Struct {
  @Uint32() external int dwNumEntries;
  external MIB_TCPROW2 table;
}

class MIB_TCPROW_OWNER_PID extends Struct {
  @Uint32() external int dwState;
  @Uint32() external int dwLocalAddr;
  @Uint32() external int dwLocalPort;
  @Uint32() external int dwRemoteAddr;
  @Uint32() external int dwRemotePort;
  @Uint32() external int dwOwningPid;
}

class MIB_TCPTABLE_OWNER_PID extends Struct {
  @Uint32() external int dwNumEntries;
  external MIB_TCPROW_OWNER_PID table;
}

class MIB_TCPROW_OWNER_MODULE extends Struct {
  @Uint32() external int dwState;
  @Uint32() external int dwLocalAddr;
  @Uint32() external int dwLocalPort;
  @Uint32() external int dwRemoteAddr;
  @Uint32() external int dwRemotePort;
  @Uint32() external int dwOwningPid;
  @Int64() external int liCreateTimestamp;
  external __uint64__ OwningModuleInfo;
}

class MIB_TCPTABLE_OWNER_MODULE extends Struct {
  @Uint32() external int dwNumEntries;
  external MIB_TCPROW_OWNER_MODULE table;
}

class MIB_TCP6ROW extends Struct {
  @Uint32() external int State;
  external in6_addr LocalAddr;
  @Uint32() external int dwLocalScopeId;
  @Uint32() external int dwLocalPort;
  external in6_addr RemoteAddr;
  @Uint32() external int dwRemoteScopeId;
  @Uint32() external int dwRemotePort;
}

class MIB_TCP6TABLE extends Struct {
  @Uint32() external int dwNumEntries;
  external MIB_TCP6ROW table;
}

class MIB_TCP6ROW2 extends Struct {
  external in6_addr LocalAddr;
  @Uint32() external int dwLocalScopeId;
  @Uint32() external int dwLocalPort;
  external in6_addr RemoteAddr;
  @Uint32() external int dwRemoteScopeId;
  @Uint32() external int dwRemotePort;
  @Uint32() external int State;
  @Uint32() external int dwOwningPid;
  @Uint32() external int dwOffloadState;
}

class MIB_TCP6TABLE2 extends Struct {
  @Uint32() external int dwNumEntries;
  external MIB_TCP6ROW2 table;
}

class MIB_TCP6ROW_OWNER_PID extends Struct {
  external __ubyte__ ucLocalAddr;
  @Uint32() external int dwLocalScopeId;
  @Uint32() external int dwLocalPort;
  external __ubyte__ ucRemoteAddr;
  @Uint32() external int dwRemoteScopeId;
  @Uint32() external int dwRemotePort;
  @Uint32() external int dwState;
  @Uint32() external int dwOwningPid;
}

class MIB_TCP6TABLE_OWNER_PID extends Struct {
  @Uint32() external int dwNumEntries;
  external MIB_TCP6ROW_OWNER_PID table;
}

class MIB_TCP6ROW_OWNER_MODULE extends Struct {
  external __ubyte__ ucLocalAddr;
  @Uint32() external int dwLocalScopeId;
  @Uint32() external int dwLocalPort;
  external __ubyte__ ucRemoteAddr;
  @Uint32() external int dwRemoteScopeId;
  @Uint32() external int dwRemotePort;
  @Uint32() external int dwState;
  @Uint32() external int dwOwningPid;
  @Int64() external int liCreateTimestamp;
  external __uint64__ OwningModuleInfo;
}

class MIB_TCP6TABLE_OWNER_MODULE extends Struct {
  @Uint32() external int dwNumEntries;
  external MIB_TCP6ROW_OWNER_MODULE table;
}

class MIB_TCPSTATS_W2K extends Struct {
  @Uint32() external int dwRtoAlgorithm;
  @Uint32() external int dwRtoMin;
  @Uint32() external int dwRtoMax;
  @Uint32() external int dwMaxConn;
  @Uint32() external int dwActiveOpens;
  @Uint32() external int dwPassiveOpens;
  @Uint32() external int dwAttemptFails;
  @Uint32() external int dwEstabResets;
  @Uint32() external int dwCurrEstab;
  @Uint32() external int dwInSegs;
  @Uint32() external int dwOutSegs;
  @Uint32() external int dwRetransSegs;
  @Uint32() external int dwInErrs;
  @Uint32() external int dwOutRsts;
  @Uint32() external int dwNumConns;
}

class MIB_TCPSTATS2 extends Struct {
  @Uint32() external int RtoAlgorithm;
  @Uint32() external int dwRtoMin;
  @Uint32() external int dwRtoMax;
  @Uint32() external int dwMaxConn;
  @Uint32() external int dwActiveOpens;
  @Uint32() external int dwPassiveOpens;
  @Uint32() external int dwAttemptFails;
  @Uint32() external int dwEstabResets;
  @Uint32() external int dwCurrEstab;
  @Uint64() external int dw64InSegs;
  @Uint64() external int dw64OutSegs;
  @Uint32() external int dwRetransSegs;
  @Uint32() external int dwInErrs;
  @Uint32() external int dwOutRsts;
  @Uint32() external int dwNumConns;
}

class MIB_UDPROW extends Struct {
  @Uint32() external int dwLocalAddr;
  @Uint32() external int dwLocalPort;
}

class MIB_UDPTABLE extends Struct {
  @Uint32() external int dwNumEntries;
  external MIB_UDPROW table;
}

class MIB_UDPROW_OWNER_PID extends Struct {
  @Uint32() external int dwLocalAddr;
  @Uint32() external int dwLocalPort;
  @Uint32() external int dwOwningPid;
}

class MIB_UDPTABLE_OWNER_PID extends Struct {
  @Uint32() external int dwNumEntries;
  external MIB_UDPROW_OWNER_PID table;
}

class MIB_UDPTABLE_OWNER_MODULE extends Struct {
  @Uint32() external int dwNumEntries;
  external MIB_UDPROW_OWNER_MODULE table;
}

class MIB_UDP6ROW extends Struct {
  external in6_addr dwLocalAddr;
  @Uint32() external int dwLocalScopeId;
  @Uint32() external int dwLocalPort;
}

class MIB_UDP6TABLE extends Struct {
  @Uint32() external int dwNumEntries;
  external MIB_UDP6ROW table;
}

class MIB_UDP6ROW_OWNER_PID extends Struct {
  external __ubyte__ ucLocalAddr;
  @Uint32() external int dwLocalScopeId;
  @Uint32() external int dwLocalPort;
  @Uint32() external int dwOwningPid;
}

class MIB_UDP6TABLE_OWNER_PID extends Struct {
  @Uint32() external int dwNumEntries;
  external MIB_UDP6ROW_OWNER_PID table;
}

class MIB_UDP6TABLE_OWNER_MODULE extends Struct {
  @Uint32() external int dwNumEntries;
  external MIB_UDP6ROW_OWNER_MODULE table;
}

class MIB_UDPSTATS extends Struct {
  @Uint32() external int dwInDatagrams;
  @Uint32() external int dwNoPorts;
  @Uint32() external int dwInErrors;
  @Uint32() external int dwOutDatagrams;
  @Uint32() external int dwNumAddrs;
}

class MIB_UDPSTATS2 extends Struct {
  @Uint64() external int dw64InDatagrams;
  @Uint32() external int dwNoPorts;
  @Uint32() external int dwInErrors;
  @Uint64() external int dw64OutDatagrams;
  @Uint32() external int dwNumAddrs;
}

class MIB_IPMCAST_BOUNDARY extends Struct {
  @Uint32() external int dwIfIndex;
  @Uint32() external int dwGroupAddress;
  @Uint32() external int dwGroupMask;
  @Uint32() external int dwStatus;
}

class MIB_IPMCAST_BOUNDARY_TABLE extends Struct {
  @Uint32() external int dwNumEntries;
  external MIB_IPMCAST_BOUNDARY table;
}

class MIB_BOUNDARYROW extends Struct {
  @Uint32() external int dwGroupAddress;
  @Uint32() external int dwGroupMask;
}

class MIB_MCAST_LIMIT_ROW extends Struct {
  @Uint32() external int dwTtl;
  @Uint32() external int dwRateLimit;
}

class MIB_IPMCAST_SCOPE extends Struct {
  @Uint32() external int dwGroupAddress;
  @Uint32() external int dwGroupMask;
  external __ushort__ snNameBuffer;
  @Uint32() external int dwStatus;
}

class MIB_BEST_IF extends Struct {
  @Uint32() external int dwDestAddr;
  @Uint32() external int dwIfIndex;
}

class MIB_PROXYARP extends Struct {
  @Uint32() external int dwAddress;
  @Uint32() external int dwMask;
  @Uint32() external int dwIfIndex;
}

class MIB_IFSTATUS extends Struct {
  @Uint32() external int dwIfIndex;
  @Uint32() external int dwAdminStatus;
  @Uint32() external int dwOperationalStatus;
  @Int32() external int bMHbeatActive;
  @Int32() external int bMHbeatAlive;
}

