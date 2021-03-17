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

class DHCPV6CAPI_PARAMS extends Struct {
  @Uint32() external int Flags;
  @Uint32() external int OptionId;
  @Int32() external int IsVendor;
  external Pointer<Uint8> Data;
  @Uint32() external int nBytesData;
}

class DHCPV6CAPI_PARAMS_ARRAY extends Struct {
  @Uint32() external int nParams;
  external Pointer<DHCPV6CAPI_PARAMS> Params;
}

class DHCPV6CAPI_CLASSID extends Struct {
  @Uint32() external int Flags;
  external Pointer<Uint8> Data;
  @Uint32() external int nBytesData;
}

class DHCPV6Prefix extends Struct {
  external __ubyte__ prefix;
  @Uint32() external int prefixLength;
  @Uint32() external int preferredLifeTime;
  @Uint32() external int validLifeTime;
  @Uint32() external int status;
}

class DHCPV6PrefixLeaseInformation extends Struct {
  @Uint32() external int nPrefixes;
  external Pointer<DHCPV6Prefix> prefixArray;
  @Uint32() external int iaid;
  @Int64() external int T1;
  @Int64() external int T2;
  @Int64() external int MaxLeaseExpirationTime;
  @Int64() external int LastRenewalTime;
  @Uint32() external int status;
  external Pointer<Uint8> ServerId;
  @Uint32() external int ServerIdLen;
}

class DHCPAPI_PARAMS extends Struct {
  @Uint32() external int Flags;
  @Uint32() external int OptionId;
  @Int32() external int IsVendor;
  external Pointer<Uint8> Data;
  @Uint32() external int nBytesData;
}

class DHCPCAPI_PARAMS_ARRAY extends Struct {
  @Uint32() external int nParams;
  external Pointer<DHCPAPI_PARAMS> Params;
}

class DHCPCAPI_CLASSID extends Struct {
  @Uint32() external int Flags;
  external Pointer<Uint8> Data;
  @Uint32() external int nBytesData;
}

class DHCP_SERVER_OPTIONS extends Struct {
  external Pointer<Uint8> MessageType;
  external Pointer<Uint32> SubnetMask;
  external Pointer<Uint32> RequestedAddress;
  external Pointer<Uint32> RequestLeaseTime;
  external Pointer<Uint8> OverlayFields;
  external Pointer<Uint32> RouterAddress;
  external Pointer<Uint32> Server;
  external Pointer<Uint8> ParameterRequestList;
  @Uint32() external int ParameterRequestListLength;
  external Pointer<Int8> MachineName;
  @Uint32() external int MachineNameLength;
  @Uint8() external int ClientHardwareAddressType;
  @Uint8() external int ClientHardwareAddressLength;
  external Pointer<Uint8> ClientHardwareAddress;
  external Pointer<Int8> ClassIdentifier;
  @Uint32() external int ClassIdentifierLength;
  external Pointer<Uint8> VendorClass;
  @Uint32() external int VendorClassLength;
  @Uint32() external int DNSFlags;
  @Uint32() external int DNSNameLength;
  external Pointer<Uint8> DNSName;
  @Uint8() external int DSDomainNameRequested;
  external Pointer<Int8> DSDomainName;
  @Uint32() external int DSDomainNameLen;
  external Pointer<Uint32> ScopeId;
}

class DHCP_CALLOUT_TABLE extends Struct {
  external Pointer<DHCP_CONTROL> DhcpControlHook;
  external Pointer<DHCP_NEWPKT> DhcpNewPktHook;
  external Pointer<DHCP_DROP_SEND> DhcpPktDropHook;
  external Pointer<DHCP_DROP_SEND> DhcpPktSendHook;
  external Pointer<DHCP_PROB> DhcpAddressDelHook;
  external Pointer<DHCP_GIVE_ADDRESS> DhcpAddressOfferHook;
  external Pointer<DHCP_HANDLE_OPTIONS> DhcpHandleOptionsHook;
  external Pointer<DHCP_DELETE_CLIENT> DhcpDeleteClientHook;
  external Pointer DhcpExtensionHook;
  external Pointer DhcpReservedHook;
}

class DATE_TIME extends Struct {
  @Uint32() external int dwLowDateTime;
  @Uint32() external int dwHighDateTime;
}

class DHCP_IP_RANGE extends Struct {
  @Uint32() external int StartAddress;
  @Uint32() external int EndAddress;
}

class DHCP_BINARY_DATA extends Struct {
  @Uint32() external int DataLength;
  external Pointer<Uint8> Data;
}

class DHCP_HOST_INFO extends Struct {
  @Uint32() external int IpAddress;
  external Pointer<Utf16> NetBiosName;
  external Pointer<Utf16> HostName;
}

class DWORD_DWORD extends Struct {
  @Uint32() external int DWord1;
  @Uint32() external int DWord2;
}

class DHCP_SUBNET_INFO extends Struct {
  @Uint32() external int SubnetAddress;
  @Uint32() external int SubnetMask;
  external Pointer<Utf16> SubnetName;
  external Pointer<Utf16> SubnetComment;
  external DHCP_HOST_INFO PrimaryHost;
  @Uint32() external int SubnetState;
}

class DHCP_SUBNET_INFO_VQ extends Struct {
  @Uint32() external int SubnetAddress;
  @Uint32() external int SubnetMask;
  external Pointer<Utf16> SubnetName;
  external Pointer<Utf16> SubnetComment;
  external DHCP_HOST_INFO PrimaryHost;
  @Uint32() external int SubnetState;
  @Uint32() external int QuarantineOn;
  @Uint32() external int Reserved1;
  @Uint32() external int Reserved2;
  @Int64() external int Reserved3;
  @Int64() external int Reserved4;
}

class DHCP_IP_ARRAY extends Struct {
  @Uint32() external int NumElements;
  external Pointer<Uint32> Elements;
}

class DHCP_IP_CLUSTER extends Struct {
  @Uint32() external int ClusterAddress;
  @Uint32() external int ClusterMask;
}

class DHCP_IP_RESERVATION extends Struct {
  @Uint32() external int ReservedIpAddress;
  external Pointer<DHCP_BINARY_DATA> ReservedForClient;
}

class DHCP_SUBNET_ELEMENT_UNION extends Struct {
}

class DHCP_SUBNET_ELEMENT_INFO_ARRAY extends Struct {
  @Uint32() external int NumElements;
  external Pointer<DHCP_SUBNET_ELEMENT_DATA> Elements;
}

class DHCP_IPV6_ADDRESS extends Struct {
  @Uint64() external int HighOrderBits;
  @Uint64() external int LowOrderBits;
}

class DHCP_ADDR_PATTERN extends Struct {
  @Int32() external int MatchHWType;
  @Uint8() external int HWType;
  @Int32() external int IsWildcard;
  @Uint8() external int Length;
  external __ubyte__ Pattern;
}

class DHCP_FILTER_ADD_INFO extends Struct {
  external DHCP_ADDR_PATTERN AddrPatt;
  external Pointer<Utf16> Comment;
  @Uint32() external int ListType;
}

class DHCP_FILTER_GLOBAL_INFO extends Struct {
  @Int32() external int EnforceAllowList;
  @Int32() external int EnforceDenyList;
}

class DHCP_FILTER_RECORD extends Struct {
  external DHCP_ADDR_PATTERN AddrPatt;
  external Pointer<Utf16> Comment;
}

class DHCP_FILTER_ENUM_INFO extends Struct {
  @Uint32() external int NumElements;
  external Pointer<DHCP_FILTER_RECORD> pEnumRecords;
}

class DHCP_OPTION_ELEMENT_UNION extends Struct {
}

class DHCP_OPTION_DATA extends Struct {
  @Uint32() external int NumElements;
  external Pointer<DHCP_OPTION_DATA_ELEMENT> Elements;
}

class DHCP_OPTION extends Struct {
  @Uint32() external int OptionID;
  external Pointer<Utf16> OptionName;
  external Pointer<Utf16> OptionComment;
  external DHCP_OPTION_DATA DefaultValue;
  @Uint32() external int OptionType;
}

class DHCP_OPTION_ARRAY extends Struct {
  @Uint32() external int NumElements;
  external Pointer<DHCP_OPTION> Options;
}

class DHCP_OPTION_VALUE extends Struct {
  @Uint32() external int OptionID;
  external DHCP_OPTION_DATA Value;
}

class DHCP_OPTION_VALUE_ARRAY extends Struct {
  @Uint32() external int NumElements;
  external Pointer<DHCP_OPTION_VALUE> Values;
}

class DHCP_RESERVED_SCOPE extends Struct {
  @Uint32() external int ReservedIpAddress;
  @Uint32() external int ReservedIpSubnetAddress;
}

class DHCP_RESERVED_SCOPE6 extends Struct {
  external DHCP_IPV6_ADDRESS ReservedIpAddress;
  external DHCP_IPV6_ADDRESS ReservedIpSubnetAddress;
}

class DHCP_OPTION_SCOPE_UNION6 extends Struct {
}

class DHCP_OPTION_LIST extends Struct {
  @Uint32() external int NumOptions;
  external Pointer<DHCP_OPTION_VALUE> Options;
}

class DHCP_CLIENT_INFO extends Struct {
  @Uint32() external int ClientIpAddress;
  @Uint32() external int SubnetMask;
  external DHCP_BINARY_DATA ClientHardwareAddress;
  external Pointer<Utf16> ClientName;
  external Pointer<Utf16> ClientComment;
  external DATE_TIME ClientLeaseExpires;
  external DHCP_HOST_INFO OwnerHost;
}

class DHCP_CLIENT_INFO_ARRAY extends Struct {
  @Uint32() external int NumElements;
  external Pointer<Pointer<DHCP_CLIENT_INFO>> Clients;
}

class DHCP_CLIENT_INFO_VQ extends Struct {
  @Uint32() external int ClientIpAddress;
  @Uint32() external int SubnetMask;
  external DHCP_BINARY_DATA ClientHardwareAddress;
  external Pointer<Utf16> ClientName;
  external Pointer<Utf16> ClientComment;
  external DATE_TIME ClientLeaseExpires;
  external DHCP_HOST_INFO OwnerHost;
  @Uint8() external int bClientType;
  @Uint8() external int AddressState;
  @Uint32() external int Status;
  external DATE_TIME ProbationEnds;
  @Int32() external int QuarantineCapable;
}

class DHCP_CLIENT_INFO_ARRAY_VQ extends Struct {
  @Uint32() external int NumElements;
  external Pointer<Pointer<DHCP_CLIENT_INFO_VQ>> Clients;
}

class DHCP_CLIENT_FILTER_STATUS_INFO extends Struct {
  @Uint32() external int ClientIpAddress;
  @Uint32() external int SubnetMask;
  external DHCP_BINARY_DATA ClientHardwareAddress;
  external Pointer<Utf16> ClientName;
  external Pointer<Utf16> ClientComment;
  external DATE_TIME ClientLeaseExpires;
  external DHCP_HOST_INFO OwnerHost;
  @Uint8() external int bClientType;
  @Uint8() external int AddressState;
  @Uint32() external int Status;
  external DATE_TIME ProbationEnds;
  @Int32() external int QuarantineCapable;
  @Uint32() external int FilterStatus;
}

class DHCP_CLIENT_FILTER_STATUS_INFO_ARRAY extends Struct {
  @Uint32() external int NumElements;
  external Pointer<Pointer<DHCP_CLIENT_FILTER_STATUS_INFO>> Clients;
}

class DHCP_CLIENT_INFO_PB extends Struct {
  @Uint32() external int ClientIpAddress;
  @Uint32() external int SubnetMask;
  external DHCP_BINARY_DATA ClientHardwareAddress;
  external Pointer<Utf16> ClientName;
  external Pointer<Utf16> ClientComment;
  external DATE_TIME ClientLeaseExpires;
  external DHCP_HOST_INFO OwnerHost;
  @Uint8() external int bClientType;
  @Uint8() external int AddressState;
  @Uint32() external int Status;
  external DATE_TIME ProbationEnds;
  @Int32() external int QuarantineCapable;
  @Uint32() external int FilterStatus;
  external Pointer<Utf16> PolicyName;
}

class DHCP_CLIENT_INFO_PB_ARRAY extends Struct {
  @Uint32() external int NumElements;
  external Pointer<Pointer<DHCP_CLIENT_INFO_PB>> Clients;
}

class DHCP_CLIENT_SEARCH_UNION extends Struct {
}

class DHCP_PROPERTY_ARRAY extends Struct {
  @Uint32() external int NumElements;
  external Pointer<DHCP_PROPERTY> Elements;
}

class DHCP_CLIENT_INFO_EX extends Struct {
  @Uint32() external int ClientIpAddress;
  @Uint32() external int SubnetMask;
  external DHCP_BINARY_DATA ClientHardwareAddress;
  external Pointer<Utf16> ClientName;
  external Pointer<Utf16> ClientComment;
  external DATE_TIME ClientLeaseExpires;
  external DHCP_HOST_INFO OwnerHost;
  @Uint8() external int bClientType;
  @Uint8() external int AddressState;
  @Uint32() external int Status;
  external DATE_TIME ProbationEnds;
  @Int32() external int QuarantineCapable;
  @Uint32() external int FilterStatus;
  external Pointer<Utf16> PolicyName;
  external Pointer<DHCP_PROPERTY_ARRAY> Properties;
}

class DHCP_CLIENT_INFO_EX_ARRAY extends Struct {
  @Uint32() external int NumElements;
  external Pointer<Pointer<DHCP_CLIENT_INFO_EX>> Clients;
}

class SCOPE_MIB_INFO extends Struct {
  @Uint32() external int Subnet;
  @Uint32() external int NumAddressesInuse;
  @Uint32() external int NumAddressesFree;
  @Uint32() external int NumPendingOffers;
}

class DHCP_MIB_INFO extends Struct {
  @Uint32() external int Discovers;
  @Uint32() external int Offers;
  @Uint32() external int Requests;
  @Uint32() external int Acks;
  @Uint32() external int Naks;
  @Uint32() external int Declines;
  @Uint32() external int Releases;
  external DATE_TIME ServerStartTime;
  @Uint32() external int Scopes;
  external Pointer<SCOPE_MIB_INFO> ScopeInfo;
}

class SCOPE_MIB_INFO_VQ extends Struct {
  @Uint32() external int Subnet;
  @Uint32() external int NumAddressesInuse;
  @Uint32() external int NumAddressesFree;
  @Uint32() external int NumPendingOffers;
  @Uint32() external int QtnNumLeases;
  @Uint32() external int QtnPctQtnLeases;
  @Uint32() external int QtnProbationLeases;
  @Uint32() external int QtnNonQtnLeases;
  @Uint32() external int QtnExemptLeases;
  @Uint32() external int QtnCapableClients;
}

class DHCP_MIB_INFO_VQ extends Struct {
  @Uint32() external int Discovers;
  @Uint32() external int Offers;
  @Uint32() external int Requests;
  @Uint32() external int Acks;
  @Uint32() external int Naks;
  @Uint32() external int Declines;
  @Uint32() external int Releases;
  external DATE_TIME ServerStartTime;
  @Uint32() external int QtnNumLeases;
  @Uint32() external int QtnPctQtnLeases;
  @Uint32() external int QtnProbationLeases;
  @Uint32() external int QtnNonQtnLeases;
  @Uint32() external int QtnExemptLeases;
  @Uint32() external int QtnCapableClients;
  @Uint32() external int QtnIASErrors;
  @Uint32() external int Scopes;
  external Pointer<SCOPE_MIB_INFO_VQ> ScopeInfo;
}

class SCOPE_MIB_INFO_V5 extends Struct {
  @Uint32() external int Subnet;
  @Uint32() external int NumAddressesInuse;
  @Uint32() external int NumAddressesFree;
  @Uint32() external int NumPendingOffers;
}

class DHCP_MIB_INFO_V5 extends Struct {
  @Uint32() external int Discovers;
  @Uint32() external int Offers;
  @Uint32() external int Requests;
  @Uint32() external int Acks;
  @Uint32() external int Naks;
  @Uint32() external int Declines;
  @Uint32() external int Releases;
  external DATE_TIME ServerStartTime;
  @Uint32() external int QtnNumLeases;
  @Uint32() external int QtnPctQtnLeases;
  @Uint32() external int QtnProbationLeases;
  @Uint32() external int QtnNonQtnLeases;
  @Uint32() external int QtnExemptLeases;
  @Uint32() external int QtnCapableClients;
  @Uint32() external int QtnIASErrors;
  @Uint32() external int DelayedOffers;
  @Uint32() external int ScopesWithDelayedOffers;
  @Uint32() external int Scopes;
  external Pointer<SCOPE_MIB_INFO_V5> ScopeInfo;
}

class DHCP_SERVER_CONFIG_INFO extends Struct {
  @Uint32() external int APIProtocolSupport;
  external Pointer<Utf16> DatabaseName;
  external Pointer<Utf16> DatabasePath;
  external Pointer<Utf16> BackupPath;
  @Uint32() external int BackupInterval;
  @Uint32() external int DatabaseLoggingFlag;
  @Uint32() external int RestoreFlag;
  @Uint32() external int DatabaseCleanupInterval;
  @Uint32() external int DebugFlag;
}

class DHCP_SCAN_ITEM extends Struct {
  @Uint32() external int IpAddress;
  @Uint32() external int ScanFlag;
}

class DHCP_SCAN_LIST extends Struct {
  @Uint32() external int NumScanItems;
  external Pointer<DHCP_SCAN_ITEM> ScanItems;
}

class DHCP_CLASS_INFO extends Struct {
  external Pointer<Utf16> ClassName;
  external Pointer<Utf16> ClassComment;
  @Uint32() external int ClassDataLength;
  @Int32() external int IsVendor;
  @Uint32() external int Flags;
  external Pointer<Uint8> ClassData;
}

class DHCP_CLASS_INFO_ARRAY extends Struct {
  @Uint32() external int NumElements;
  external Pointer<DHCP_CLASS_INFO> Classes;
}

class DHCP_CLASS_INFO_V6 extends Struct {
  external Pointer<Utf16> ClassName;
  external Pointer<Utf16> ClassComment;
  @Uint32() external int ClassDataLength;
  @Int32() external int IsVendor;
  @Uint32() external int EnterpriseNumber;
  @Uint32() external int Flags;
  external Pointer<Uint8> ClassData;
}

class DHCP_CLASS_INFO_ARRAY_V6 extends Struct {
  @Uint32() external int NumElements;
  external Pointer<DHCP_CLASS_INFO_V6> Classes;
}

class DHCP_SERVER_SPECIFIC_STRINGS extends Struct {
  external Pointer<Utf16> DefaultVendorClassName;
  external Pointer<Utf16> DefaultUserClassName;
}

class DHCP_IP_RESERVATION_V4 extends Struct {
  @Uint32() external int ReservedIpAddress;
  external Pointer<DHCP_BINARY_DATA> ReservedForClient;
  @Uint8() external int bAllowedClientTypes;
}

class DHCP_IP_RESERVATION_INFO extends Struct {
  @Uint32() external int ReservedIpAddress;
  external DHCP_BINARY_DATA ReservedForClient;
  external Pointer<Utf16> ReservedClientName;
  external Pointer<Utf16> ReservedClientDesc;
  @Uint8() external int bAllowedClientTypes;
  @Uint8() external int fOptionsPresent;
}

class DHCP_RESERVATION_INFO_ARRAY extends Struct {
  @Uint32() external int NumElements;
  external Pointer<Pointer<DHCP_IP_RESERVATION_INFO>> Elements;
}

class DHCP_SUBNET_ELEMENT_UNION_V4 extends Struct {
}

class DHCP_SUBNET_ELEMENT_INFO_ARRAY_V4 extends Struct {
  @Uint32() external int NumElements;
  external Pointer<DHCP_SUBNET_ELEMENT_DATA_V4> Elements;
}

class DHCP_CLIENT_INFO_V4 extends Struct {
  @Uint32() external int ClientIpAddress;
  @Uint32() external int SubnetMask;
  external DHCP_BINARY_DATA ClientHardwareAddress;
  external Pointer<Utf16> ClientName;
  external Pointer<Utf16> ClientComment;
  external DATE_TIME ClientLeaseExpires;
  external DHCP_HOST_INFO OwnerHost;
  @Uint8() external int bClientType;
}

class DHCP_CLIENT_INFO_ARRAY_V4 extends Struct {
  @Uint32() external int NumElements;
  external Pointer<Pointer<DHCP_CLIENT_INFO_V4>> Clients;
}

class DHCP_SERVER_CONFIG_INFO_V4 extends Struct {
  @Uint32() external int APIProtocolSupport;
  external Pointer<Utf16> DatabaseName;
  external Pointer<Utf16> DatabasePath;
  external Pointer<Utf16> BackupPath;
  @Uint32() external int BackupInterval;
  @Uint32() external int DatabaseLoggingFlag;
  @Uint32() external int RestoreFlag;
  @Uint32() external int DatabaseCleanupInterval;
  @Uint32() external int DebugFlag;
  @Uint32() external int dwPingRetries;
  @Uint32() external int cbBootTableString;
  external Pointer<Utf16> wszBootTableString;
  @Int32() external int fAuditLog;
}

class DHCP_SERVER_CONFIG_INFO_VQ extends Struct {
  @Uint32() external int APIProtocolSupport;
  external Pointer<Utf16> DatabaseName;
  external Pointer<Utf16> DatabasePath;
  external Pointer<Utf16> BackupPath;
  @Uint32() external int BackupInterval;
  @Uint32() external int DatabaseLoggingFlag;
  @Uint32() external int RestoreFlag;
  @Uint32() external int DatabaseCleanupInterval;
  @Uint32() external int DebugFlag;
  @Uint32() external int dwPingRetries;
  @Uint32() external int cbBootTableString;
  external Pointer<Utf16> wszBootTableString;
  @Int32() external int fAuditLog;
  @Int32() external int QuarantineOn;
  @Uint32() external int QuarDefFail;
  @Int32() external int QuarRuntimeStatus;
}

class DHCP_SERVER_CONFIG_INFO_V6 extends Struct {
  @Int32() external int UnicastFlag;
  @Int32() external int RapidCommitFlag;
  @Uint32() external int PreferredLifetime;
  @Uint32() external int ValidLifetime;
  @Uint32() external int T1;
  @Uint32() external int T2;
  @Uint32() external int PreferredLifetimeIATA;
  @Uint32() external int ValidLifetimeIATA;
  @Int32() external int fAuditLog;
}

class DHCP_SUPER_SCOPE_TABLE_ENTRY extends Struct {
  @Uint32() external int SubnetAddress;
  @Uint32() external int SuperScopeNumber;
  @Uint32() external int NextInSuperScope;
  external Pointer<Utf16> SuperScopeName;
}

class DHCP_SUPER_SCOPE_TABLE extends Struct {
  @Uint32() external int cEntries;
  external Pointer<DHCP_SUPER_SCOPE_TABLE_ENTRY> pEntries;
}

class DHCP_CLIENT_INFO_V5 extends Struct {
  @Uint32() external int ClientIpAddress;
  @Uint32() external int SubnetMask;
  external DHCP_BINARY_DATA ClientHardwareAddress;
  external Pointer<Utf16> ClientName;
  external Pointer<Utf16> ClientComment;
  external DATE_TIME ClientLeaseExpires;
  external DHCP_HOST_INFO OwnerHost;
  @Uint8() external int bClientType;
  @Uint8() external int AddressState;
}

class DHCP_CLIENT_INFO_ARRAY_V5 extends Struct {
  @Uint32() external int NumElements;
  external Pointer<Pointer<DHCP_CLIENT_INFO_V5>> Clients;
}

class DHCPDS_SERVER extends Struct {
  @Uint32() external int Version;
  external Pointer<Utf16> ServerName;
  @Uint32() external int ServerAddress;
  @Uint32() external int Flags;
  @Uint32() external int State;
  external Pointer<Utf16> DsLocation;
  @Uint32() external int DsLocType;
}

class DHCPDS_SERVERS extends Struct {
  @Uint32() external int Flags;
  @Uint32() external int NumElements;
  external Pointer<DHCPDS_SERVER> Servers;
}

class DHCP_ATTRIB_ARRAY extends Struct {
  @Uint32() external int NumElements;
  external Pointer<DHCP_ATTRIB> DhcpAttribs;
}

class DHCP_BOOTP_IP_RANGE extends Struct {
  @Uint32() external int StartAddress;
  @Uint32() external int EndAddress;
  @Uint32() external int BootpAllocated;
  @Uint32() external int MaxBootpAllowed;
}

class DHCP_SUBNET_ELEMENT_INFO_ARRAY_V5 extends Struct {
  @Uint32() external int NumElements;
  external Pointer<DHCP_SUBNET_ELEMENT_DATA_V5> Elements;
}

class DHCP_PERF_STATS extends Struct {
  @Uint32() external int dwNumPacketsReceived;
  @Uint32() external int dwNumPacketsDuplicate;
  @Uint32() external int dwNumPacketsExpired;
  @Uint32() external int dwNumMilliSecondsProcessed;
  @Uint32() external int dwNumPacketsInActiveQueue;
  @Uint32() external int dwNumPacketsInPingQueue;
  @Uint32() external int dwNumDiscoversReceived;
  @Uint32() external int dwNumOffersSent;
  @Uint32() external int dwNumRequestsReceived;
  @Uint32() external int dwNumInformsReceived;
  @Uint32() external int dwNumAcksSent;
  @Uint32() external int dwNumNacksSent;
  @Uint32() external int dwNumDeclinesReceived;
  @Uint32() external int dwNumReleasesReceived;
  @Uint32() external int dwNumDelayedOfferInQueue;
  @Uint32() external int dwNumPacketsProcessed;
  @Uint32() external int dwNumPacketsInQuarWaitingQueue;
  @Uint32() external int dwNumPacketsInQuarReadyQueue;
  @Uint32() external int dwNumPacketsInQuarDecisionQueue;
}

class DHCP_BIND_ELEMENT extends Struct {
  @Uint32() external int Flags;
  @Int32() external int fBoundToDHCPServer;
  @Uint32() external int AdapterPrimaryAddress;
  @Uint32() external int AdapterSubnetAddress;
  external Pointer<Utf16> IfDescription;
  @Uint32() external int IfIdSize;
  external Pointer<Uint8> IfId;
}

class DHCP_BIND_ELEMENT_ARRAY extends Struct {
  @Uint32() external int NumElements;
  external Pointer<DHCP_BIND_ELEMENT> Elements;
}

class DHCPV6_BIND_ELEMENT extends Struct {
  @Uint32() external int Flags;
  @Int32() external int fBoundToDHCPServer;
  external DHCP_IPV6_ADDRESS AdapterPrimaryAddress;
  external DHCP_IPV6_ADDRESS AdapterSubnetAddress;
  external Pointer<Utf16> IfDescription;
  @Uint32() external int IpV6IfIndex;
  @Uint32() external int IfIdSize;
  external Pointer<Uint8> IfId;
}

class DHCPV6_BIND_ELEMENT_ARRAY extends Struct {
  @Uint32() external int NumElements;
  external Pointer<DHCPV6_BIND_ELEMENT> Elements;
}

class DHCP_IP_RANGE_V6 extends Struct {
  external DHCP_IPV6_ADDRESS StartAddress;
  external DHCP_IPV6_ADDRESS EndAddress;
}

class DHCP_HOST_INFO_V6 extends Struct {
  external DHCP_IPV6_ADDRESS IpAddress;
  external Pointer<Utf16> NetBiosName;
  external Pointer<Utf16> HostName;
}

class DHCP_SUBNET_INFO_V6 extends Struct {
  external DHCP_IPV6_ADDRESS SubnetAddress;
  @Uint32() external int Prefix;
  @Uint16() external int Preference;
  external Pointer<Utf16> SubnetName;
  external Pointer<Utf16> SubnetComment;
  @Uint32() external int State;
  @Uint32() external int ScopeId;
}

class SCOPE_MIB_INFO_V6 extends Struct {
  external DHCP_IPV6_ADDRESS Subnet;
  @Uint64() external int NumAddressesInuse;
  @Uint64() external int NumAddressesFree;
  @Uint64() external int NumPendingAdvertises;
}

class DHCP_MIB_INFO_V6 extends Struct {
  @Uint32() external int Solicits;
  @Uint32() external int Advertises;
  @Uint32() external int Requests;
  @Uint32() external int Renews;
  @Uint32() external int Rebinds;
  @Uint32() external int Replies;
  @Uint32() external int Confirms;
  @Uint32() external int Declines;
  @Uint32() external int Releases;
  @Uint32() external int Informs;
  external DATE_TIME ServerStartTime;
  @Uint32() external int Scopes;
  external Pointer<SCOPE_MIB_INFO_V6> ScopeInfo;
}

class DHCP_IP_RESERVATION_V6 extends Struct {
  external DHCP_IPV6_ADDRESS ReservedIpAddress;
  external Pointer<DHCP_BINARY_DATA> ReservedForClient;
  @Uint32() external int InterfaceId;
}

class DHCP_SUBNET_ELEMENT_UNION_V6 extends Struct {
}

class DHCP_SUBNET_ELEMENT_INFO_ARRAY_V6 extends Struct {
  @Uint32() external int NumElements;
  external Pointer<DHCP_SUBNET_ELEMENT_DATA_V6> Elements;
}

class DHCP_CLIENT_INFO_V6 extends Struct {
  external DHCP_IPV6_ADDRESS ClientIpAddress;
  external DHCP_BINARY_DATA ClientDUID;
  @Uint32() external int AddressType;
  @Uint32() external int IAID;
  external Pointer<Utf16> ClientName;
  external Pointer<Utf16> ClientComment;
  external DATE_TIME ClientValidLeaseExpires;
  external DATE_TIME ClientPrefLeaseExpires;
  external DHCP_HOST_INFO_V6 OwnerHost;
}

class DHCPV6_IP_ARRAY extends Struct {
  @Uint32() external int NumElements;
  external Pointer<DHCP_IPV6_ADDRESS> Elements;
}

class DHCP_CLIENT_INFO_ARRAY_V6 extends Struct {
  @Uint32() external int NumElements;
  external Pointer<Pointer<DHCP_CLIENT_INFO_V6>> Clients;
}

class DHCP_POL_COND extends Struct {
  @Uint32() external int ParentExpr;
  @Uint32() external int Type;
  @Uint32() external int OptionID;
  @Uint32() external int SubOptionID;
  external Pointer<Utf16> VendorName;
  @Uint32() external int Operator;
  external Pointer<Uint8> Value;
  @Uint32() external int ValueLength;
}

class DHCP_POL_COND_ARRAY extends Struct {
  @Uint32() external int NumElements;
  external Pointer<DHCP_POL_COND> Elements;
}

class DHCP_POL_EXPR extends Struct {
  @Uint32() external int ParentExpr;
  @Uint32() external int Operator;
}

class DHCP_POL_EXPR_ARRAY extends Struct {
  @Uint32() external int NumElements;
  external Pointer<DHCP_POL_EXPR> Elements;
}

class DHCP_IP_RANGE_ARRAY extends Struct {
  @Uint32() external int NumElements;
  external Pointer<DHCP_IP_RANGE> Elements;
}

class DHCP_POLICY extends Struct {
  external Pointer<Utf16> PolicyName;
  @Int32() external int IsGlobalPolicy;
  @Uint32() external int Subnet;
  @Uint32() external int ProcessingOrder;
  external Pointer<DHCP_POL_COND_ARRAY> Conditions;
  external Pointer<DHCP_POL_EXPR_ARRAY> Expressions;
  external Pointer<DHCP_IP_RANGE_ARRAY> Ranges;
  external Pointer<Utf16> Description;
  @Int32() external int Enabled;
}

class DHCP_POLICY_ARRAY extends Struct {
  @Uint32() external int NumElements;
  external Pointer<DHCP_POLICY> Elements;
}

class DHCP_POLICY_EX extends Struct {
  external Pointer<Utf16> PolicyName;
  @Int32() external int IsGlobalPolicy;
  @Uint32() external int Subnet;
  @Uint32() external int ProcessingOrder;
  external Pointer<DHCP_POL_COND_ARRAY> Conditions;
  external Pointer<DHCP_POL_EXPR_ARRAY> Expressions;
  external Pointer<DHCP_IP_RANGE_ARRAY> Ranges;
  external Pointer<Utf16> Description;
  @Int32() external int Enabled;
  external Pointer<DHCP_PROPERTY_ARRAY> Properties;
}

class DHCP_POLICY_EX_ARRAY extends Struct {
  @Uint32() external int NumElements;
  external Pointer<DHCP_POLICY_EX> Elements;
}

class DHCPV6_STATELESS_PARAMS extends Struct {
  @Int32() external int Status;
  @Uint32() external int PurgeInterval;
}

class DHCPV6_STATELESS_SCOPE_STATS extends Struct {
  external DHCP_IPV6_ADDRESS SubnetAddress;
  @Uint64() external int NumStatelessClientsAdded;
  @Uint64() external int NumStatelessClientsRemoved;
}

class DHCPV6_STATELESS_STATS extends Struct {
  @Uint32() external int NumScopes;
  external Pointer<DHCPV6_STATELESS_SCOPE_STATS> ScopeStats;
}

class DHCP_FAILOVER_RELATIONSHIP extends Struct {
  @Uint32() external int PrimaryServer;
  @Uint32() external int SecondaryServer;
  @Uint32() external int Mode;
  @Uint32() external int ServerType;
  @Uint32() external int State;
  @Uint32() external int PrevState;
  @Uint32() external int Mclt;
  @Uint32() external int SafePeriod;
  external Pointer<Utf16> RelationshipName;
  external Pointer<Utf16> PrimaryServerName;
  external Pointer<Utf16> SecondaryServerName;
  external Pointer<DHCP_IP_ARRAY> pScopes;
  @Uint8() external int Percentage;
  external Pointer<Utf16> SharedSecret;
}

class DHCP_FAILOVER_RELATIONSHIP_ARRAY extends Struct {
  @Uint32() external int NumElements;
  external Pointer<DHCP_FAILOVER_RELATIONSHIP> pRelationships;
}

class DHCPV4_FAILOVER_CLIENT_INFO extends Struct {
  @Uint32() external int ClientIpAddress;
  @Uint32() external int SubnetMask;
  external DHCP_BINARY_DATA ClientHardwareAddress;
  external Pointer<Utf16> ClientName;
  external Pointer<Utf16> ClientComment;
  external DATE_TIME ClientLeaseExpires;
  external DHCP_HOST_INFO OwnerHost;
  @Uint8() external int bClientType;
  @Uint8() external int AddressState;
  @Uint32() external int Status;
  external DATE_TIME ProbationEnds;
  @Int32() external int QuarantineCapable;
  @Uint32() external int SentPotExpTime;
  @Uint32() external int AckPotExpTime;
  @Uint32() external int RecvPotExpTime;
  @Uint32() external int StartTime;
  @Uint32() external int CltLastTransTime;
  @Uint32() external int LastBndUpdTime;
  @Uint32() external int BndMsgStatus;
  external Pointer<Utf16> PolicyName;
  @Uint8() external int Flags;
}

class DHCPV4_FAILOVER_CLIENT_INFO_ARRAY extends Struct {
  @Uint32() external int NumElements;
  external Pointer<Pointer<DHCPV4_FAILOVER_CLIENT_INFO>> Clients;
}

class DHCPV4_FAILOVER_CLIENT_INFO_EX extends Struct {
  @Uint32() external int ClientIpAddress;
  @Uint32() external int SubnetMask;
  external DHCP_BINARY_DATA ClientHardwareAddress;
  external Pointer<Utf16> ClientName;
  external Pointer<Utf16> ClientComment;
  external DATE_TIME ClientLeaseExpires;
  external DHCP_HOST_INFO OwnerHost;
  @Uint8() external int bClientType;
  @Uint8() external int AddressState;
  @Uint32() external int Status;
  external DATE_TIME ProbationEnds;
  @Int32() external int QuarantineCapable;
  @Uint32() external int SentPotExpTime;
  @Uint32() external int AckPotExpTime;
  @Uint32() external int RecvPotExpTime;
  @Uint32() external int StartTime;
  @Uint32() external int CltLastTransTime;
  @Uint32() external int LastBndUpdTime;
  @Uint32() external int BndMsgStatus;
  external Pointer<Utf16> PolicyName;
  @Uint8() external int Flags;
  @Uint32() external int AddressStateEx;
}

class DHCP_FAILOVER_STATISTICS extends Struct {
  @Uint32() external int NumAddr;
  @Uint32() external int AddrFree;
  @Uint32() external int AddrInUse;
  @Uint32() external int PartnerAddrFree;
  @Uint32() external int ThisAddrFree;
  @Uint32() external int PartnerAddrInUse;
  @Uint32() external int ThisAddrInUse;
}

