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

class DnsContextHandle extends Struct {
  @IntPtr()
  external int Value;
}

class IP4_ARRAY extends Struct {
  @Uint32()
  external int AddrCount;
  @Array(1)
  external Array<Uint32> AddrArray;
}

class IP6_ADDRESS extends Struct {
  @Array(2)
  external Array<Uint64> IP6Qword;
  @Array(4)
  external Array<Uint32> IP6Dword;
  @Array(8)
  external Array<Uint16> IP6Word;
  @Array(16)
  external Array<Uint8> IP6Byte;
}

class DNS_ADDR extends Struct {
  @Array(32)
  external Array<Int8> MaxSa;
  @Uint32()
  external int Data;
}

class DNS_ADDR_ARRAY extends Struct {
  @Uint32()
  external int MaxCount;
  @Uint32()
  external int AddrCount;
  @Uint32()
  external int Tag;
  @Uint16()
  external int Family;
  @Uint16()
  external int WordReserved;
  @Uint32()
  external int Flags;
  @Uint32()
  external int MatchFlag;
  @Uint32()
  external int Reserved1;
  @Uint32()
  external int Reserved2;
  @Array(1)
  external Array<DNS_ADDR> AddrArray;
}

class DNS_HEADER extends Struct {
  @Uint16()
  external int Xid;
  @Uint8()
  external int _bitfield1;
  @Uint8()
  external int _bitfield2;
  @Uint16()
  external int QuestionCount;
  @Uint16()
  external int AnswerCount;
  @Uint16()
  external int NameServerCount;
  @Uint16()
  external int AdditionalCount;
}

class DNS_HEADER_EXT extends Struct {
  @Uint16()
  external int _bitfield;
  @Uint8()
  external int chRcode;
  @Uint8()
  external int chVersion;
}

class DNS_WIRE_QUESTION extends Struct {
  @Uint16()
  external int QuestionType;
  @Uint16()
  external int QuestionClass;
}

class DNS_WIRE_RECORD extends Struct {
  @Uint16()
  external int RecordType;
  @Uint16()
  external int RecordClass;
  @Uint32()
  external int TimeToLive;
  @Uint16()
  external int DataLength;
}

class DNS_A_DATA extends Struct {
  @Uint32()
  external int IpAddress;
}

class DNS_PTR_DATAW extends Struct {
  external Pointer<Utf16> pNameHost;
}

class DNS_PTR_DATAA extends Struct {
  external Pointer<Utf8> pNameHost;
}

class DNS_SOA_DATAW extends Struct {
  external Pointer<Utf16> pNamePrimaryServer;
  external Pointer<Utf16> pNameAdministrator;
  @Uint32()
  external int dwSerialNo;
  @Uint32()
  external int dwRefresh;
  @Uint32()
  external int dwRetry;
  @Uint32()
  external int dwExpire;
  @Uint32()
  external int dwDefaultTtl;
}

class DNS_SOA_DATAA extends Struct {
  external Pointer<Utf8> pNamePrimaryServer;
  external Pointer<Utf8> pNameAdministrator;
  @Uint32()
  external int dwSerialNo;
  @Uint32()
  external int dwRefresh;
  @Uint32()
  external int dwRetry;
  @Uint32()
  external int dwExpire;
  @Uint32()
  external int dwDefaultTtl;
}

class DNS_MINFO_DATAW extends Struct {
  external Pointer<Utf16> pNameMailbox;
  external Pointer<Utf16> pNameErrorsMailbox;
}

class DNS_MINFO_DATAA extends Struct {
  external Pointer<Utf8> pNameMailbox;
  external Pointer<Utf8> pNameErrorsMailbox;
}

class DNS_MX_DATAW extends Struct {
  external Pointer<Utf16> pNameExchange;
  @Uint16()
  external int wPreference;
  @Uint16()
  external int Pad;
}

class DNS_MX_DATAA extends Struct {
  external Pointer<Utf8> pNameExchange;
  @Uint16()
  external int wPreference;
  @Uint16()
  external int Pad;
}

class DNS_TXT_DATAW extends Struct {
  @Uint32()
  external int dwStringCount;
  @Array(1)
  external Array<Pointer<Uint16>> pStringArray;
}

class DNS_TXT_DATAA extends Struct {
  @Uint32()
  external int dwStringCount;
  @Array(1)
  external Array<Pointer<Int8>> pStringArray;
}

class DNS_NULL_DATA extends Struct {
  @Uint32()
  external int dwByteCount;
  @Array(1)
  external Array<Uint8> Data;
}

class DNS_WKS_DATA extends Struct {
  @Uint32()
  external int IpAddress;
  @Uint8()
  external int chProtocol;
  @Array(1)
  external Array<Uint8> BitMask;
}

class DNS_AAAA_DATA extends Struct {
  external IP6_ADDRESS Ip6Address;
}

class DNS_SIG_DATAW extends Struct {
  @Uint16()
  external int wTypeCovered;
  @Uint8()
  external int chAlgorithm;
  @Uint8()
  external int chLabelCount;
  @Uint32()
  external int dwOriginalTtl;
  @Uint32()
  external int dwExpiration;
  @Uint32()
  external int dwTimeSigned;
  @Uint16()
  external int wKeyTag;
  @Uint16()
  external int wSignatureLength;
  external Pointer<Utf16> pNameSigner;
  @Array(1)
  external Array<Uint8> Signature;
}

class DNS_SIG_DATAA extends Struct {
  @Uint16()
  external int wTypeCovered;
  @Uint8()
  external int chAlgorithm;
  @Uint8()
  external int chLabelCount;
  @Uint32()
  external int dwOriginalTtl;
  @Uint32()
  external int dwExpiration;
  @Uint32()
  external int dwTimeSigned;
  @Uint16()
  external int wKeyTag;
  @Uint16()
  external int wSignatureLength;
  external Pointer<Utf8> pNameSigner;
  @Array(1)
  external Array<Uint8> Signature;
}

class DNS_KEY_DATA extends Struct {
  @Uint16()
  external int wFlags;
  @Uint8()
  external int chProtocol;
  @Uint8()
  external int chAlgorithm;
  @Uint16()
  external int wKeyLength;
  @Uint16()
  external int wPad;
  @Array(1)
  external Array<Uint8> Key;
}

class DNS_DHCID_DATA extends Struct {
  @Uint32()
  external int dwByteCount;
  @Array(1)
  external Array<Uint8> DHCID;
}

class DNS_NSEC_DATAW extends Struct {
  external Pointer<Utf16> pNextDomainName;
  @Uint16()
  external int wTypeBitMapsLength;
  @Uint16()
  external int wPad;
  @Array(1)
  external Array<Uint8> TypeBitMaps;
}

class DNS_NSEC_DATAA extends Struct {
  external Pointer<Utf8> pNextDomainName;
  @Uint16()
  external int wTypeBitMapsLength;
  @Uint16()
  external int wPad;
  @Array(1)
  external Array<Uint8> TypeBitMaps;
}

class DNS_NSEC3_DATA extends Struct {
  @Uint8()
  external int chAlgorithm;
  @Uint8()
  external int bFlags;
  @Uint16()
  external int wIterations;
  @Uint8()
  external int bSaltLength;
  @Uint8()
  external int bHashLength;
  @Uint16()
  external int wTypeBitMapsLength;
  @Array(1)
  external Array<Uint8> chData;
}

class DNS_NSEC3PARAM_DATA extends Struct {
  @Uint8()
  external int chAlgorithm;
  @Uint8()
  external int bFlags;
  @Uint16()
  external int wIterations;
  @Uint8()
  external int bSaltLength;
  @Array(3)
  external Array<Uint8> bPad;
  @Array(1)
  external Array<Uint8> pbSalt;
}

class DNS_TLSA_DATA extends Struct {
  @Uint8()
  external int bCertUsage;
  @Uint8()
  external int bSelector;
  @Uint8()
  external int bMatchingType;
  @Uint16()
  external int bCertificateAssociationDataLength;
  @Array(3)
  external Array<Uint8> bPad;
  @Array(1)
  external Array<Uint8> bCertificateAssociationData;
}

class DNS_DS_DATA extends Struct {
  @Uint16()
  external int wKeyTag;
  @Uint8()
  external int chAlgorithm;
  @Uint8()
  external int chDigestType;
  @Uint16()
  external int wDigestLength;
  @Uint16()
  external int wPad;
  @Array(1)
  external Array<Uint8> Digest;
}

class DNS_OPT_DATA extends Struct {
  @Uint16()
  external int wDataLength;
  @Uint16()
  external int wPad;
  @Array(1)
  external Array<Uint8> Data;
}

class DNS_LOC_DATA extends Struct {
  @Uint16()
  external int wVersion;
  @Uint16()
  external int wSize;
  @Uint16()
  external int wHorPrec;
  @Uint16()
  external int wVerPrec;
  @Uint32()
  external int dwLatitude;
  @Uint32()
  external int dwLongitude;
  @Uint32()
  external int dwAltitude;
}

class DNS_NXT_DATAW extends Struct {
  external Pointer<Utf16> pNameNext;
  @Uint16()
  external int wNumTypes;
  @Array(1)
  external Array<Uint16> wTypes;
}

class DNS_NXT_DATAA extends Struct {
  external Pointer<Utf8> pNameNext;
  @Uint16()
  external int wNumTypes;
  @Array(1)
  external Array<Uint16> wTypes;
}

class DNS_SRV_DATAW extends Struct {
  external Pointer<Utf16> pNameTarget;
  @Uint16()
  external int wPriority;
  @Uint16()
  external int wWeight;
  @Uint16()
  external int wPort;
  @Uint16()
  external int Pad;
}

class DNS_SRV_DATAA extends Struct {
  external Pointer<Utf8> pNameTarget;
  @Uint16()
  external int wPriority;
  @Uint16()
  external int wWeight;
  @Uint16()
  external int wPort;
  @Uint16()
  external int Pad;
}

class DNS_NAPTR_DATAW extends Struct {
  @Uint16()
  external int wOrder;
  @Uint16()
  external int wPreference;
  external Pointer<Utf16> pFlags;
  external Pointer<Utf16> pService;
  external Pointer<Utf16> pRegularExpression;
  external Pointer<Utf16> pReplacement;
}

class DNS_NAPTR_DATAA extends Struct {
  @Uint16()
  external int wOrder;
  @Uint16()
  external int wPreference;
  external Pointer<Utf8> pFlags;
  external Pointer<Utf8> pService;
  external Pointer<Utf8> pRegularExpression;
  external Pointer<Utf8> pReplacement;
}

class DNS_ATMA_DATA extends Struct {
  @Uint8()
  external int AddressType;
  @Array(20)
  external Array<Uint8> Address;
}

class DNS_TKEY_DATAW extends Struct {
  external Pointer<Utf16> pNameAlgorithm;
  external Pointer<Uint8> pAlgorithmPacket;
  external Pointer<Uint8> pKey;
  external Pointer<Uint8> pOtherData;
  @Uint32()
  external int dwCreateTime;
  @Uint32()
  external int dwExpireTime;
  @Uint16()
  external int wMode;
  @Uint16()
  external int wError;
  @Uint16()
  external int wKeyLength;
  @Uint16()
  external int wOtherLength;
  @Uint8()
  external int cAlgNameLength;
  @Int32()
  external int bPacketPointers;
}

class DNS_TKEY_DATAA extends Struct {
  external Pointer<Utf8> pNameAlgorithm;
  external Pointer<Uint8> pAlgorithmPacket;
  external Pointer<Uint8> pKey;
  external Pointer<Uint8> pOtherData;
  @Uint32()
  external int dwCreateTime;
  @Uint32()
  external int dwExpireTime;
  @Uint16()
  external int wMode;
  @Uint16()
  external int wError;
  @Uint16()
  external int wKeyLength;
  @Uint16()
  external int wOtherLength;
  @Uint8()
  external int cAlgNameLength;
  @Int32()
  external int bPacketPointers;
}

class DNS_TSIG_DATAW extends Struct {
  external Pointer<Utf16> pNameAlgorithm;
  external Pointer<Uint8> pAlgorithmPacket;
  external Pointer<Uint8> pSignature;
  external Pointer<Uint8> pOtherData;
  @Int64()
  external int i64CreateTime;
  @Uint16()
  external int wFudgeTime;
  @Uint16()
  external int wOriginalXid;
  @Uint16()
  external int wError;
  @Uint16()
  external int wSigLength;
  @Uint16()
  external int wOtherLength;
  @Uint8()
  external int cAlgNameLength;
  @Int32()
  external int bPacketPointers;
}

class DNS_TSIG_DATAA extends Struct {
  external Pointer<Utf8> pNameAlgorithm;
  external Pointer<Uint8> pAlgorithmPacket;
  external Pointer<Uint8> pSignature;
  external Pointer<Uint8> pOtherData;
  @Int64()
  external int i64CreateTime;
  @Uint16()
  external int wFudgeTime;
  @Uint16()
  external int wOriginalXid;
  @Uint16()
  external int wError;
  @Uint16()
  external int wSigLength;
  @Uint16()
  external int wOtherLength;
  @Uint8()
  external int cAlgNameLength;
  @Int32()
  external int bPacketPointers;
}

class DNS_UNKNOWN_DATA extends Struct {
  @Uint32()
  external int dwByteCount;
  @Array(1)
  external Array<Uint8> bData;
}

class DNS_WINS_DATA extends Struct {
  @Uint32()
  external int dwMappingFlag;
  @Uint32()
  external int dwLookupTimeout;
  @Uint32()
  external int dwCacheTimeout;
  @Uint32()
  external int cWinsServerCount;
  @Array(1)
  external Array<Uint32> WinsServers;
}

class DNS_WINSR_DATAW extends Struct {
  @Uint32()
  external int dwMappingFlag;
  @Uint32()
  external int dwLookupTimeout;
  @Uint32()
  external int dwCacheTimeout;
  external Pointer<Utf16> pNameResultDomain;
}

class DNS_WINSR_DATAA extends Struct {
  @Uint32()
  external int dwMappingFlag;
  @Uint32()
  external int dwLookupTimeout;
  @Uint32()
  external int dwCacheTimeout;
  external Pointer<Utf8> pNameResultDomain;
}

class DNS_RECORD_FLAGS extends Struct {
  @Uint32()
  external int _bitfield;
}

class DNS_RECORDW extends Struct {
  external Pointer<DNS_RECORD> pNext;
  external Pointer<Utf16> pName;
  @Uint16()
  external int wType;
  @Uint16()
  external int wDataLength;
  @Uint32()
  external int Flags;
  @Uint32()
  external int dwTtl;
  @Uint32()
  external int dwReserved;
  @Uint32()
  external int Data;
}

class _DnsRecordOptW extends Struct {
  external Pointer<DNS_RECORD> pNext;
  external Pointer<Utf16> pName;
  @Uint16()
  external int wType;
  @Uint16()
  external int wDataLength;
  @Uint32()
  external int Flags;
  external DNS_HEADER_EXT ExtHeader;
  @Uint16()
  external int wPayloadSize;
  @Uint16()
  external int wReserved;
  @Uint32()
  external int Data;
}

class DNS_RECORDA extends Struct {
  external Pointer<DNS_RECORDA> pNext;
  external Pointer<Utf8> pName;
  @Uint16()
  external int wType;
  @Uint16()
  external int wDataLength;
  @Uint32()
  external int Flags;
  @Uint32()
  external int dwTtl;
  @Uint32()
  external int dwReserved;
  @Uint32()
  external int Data;
}

class _DnsRecordOptA extends Struct {
  external Pointer<DNS_RECORDA> pNext;
  external Pointer<Utf8> pName;
  @Uint16()
  external int wType;
  @Uint16()
  external int wDataLength;
  @Uint32()
  external int Flags;
  external DNS_HEADER_EXT ExtHeader;
  @Uint16()
  external int wPayloadSize;
  @Uint16()
  external int wReserved;
  @Uint32()
  external int Data;
}

class DNS_RRSET extends Struct {
  external Pointer<DNS_RECORDA> pFirstRR;
  external Pointer<DNS_RECORDA> pLastRR;
}

class DNS_PROXY_INFORMATION extends Struct {
  @Uint32()
  external int version;
  @Uint32()
  external int proxyInformationType;
  external Pointer<Utf16> proxyName;
}

class DNS_QUERY_RESULT extends Struct {
  @Uint32()
  external int Version;
  @Int32()
  external int QueryStatus;
  @Uint64()
  external int QueryOptions;
  external Pointer<DNS_RECORDA> pQueryRecords;
  external Pointer Reserved;
}

class DNS_QUERY_REQUEST extends Struct {
  @Uint32()
  external int Version;
  external Pointer<Utf16> QueryName;
  @Uint16()
  external int QueryType;
  @Uint64()
  external int QueryOptions;
  external Pointer<DNS_ADDR_ARRAY> pDnsServerList;
  @Uint32()
  external int InterfaceIndex;
  external PDNS_QUERY_COMPLETION_ROUTINE pQueryCompletionCallback;
  external Pointer pQueryContext;
}

class DNS_QUERY_CANCEL extends Struct {
  @Array(32)
  external Array<Int8> Reserved;
}

class DNS_MESSAGE_BUFFER extends Struct {
  external DNS_HEADER MessageHead;
  @Array(1)
  external Array<Int8> MessageBody;
}

class DNS_CONNECTION_PROXY_INFO extends Struct {
  @Uint32()
  external int Version;
  external Pointer<Utf16> pwszFriendlyName;
  @Uint32()
  external int Flags;
  @Uint32()
  external int Switch;
  @Uint32()
  external int Anonymous;
}

class DNS_CONNECTION_PROXY_INFO_EX extends Struct {
  external DNS_CONNECTION_PROXY_INFO ProxyInfo;
  @Uint32()
  external int dwInterfaceIndex;
  external Pointer<Utf16> pwszConnectionName;
  @Int32()
  external int fDirectConfiguration;
  @IntPtr()
  external int hConnection;
}

class DNS_CONNECTION_PROXY_ELEMENT extends Struct {
  @Uint32()
  external int Type;
  external DNS_CONNECTION_PROXY_INFO Info;
}

class DNS_CONNECTION_PROXY_LIST extends Struct {
  @Uint32()
  external int cProxies;
  external Pointer<DNS_CONNECTION_PROXY_ELEMENT> pProxies;
}

class DNS_CONNECTION_NAME extends Struct {
  @Array(65)
  external Array<Uint16> wszName;
}

class DNS_CONNECTION_NAME_LIST extends Struct {
  @Uint32()
  external int cNames;
  external Pointer<DNS_CONNECTION_NAME> pNames;
}

class DNS_CONNECTION_IFINDEX_ENTRY extends Struct {
  external Pointer<Utf16> pwszConnectionName;
  @Uint32()
  external int dwIfIndex;
}

class DNS_CONNECTION_IFINDEX_LIST extends Struct {
  external Pointer<DNS_CONNECTION_IFINDEX_ENTRY> pConnectionIfIndexEntries;
  @Uint32()
  external int nEntries;
}

class DNS_CONNECTION_POLICY_ENTRY extends Struct {
  external Pointer<Utf16> pwszHost;
  external Pointer<Utf16> pwszAppId;
  @Uint32()
  external int cbAppSid;
  external Pointer<Uint8> pbAppSid;
  @Uint32()
  external int nConnections;
  external Pointer<Pointer<Utf16>> ppwszConnections;
  @Uint32()
  external int dwPolicyEntryFlags;
}

class DNS_CONNECTION_POLICY_ENTRY_LIST extends Struct {
  external Pointer<DNS_CONNECTION_POLICY_ENTRY> pPolicyEntries;
  @Uint32()
  external int nEntries;
}

class DNS_SERVICE_INSTANCE extends Struct {
  external Pointer<Utf16> pszInstanceName;
  external Pointer<Utf16> pszHostName;
  external Pointer<Uint32> ip4Address;
  external Pointer<IP6_ADDRESS> ip6Address;
  @Uint16()
  external int wPort;
  @Uint16()
  external int wPriority;
  @Uint16()
  external int wWeight;
  @Uint32()
  external int dwPropertyCount;
  external Pointer<Pointer<Utf16>> keys;
  external Pointer<Pointer<Utf16>> values;
  @Uint32()
  external int dwInterfaceIndex;
}

class DNS_SERVICE_CANCEL extends Struct {
  external Pointer reserved;
}

class DNS_SERVICE_BROWSE_REQUEST extends Struct {
  @Uint32()
  external int Version;
  @Uint32()
  external int InterfaceIndex;
  external Pointer<Utf16> QueryName;
  @Uint32()
  external int Anonymous;
  external Pointer pQueryContext;
}

class DNS_SERVICE_RESOLVE_REQUEST extends Struct {
  @Uint32()
  external int Version;
  @Uint32()
  external int InterfaceIndex;
  external Pointer<Utf16> QueryName;
  external PDNS_SERVICE_RESOLVE_COMPLETE pResolveCompletionCallback;
  external Pointer pQueryContext;
}

class DNS_SERVICE_REGISTER_REQUEST extends Struct {
  @Uint32()
  external int Version;
  @Uint32()
  external int InterfaceIndex;
  external Pointer<DNS_SERVICE_INSTANCE> pServiceInstance;
  external PDNS_SERVICE_REGISTER_COMPLETE pRegisterCompletionCallback;
  external Pointer pQueryContext;
  @IntPtr()
  external int hCredentials;
  @Int32()
  external int unicastEnabled;
}

class MDNS_QUERY_HANDLE extends Struct {
  @Array(129)
  external Array<Uint16> nameBuf;
  @Uint16()
  external int wType;
  external Pointer pSubscription;
  external Pointer pWnfCallbackParams;
  @Array(2)
  external Array<Uint32> stateNameData;
}

class MDNS_QUERY_REQUEST extends Struct {
  @Uint32()
  external int Version;
  @Uint32()
  external int ulRefCount;
  external Pointer<Utf16> Query;
  @Uint16()
  external int QueryType;
  @Uint64()
  external int QueryOptions;
  @Uint32()
  external int InterfaceIndex;
  external PMDNS_QUERY_CALLBACK pQueryCallback;
  external Pointer pQueryContext;
  @Int32()
  external int fAnswerReceived;
  @Uint32()
  external int ulResendCount;
}
