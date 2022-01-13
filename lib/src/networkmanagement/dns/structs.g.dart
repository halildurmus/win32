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
import '../../networkmanagement/dns/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../networkmanagement/dns/callbacks.g.dart';

/// {@category Struct}
class DNS_AAAA_DATA extends Struct {
  external IP6_ADDRESS Ip6Address;
}

/// {@category Struct}
class DNS_ADDR extends Struct {
  @Array(32)
  external Array<Uint8> MaxSa;

  external _DNS_ADDR__Data_e__Union Data;
}

/// {@category Struct}
@Packed(1)
class _DNS_ADDR__Data_e__Union extends Union {
  @Array(8)
  external Array<Uint32> DnsAddrUserDword;
}

extension DNS_ADDR_Extension on DNS_ADDR {
  Array<Uint32> get DnsAddrUserDword => this.Data.DnsAddrUserDword;
  set DnsAddrUserDword(Array<Uint32> value) =>
      this.Data.DnsAddrUserDword = value;
}

/// {@category Struct}
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

/// {@category Struct}
class DNS_APPLICATION_SETTINGS extends Struct {
  @Uint32()
  external int Version;

  @Uint64()
  external int Flags;
}

/// {@category Struct}
class DNS_ATMA_DATA extends Struct {
  @Uint8()
  external int AddressType;

  @Array(20)
  external Array<Uint8> Address;
}

/// {@category Struct}
class DNS_A_DATA extends Struct {
  @Uint32()
  external int IpAddress;
}

/// {@category Struct}
class DNS_CONNECTION_IFINDEX_ENTRY extends Struct {
  external Pointer<Utf16> pwszConnectionName;

  @Uint32()
  external int dwIfIndex;
}

/// {@category Struct}
class DNS_CONNECTION_IFINDEX_LIST extends Struct {
  external Pointer<DNS_CONNECTION_IFINDEX_ENTRY> pConnectionIfIndexEntries;

  @Uint32()
  external int nEntries;
}

/// {@category Struct}
class DNS_CONNECTION_NAME extends Struct {
  @Array(65)
  external Array<Uint16> _wszName;

  String get wszName {
    final charCodes = <int>[];
    for (var i = 0; i < 65; i++) {
      charCodes.add(_wszName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set wszName(String value) {
    final stringToStore = value.padRight(65, '\x00');
    for (var i = 0; i < 65; i++) {
      _wszName[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class DNS_CONNECTION_NAME_LIST extends Struct {
  @Uint32()
  external int cNames;

  external Pointer<DNS_CONNECTION_NAME> pNames;
}

/// {@category Struct}
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

/// {@category Struct}
class DNS_CONNECTION_POLICY_ENTRY_LIST extends Struct {
  external Pointer<DNS_CONNECTION_POLICY_ENTRY> pPolicyEntries;

  @Uint32()
  external int nEntries;
}

/// {@category Struct}
class DNS_CONNECTION_PROXY_ELEMENT extends Struct {
  @Int32()
  external int Type;

  external DNS_CONNECTION_PROXY_INFO Info;
}

/// {@category Struct}
class DNS_CONNECTION_PROXY_INFO extends Struct {
  @Uint32()
  external int Version;

  external Pointer<Utf16> pwszFriendlyName;

  @Uint32()
  external int Flags;

  @Int32()
  external int Switch;

  external _DNS_CONNECTION_PROXY_INFO__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _DNS_CONNECTION_PROXY_INFO__Anonymous_e__Union extends Union {
  external _DNS_CONNECTION_PROXY_INFO__Anonymous_e__Union__DNS_CONNECTION_PROXY_INFO_CONFIG
      Config;

  external _DNS_CONNECTION_PROXY_INFO__Anonymous_e__Union__DNS_CONNECTION_PROXY_INFO_SCRIPT
      Script;
}

/// {@category Struct}
class _DNS_CONNECTION_PROXY_INFO__Anonymous_e__Union__DNS_CONNECTION_PROXY_INFO_CONFIG
    extends Struct {
  external Pointer<Utf16> pwszServer;

  external Pointer<Utf16> pwszUsername;

  external Pointer<Utf16> pwszPassword;

  external Pointer<Utf16> pwszException;

  external Pointer<Utf16> pwszExtraInfo;

  @Uint16()
  external int Port;
}

extension DNS_CONNECTION_PROXY_INFO__Anonymous_e__Union_Extension
    on DNS_CONNECTION_PROXY_INFO {
  Pointer<Utf16> get pwszServer => this.Anonymous.Config.pwszServer;
  set pwszServer(Pointer<Utf16> value) =>
      this.Anonymous.Config.pwszServer = value;

  Pointer<Utf16> get pwszUsername => this.Anonymous.Config.pwszUsername;
  set pwszUsername(Pointer<Utf16> value) =>
      this.Anonymous.Config.pwszUsername = value;

  Pointer<Utf16> get pwszPassword => this.Anonymous.Config.pwszPassword;
  set pwszPassword(Pointer<Utf16> value) =>
      this.Anonymous.Config.pwszPassword = value;

  Pointer<Utf16> get pwszException => this.Anonymous.Config.pwszException;
  set pwszException(Pointer<Utf16> value) =>
      this.Anonymous.Config.pwszException = value;

  Pointer<Utf16> get pwszExtraInfo => this.Anonymous.Config.pwszExtraInfo;
  set pwszExtraInfo(Pointer<Utf16> value) =>
      this.Anonymous.Config.pwszExtraInfo = value;

  int get Port => this.Anonymous.Config.Port;
  set Port(int value) => this.Anonymous.Config.Port = value;
}

/// {@category Struct}
class _DNS_CONNECTION_PROXY_INFO__Anonymous_e__Union__DNS_CONNECTION_PROXY_INFO_SCRIPT
    extends Struct {
  external Pointer<Utf16> pwszScript;

  external Pointer<Utf16> pwszUsername;

  external Pointer<Utf16> pwszPassword;
}

extension DNS_CONNECTION_PROXY_INFO__Anonymous_e__Union_Extension_1
    on DNS_CONNECTION_PROXY_INFO {
  Pointer<Utf16> get pwszScript => this.Anonymous.Script.pwszScript;
  set pwszScript(Pointer<Utf16> value) =>
      this.Anonymous.Script.pwszScript = value;

  Pointer<Utf16> get pwszUsername => this.Anonymous.Script.pwszUsername;
  set pwszUsername(Pointer<Utf16> value) =>
      this.Anonymous.Script.pwszUsername = value;

  Pointer<Utf16> get pwszPassword => this.Anonymous.Script.pwszPassword;
  set pwszPassword(Pointer<Utf16> value) =>
      this.Anonymous.Script.pwszPassword = value;
}

extension DNS_CONNECTION_PROXY_INFO_Extension on DNS_CONNECTION_PROXY_INFO {
  _DNS_CONNECTION_PROXY_INFO__Anonymous_e__Union__DNS_CONNECTION_PROXY_INFO_CONFIG
      get Config => this.Anonymous.Config;
  set Config(
          _DNS_CONNECTION_PROXY_INFO__Anonymous_e__Union__DNS_CONNECTION_PROXY_INFO_CONFIG
              value) =>
      this.Anonymous.Config = value;

  _DNS_CONNECTION_PROXY_INFO__Anonymous_e__Union__DNS_CONNECTION_PROXY_INFO_SCRIPT
      get Script => this.Anonymous.Script;
  set Script(
          _DNS_CONNECTION_PROXY_INFO__Anonymous_e__Union__DNS_CONNECTION_PROXY_INFO_SCRIPT
              value) =>
      this.Anonymous.Script = value;
}

/// {@category Struct}
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

/// {@category Struct}
class DNS_CONNECTION_PROXY_LIST extends Struct {
  @Uint32()
  external int cProxies;

  external Pointer<DNS_CONNECTION_PROXY_ELEMENT> pProxies;
}

/// {@category Struct}
class DNS_CUSTOM_SERVER extends Struct {
  @Uint32()
  external int dwServerType;

  @Uint64()
  external int ullFlags;

  external _DNS_CUSTOM_SERVER__Anonymous1_e__Union Anonymous1;

  external _DNS_CUSTOM_SERVER__Anonymous2_e__Union Anonymous2;
}

/// {@category Struct}
class _DNS_CUSTOM_SERVER__Anonymous1_e__Union extends Union {
  external Pointer<Utf16> pwszTemplate;
}

extension DNS_CUSTOM_SERVER_Extension on DNS_CUSTOM_SERVER {
  Pointer<Utf16> get pwszTemplate => this.Anonymous1.pwszTemplate;
  set pwszTemplate(Pointer<Utf16> value) =>
      this.Anonymous1.pwszTemplate = value;
}

/// {@category Struct}
class _DNS_CUSTOM_SERVER__Anonymous2_e__Union extends Union {
  @Array(32)
  external Array<Uint8> MaxSa;
}

extension DNS_CUSTOM_SERVER_Extension_1 on DNS_CUSTOM_SERVER {
  Array<Uint8> get MaxSa => this.Anonymous2.MaxSa;
  set MaxSa(Array<Uint8> value) => this.Anonymous2.MaxSa = value;
}

/// {@category Struct}
class DNS_DHCID_DATA extends Struct {
  @Uint32()
  external int dwByteCount;

  @Array(1)
  external Array<Uint8> DHCID;
}

/// {@category Struct}
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

/// {@category Struct}
@Packed(1)
class DNS_HEADER extends Struct {
  @Uint16()
  external int Xid;

  @Uint8()
  external int bitfield1;

  @Uint8()
  external int bitfield2;

  @Uint16()
  external int QuestionCount;

  @Uint16()
  external int AnswerCount;

  @Uint16()
  external int NameServerCount;

  @Uint16()
  external int AdditionalCount;
}

/// {@category Struct}
@Packed(1)
class DNS_HEADER_EXT extends Struct {
  @Uint16()
  external int bitfield;

  @Uint8()
  external int chRcode;

  @Uint8()
  external int chVersion;
}

/// {@category Struct}
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

/// {@category Struct}
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

/// {@category Struct}
class DNS_MESSAGE_BUFFER extends Struct {
  external DNS_HEADER MessageHead;

  @Array(1)
  external Array<Uint8> MessageBody;
}

/// {@category Struct}
class DNS_MINFO_DATA extends Struct {
  external Pointer<Utf16> pNameMailbox;

  external Pointer<Utf16> pNameErrorsMailbox;
}

/// {@category Struct}
class DNS_MX_DATA extends Struct {
  external Pointer<Utf16> pNameExchange;

  @Uint16()
  external int wPreference;

  @Uint16()
  external int Pad;
}

/// {@category Struct}
class DNS_NAPTR_DATA extends Struct {
  @Uint16()
  external int wOrder;

  @Uint16()
  external int wPreference;

  external Pointer<Utf16> pFlags;

  external Pointer<Utf16> pService;

  external Pointer<Utf16> pRegularExpression;

  external Pointer<Utf16> pReplacement;
}

/// {@category Struct}
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

/// {@category Struct}
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

/// {@category Struct}
class DNS_NSEC_DATA extends Struct {
  external Pointer<Utf16> pNextDomainName;

  @Uint16()
  external int wTypeBitMapsLength;

  @Uint16()
  external int wPad;

  @Array(1)
  external Array<Uint8> TypeBitMaps;
}

/// {@category Struct}
class DNS_NULL_DATA extends Struct {
  @Uint32()
  external int dwByteCount;

  @Array(1)
  external Array<Uint8> Data;
}

/// {@category Struct}
class DNS_NXT_DATA extends Struct {
  external Pointer<Utf16> pNameNext;

  @Uint16()
  external int wNumTypes;

  @Array(1)
  external Array<Uint16> wTypes;
}

/// {@category Struct}
class DNS_OPT_DATA extends Struct {
  @Uint16()
  external int wDataLength;

  @Uint16()
  external int wPad;

  @Array(1)
  external Array<Uint8> Data;
}

/// {@category Struct}
class DNS_PROXY_INFORMATION extends Struct {
  @Uint32()
  external int version;

  @Int32()
  external int proxyInformationType;

  external Pointer<Utf16> proxyName;
}

/// {@category Struct}
class DNS_PTR_DATA extends Struct {
  external Pointer<Utf16> pNameHost;
}

/// {@category Struct}
class DNS_QUERY_CANCEL extends Struct {
  @Array(32)
  external Array<Uint8> Reserved;
}

/// {@category Struct}
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

  external Pointer<NativeFunction<PDNS_QUERY_COMPLETION_ROUTINE>>
      pQueryCompletionCallback;

  external Pointer pQueryContext;
}

/// {@category Struct}
class DNS_QUERY_REQUEST3 extends Struct {
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

  external Pointer<NativeFunction<PDNS_QUERY_COMPLETION_ROUTINE>>
      pQueryCompletionCallback;

  external Pointer pQueryContext;

  @Int32()
  external int IsNetworkQueryRequired;

  @Uint32()
  external int RequiredNetworkIndex;

  @Uint32()
  external int cCustomServers;

  external Pointer<DNS_CUSTOM_SERVER> pCustomServers;
}

/// {@category Struct}
class DNS_QUERY_RESULT extends Struct {
  @Uint32()
  external int Version;

  @Int32()
  external int QueryStatus;

  @Uint64()
  external int QueryOptions;

  external Pointer<DNS_RECORD> pQueryRecords;

  external Pointer Reserved;
}

/// {@category Struct}
class DNS_RECORD extends Struct {
  external Pointer<DNS_RECORD> pNext;

  external Pointer<Utf16> pName;

  @Uint16()
  external int wType;

  @Uint16()
  external int wDataLength;

  external _DNS_RECORDW__Flags_e__Union Flags;

  @Uint32()
  external int dwTtl;

  @Uint32()
  external int dwReserved;

  external _DNS_RECORDW__Data_e__Union Data;
}

/// {@category Struct}
class _DNS_RECORDW__Flags_e__Union extends Union {
  @Uint32()
  external int DW;

  external DNS_RECORD_FLAGS S;
}

extension DNS_RECORDW_Extension on DNS_RECORD {
  int get DW => this.Flags.DW;
  set DW(int value) => this.Flags.DW = value;

  DNS_RECORD_FLAGS get S => this.Flags.S;
  set S(DNS_RECORD_FLAGS value) => this.Flags.S = value;
}

/// {@category Struct}
class _DNS_RECORDW__Data_e__Union extends Union {
  external DNS_A_DATA A;

  external DNS_SOA_DATA SOA;

  external DNS_SOA_DATA Soa;

  external DNS_PTR_DATA PTR;

  external DNS_PTR_DATA Ptr;

  external DNS_PTR_DATA NS;

  external DNS_PTR_DATA Ns;

  external DNS_PTR_DATA CNAME;

  external DNS_PTR_DATA Cname;

  external DNS_PTR_DATA DNAME;

  external DNS_PTR_DATA Dname;

  external DNS_PTR_DATA MB;

  external DNS_PTR_DATA Mb;

  external DNS_PTR_DATA MD;

  external DNS_PTR_DATA Md;

  external DNS_PTR_DATA MF;

  external DNS_PTR_DATA Mf;

  external DNS_PTR_DATA MG;

  external DNS_PTR_DATA Mg;

  external DNS_PTR_DATA MR;

  external DNS_PTR_DATA Mr;

  external DNS_MINFO_DATA MINFO;

  external DNS_MINFO_DATA Minfo;

  external DNS_MINFO_DATA RP;

  external DNS_MINFO_DATA Rp;

  external DNS_MX_DATA MX;

  external DNS_MX_DATA Mx;

  external DNS_MX_DATA AFSDB;

  external DNS_MX_DATA Afsdb;

  external DNS_MX_DATA RT;

  external DNS_MX_DATA Rt;

  external DNS_TXT_DATA HINFO;

  external DNS_TXT_DATA Hinfo;

  external DNS_TXT_DATA ISDN;

  external DNS_TXT_DATA Isdn;

  external DNS_TXT_DATA TXT;

  external DNS_TXT_DATA Txt;

  external DNS_TXT_DATA X25;

  external DNS_NULL_DATA Null;

  external DNS_WKS_DATA WKS;

  external DNS_WKS_DATA Wks;

  external DNS_AAAA_DATA AAAA;

  external DNS_KEY_DATA KEY;

  external DNS_KEY_DATA Key;

  external DNS_SIG_DATA SIG;

  external DNS_SIG_DATA Sig;

  external DNS_ATMA_DATA ATMA;

  external DNS_ATMA_DATA Atma;

  external DNS_NXT_DATA NXT;

  external DNS_NXT_DATA Nxt;

  external DNS_SRV_DATA SRV;

  external DNS_SRV_DATA Srv;

  external DNS_NAPTR_DATA NAPTR;

  external DNS_NAPTR_DATA Naptr;

  external DNS_OPT_DATA OPT;

  external DNS_OPT_DATA Opt;

  external DNS_DS_DATA DS;

  external DNS_DS_DATA Ds;

  external DNS_SIG_DATA RRSIG;

  external DNS_SIG_DATA Rrsig;

  external DNS_NSEC_DATA NSEC;

  external DNS_NSEC_DATA Nsec;

  external DNS_KEY_DATA DNSKEY;

  external DNS_KEY_DATA Dnskey;

  external DNS_TKEY_DATA TKEY;

  external DNS_TKEY_DATA Tkey;

  external DNS_TSIG_DATA TSIG;

  external DNS_TSIG_DATA Tsig;

  external DNS_WINS_DATA WINS;

  external DNS_WINS_DATA Wins;

  external DNS_WINSR_DATA WINSR;

  external DNS_WINSR_DATA WinsR;

  external DNS_WINSR_DATA NBSTAT;

  external DNS_WINSR_DATA Nbstat;

  external DNS_DHCID_DATA DHCID;

  external DNS_NSEC3_DATA NSEC3;

  external DNS_NSEC3_DATA Nsec3;

  external DNS_NSEC3PARAM_DATA NSEC3PARAM;

  external DNS_NSEC3PARAM_DATA Nsec3Param;

  external DNS_TLSA_DATA TLSA;

  external DNS_TLSA_DATA Tlsa;

  external DNS_UNKNOWN_DATA UNKNOWN;

  external DNS_UNKNOWN_DATA Unknown;

  external Pointer<Uint8> pDataPtr;
}

extension DNS_RECORDW_Extension_1 on DNS_RECORD {
  DNS_A_DATA get A => this.Data.A;
  set A(DNS_A_DATA value) => this.Data.A = value;

  DNS_SOA_DATA get SOA => this.Data.SOA;
  set SOA(DNS_SOA_DATA value) => this.Data.SOA = value;

  DNS_SOA_DATA get Soa => this.Data.Soa;
  set Soa(DNS_SOA_DATA value) => this.Data.Soa = value;

  DNS_PTR_DATA get PTR => this.Data.PTR;
  set PTR(DNS_PTR_DATA value) => this.Data.PTR = value;

  DNS_PTR_DATA get Ptr => this.Data.Ptr;
  set Ptr(DNS_PTR_DATA value) => this.Data.Ptr = value;

  DNS_PTR_DATA get NS => this.Data.NS;
  set NS(DNS_PTR_DATA value) => this.Data.NS = value;

  DNS_PTR_DATA get Ns => this.Data.Ns;
  set Ns(DNS_PTR_DATA value) => this.Data.Ns = value;

  DNS_PTR_DATA get CNAME => this.Data.CNAME;
  set CNAME(DNS_PTR_DATA value) => this.Data.CNAME = value;

  DNS_PTR_DATA get Cname => this.Data.Cname;
  set Cname(DNS_PTR_DATA value) => this.Data.Cname = value;

  DNS_PTR_DATA get DNAME => this.Data.DNAME;
  set DNAME(DNS_PTR_DATA value) => this.Data.DNAME = value;

  DNS_PTR_DATA get Dname => this.Data.Dname;
  set Dname(DNS_PTR_DATA value) => this.Data.Dname = value;

  DNS_PTR_DATA get MB => this.Data.MB;
  set MB(DNS_PTR_DATA value) => this.Data.MB = value;

  DNS_PTR_DATA get Mb => this.Data.Mb;
  set Mb(DNS_PTR_DATA value) => this.Data.Mb = value;

  DNS_PTR_DATA get MD => this.Data.MD;
  set MD(DNS_PTR_DATA value) => this.Data.MD = value;

  DNS_PTR_DATA get Md => this.Data.Md;
  set Md(DNS_PTR_DATA value) => this.Data.Md = value;

  DNS_PTR_DATA get MF => this.Data.MF;
  set MF(DNS_PTR_DATA value) => this.Data.MF = value;

  DNS_PTR_DATA get Mf => this.Data.Mf;
  set Mf(DNS_PTR_DATA value) => this.Data.Mf = value;

  DNS_PTR_DATA get MG => this.Data.MG;
  set MG(DNS_PTR_DATA value) => this.Data.MG = value;

  DNS_PTR_DATA get Mg => this.Data.Mg;
  set Mg(DNS_PTR_DATA value) => this.Data.Mg = value;

  DNS_PTR_DATA get MR => this.Data.MR;
  set MR(DNS_PTR_DATA value) => this.Data.MR = value;

  DNS_PTR_DATA get Mr => this.Data.Mr;
  set Mr(DNS_PTR_DATA value) => this.Data.Mr = value;

  DNS_MINFO_DATA get MINFO => this.Data.MINFO;
  set MINFO(DNS_MINFO_DATA value) => this.Data.MINFO = value;

  DNS_MINFO_DATA get Minfo => this.Data.Minfo;
  set Minfo(DNS_MINFO_DATA value) => this.Data.Minfo = value;

  DNS_MINFO_DATA get RP => this.Data.RP;
  set RP(DNS_MINFO_DATA value) => this.Data.RP = value;

  DNS_MINFO_DATA get Rp => this.Data.Rp;
  set Rp(DNS_MINFO_DATA value) => this.Data.Rp = value;

  DNS_MX_DATA get MX => this.Data.MX;
  set MX(DNS_MX_DATA value) => this.Data.MX = value;

  DNS_MX_DATA get Mx => this.Data.Mx;
  set Mx(DNS_MX_DATA value) => this.Data.Mx = value;

  DNS_MX_DATA get AFSDB => this.Data.AFSDB;
  set AFSDB(DNS_MX_DATA value) => this.Data.AFSDB = value;

  DNS_MX_DATA get Afsdb => this.Data.Afsdb;
  set Afsdb(DNS_MX_DATA value) => this.Data.Afsdb = value;

  DNS_MX_DATA get RT => this.Data.RT;
  set RT(DNS_MX_DATA value) => this.Data.RT = value;

  DNS_MX_DATA get Rt => this.Data.Rt;
  set Rt(DNS_MX_DATA value) => this.Data.Rt = value;

  DNS_TXT_DATA get HINFO => this.Data.HINFO;
  set HINFO(DNS_TXT_DATA value) => this.Data.HINFO = value;

  DNS_TXT_DATA get Hinfo => this.Data.Hinfo;
  set Hinfo(DNS_TXT_DATA value) => this.Data.Hinfo = value;

  DNS_TXT_DATA get ISDN => this.Data.ISDN;
  set ISDN(DNS_TXT_DATA value) => this.Data.ISDN = value;

  DNS_TXT_DATA get Isdn => this.Data.Isdn;
  set Isdn(DNS_TXT_DATA value) => this.Data.Isdn = value;

  DNS_TXT_DATA get TXT => this.Data.TXT;
  set TXT(DNS_TXT_DATA value) => this.Data.TXT = value;

  DNS_TXT_DATA get Txt => this.Data.Txt;
  set Txt(DNS_TXT_DATA value) => this.Data.Txt = value;

  DNS_TXT_DATA get X25 => this.Data.X25;
  set X25(DNS_TXT_DATA value) => this.Data.X25 = value;

  DNS_NULL_DATA get Null => this.Data.Null;
  set Null(DNS_NULL_DATA value) => this.Data.Null = value;

  DNS_WKS_DATA get WKS => this.Data.WKS;
  set WKS(DNS_WKS_DATA value) => this.Data.WKS = value;

  DNS_WKS_DATA get Wks => this.Data.Wks;
  set Wks(DNS_WKS_DATA value) => this.Data.Wks = value;

  DNS_AAAA_DATA get AAAA => this.Data.AAAA;
  set AAAA(DNS_AAAA_DATA value) => this.Data.AAAA = value;

  DNS_KEY_DATA get KEY => this.Data.KEY;
  set KEY(DNS_KEY_DATA value) => this.Data.KEY = value;

  DNS_KEY_DATA get Key => this.Data.Key;
  set Key(DNS_KEY_DATA value) => this.Data.Key = value;

  DNS_SIG_DATA get SIG => this.Data.SIG;
  set SIG(DNS_SIG_DATA value) => this.Data.SIG = value;

  DNS_SIG_DATA get Sig => this.Data.Sig;
  set Sig(DNS_SIG_DATA value) => this.Data.Sig = value;

  DNS_ATMA_DATA get ATMA => this.Data.ATMA;
  set ATMA(DNS_ATMA_DATA value) => this.Data.ATMA = value;

  DNS_ATMA_DATA get Atma => this.Data.Atma;
  set Atma(DNS_ATMA_DATA value) => this.Data.Atma = value;

  DNS_NXT_DATA get NXT => this.Data.NXT;
  set NXT(DNS_NXT_DATA value) => this.Data.NXT = value;

  DNS_NXT_DATA get Nxt => this.Data.Nxt;
  set Nxt(DNS_NXT_DATA value) => this.Data.Nxt = value;

  DNS_SRV_DATA get SRV => this.Data.SRV;
  set SRV(DNS_SRV_DATA value) => this.Data.SRV = value;

  DNS_SRV_DATA get Srv => this.Data.Srv;
  set Srv(DNS_SRV_DATA value) => this.Data.Srv = value;

  DNS_NAPTR_DATA get NAPTR => this.Data.NAPTR;
  set NAPTR(DNS_NAPTR_DATA value) => this.Data.NAPTR = value;

  DNS_NAPTR_DATA get Naptr => this.Data.Naptr;
  set Naptr(DNS_NAPTR_DATA value) => this.Data.Naptr = value;

  DNS_OPT_DATA get OPT => this.Data.OPT;
  set OPT(DNS_OPT_DATA value) => this.Data.OPT = value;

  DNS_OPT_DATA get Opt => this.Data.Opt;
  set Opt(DNS_OPT_DATA value) => this.Data.Opt = value;

  DNS_DS_DATA get DS => this.Data.DS;
  set DS(DNS_DS_DATA value) => this.Data.DS = value;

  DNS_DS_DATA get Ds => this.Data.Ds;
  set Ds(DNS_DS_DATA value) => this.Data.Ds = value;

  DNS_SIG_DATA get RRSIG => this.Data.RRSIG;
  set RRSIG(DNS_SIG_DATA value) => this.Data.RRSIG = value;

  DNS_SIG_DATA get Rrsig => this.Data.Rrsig;
  set Rrsig(DNS_SIG_DATA value) => this.Data.Rrsig = value;

  DNS_NSEC_DATA get NSEC => this.Data.NSEC;
  set NSEC(DNS_NSEC_DATA value) => this.Data.NSEC = value;

  DNS_NSEC_DATA get Nsec => this.Data.Nsec;
  set Nsec(DNS_NSEC_DATA value) => this.Data.Nsec = value;

  DNS_KEY_DATA get DNSKEY => this.Data.DNSKEY;
  set DNSKEY(DNS_KEY_DATA value) => this.Data.DNSKEY = value;

  DNS_KEY_DATA get Dnskey => this.Data.Dnskey;
  set Dnskey(DNS_KEY_DATA value) => this.Data.Dnskey = value;

  DNS_TKEY_DATA get TKEY => this.Data.TKEY;
  set TKEY(DNS_TKEY_DATA value) => this.Data.TKEY = value;

  DNS_TKEY_DATA get Tkey => this.Data.Tkey;
  set Tkey(DNS_TKEY_DATA value) => this.Data.Tkey = value;

  DNS_TSIG_DATA get TSIG => this.Data.TSIG;
  set TSIG(DNS_TSIG_DATA value) => this.Data.TSIG = value;

  DNS_TSIG_DATA get Tsig => this.Data.Tsig;
  set Tsig(DNS_TSIG_DATA value) => this.Data.Tsig = value;

  DNS_WINS_DATA get WINS => this.Data.WINS;
  set WINS(DNS_WINS_DATA value) => this.Data.WINS = value;

  DNS_WINS_DATA get Wins => this.Data.Wins;
  set Wins(DNS_WINS_DATA value) => this.Data.Wins = value;

  DNS_WINSR_DATA get WINSR => this.Data.WINSR;
  set WINSR(DNS_WINSR_DATA value) => this.Data.WINSR = value;

  DNS_WINSR_DATA get WinsR => this.Data.WinsR;
  set WinsR(DNS_WINSR_DATA value) => this.Data.WinsR = value;

  DNS_WINSR_DATA get NBSTAT => this.Data.NBSTAT;
  set NBSTAT(DNS_WINSR_DATA value) => this.Data.NBSTAT = value;

  DNS_WINSR_DATA get Nbstat => this.Data.Nbstat;
  set Nbstat(DNS_WINSR_DATA value) => this.Data.Nbstat = value;

  DNS_DHCID_DATA get DHCID => this.Data.DHCID;
  set DHCID(DNS_DHCID_DATA value) => this.Data.DHCID = value;

  DNS_NSEC3_DATA get NSEC3 => this.Data.NSEC3;
  set NSEC3(DNS_NSEC3_DATA value) => this.Data.NSEC3 = value;

  DNS_NSEC3_DATA get Nsec3 => this.Data.Nsec3;
  set Nsec3(DNS_NSEC3_DATA value) => this.Data.Nsec3 = value;

  DNS_NSEC3PARAM_DATA get NSEC3PARAM => this.Data.NSEC3PARAM;
  set NSEC3PARAM(DNS_NSEC3PARAM_DATA value) => this.Data.NSEC3PARAM = value;

  DNS_NSEC3PARAM_DATA get Nsec3Param => this.Data.Nsec3Param;
  set Nsec3Param(DNS_NSEC3PARAM_DATA value) => this.Data.Nsec3Param = value;

  DNS_TLSA_DATA get TLSA => this.Data.TLSA;
  set TLSA(DNS_TLSA_DATA value) => this.Data.TLSA = value;

  DNS_TLSA_DATA get Tlsa => this.Data.Tlsa;
  set Tlsa(DNS_TLSA_DATA value) => this.Data.Tlsa = value;

  DNS_UNKNOWN_DATA get UNKNOWN => this.Data.UNKNOWN;
  set UNKNOWN(DNS_UNKNOWN_DATA value) => this.Data.UNKNOWN = value;

  DNS_UNKNOWN_DATA get Unknown => this.Data.Unknown;
  set Unknown(DNS_UNKNOWN_DATA value) => this.Data.Unknown = value;

  Pointer<Uint8> get pDataPtr => this.Data.pDataPtr;
  set pDataPtr(Pointer<Uint8> value) => this.Data.pDataPtr = value;
}

/// {@category Struct}
class DNS_RECORD_FLAGS extends Struct {
  @Uint32()
  external int bitfield;
}

/// {@category Struct}
class DNS_RRSET extends Struct {
  external Pointer<DNS_RECORD> pFirstRR;

  external Pointer<DNS_RECORD> pLastRR;
}

/// {@category Struct}
class DNS_SERVICE_BROWSE_REQUEST extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int InterfaceIndex;

  external Pointer<Utf16> QueryName;

  external _DNS_SERVICE_BROWSE_REQUEST__Anonymous_e__Union Anonymous;

  external Pointer pQueryContext;
}

/// {@category Struct}
class _DNS_SERVICE_BROWSE_REQUEST__Anonymous_e__Union extends Union {
  external Pointer<NativeFunction<PDNS_SERVICE_BROWSE_CALLBACK>>
      pBrowseCallback;

  external Pointer<NativeFunction<PDNS_QUERY_COMPLETION_ROUTINE>>
      pBrowseCallbackV2;
}

extension DNS_SERVICE_BROWSE_REQUEST_Extension on DNS_SERVICE_BROWSE_REQUEST {
  Pointer<NativeFunction<PDNS_SERVICE_BROWSE_CALLBACK>> get pBrowseCallback =>
      this.Anonymous.pBrowseCallback;
  set pBrowseCallback(
          Pointer<NativeFunction<PDNS_SERVICE_BROWSE_CALLBACK>> value) =>
      this.Anonymous.pBrowseCallback = value;

  Pointer<NativeFunction<PDNS_QUERY_COMPLETION_ROUTINE>>
      get pBrowseCallbackV2 => this.Anonymous.pBrowseCallbackV2;
  set pBrowseCallbackV2(
          Pointer<NativeFunction<PDNS_QUERY_COMPLETION_ROUTINE>> value) =>
      this.Anonymous.pBrowseCallbackV2 = value;
}

/// {@category Struct}
class DNS_SERVICE_CANCEL extends Struct {
  external Pointer reserved;
}

/// {@category Struct}
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

/// {@category Struct}
class DNS_SERVICE_REGISTER_REQUEST extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int InterfaceIndex;

  external Pointer<DNS_SERVICE_INSTANCE> pServiceInstance;

  external Pointer<NativeFunction<PDNS_SERVICE_REGISTER_COMPLETE>>
      pRegisterCompletionCallback;

  external Pointer pQueryContext;

  @IntPtr()
  external int hCredentials;

  @Int32()
  external int unicastEnabled;
}

/// {@category Struct}
class DNS_SERVICE_RESOLVE_REQUEST extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int InterfaceIndex;

  external Pointer<Utf16> QueryName;

  external Pointer<NativeFunction<PDNS_SERVICE_RESOLVE_COMPLETE>>
      pResolveCompletionCallback;

  external Pointer pQueryContext;
}

/// {@category Struct}
class DNS_SIG_DATA extends Struct {
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

/// {@category Struct}
class DNS_SOA_DATA extends Struct {
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

/// {@category Struct}
class DNS_SRV_DATA extends Struct {
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

/// {@category Struct}
class DNS_TKEY_DATA extends Struct {
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

/// {@category Struct}
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

/// {@category Struct}
class DNS_TSIG_DATA extends Struct {
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

/// {@category Struct}
class DNS_TXT_DATA extends Struct {
  @Uint32()
  external int dwStringCount;

  @Array(1)
  external Array<Pointer<Utf16>> pStringArray;
}

/// {@category Struct}
class DNS_UNKNOWN_DATA extends Struct {
  @Uint32()
  external int dwByteCount;

  @Array(1)
  external Array<Uint8> bData;
}

/// {@category Struct}
class DNS_WINSR_DATA extends Struct {
  @Uint32()
  external int dwMappingFlag;

  @Uint32()
  external int dwLookupTimeout;

  @Uint32()
  external int dwCacheTimeout;

  external Pointer<Utf16> pNameResultDomain;
}

/// {@category Struct}
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

/// {@category Struct}
@Packed(1)
class DNS_WIRE_QUESTION extends Struct {
  @Uint16()
  external int QuestionType;

  @Uint16()
  external int QuestionClass;
}

/// {@category Struct}
@Packed(1)
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

/// {@category Struct}
class DNS_WKS_DATA extends Struct {
  @Uint32()
  external int IpAddress;

  @Uint8()
  external int chProtocol;

  @Array(1)
  external Array<Uint8> BitMask;
}

/// {@category Struct}
class IP4_ARRAY extends Struct {
  @Uint32()
  external int AddrCount;

  @Array(1)
  external Array<Uint32> AddrArray;
}

/// {@category Struct}
class IP6_ADDRESS extends Union {
  @Array(2)
  external Array<Uint64> IP6Qword;

  @Array(4)
  external Array<Uint32> IP6Dword;

  @Array(8)
  external Array<Uint16> IP6Word;

  @Array(16)
  external Array<Uint8> IP6Byte;
}

/// {@category Struct}
class MDNS_QUERY_HANDLE extends Struct {
  @Array(256)
  external Array<Uint16> _nameBuf;

  String get nameBuf {
    final charCodes = <int>[];
    for (var i = 0; i < 256; i++) {
      charCodes.add(_nameBuf[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set nameBuf(String value) {
    final stringToStore = value.padRight(256, '\x00');
    for (var i = 0; i < 256; i++) {
      _nameBuf[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint16()
  external int wType;

  external Pointer pSubscription;

  external Pointer pWnfCallbackParams;

  @Array(2)
  external Array<Uint32> stateNameData;
}

/// {@category Struct}
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

  external Pointer<NativeFunction<PMDNS_QUERY_CALLBACK>> pQueryCallback;

  external Pointer pQueryContext;

  @Int32()
  external int fAnswerReceived;

  @Uint32()
  external int ulResendCount;
}

/// {@category Struct}
class DnsRecordOpt extends Struct {
  external Pointer<DNS_RECORD> pNext;

  external Pointer<Utf16> pName;

  @Uint16()
  external int wType;

  @Uint16()
  external int wDataLength;

  external _DnsRecordOptW__Flags_e__Union Flags;

  external DNS_HEADER_EXT ExtHeader;

  @Uint16()
  external int wPayloadSize;

  @Uint16()
  external int wReserved;

  external _DnsRecordOptW__Data_e__Union Data;
}

/// {@category Struct}
class _DnsRecordOptW__Flags_e__Union extends Union {
  @Uint32()
  external int DW;

  external DNS_RECORD_FLAGS S;
}

extension DnsRecordOptW_Extension on DnsRecordOpt {
  int get DW => this.Flags.DW;
  set DW(int value) => this.Flags.DW = value;

  DNS_RECORD_FLAGS get S => this.Flags.S;
  set S(DNS_RECORD_FLAGS value) => this.Flags.S = value;
}

/// {@category Struct}
class _DnsRecordOptW__Data_e__Union extends Union {
  external DNS_OPT_DATA OPT;

  external DNS_OPT_DATA Opt;
}

extension DnsRecordOptW_Extension_1 on DnsRecordOpt {
  DNS_OPT_DATA get OPT => this.Data.OPT;
  set OPT(DNS_OPT_DATA value) => this.Data.OPT = value;

  DNS_OPT_DATA get Opt => this.Data.Opt;
  set Opt(DNS_OPT_DATA value) => this.Data.Opt = value;
}
