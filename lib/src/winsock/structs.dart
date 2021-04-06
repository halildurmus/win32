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

class HWSAEVENT extends Struct {
  @IntPtr()
  external int Value;
}

class BLOB extends Struct {
  @Uint32()
  external int cbSize;
  external Pointer<Uint8> pBlobData;
}

class SOCKADDR extends Struct {
  @Uint16()
  external int sa_family;
  @Array(14)
  external Array<Int8> sa_data;
}

class SOCKET_ADDRESS extends Struct {
  external Pointer<SOCKADDR> lpSockaddr;
  @Int32()
  external int iSockaddrLength;
}

class CSADDR_INFO extends Struct {
  external SOCKET_ADDRESS LocalAddr;
  external SOCKET_ADDRESS RemoteAddr;
  @Int32()
  external int iSocketType;
  @Int32()
  external int iProtocol;
}

class SOCKADDR_STORAGE extends Struct {
  @Uint16()
  external int ss_family;
  @Array(6)
  external Array<Int8> __ss_pad1;
  @Int64()
  external int __ss_align;
  @Array(112)
  external Array<Int8> __ss_pad2;
}

class SOCKET_PROCESSOR_AFFINITY extends Struct {
  external PROCESSOR_NUMBER Processor;
  @Uint16()
  external int NumaNodeId;
  @Uint16()
  external int Reserved;
}

class SCOPE_ID extends Struct {
  @Uint32()
  external int Anonymous;
}

class SOCKADDR_IN extends Struct {
  @Uint16()
  external int sin_family;
  @Uint16()
  external int sin_port;
  external IN_ADDR sin_addr;
  @Array(8)
  external Array<Int8> sin_zero;
}

class SOCKADDR_DL extends Struct {
  @Uint16()
  external int sdl_family;
  @Array(8)
  external Array<Uint8> sdl_data;
  @Array(4)
  external Array<Uint8> sdl_zero;
}

class WSABUF extends Struct {
  @Uint32()
  external int len;
  external Pointer<Utf8> buf;
}

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

class cmsghdr extends Struct {
  @IntPtr()
  external int cmsg_len;
  @Int32()
  external int cmsg_level;
  @Int32()
  external int cmsg_type;
}

class ADDRINFOA extends Struct {
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
  external Pointer<Utf8> ai_canonname;
  external Pointer<SOCKADDR> ai_addr;
  external Pointer<ADDRINFOA> ai_next;
}

class addrinfoW extends Struct {
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

class addrinfoexA extends Struct {
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
  external Pointer<Utf8> ai_canonname;
  external Pointer<SOCKADDR> ai_addr;
  external Pointer ai_blob;
  @IntPtr()
  external int ai_bloblen;
  external Pointer<GUID> ai_provider;
  external Pointer<addrinfoexA> ai_next;
}

class addrinfoexW extends Struct {
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

class addrinfoex2A extends Struct {
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
  external Pointer<Utf8> ai_canonname;
  external Pointer<SOCKADDR> ai_addr;
  external Pointer ai_blob;
  @IntPtr()
  external int ai_bloblen;
  external Pointer<GUID> ai_provider;
  external Pointer<addrinfoex2A> ai_next;
  @Int32()
  external int ai_version;
  external Pointer<Utf8> ai_fqdn;
}

class addrinfoex2W extends Struct {
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

class fd_set extends Struct {
  @Uint32()
  external int fd_count;
  @Array(64)
  external Array<IntPtr> fd_array;
}

class timeval extends Struct {
  @Int32()
  external int tv_sec;
  @Int32()
  external int tv_usec;
}

class hostent extends Struct {
  external Pointer<Utf8> h_name;
  external Pointer<Pointer<Int8>> h_aliases;
  @Int16()
  external int h_addrtype;
  @Int16()
  external int h_length;
  external Pointer<Pointer<Int8>> h_addr_list;
}

class netent extends Struct {
  external Pointer<Utf8> n_name;
  external Pointer<Pointer<Int8>> n_aliases;
  @Int16()
  external int n_addrtype;
  @Uint32()
  external int n_net;
}

class servent extends Struct {
  external Pointer<Utf8> s_name;
  external Pointer<Pointer<Int8>> s_aliases;
  external Pointer<Utf8> s_proto;
  @Int16()
  external int s_port;
}

class protoent extends Struct {
  external Pointer<Utf8> p_name;
  external Pointer<Pointer<Int8>> p_aliases;
  @Int16()
  external int p_proto;
}

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
  @Array(129)
  external Array<Int8> szDescription;
  @Array(128)
  external Array<Int8> szSystemStatus;
}

class sockproto extends Struct {
  @Uint16()
  external int sp_family;
  @Uint16()
  external int sp_protocol;
}

class linger extends Struct {
  @Uint16()
  external int l_onoff;
  @Uint16()
  external int l_linger;
}

class WSANETWORKEVENTS extends Struct {
  @Int32()
  external int lNetworkEvents;
  @Array(10)
  external Array<Int32> iErrorCode;
}

class WSAPROTOCOLCHAIN extends Struct {
  @Int32()
  external int ChainLen;
  @Array(7)
  external Array<Uint32> ChainEntries;
}

class WSAPROTOCOL_INFOA extends Struct {
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
  @Array(129)
  external Array<Int8> szProtocol;
}

class WSAPROTOCOL_INFOW extends Struct {
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
  @Array(129)
  external Array<Uint16> szProtocol;
}

class WSACOMPLETION extends Struct {
  @Uint32()
  external int Type;
  @Uint32()
  external int Parameters;
}

class AFPROTOCOLS extends Struct {
  @Int32()
  external int iAddressFamily;
  @Int32()
  external int iProtocol;
}

class WSAVERSION extends Struct {
  @Uint32()
  external int dwVersion;
  @Uint32()
  external int ecHow;
}

class WSAQUERYSETA extends Struct {
  @Uint32()
  external int dwSize;
  external Pointer<Utf8> lpszServiceInstanceName;
  external Pointer<GUID> lpServiceClassId;
  external Pointer<WSAVERSION> lpVersion;
  external Pointer<Utf8> lpszComment;
  @Uint32()
  external int dwNameSpace;
  external Pointer<GUID> lpNSProviderId;
  external Pointer<Utf8> lpszContext;
  @Uint32()
  external int dwNumberOfProtocols;
  external Pointer<AFPROTOCOLS> lpafpProtocols;
  external Pointer<Utf8> lpszQueryString;
  @Uint32()
  external int dwNumberOfCsAddrs;
  external Pointer<CSADDR_INFO> lpcsaBuffer;
  @Uint32()
  external int dwOutputFlags;
  external Pointer<BLOB> lpBlob;
}

class WSAQUERYSETW extends Struct {
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

class WSAQUERYSET2A extends Struct {
  @Uint32()
  external int dwSize;
  external Pointer<Utf8> lpszServiceInstanceName;
  external Pointer<WSAVERSION> lpVersion;
  external Pointer<Utf8> lpszComment;
  @Uint32()
  external int dwNameSpace;
  external Pointer<GUID> lpNSProviderId;
  external Pointer<Utf8> lpszContext;
  @Uint32()
  external int dwNumberOfProtocols;
  external Pointer<AFPROTOCOLS> lpafpProtocols;
  external Pointer<Utf8> lpszQueryString;
  @Uint32()
  external int dwNumberOfCsAddrs;
  external Pointer<CSADDR_INFO> lpcsaBuffer;
  @Uint32()
  external int dwOutputFlags;
  external Pointer<BLOB> lpBlob;
}

class WSAQUERYSET2W extends Struct {
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

class WSANSCLASSINFOA extends Struct {
  external Pointer<Utf8> lpszName;
  @Uint32()
  external int dwNameSpace;
  @Uint32()
  external int dwValueType;
  @Uint32()
  external int dwValueSize;
  external Pointer lpValue;
}

class WSANSCLASSINFOW extends Struct {
  external Pointer<Utf16> lpszName;
  @Uint32()
  external int dwNameSpace;
  @Uint32()
  external int dwValueType;
  @Uint32()
  external int dwValueSize;
  external Pointer lpValue;
}

class WSASERVICECLASSINFOA extends Struct {
  external Pointer<GUID> lpServiceClassId;
  external Pointer<Utf8> lpszServiceClassName;
  @Uint32()
  external int dwCount;
  external Pointer<WSANSCLASSINFOA> lpClassInfos;
}

class WSASERVICECLASSINFOW extends Struct {
  external Pointer<GUID> lpServiceClassId;
  external Pointer<Utf16> lpszServiceClassName;
  @Uint32()
  external int dwCount;
  external Pointer<WSANSCLASSINFO> lpClassInfos;
}

class WSANAMESPACE_INFOA extends Struct {
  external GUID NSProviderId;
  @Uint32()
  external int dwNameSpace;
  @Int32()
  external int fActive;
  @Uint32()
  external int dwVersion;
  external Pointer<Utf8> lpszIdentifier;
}

class WSANAMESPACE_INFOW extends Struct {
  external GUID NSProviderId;
  @Uint32()
  external int dwNameSpace;
  @Int32()
  external int fActive;
  @Uint32()
  external int dwVersion;
  external Pointer<Utf16> lpszIdentifier;
}

class WSANAMESPACE_INFOEXA extends Struct {
  external GUID NSProviderId;
  @Uint32()
  external int dwNameSpace;
  @Int32()
  external int fActive;
  @Uint32()
  external int dwVersion;
  external Pointer<Utf8> lpszIdentifier;
  external BLOB ProviderSpecific;
}

class WSANAMESPACE_INFOEXW extends Struct {
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

class WSAPOLLFD extends Struct {
  @IntPtr()
  external int fd;
  @Int16()
  external int events;
  @Int16()
  external int revents;
}

class sockaddr_in6_old extends Struct {
  @Int16()
  external int sin6_family;
  @Uint16()
  external int sin6_port;
  @Uint32()
  external int sin6_flowinfo;
  external IN6_ADDR sin6_addr;
}

class sockaddr_gen extends Struct {
  external SOCKADDR Address;
  external SOCKADDR_IN AddressIn;
  external sockaddr_in6_old AddressIn6;
}

class INTERFACE_INFO extends Struct {
  @Uint32()
  external int iiFlags;
  external sockaddr_gen iiAddress;
  external sockaddr_gen iiBroadcastAddress;
  external sockaddr_gen iiNetmask;
}

class INTERFACE_INFO_EX extends Struct {
  @Uint32()
  external int iiFlags;
  external SOCKET_ADDRESS iiAddress;
  external SOCKET_ADDRESS iiBroadcastAddress;
  external SOCKET_ADDRESS iiNetmask;
}

class SOCKADDR_IN6 extends Struct {
  @Uint16()
  external int sin6_family;
  @Uint16()
  external int sin6_port;
  @Uint32()
  external int sin6_flowinfo;
  external IN6_ADDR sin6_addr;
  @Uint32()
  external int Anonymous;
}

class IP_MREQ extends Struct {
  external IN_ADDR imr_multiaddr;
  external IN_ADDR imr_interface;
}

class IP_MREQ_SOURCE extends Struct {
  external IN_ADDR imr_multiaddr;
  external IN_ADDR imr_sourceaddr;
  external IN_ADDR imr_interface;
}

class IP_MSFILTER extends Struct {
  external IN_ADDR imsf_multiaddr;
  external IN_ADDR imsf_interface;
  @Uint32()
  external int imsf_fmode;
  @Uint32()
  external int imsf_numsrc;
  @Array(1)
  external Array<IN_ADDR> imsf_slist;
}

class IPV6_MREQ extends Struct {
  external IN6_ADDR ipv6mr_multiaddr;
  @Uint32()
  external int ipv6mr_interface;
}

class GROUP_REQ extends Struct {
  @Uint32()
  external int gr_interface;
  external SOCKADDR_STORAGE gr_group;
}

class GROUP_SOURCE_REQ extends Struct {
  @Uint32()
  external int gsr_interface;
  external SOCKADDR_STORAGE gsr_group;
  external SOCKADDR_STORAGE gsr_source;
}

class GROUP_FILTER extends Struct {
  @Uint32()
  external int gf_interface;
  external SOCKADDR_STORAGE gf_group;
  @Uint32()
  external int gf_fmode;
  @Uint32()
  external int gf_numsrc;
  @Array(1)
  external Array<SOCKADDR_STORAGE> gf_slist;
}

class IN_PKTINFO extends Struct {
  external IN_ADDR ipi_addr;
  @Uint32()
  external int ipi_ifindex;
}

class IN6_PKTINFO extends Struct {
  external IN6_ADDR ipi6_addr;
  @Uint32()
  external int ipi6_ifindex;
}

class IN_PKTINFO_EX extends Struct {
  external IN_PKTINFO pkt_info;
  external SCOPE_ID scope_id;
}

class in6_pktinfo_ex extends Struct {
  external IN6_PKTINFO pkt_info;
  external SCOPE_ID scope_id;
}

class IN_RECVERR extends Struct {
  @Uint32()
  external int protocol;
  @Uint32()
  external int info;
  @Uint8()
  external int type;
  @Uint8()
  external int code;
}

class ICMP_ERROR_INFO extends Struct {
  external SOCKADDR_INET srcaddress;
  @Uint32()
  external int protocol;
  @Uint8()
  external int type;
  @Uint8()
  external int code;
}

class RM_SEND_WINDOW extends Struct {
  @Uint32()
  external int RateKbitsPerSec;
  @Uint32()
  external int WindowSizeInMSecs;
  @Uint32()
  external int WindowSizeInBytes;
}

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

class SOCKADDR_IRDA extends Struct {
  @Uint16()
  external int irdaAddressFamily;
  @Array(4)
  external Array<Uint8> irdaDeviceID;
  @Array(25)
  external Array<Int8> irdaServiceName;
}

class WINDOWS_IRDA_DEVICE_INFO extends Struct {
  @Array(4)
  external Array<Uint8> irdaDeviceID;
  @Array(22)
  external Array<Int8> irdaDeviceName;
  @Uint8()
  external int irdaDeviceHints1;
  @Uint8()
  external int irdaDeviceHints2;
  @Uint8()
  external int irdaCharSet;
}

class WCE_IRDA_DEVICE_INFO extends Struct {
  @Array(4)
  external Array<Uint8> irdaDeviceID;
  @Array(22)
  external Array<Int8> irdaDeviceName;
  @Array(2)
  external Array<Uint8> Reserved;
}

class WINDOWS_DEVICELIST extends Struct {
  @Uint32()
  external int numDevice;
  @Array(1)
  external Array<WINDOWS_IRDA_DEVICE_INFO> Device;
}

class WCE_DEVICELIST extends Struct {
  @Uint32()
  external int numDevice;
  @Array(1)
  external Array<WCE_IRDA_DEVICE_INFO> Device;
}

class WINDOWS_IAS_SET extends Struct {
  @Array(64)
  external Array<Int8> irdaClassName;
  @Array(129)
  external Array<Int8> irdaAttribName;
  @Uint32()
  external int irdaAttribType;
  @Uint32()
  external int irdaAttribute;
}

class WINDOWS_IAS_QUERY extends Struct {
  @Array(4)
  external Array<Uint8> irdaDeviceID;
  @Array(64)
  external Array<Int8> irdaClassName;
  @Array(129)
  external Array<Int8> irdaAttribName;
  @Uint32()
  external int irdaAttribType;
  @Uint32()
  external int irdaAttribute;
}

class NL_PATH_BANDWIDTH_ROD extends Struct {
  @Uint64()
  external int Bandwidth;
  @Uint64()
  external int Instability;
  @Uint8()
  external int BandwidthPeaked;
}

class TRANSPORT_SETTING_ID extends Struct {
  external GUID Guid;
}

class tcp_keepalive extends Struct {
  @Uint32()
  external int onoff;
  @Uint32()
  external int keepalivetime;
  @Uint32()
  external int keepaliveinterval;
}

class REAL_TIME_NOTIFICATION_SETTING_INPUT extends Struct {
  external TRANSPORT_SETTING_ID TransportSettingId;
  external GUID BrokerEventGuid;
}

class REAL_TIME_NOTIFICATION_SETTING_INPUT_EX extends Struct {
  external TRANSPORT_SETTING_ID TransportSettingId;
  external GUID BrokerEventGuid;
  @Uint8()
  external int Unmark;
}

class REAL_TIME_NOTIFICATION_SETTING_OUTPUT extends Struct {
  @Uint32()
  external int ChannelStatus;
}

class ASSOCIATE_NAMERES_CONTEXT_INPUT extends Struct {
  external TRANSPORT_SETTING_ID TransportSettingId;
  @Uint64()
  external int Handle;
}

class RCVALL_IF extends Struct {
  @Uint32()
  external int Mode;
  @Uint32()
  external int Interface;
}

class TCP_INITIAL_RTO_PARAMETERS extends Struct {
  @Uint16()
  external int Rtt;
  @Uint8()
  external int MaxSynRetransmissions;
}

class TCP_ICW_PARAMETERS extends Struct {
  @Uint32()
  external int Level;
}

class TCP_ACK_FREQUENCY_PARAMETERS extends Struct {
  @Uint8()
  external int TcpDelayedAckFrequency;
}

class TCP_INFO_v0 extends Struct {
  @Uint32()
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

class TCP_INFO_v1 extends Struct {
  @Uint32()
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

class INET_PORT_RANGE extends Struct {
  @Uint16()
  external int StartPort;
  @Uint16()
  external int NumberOfPorts;
}

class INET_PORT_RESERVATION_TOKEN extends Struct {
  @Uint64()
  external int Token;
}

class INET_PORT_RESERVATION_INSTANCE extends Struct {
  external INET_PORT_RANGE Reservation;
  external INET_PORT_RESERVATION_TOKEN Token;
}

class INET_PORT_RESERVATION_INFORMATION extends Struct {
  @Uint32()
  external int OwningPid;
}

class SOCKET_SECURITY_SETTINGS extends Struct {
  @Uint32()
  external int SecurityProtocol;
  @Uint32()
  external int SecurityFlags;
}

class SOCKET_SECURITY_SETTINGS_IPSEC extends Struct {
  @Uint32()
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
  external Array<Uint16> AllStrings;
}

class SOCKET_PEER_TARGET_NAME extends Struct {
  @Uint32()
  external int SecurityProtocol;
  external SOCKADDR_STORAGE PeerAddress;
  @Uint32()
  external int PeerTargetNameStringLen;
  @Array(1)
  external Array<Uint16> AllStrings;
}

class SOCKET_SECURITY_QUERY_TEMPLATE extends Struct {
  @Uint32()
  external int SecurityProtocol;
  external SOCKADDR_STORAGE PeerAddress;
  @Uint32()
  external int PeerTokenAccessMask;
}

class SOCKET_SECURITY_QUERY_TEMPLATE_IPSEC2 extends Struct {
  @Uint32()
  external int SecurityProtocol;
  external SOCKADDR_STORAGE PeerAddress;
  @Uint32()
  external int PeerTokenAccessMask;
  @Uint32()
  external int Flags;
  @Uint32()
  external int FieldMask;
}

class SOCKET_SECURITY_QUERY_INFO extends Struct {
  @Uint32()
  external int SecurityProtocol;
  @Uint32()
  external int Flags;
  @Uint64()
  external int PeerApplicationAccessTokenHandle;
  @Uint64()
  external int PeerMachineAccessTokenHandle;
}

class SOCKET_SECURITY_QUERY_INFO_IPSEC2 extends Struct {
  @Uint32()
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

class RSS_SCALABILITY_INFO extends Struct {
  @Uint8()
  external int RssEnabled;
}

class WSA_COMPATIBILITY_MODE extends Struct {
  @Uint32()
  external int BehaviorId;
  @Uint32()
  external int TargetOsVersion;
}

class RIO_BUFFERID_t extends Struct {}

class RIO_CQ_t extends Struct {}

class RIO_RQ_t extends Struct {}

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

class RIO_BUF extends Struct {
  external Pointer<RIO_BUFFERID_t> BufferId;
  @Uint32()
  external int Offset;
  @Uint32()
  external int Length;
}

class RIO_CMSG_BUFFER extends Struct {
  @Uint32()
  external int TotalLength;
}

class ATM_ADDRESS extends Struct {
  @Uint32()
  external int AddressType;
  @Uint32()
  external int NumofDigits;
  @Array(20)
  external Array<Uint8> Addr;
}

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

class ATM_BHLI extends Struct {
  @Uint32()
  external int HighLayerInfoType;
  @Uint32()
  external int HighLayerInfoLength;
  @Array(8)
  external Array<Uint8> HighLayerInfo;
}

class sockaddr_atm extends Struct {
  @Uint16()
  external int satm_family;
  external ATM_ADDRESS satm_number;
  external ATM_BLLI satm_blli;
  external ATM_BHLI satm_bhli;
}

class Q2931_IE extends Struct {
  @Uint32()
  external int IEType;
  @Uint32()
  external int IELength;
  @Array(1)
  external Array<Uint8> IE;
}

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

class AALUSER_PARAMETERS extends Struct {
  @Uint32()
  external int UserDefined;
}

class AAL_PARAMETERS_IE extends Struct {
  @Uint32()
  external int AALType;
  @Uint32()
  external int AALSpecificParameters;
}

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

class ATM_TRAFFIC_DESCRIPTOR_IE extends Struct {
  external ATM_TD Forward;
  external ATM_TD Backward;
  @Int32()
  external int BestEffort;
}

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

class ATM_CALLING_PARTY_NUMBER_IE extends Struct {
  external ATM_ADDRESS ATM_Number;
  @Uint8()
  external int Presentation_Indication;
  @Uint8()
  external int Screening_Indicator;
}

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

class ATM_QOS_CLASS_IE extends Struct {
  @Uint8()
  external int QOSClassForward;
  @Uint8()
  external int QOSClassBackward;
}

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

class ATM_CONNECTION_ID extends Struct {
  @Uint32()
  external int DeviceNumber;
  @Uint32()
  external int VPI;
  @Uint32()
  external int VCI;
}

class ATM_PVC_PARAMS extends Struct {
  external ATM_CONNECTION_ID PvcConnectionId;
  external QOS PvcQos;
}

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

class TRANSMIT_FILE_BUFFERS extends Struct {
  external Pointer Head;
  @Uint32()
  external int HeadLength;
  external Pointer Tail;
  @Uint32()
  external int TailLength;
}

class TRANSMIT_PACKETS_ELEMENT extends Struct {
  @Uint32()
  external int dwElFlags;
  @Uint32()
  external int cLength;
  @Uint32()
  external int Anonymous;
}

class NLA_BLOB extends Struct {
  @Uint32()
  external int header;
  @Uint32()
  external int data;
}

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

class WSASENDMSG extends Struct {
  external Pointer<WSAMSG> lpMsg;
  @Uint32()
  external int dwFlags;
  external Pointer<Uint32> lpNumberOfBytesSent;
  external Pointer<OVERLAPPED> lpOverlapped;
  external Pointer<WSAOVERLAPPED_COMPLETION_ROUTINE> lpCompletionRoutine;
}

class RIO_NOTIFICATION_COMPLETION extends Struct {
  @Uint32()
  external int Type;
  @Uint32()
  external int Anonymous;
}

class RIO_EXTENSION_FUNCTION_TABLE extends Struct {
  @Uint32()
  external int cbSize;
  external Pointer<FN_RIORECEIVE> RIOReceive;
  external Pointer<FN_RIORECEIVEEX> RIOReceiveEx;
  external Pointer<FN_RIOSEND> RIOSend;
  external Pointer<FN_RIOSENDEX> RIOSendEx;
  external Pointer<FN_RIOCLOSECOMPLETIONQUEUE> RIOCloseCompletionQueue;
  external Pointer<FN_RIOCREATECOMPLETIONQUEUE> RIOCreateCompletionQueue;
  external Pointer<FN_RIOCREATEREQUESTQUEUE> RIOCreateRequestQueue;
  external Pointer<FN_RIODEQUEUECOMPLETION> RIODequeueCompletion;
  external Pointer<FN_RIODEREGISTERBUFFER> RIODeregisterBuffer;
  external Pointer<FN_RIONOTIFY> RIONotify;
  external Pointer<FN_RIOREGISTERBUFFER> RIORegisterBuffer;
  external Pointer<FN_RIORESIZECOMPLETIONQUEUE> RIOResizeCompletionQueue;
  external Pointer<FN_RIORESIZEREQUESTQUEUE> RIOResizeRequestQueue;
}

class WSPData extends Struct {
  @Uint16()
  external int wVersion;
  @Uint16()
  external int wHighVersion;
  @Array(129)
  external Array<Uint16> szDescription;
}

class WSATHREADID extends Struct {
  @IntPtr()
  external int ThreadHandle;
  @IntPtr()
  external int Reserved;
}

class WSPPROC_TABLE extends Struct {
  external Pointer<WSPACCEPT> lpWSPAccept;
  external Pointer<WSPADDRESSTOSTRING> lpWSPAddressToString;
  external Pointer<WSPASYNCSELECT> lpWSPAsyncSelect;
  external Pointer<WSPBIND> lpWSPBind;
  external Pointer<WSPCANCELBLOCKINGCALL> lpWSPCancelBlockingCall;
  external Pointer<WSPCLEANUP> lpWSPCleanup;
  external Pointer<WSPCLOSESOCKET> lpWSPCloseSocket;
  external Pointer<WSPCONNECT> lpWSPConnect;
  external Pointer<WSPDUPLICATESOCKET> lpWSPDuplicateSocket;
  external Pointer<WSPENUMNETWORKEVENTS> lpWSPEnumNetworkEvents;
  external Pointer<WSPEVENTSELECT> lpWSPEventSelect;
  external Pointer<WSPGETOVERLAPPEDRESULT> lpWSPGetOverlappedResult;
  external Pointer<WSPGETPEERNAME> lpWSPGetPeerName;
  external Pointer<WSPGETSOCKNAME> lpWSPGetSockName;
  external Pointer<WSPGETSOCKOPT> lpWSPGetSockOpt;
  external Pointer<WSPGETQOSBYNAME> lpWSPGetQOSByName;
  external Pointer<WSPIOCTL> lpWSPIoctl;
  external Pointer<WSPJOINLEAF> lpWSPJoinLeaf;
  external Pointer<WSPLISTEN> lpWSPListen;
  external Pointer<WSPRECV> lpWSPRecv;
  external Pointer<WSPRECVDISCONNECT> lpWSPRecvDisconnect;
  external Pointer<WSPRECVFROM> lpWSPRecvFrom;
  external Pointer<WSPSELECT> lpWSPSelect;
  external Pointer<WSPSEND> lpWSPSend;
  external Pointer<WSPSENDDISCONNECT> lpWSPSendDisconnect;
  external Pointer<WSPSENDTO> lpWSPSendTo;
  external Pointer<WSPSETSOCKOPT> lpWSPSetSockOpt;
  external Pointer<WSPSHUTDOWN> lpWSPShutdown;
  external Pointer<WSPSOCKET> lpWSPSocket;
  external Pointer<WSPSTRINGTOADDRESS> lpWSPStringToAddress;
}

class WSPUPCALLTABLE extends Struct {
  external Pointer<WPUCLOSEEVENT> lpWPUCloseEvent;
  external Pointer<WPUCLOSESOCKETHANDLE> lpWPUCloseSocketHandle;
  external Pointer<WPUCREATEEVENT> lpWPUCreateEvent;
  external Pointer<WPUCREATESOCKETHANDLE> lpWPUCreateSocketHandle;
  external Pointer<WPUFDISSET> lpWPUFDIsSet;
  external Pointer<WPUGETPROVIDERPATH> lpWPUGetProviderPath;
  external Pointer<WPUMODIFYIFSHANDLE> lpWPUModifyIFSHandle;
  external Pointer<WPUPOSTMESSAGE> lpWPUPostMessage;
  external Pointer<WPUQUERYBLOCKINGCALLBACK> lpWPUQueryBlockingCallback;
  external Pointer<WPUQUERYSOCKETHANDLECONTEXT> lpWPUQuerySocketHandleContext;
  external Pointer<WPUQUEUEAPC> lpWPUQueueApc;
  external Pointer<WPURESETEVENT> lpWPUResetEvent;
  external Pointer<WPUSETEVENT> lpWPUSetEvent;
  external Pointer<WPUOPENCURRENTTHREAD> lpWPUOpenCurrentThread;
  external Pointer<WPUCLOSETHREAD> lpWPUCloseThread;
}

class WSC_PROVIDER_AUDIT_INFO extends Struct {
  @Uint32()
  external int RecordSize;
  external Pointer Reserved;
}

class NSP_ROUTINE extends Struct {
  @Uint32()
  external int cbSize;
  @Uint32()
  external int dwMajorVersion;
  @Uint32()
  external int dwMinorVersion;
  external Pointer<NSPCLEANUP> NSPCleanup;
  external Pointer<NSPLOOKUPSERVICEBEGIN> NSPLookupServiceBegin;
  external Pointer<NSPLOOKUPSERVICENEXT> NSPLookupServiceNext;
  external Pointer<NSPLOOKUPSERVICEEND> NSPLookupServiceEnd;
  external Pointer<NSPSETSERVICE> NSPSetService;
  external Pointer<NSPINSTALLSERVICECLASS> NSPInstallServiceClass;
  external Pointer<NSPREMOVESERVICECLASS> NSPRemoveServiceClass;
  external Pointer<NSPGETSERVICECLASSINFO> NSPGetServiceClassInfo;
  external Pointer<NSPIOCTL> NSPIoctl;
}

class NSPV2_ROUTINE extends Struct {
  @Uint32()
  external int cbSize;
  @Uint32()
  external int dwMajorVersion;
  @Uint32()
  external int dwMinorVersion;
  external Pointer<NSPV2STARTUP> NSPv2Startup;
  external Pointer<NSPV2CLEANUP> NSPv2Cleanup;
  external Pointer<NSPV2LOOKUPSERVICEBEGIN> NSPv2LookupServiceBegin;
  external Pointer<NSPV2LOOKUPSERVICENEXTEX> NSPv2LookupServiceNextEx;
  external Pointer<NSPV2LOOKUPSERVICEEND> NSPv2LookupServiceEnd;
  external Pointer<NSPV2SETSERVICEEX> NSPv2SetServiceEx;
  external Pointer<NSPV2CLIENTSESSIONRUNDOWN> NSPv2ClientSessionRundown;
}

class NS_INFOA extends Struct {
  @Uint32()
  external int dwNameSpace;
  @Uint32()
  external int dwNameSpaceFlags;
  external Pointer<Utf8> lpNameSpace;
}

class NS_INFOW extends Struct {
  @Uint32()
  external int dwNameSpace;
  @Uint32()
  external int dwNameSpaceFlags;
  external Pointer<Utf16> lpNameSpace;
}

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

class SERVICE_TYPE_VALUE_ABSA extends Struct {
  @Uint32()
  external int dwNameSpace;
  @Uint32()
  external int dwValueType;
  @Uint32()
  external int dwValueSize;
  external Pointer<Utf8> lpValueName;
  external Pointer lpValue;
}

class SERVICE_TYPE_VALUE_ABSW extends Struct {
  @Uint32()
  external int dwNameSpace;
  @Uint32()
  external int dwValueType;
  @Uint32()
  external int dwValueSize;
  external Pointer<Utf16> lpValueName;
  external Pointer lpValue;
}

class SERVICE_TYPE_INFO extends Struct {
  @Uint32()
  external int dwTypeNameOffset;
  @Uint32()
  external int dwValueCount;
  @Array(1)
  external Array<SERVICE_TYPE_VALUE> Values;
}

class SERVICE_TYPE_INFO_ABSA extends Struct {
  external Pointer<Utf8> lpTypeName;
  @Uint32()
  external int dwValueCount;
  @Array(1)
  external Array<SERVICE_TYPE_VALUE_ABSA> Values;
}

class SERVICE_TYPE_INFO_ABSW extends Struct {
  external Pointer<Utf16> lpTypeName;
  @Uint32()
  external int dwValueCount;
  @Array(1)
  external Array<SERVICE_TYPE_VALUE_ABSW> Values;
}

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

class SERVICE_ADDRESSES extends Struct {
  @Uint32()
  external int dwAddressCount;
  @Array(1)
  external Array<SERVICE_ADDRESS> Addresses;
}

class SERVICE_INFOA extends Struct {
  external Pointer<GUID> lpServiceType;
  external Pointer<Utf8> lpServiceName;
  external Pointer<Utf8> lpComment;
  external Pointer<Utf8> lpLocale;
  @Uint32()
  external int dwDisplayHint;
  @Uint32()
  external int dwVersion;
  @Uint32()
  external int dwTime;
  external Pointer<Utf8> lpMachineName;
  external Pointer<SERVICE_ADDRESSES> lpServiceAddress;
  external BLOB ServiceSpecificInfo;
}

class SERVICE_INFOW extends Struct {
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

class NS_SERVICE_INFOA extends Struct {
  @Uint32()
  external int dwNameSpace;
  external SERVICE_INFOA ServiceInfo;
}

class NS_SERVICE_INFOW extends Struct {
  @Uint32()
  external int dwNameSpace;
  external SERVICE_INFOW ServiceInfo;
}

class PROTOCOL_INFOA extends Struct {
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
  external Pointer<Utf8> lpProtocol;
}

class PROTOCOL_INFOW extends Struct {
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

class NETRESOURCE2A extends Struct {
  @Uint32()
  external int dwScope;
  @Uint32()
  external int dwType;
  @Uint32()
  external int dwUsage;
  @Uint32()
  external int dwDisplayType;
  external Pointer<Utf8> lpLocalName;
  external Pointer<Utf8> lpRemoteName;
  external Pointer<Utf8> lpComment;
  external NS_INFOA ns_info;
  external GUID ServiceType;
  @Uint32()
  external int dwProtocols;
  external Pointer<Int32> lpiProtocols;
}

class NETRESOURCE2W extends Struct {
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
  external NS_INFOA ns_info;
  external GUID ServiceType;
  @Uint32()
  external int dwProtocols;
  external Pointer<Int32> lpiProtocols;
}

class SERVICE_ASYNC_INFO extends Struct {
  external Pointer<SERVICE_CALLBACK_PROC> lpServiceCallbackProc;
  @IntPtr()
  external int lParam;
  @IntPtr()
  external int hAsyncTaskHandle;
}
