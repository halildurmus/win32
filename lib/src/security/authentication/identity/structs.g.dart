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
import '../../../combase.dart';
import '../../../guid.dart';
import '../../../foundation/structs.g.dart';
import '../../../security/authentication/identity/structs.g.dart';
import '../../../security/structs.g.dart';
import '../../../security/credentials/structs.g.dart';
import '../../../system/kernel/structs.g.dart';
import '../../../security/authentication/identity/callbacks.g.dart';
import '../../../system/passwordmanagement/structs.g.dart';
import '../../../security/cryptography/structs.g.dart';
import '../../../system/rpc/structs.g.dart';

/// {@category Struct}
class AUDIT_POLICY_INFORMATION extends Struct {
  external GUID AuditSubCategoryGuid;

  @Uint32()
  external int AuditingInformation;

  external GUID AuditCategoryGuid;
}

/// {@category Struct}
class CENTRAL_ACCESS_POLICY extends Struct {
  @IntPtr()
  external int CAPID;

  external UNICODE_STRING Name;

  external UNICODE_STRING Description;

  external UNICODE_STRING ChangeId;

  @Uint32()
  external int Flags;

  @Uint32()
  external int CAPECount;

  external Pointer<Pointer<CENTRAL_ACCESS_POLICY_ENTRY>> CAPEs;
}

/// {@category Struct}
class CENTRAL_ACCESS_POLICY_ENTRY extends Struct {
  external UNICODE_STRING Name;

  external UNICODE_STRING Description;

  external UNICODE_STRING ChangeId;

  @Uint32()
  external int LengthAppliesTo;

  external Pointer<Uint8> AppliesTo;

  @Uint32()
  external int LengthSD;

  external Pointer<SECURITY_DESCRIPTOR> SD;

  @Uint32()
  external int LengthStagedSD;

  external Pointer<SECURITY_DESCRIPTOR> StagedSD;

  @Uint32()
  external int Flags;
}

/// {@category Struct}
class CLEAR_BLOCK extends Struct {
  @Array(8)
  external Array<Uint8> data;
}

/// {@category Struct}
class DOMAIN_PASSWORD_INFORMATION extends Struct {
  @Uint16()
  external int MinPasswordLength;

  @Uint16()
  external int PasswordHistoryLength;

  @Uint32()
  external int PasswordProperties;

  @Int64()
  external int MaxPasswordAge;

  @Int64()
  external int MinPasswordAge;
}

/// {@category Struct}
class ENCRYPTED_CREDENTIAL extends Struct {
  external CREDENTIAL Cred;

  @Uint32()
  external int ClearCredentialBlobSize;
}

/// {@category Struct}
class KDC_PROXY_CACHE_ENTRY_DATA extends Struct {
  @Uint64()
  external int SinceLastUsed;

  external UNICODE_STRING DomainName;

  external UNICODE_STRING ProxyServerName;

  external UNICODE_STRING ProxyServerVdir;

  @Uint16()
  external int ProxyServerPort;

  external LUID LogonId;

  external UNICODE_STRING CredUserName;

  external UNICODE_STRING CredDomainName;

  @Uint8()
  external int GlobalCache;
}

/// {@category Struct}
class KERB_ADD_BINDING_CACHE_ENTRY_EX_REQUEST extends Struct {
  @Int32()
  external int MessageType;

  external UNICODE_STRING RealmName;

  external UNICODE_STRING KdcAddress;

  @Uint32()
  external int AddressType;

  @Uint32()
  external int DcFlags;
}

/// {@category Struct}
class KERB_ADD_BINDING_CACHE_ENTRY_REQUEST extends Struct {
  @Int32()
  external int MessageType;

  external UNICODE_STRING RealmName;

  external UNICODE_STRING KdcAddress;

  @Uint32()
  external int AddressType;
}

/// {@category Struct}
class KERB_ADD_CREDENTIALS_REQUEST extends Struct {
  @Int32()
  external int MessageType;

  external UNICODE_STRING UserName;

  external UNICODE_STRING DomainName;

  external UNICODE_STRING Password;

  external LUID LogonId;

  @Uint32()
  external int Flags;
}

/// {@category Struct}
class KERB_ADD_CREDENTIALS_REQUEST_EX extends Struct {
  external KERB_ADD_CREDENTIALS_REQUEST Credentials;

  @Uint32()
  external int PrincipalNameCount;

  @Array(1)
  external Array<UNICODE_STRING> PrincipalNames;
}

/// {@category Struct}
class KERB_AUTH_DATA extends Struct {
  @Uint32()
  external int Type;

  @Uint32()
  external int Length;

  external Pointer<Uint8> Data;
}

/// {@category Struct}
class KERB_BINDING_CACHE_ENTRY_DATA extends Struct {
  @Uint64()
  external int DiscoveryTime;

  external UNICODE_STRING RealmName;

  external UNICODE_STRING KdcAddress;

  @Uint32()
  external int AddressType;

  @Uint32()
  external int Flags;

  @Uint32()
  external int DcFlags;

  @Uint32()
  external int CacheFlags;

  external UNICODE_STRING KdcName;
}

/// {@category Struct}
class KERB_CERTIFICATE_HASHINFO extends Struct {
  @Uint16()
  external int StoreNameLength;

  @Uint16()
  external int HashLength;
}

/// {@category Struct}
class KERB_CERTIFICATE_INFO extends Struct {
  @Uint32()
  external int CertInfoSize;

  @Uint32()
  external int InfoType;
}

/// {@category Struct}
class KERB_CERTIFICATE_LOGON extends Struct {
  @Int32()
  external int MessageType;

  external UNICODE_STRING DomainName;

  external UNICODE_STRING UserName;

  external UNICODE_STRING Pin;

  @Uint32()
  external int Flags;

  @Uint32()
  external int CspDataLength;

  external Pointer<Uint8> CspData;
}

/// {@category Struct}
class KERB_CERTIFICATE_S4U_LOGON extends Struct {
  @Int32()
  external int MessageType;

  @Uint32()
  external int Flags;

  external UNICODE_STRING UserPrincipalName;

  external UNICODE_STRING DomainName;

  @Uint32()
  external int CertificateLength;

  external Pointer<Uint8> Certificate;
}

/// {@category Struct}
class KERB_CERTIFICATE_UNLOCK_LOGON extends Struct {
  external KERB_CERTIFICATE_LOGON Logon;

  external LUID LogonId;
}

/// {@category Struct}
class KERB_CHANGEPASSWORD_REQUEST extends Struct {
  @Int32()
  external int MessageType;

  external UNICODE_STRING DomainName;

  external UNICODE_STRING AccountName;

  external UNICODE_STRING OldPassword;

  external UNICODE_STRING NewPassword;

  @Uint8()
  external int Impersonating;
}

/// {@category Struct}
class KERB_CLEANUP_MACHINE_PKINIT_CREDS_REQUEST extends Struct {
  @Int32()
  external int MessageType;

  external LUID LogonId;
}

/// {@category Struct}
class KERB_CLOUD_KERBEROS_DEBUG_DATA_V0 extends Struct {
  @Int32()
  external int bitfield;
}

/// {@category Struct}
class KERB_CLOUD_KERBEROS_DEBUG_REQUEST extends Struct {
  @Int32()
  external int MessageType;

  external LUID LogonId;
}

/// {@category Struct}
class KERB_CLOUD_KERBEROS_DEBUG_RESPONSE extends Struct {
  @Int32()
  external int MessageType;

  @Uint32()
  external int Version;

  @Uint32()
  external int Length;

  @Array(1)
  external Array<Uint32> Data;
}

/// {@category Struct}
class KERB_CRYPTO_KEY extends Struct {
  @Int32()
  external int KeyType;

  @Uint32()
  external int Length;

  external Pointer<Uint8> Value;
}

/// {@category Struct}
class KERB_CRYPTO_KEY32 extends Struct {
  @Int32()
  external int KeyType;

  @Uint32()
  external int Length;

  @Uint32()
  external int Offset;
}

/// {@category Struct}
class KERB_DECRYPT_REQUEST extends Struct {
  @Int32()
  external int MessageType;

  external LUID LogonId;

  @Uint32()
  external int Flags;

  @Int32()
  external int CryptoType;

  @Int32()
  external int KeyUsage;

  external KERB_CRYPTO_KEY Key;

  @Uint32()
  external int EncryptedDataSize;

  @Uint32()
  external int InitialVectorSize;

  external Pointer<Uint8> InitialVector;

  external Pointer<Uint8> EncryptedData;
}

/// {@category Struct}
class KERB_DECRYPT_RESPONSE extends Struct {
  @Array(1)
  external Array<Uint8> DecryptedData;
}

/// {@category Struct}
class KERB_EXTERNAL_NAME extends Struct {
  @Int16()
  external int NameType;

  @Uint16()
  external int NameCount;

  @Array(1)
  external Array<UNICODE_STRING> Names;
}

/// {@category Struct}
class KERB_EXTERNAL_TICKET extends Struct {
  external Pointer<KERB_EXTERNAL_NAME> ServiceName;

  external Pointer<KERB_EXTERNAL_NAME> TargetName;

  external Pointer<KERB_EXTERNAL_NAME> ClientName;

  external UNICODE_STRING DomainName;

  external UNICODE_STRING TargetDomainName;

  external UNICODE_STRING AltTargetDomainName;

  external KERB_CRYPTO_KEY SessionKey;

  @Uint32()
  external int TicketFlags;

  @Uint32()
  external int Flags;

  @Int64()
  external int KeyExpirationTime;

  @Int64()
  external int StartTime;

  @Int64()
  external int EndTime;

  @Int64()
  external int RenewUntil;

  @Int64()
  external int TimeSkew;

  @Uint32()
  external int EncodedTicketSize;

  external Pointer<Uint8> EncodedTicket;
}

/// {@category Struct}
class KERB_INTERACTIVE_LOGON extends Struct {
  @Int32()
  external int MessageType;

  external UNICODE_STRING LogonDomainName;

  external UNICODE_STRING UserName;

  external UNICODE_STRING Password;
}

/// {@category Struct}
class KERB_INTERACTIVE_PROFILE extends Struct {
  @Int32()
  external int MessageType;

  @Uint16()
  external int LogonCount;

  @Uint16()
  external int BadPasswordCount;

  @Int64()
  external int LogonTime;

  @Int64()
  external int LogoffTime;

  @Int64()
  external int KickOffTime;

  @Int64()
  external int PasswordLastSet;

  @Int64()
  external int PasswordCanChange;

  @Int64()
  external int PasswordMustChange;

  external UNICODE_STRING LogonScript;

  external UNICODE_STRING HomeDirectory;

  external UNICODE_STRING FullName;

  external UNICODE_STRING ProfilePath;

  external UNICODE_STRING HomeDirectoryDrive;

  external UNICODE_STRING LogonServer;

  @Uint32()
  external int UserFlags;
}

/// {@category Struct}
class KERB_INTERACTIVE_UNLOCK_LOGON extends Struct {
  external KERB_INTERACTIVE_LOGON Logon;

  external LUID LogonId;
}

/// {@category Struct}
class KERB_NET_ADDRESS extends Struct {
  @Uint32()
  external int Family;

  @Uint32()
  external int Length;

  external Pointer<Utf8> Address;
}

/// {@category Struct}
class KERB_NET_ADDRESSES extends Struct {
  @Uint32()
  external int Number;

  @Array(1)
  external Array<KERB_NET_ADDRESS> Addresses;
}

/// {@category Struct}
class KERB_PURGE_BINDING_CACHE_REQUEST extends Struct {
  @Int32()
  external int MessageType;
}

/// {@category Struct}
class KERB_PURGE_KDC_PROXY_CACHE_REQUEST extends Struct {
  @Int32()
  external int MessageType;

  @Uint32()
  external int Flags;

  external LUID LogonId;
}

/// {@category Struct}
class KERB_PURGE_KDC_PROXY_CACHE_RESPONSE extends Struct {
  @Int32()
  external int MessageType;

  @Uint32()
  external int CountOfPurged;
}

/// {@category Struct}
class KERB_PURGE_TKT_CACHE_EX_REQUEST extends Struct {
  @Int32()
  external int MessageType;

  external LUID LogonId;

  @Uint32()
  external int Flags;

  external KERB_TICKET_CACHE_INFO_EX TicketTemplate;
}

/// {@category Struct}
class KERB_PURGE_TKT_CACHE_REQUEST extends Struct {
  @Int32()
  external int MessageType;

  external LUID LogonId;

  external UNICODE_STRING ServerName;

  external UNICODE_STRING RealmName;
}

/// {@category Struct}
class KERB_QUERY_BINDING_CACHE_REQUEST extends Struct {
  @Int32()
  external int MessageType;
}

/// {@category Struct}
class KERB_QUERY_BINDING_CACHE_RESPONSE extends Struct {
  @Int32()
  external int MessageType;

  @Uint32()
  external int CountOfEntries;

  external Pointer<KERB_BINDING_CACHE_ENTRY_DATA> Entries;
}

/// {@category Struct}
class KERB_QUERY_DOMAIN_EXTENDED_POLICIES_REQUEST extends Struct {
  @Int32()
  external int MessageType;

  @Uint32()
  external int Flags;

  external UNICODE_STRING DomainName;
}

/// {@category Struct}
class KERB_QUERY_DOMAIN_EXTENDED_POLICIES_RESPONSE extends Struct {
  @Int32()
  external int MessageType;

  @Uint32()
  external int Flags;

  @Uint32()
  external int ExtendedPolicies;

  @Uint32()
  external int DsFlags;
}

/// {@category Struct}
class KERB_QUERY_KDC_PROXY_CACHE_REQUEST extends Struct {
  @Int32()
  external int MessageType;

  @Uint32()
  external int Flags;

  external LUID LogonId;
}

/// {@category Struct}
class KERB_QUERY_KDC_PROXY_CACHE_RESPONSE extends Struct {
  @Int32()
  external int MessageType;

  @Uint32()
  external int CountOfEntries;

  external Pointer<KDC_PROXY_CACHE_ENTRY_DATA> Entries;
}

/// {@category Struct}
class KERB_QUERY_S4U2PROXY_CACHE_REQUEST extends Struct {
  @Int32()
  external int MessageType;

  @Uint32()
  external int Flags;

  external LUID LogonId;
}

/// {@category Struct}
class KERB_QUERY_S4U2PROXY_CACHE_RESPONSE extends Struct {
  @Int32()
  external int MessageType;

  @Uint32()
  external int CountOfCreds;

  external Pointer<KERB_S4U2PROXY_CRED> Creds;
}

/// {@category Struct}
class KERB_QUERY_TKT_CACHE_EX2_RESPONSE extends Struct {
  @Int32()
  external int MessageType;

  @Uint32()
  external int CountOfTickets;

  @Array(1)
  external Array<KERB_TICKET_CACHE_INFO_EX2> Tickets;
}

/// {@category Struct}
class KERB_QUERY_TKT_CACHE_EX3_RESPONSE extends Struct {
  @Int32()
  external int MessageType;

  @Uint32()
  external int CountOfTickets;

  @Array(1)
  external Array<KERB_TICKET_CACHE_INFO_EX3> Tickets;
}

/// {@category Struct}
class KERB_QUERY_TKT_CACHE_EX_RESPONSE extends Struct {
  @Int32()
  external int MessageType;

  @Uint32()
  external int CountOfTickets;

  @Array(1)
  external Array<KERB_TICKET_CACHE_INFO_EX> Tickets;
}

/// {@category Struct}
class KERB_QUERY_TKT_CACHE_REQUEST extends Struct {
  @Int32()
  external int MessageType;

  external LUID LogonId;
}

/// {@category Struct}
class KERB_QUERY_TKT_CACHE_RESPONSE extends Struct {
  @Int32()
  external int MessageType;

  @Uint32()
  external int CountOfTickets;

  @Array(1)
  external Array<KERB_TICKET_CACHE_INFO> Tickets;
}

/// {@category Struct}
class KERB_REFRESH_POLICY_REQUEST extends Struct {
  @Int32()
  external int MessageType;

  @Uint32()
  external int Flags;
}

/// {@category Struct}
class KERB_REFRESH_POLICY_RESPONSE extends Struct {
  @Int32()
  external int MessageType;

  @Uint32()
  external int Flags;
}

/// {@category Struct}
class KERB_REFRESH_SCCRED_REQUEST extends Struct {
  @Int32()
  external int MessageType;

  external UNICODE_STRING CredentialBlob;

  external LUID LogonId;

  @Uint32()
  external int Flags;
}

/// {@category Struct}
class KERB_RETRIEVE_KEY_TAB_REQUEST extends Struct {
  @Int32()
  external int MessageType;

  @Uint32()
  external int Flags;

  external UNICODE_STRING UserName;

  external UNICODE_STRING DomainName;

  external UNICODE_STRING Password;
}

/// {@category Struct}
class KERB_RETRIEVE_KEY_TAB_RESPONSE extends Struct {
  @Int32()
  external int MessageType;

  @Uint32()
  external int KeyTabLength;

  external Pointer<Uint8> KeyTab;
}

/// {@category Struct}
class KERB_RETRIEVE_TKT_REQUEST extends Struct {
  @Int32()
  external int MessageType;

  external LUID LogonId;

  external UNICODE_STRING TargetName;

  @Uint32()
  external int TicketFlags;

  @Uint32()
  external int CacheOptions;

  @Int32()
  external int EncryptionType;

  external SecHandle CredentialsHandle;
}

/// {@category Struct}
class KERB_RETRIEVE_TKT_RESPONSE extends Struct {
  external KERB_EXTERNAL_TICKET Ticket;
}

/// {@category Struct}
class KERB_S4U2PROXY_CACHE_ENTRY_INFO extends Struct {
  external UNICODE_STRING ServerName;

  @Uint32()
  external int Flags;

  @Int32()
  external int LastStatus;

  @Int64()
  external int Expiry;
}

/// {@category Struct}
class KERB_S4U2PROXY_CRED extends Struct {
  external UNICODE_STRING UserName;

  external UNICODE_STRING DomainName;

  @Uint32()
  external int Flags;

  @Int32()
  external int LastStatus;

  @Int64()
  external int Expiry;

  @Uint32()
  external int CountOfEntries;

  external Pointer<KERB_S4U2PROXY_CACHE_ENTRY_INFO> Entries;
}

/// {@category Struct}
class KERB_S4U_LOGON extends Struct {
  @Int32()
  external int MessageType;

  @Uint32()
  external int Flags;

  external UNICODE_STRING ClientUpn;

  external UNICODE_STRING ClientRealm;
}

/// {@category Struct}
class KERB_SETPASSWORD_EX_REQUEST extends Struct {
  @Int32()
  external int MessageType;

  external LUID LogonId;

  external SecHandle CredentialsHandle;

  @Uint32()
  external int Flags;

  external UNICODE_STRING AccountRealm;

  external UNICODE_STRING AccountName;

  external UNICODE_STRING Password;

  external UNICODE_STRING ClientRealm;

  external UNICODE_STRING ClientName;

  @Uint8()
  external int Impersonating;

  external UNICODE_STRING KdcAddress;

  @Uint32()
  external int KdcAddressType;
}

/// {@category Struct}
class KERB_SETPASSWORD_REQUEST extends Struct {
  @Int32()
  external int MessageType;

  external LUID LogonId;

  external SecHandle CredentialsHandle;

  @Uint32()
  external int Flags;

  external UNICODE_STRING DomainName;

  external UNICODE_STRING AccountName;

  external UNICODE_STRING Password;
}

/// {@category Struct}
class KERB_SMART_CARD_LOGON extends Struct {
  @Int32()
  external int MessageType;

  external UNICODE_STRING Pin;

  @Uint32()
  external int CspDataLength;

  external Pointer<Uint8> CspData;
}

/// {@category Struct}
class KERB_SMART_CARD_PROFILE extends Struct {
  external KERB_INTERACTIVE_PROFILE Profile;

  @Uint32()
  external int CertificateSize;

  external Pointer<Uint8> CertificateData;
}

/// {@category Struct}
class KERB_SMART_CARD_UNLOCK_LOGON extends Struct {
  external KERB_SMART_CARD_LOGON Logon;

  external LUID LogonId;
}

/// {@category Struct}
class KERB_SUBMIT_TKT_REQUEST extends Struct {
  @Int32()
  external int MessageType;

  external LUID LogonId;

  @Uint32()
  external int Flags;

  external KERB_CRYPTO_KEY32 Key;

  @Uint32()
  external int KerbCredSize;

  @Uint32()
  external int KerbCredOffset;
}

/// {@category Struct}
class KERB_TICKET_CACHE_INFO extends Struct {
  external UNICODE_STRING ServerName;

  external UNICODE_STRING RealmName;

  @Int64()
  external int StartTime;

  @Int64()
  external int EndTime;

  @Int64()
  external int RenewTime;

  @Int32()
  external int EncryptionType;

  @Uint32()
  external int TicketFlags;
}

/// {@category Struct}
class KERB_TICKET_CACHE_INFO_EX extends Struct {
  external UNICODE_STRING ClientName;

  external UNICODE_STRING ClientRealm;

  external UNICODE_STRING ServerName;

  external UNICODE_STRING ServerRealm;

  @Int64()
  external int StartTime;

  @Int64()
  external int EndTime;

  @Int64()
  external int RenewTime;

  @Int32()
  external int EncryptionType;

  @Uint32()
  external int TicketFlags;
}

/// {@category Struct}
class KERB_TICKET_CACHE_INFO_EX2 extends Struct {
  external UNICODE_STRING ClientName;

  external UNICODE_STRING ClientRealm;

  external UNICODE_STRING ServerName;

  external UNICODE_STRING ServerRealm;

  @Int64()
  external int StartTime;

  @Int64()
  external int EndTime;

  @Int64()
  external int RenewTime;

  @Int32()
  external int EncryptionType;

  @Uint32()
  external int TicketFlags;

  @Uint32()
  external int SessionKeyType;

  @Uint32()
  external int BranchId;
}

/// {@category Struct}
class KERB_TICKET_CACHE_INFO_EX3 extends Struct {
  external UNICODE_STRING ClientName;

  external UNICODE_STRING ClientRealm;

  external UNICODE_STRING ServerName;

  external UNICODE_STRING ServerRealm;

  @Int64()
  external int StartTime;

  @Int64()
  external int EndTime;

  @Int64()
  external int RenewTime;

  @Int32()
  external int EncryptionType;

  @Uint32()
  external int TicketFlags;

  @Uint32()
  external int SessionKeyType;

  @Uint32()
  external int BranchId;

  @Uint32()
  external int CacheFlags;

  external UNICODE_STRING KdcCalled;
}

/// {@category Struct}
class KERB_TICKET_LOGON extends Struct {
  @Int32()
  external int MessageType;

  @Uint32()
  external int Flags;

  @Uint32()
  external int ServiceTicketLength;

  @Uint32()
  external int TicketGrantingTicketLength;

  external Pointer<Uint8> ServiceTicket;

  external Pointer<Uint8> TicketGrantingTicket;
}

/// {@category Struct}
class KERB_TICKET_PROFILE extends Struct {
  external KERB_INTERACTIVE_PROFILE Profile;

  external KERB_CRYPTO_KEY SessionKey;
}

/// {@category Struct}
class KERB_TICKET_UNLOCK_LOGON extends Struct {
  external KERB_TICKET_LOGON Logon;

  external LUID LogonId;
}

/// {@category Struct}
class KERB_TRANSFER_CRED_REQUEST extends Struct {
  @Int32()
  external int MessageType;

  external LUID OriginLogonId;

  external LUID DestinationLogonId;

  @Uint32()
  external int Flags;
}

/// {@category Struct}
class KSEC_LIST_ENTRY extends Struct {
  external LIST_ENTRY $List;

  @Int32()
  external int RefCount;

  @Uint32()
  external int Signature;

  external Pointer OwningList;

  external Pointer Reserved;
}

/// {@category Struct}
class LOGON_HOURS extends Struct {
  @Uint16()
  external int UnitsPerWeek;

  external Pointer<Uint8> LogonHours;
}

/// {@category Struct}
class LSA_AUTH_INFORMATION extends Struct {
  @Int64()
  external int LastUpdateTime;

  @Uint32()
  external int AuthType;

  @Uint32()
  external int AuthInfoLength;

  external Pointer<Uint8> AuthInfo;
}

/// {@category Struct}
class LSA_DISPATCH_TABLE extends Struct {
  external Pointer<NativeFunction<PLSA_CREATE_LOGON_SESSION>>
      CreateLogonSession;

  external Pointer<NativeFunction<PLSA_DELETE_LOGON_SESSION>>
      DeleteLogonSession;

  external Pointer<NativeFunction<PLSA_ADD_CREDENTIAL>> AddCredential;

  external Pointer<NativeFunction<PLSA_GET_CREDENTIALS>> GetCredentials;

  external Pointer<NativeFunction<PLSA_DELETE_CREDENTIAL>> DeleteCredential;

  external Pointer<NativeFunction<PLSA_ALLOCATE_LSA_HEAP>> AllocateLsaHeap;

  external Pointer<NativeFunction<PLSA_FREE_LSA_HEAP>> FreeLsaHeap;

  external Pointer<NativeFunction<PLSA_ALLOCATE_CLIENT_BUFFER>>
      AllocateClientBuffer;

  external Pointer<NativeFunction<PLSA_FREE_CLIENT_BUFFER>> FreeClientBuffer;

  external Pointer<NativeFunction<PLSA_COPY_TO_CLIENT_BUFFER>>
      CopyToClientBuffer;

  external Pointer<NativeFunction<PLSA_COPY_FROM_CLIENT_BUFFER>>
      CopyFromClientBuffer;
}

/// {@category Struct}
class LSA_ENUMERATION_INFORMATION extends Struct {
  @IntPtr()
  external int Sid;
}

/// {@category Struct}
class LSA_FOREST_TRUST_BINARY_DATA extends Struct {
  @Uint32()
  external int Length;

  external Pointer<Uint8> Buffer;
}

/// {@category Struct}
class LSA_FOREST_TRUST_COLLISION_INFORMATION extends Struct {
  @Uint32()
  external int RecordCount;

  external Pointer<Pointer<LSA_FOREST_TRUST_COLLISION_RECORD>> Entries;
}

/// {@category Struct}
class LSA_FOREST_TRUST_COLLISION_RECORD extends Struct {
  @Uint32()
  external int Index;

  @Int32()
  external int Type;

  @Uint32()
  external int Flags;

  external UNICODE_STRING Name;
}

/// {@category Struct}
class LSA_FOREST_TRUST_DOMAIN_INFO extends Struct {
  @IntPtr()
  external int Sid;

  external UNICODE_STRING DnsName;

  external UNICODE_STRING NetbiosName;
}

/// {@category Struct}
class LSA_FOREST_TRUST_INFORMATION extends Struct {
  @Uint32()
  external int RecordCount;

  external Pointer<Pointer<LSA_FOREST_TRUST_RECORD>> Entries;
}

/// {@category Struct}
class LSA_FOREST_TRUST_RECORD extends Struct {
  @Uint32()
  external int Flags;

  @Int32()
  external int ForestTrustType;

  @Int64()
  external int Time;

  external _LSA_FOREST_TRUST_RECORD__ForestTrustData_e__Union ForestTrustData;
}

/// {@category Struct}
class _LSA_FOREST_TRUST_RECORD__ForestTrustData_e__Union extends Union {
  external UNICODE_STRING TopLevelName;

  external LSA_FOREST_TRUST_DOMAIN_INFO DomainInfo;

  external LSA_FOREST_TRUST_BINARY_DATA Data;
}

extension LSA_FOREST_TRUST_RECORD_Extension on LSA_FOREST_TRUST_RECORD {
  UNICODE_STRING get TopLevelName => this.ForestTrustData.TopLevelName;
  set TopLevelName(UNICODE_STRING value) =>
      this.ForestTrustData.TopLevelName = value;

  LSA_FOREST_TRUST_DOMAIN_INFO get DomainInfo =>
      this.ForestTrustData.DomainInfo;
  set DomainInfo(LSA_FOREST_TRUST_DOMAIN_INFO value) =>
      this.ForestTrustData.DomainInfo = value;

  LSA_FOREST_TRUST_BINARY_DATA get Data => this.ForestTrustData.Data;
  set Data(LSA_FOREST_TRUST_BINARY_DATA value) =>
      this.ForestTrustData.Data = value;
}

/// {@category Struct}
class LSA_LAST_INTER_LOGON_INFO extends Struct {
  @Int64()
  external int LastSuccessfulLogon;

  @Int64()
  external int LastFailedLogon;

  @Uint32()
  external int FailedAttemptCountSinceLastSuccessfulLogon;
}

/// {@category Struct}
class LSA_REFERENCED_DOMAIN_LIST extends Struct {
  @Uint32()
  external int Entries;

  external Pointer<LSA_TRUST_INFORMATION> Domains;
}

/// {@category Struct}
class LSA_SECPKG_FUNCTION_TABLE extends Struct {
  external Pointer<NativeFunction<PLSA_CREATE_LOGON_SESSION>>
      CreateLogonSession;

  external Pointer<NativeFunction<PLSA_DELETE_LOGON_SESSION>>
      DeleteLogonSession;

  external Pointer<NativeFunction<PLSA_ADD_CREDENTIAL>> AddCredential;

  external Pointer<NativeFunction<PLSA_GET_CREDENTIALS>> GetCredentials;

  external Pointer<NativeFunction<PLSA_DELETE_CREDENTIAL>> DeleteCredential;

  external Pointer<NativeFunction<PLSA_ALLOCATE_LSA_HEAP>> AllocateLsaHeap;

  external Pointer<NativeFunction<PLSA_FREE_LSA_HEAP>> FreeLsaHeap;

  external Pointer<NativeFunction<PLSA_ALLOCATE_CLIENT_BUFFER>>
      AllocateClientBuffer;

  external Pointer<NativeFunction<PLSA_FREE_CLIENT_BUFFER>> FreeClientBuffer;

  external Pointer<NativeFunction<PLSA_COPY_TO_CLIENT_BUFFER>>
      CopyToClientBuffer;

  external Pointer<NativeFunction<PLSA_COPY_FROM_CLIENT_BUFFER>>
      CopyFromClientBuffer;

  external Pointer<NativeFunction<PLSA_IMPERSONATE_CLIENT>> ImpersonateClient;

  external Pointer<NativeFunction<PLSA_UNLOAD_PACKAGE>> UnloadPackage;

  external Pointer<NativeFunction<PLSA_DUPLICATE_HANDLE>> DuplicateHandle;

  external Pointer<NativeFunction<PLSA_SAVE_SUPPLEMENTAL_CREDENTIALS>>
      SaveSupplementalCredentials;

  external Pointer<NativeFunction<PLSA_CREATE_THREAD>> CreateThread;

  external Pointer<NativeFunction<PLSA_GET_CLIENT_INFO>> GetClientInfo;

  external Pointer<NativeFunction<PLSA_REGISTER_NOTIFICATION>>
      RegisterNotification;

  external Pointer<NativeFunction<PLSA_CANCEL_NOTIFICATION>> CancelNotification;

  external Pointer<NativeFunction<PLSA_MAP_BUFFER>> MapBuffer;

  external Pointer<NativeFunction<PLSA_CREATE_TOKEN>> CreateToken;

  external Pointer<NativeFunction<PLSA_AUDIT_LOGON>> AuditLogon;

  external Pointer<NativeFunction<PLSA_CALL_PACKAGE>> CallPackage;

  external Pointer<NativeFunction<PLSA_FREE_LSA_HEAP>> FreeReturnBuffer;

  external Pointer<NativeFunction<PLSA_GET_CALL_INFO>> GetCallInfo;

  external Pointer<NativeFunction<PLSA_CALL_PACKAGEEX>> CallPackageEx;

  external Pointer<NativeFunction<PLSA_CREATE_SHARED_MEMORY>>
      CreateSharedMemory;

  external Pointer<NativeFunction<PLSA_ALLOCATE_SHARED_MEMORY>>
      AllocateSharedMemory;

  external Pointer<NativeFunction<PLSA_FREE_SHARED_MEMORY>> FreeSharedMemory;

  external Pointer<NativeFunction<PLSA_DELETE_SHARED_MEMORY>>
      DeleteSharedMemory;

  external Pointer<NativeFunction<PLSA_OPEN_SAM_USER>> OpenSamUser;

  external Pointer<NativeFunction<PLSA_GET_USER_CREDENTIALS>>
      GetUserCredentials;

  external Pointer<NativeFunction<PLSA_GET_USER_AUTH_DATA>> GetUserAuthData;

  external Pointer<NativeFunction<PLSA_CLOSE_SAM_USER>> CloseSamUser;

  external Pointer<NativeFunction<PLSA_CONVERT_AUTH_DATA_TO_TOKEN>>
      ConvertAuthDataToToken;

  external Pointer<NativeFunction<PLSA_CLIENT_CALLBACK>> ClientCallback;

  external Pointer<NativeFunction<PLSA_UPDATE_PRIMARY_CREDENTIALS>>
      UpdateCredentials;

  external Pointer<NativeFunction<PLSA_GET_AUTH_DATA_FOR_USER>>
      GetAuthDataForUser;

  external Pointer<NativeFunction<PLSA_CRACK_SINGLE_NAME>> CrackSingleName;

  external Pointer<NativeFunction<PLSA_AUDIT_ACCOUNT_LOGON>> AuditAccountLogon;

  external Pointer<NativeFunction<PLSA_CALL_PACKAGE_PASSTHROUGH>>
      CallPackagePassthrough;

  external Pointer<NativeFunction<CredReadFn>> CrediRead;

  external Pointer<NativeFunction<CredReadDomainCredentialsFn>>
      CrediReadDomainCredentials;

  external Pointer<NativeFunction<CredFreeCredentialsFn>> CrediFreeCredentials;

  external Pointer<NativeFunction<PLSA_PROTECT_MEMORY>> LsaProtectMemory;

  external Pointer<NativeFunction<PLSA_PROTECT_MEMORY>> LsaUnprotectMemory;

  external Pointer<NativeFunction<PLSA_OPEN_TOKEN_BY_LOGON_ID>>
      OpenTokenByLogonId;

  external Pointer<NativeFunction<PLSA_EXPAND_AUTH_DATA_FOR_DOMAIN>>
      ExpandAuthDataForDomain;

  external Pointer<NativeFunction<PLSA_ALLOCATE_PRIVATE_HEAP>>
      AllocatePrivateHeap;

  external Pointer<NativeFunction<PLSA_FREE_PRIVATE_HEAP>> FreePrivateHeap;

  external Pointer<NativeFunction<PLSA_CREATE_TOKEN_EX>> CreateTokenEx;

  external Pointer<NativeFunction<CredWriteFn>> CrediWrite;

  external Pointer<NativeFunction<CrediUnmarshalandDecodeStringFn>>
      CrediUnmarshalandDecodeString;

  external Pointer<NativeFunction<PLSA_PROTECT_MEMORY>> DummyFunction6;

  external Pointer<NativeFunction<PLSA_GET_EXTENDED_CALL_FLAGS>>
      GetExtendedCallFlags;

  external Pointer<NativeFunction<PLSA_DUPLICATE_HANDLE>> DuplicateTokenHandle;

  external Pointer<NativeFunction<PLSA_GET_SERVICE_ACCOUNT_PASSWORD>>
      GetServiceAccountPassword;

  external Pointer<NativeFunction<PLSA_PROTECT_MEMORY>> DummyFunction7;

  external Pointer<NativeFunction<PLSA_AUDIT_LOGON_EX>> AuditLogonEx;

  external Pointer<NativeFunction<PLSA_CHECK_PROTECTED_USER_BY_TOKEN>>
      CheckProtectedUserByToken;

  external Pointer<NativeFunction<PLSA_QUERY_CLIENT_REQUEST>>
      QueryClientRequest;

  external Pointer<NativeFunction<PLSA_GET_APP_MODE_INFO>> GetAppModeInfo;

  external Pointer<NativeFunction<PLSA_SET_APP_MODE_INFO>> SetAppModeInfo;
}

/// {@category Struct}
class LSA_TOKEN_INFORMATION_NULL extends Struct {
  @Int64()
  external int ExpirationTime;

  external Pointer<TOKEN_GROUPS> Groups;
}

/// {@category Struct}
class LSA_TOKEN_INFORMATION_V1 extends Struct {
  @Int64()
  external int ExpirationTime;

  external TOKEN_USER User;

  external Pointer<TOKEN_GROUPS> Groups;

  external TOKEN_PRIMARY_GROUP PrimaryGroup;

  external Pointer<TOKEN_PRIVILEGES> Privileges;

  external TOKEN_OWNER Owner;

  external TOKEN_DEFAULT_DACL DefaultDacl;
}

/// {@category Struct}
class LSA_TOKEN_INFORMATION_V3 extends Struct {
  @Int64()
  external int ExpirationTime;

  external TOKEN_USER User;

  external Pointer<TOKEN_GROUPS> Groups;

  external TOKEN_PRIMARY_GROUP PrimaryGroup;

  external Pointer<TOKEN_PRIVILEGES> Privileges;

  external TOKEN_OWNER Owner;

  external TOKEN_DEFAULT_DACL DefaultDacl;

  external TOKEN_USER_CLAIMS UserClaims;

  external TOKEN_DEVICE_CLAIMS DeviceClaims;

  external Pointer<TOKEN_GROUPS> DeviceGroups;
}

/// {@category Struct}
class LSA_TRANSLATED_NAME extends Struct {
  @Int32()
  external int Use;

  external UNICODE_STRING Name;

  @Int32()
  external int DomainIndex;
}

/// {@category Struct}
class LSA_TRANSLATED_SID extends Struct {
  @Int32()
  external int Use;

  @Uint32()
  external int RelativeId;

  @Int32()
  external int DomainIndex;
}

/// {@category Struct}
class LSA_TRANSLATED_SID2 extends Struct {
  @Int32()
  external int Use;

  @IntPtr()
  external int Sid;

  @Int32()
  external int DomainIndex;

  @Uint32()
  external int Flags;
}

/// {@category Struct}
class LSA_TRUST_INFORMATION extends Struct {
  external UNICODE_STRING Name;

  @IntPtr()
  external int Sid;
}

/// {@category Struct}
class MSV1_0_AV_PAIR extends Struct {
  @Uint16()
  external int AvId;

  @Uint16()
  external int AvLen;
}

/// {@category Struct}
class MSV1_0_CHANGEPASSWORD_REQUEST extends Struct {
  @Int32()
  external int MessageType;

  external UNICODE_STRING DomainName;

  external UNICODE_STRING AccountName;

  external UNICODE_STRING OldPassword;

  external UNICODE_STRING NewPassword;

  @Uint8()
  external int Impersonating;
}

/// {@category Struct}
class MSV1_0_CHANGEPASSWORD_RESPONSE extends Struct {
  @Int32()
  external int MessageType;

  @Uint8()
  external int PasswordInfoValid;

  external DOMAIN_PASSWORD_INFORMATION DomainPasswordInfo;
}

/// {@category Struct}
class MSV1_0_CREDENTIAL_KEY extends Struct {
  @Array(20)
  external Array<Uint8> Data;
}

/// {@category Struct}
class MSV1_0_INTERACTIVE_LOGON extends Struct {
  @Int32()
  external int MessageType;

  external UNICODE_STRING LogonDomainName;

  external UNICODE_STRING UserName;

  external UNICODE_STRING Password;
}

/// {@category Struct}
class MSV1_0_INTERACTIVE_PROFILE extends Struct {
  @Int32()
  external int MessageType;

  @Uint16()
  external int LogonCount;

  @Uint16()
  external int BadPasswordCount;

  @Int64()
  external int LogonTime;

  @Int64()
  external int LogoffTime;

  @Int64()
  external int KickOffTime;

  @Int64()
  external int PasswordLastSet;

  @Int64()
  external int PasswordCanChange;

  @Int64()
  external int PasswordMustChange;

  external UNICODE_STRING LogonScript;

  external UNICODE_STRING HomeDirectory;

  external UNICODE_STRING FullName;

  external UNICODE_STRING ProfilePath;

  external UNICODE_STRING HomeDirectoryDrive;

  external UNICODE_STRING LogonServer;

  @Uint32()
  external int UserFlags;
}

/// {@category Struct}
class MSV1_0_IUM_SUPPLEMENTAL_CREDENTIAL extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int EncryptedCredsSize;

  @Array(1)
  external Array<Uint8> EncryptedCreds;
}

/// {@category Struct}
class MSV1_0_LM20_LOGON extends Struct {
  @Int32()
  external int MessageType;

  external UNICODE_STRING LogonDomainName;

  external UNICODE_STRING UserName;

  external UNICODE_STRING Workstation;

  @Array(8)
  external Array<Uint8> ChallengeToClient;

  external STRING CaseSensitiveChallengeResponse;

  external STRING CaseInsensitiveChallengeResponse;

  @Uint32()
  external int ParameterControl;
}

/// {@category Struct}
class MSV1_0_LM20_LOGON_PROFILE extends Struct {
  @Int32()
  external int MessageType;

  @Int64()
  external int KickOffTime;

  @Int64()
  external int LogoffTime;

  @Uint32()
  external int UserFlags;

  @Array(16)
  external Array<Uint8> UserSessionKey;

  external UNICODE_STRING LogonDomainName;

  @Array(8)
  external Array<Uint8> LanmanSessionKey;

  external UNICODE_STRING LogonServer;

  external UNICODE_STRING UserParameters;
}

/// {@category Struct}
class MSV1_0_NTLM3_RESPONSE extends Struct {
  @Array(16)
  external Array<Uint8> Response;

  @Uint8()
  external int RespType;

  @Uint8()
  external int HiRespType;

  @Uint16()
  external int Flags;

  @Uint32()
  external int MsgWord;

  @Uint64()
  external int TimeStamp;

  @Array(8)
  external Array<Uint8> ChallengeFromClient;

  @Uint32()
  external int AvPairsOff;

  @Array(1)
  external Array<Uint8> Buffer;
}

/// {@category Struct}
class MSV1_0_PASSTHROUGH_REQUEST extends Struct {
  @Int32()
  external int MessageType;

  external UNICODE_STRING DomainName;

  external UNICODE_STRING PackageName;

  @Uint32()
  external int DataLength;

  external Pointer<Uint8> LogonData;

  @Uint32()
  external int Pad;
}

/// {@category Struct}
class MSV1_0_PASSTHROUGH_RESPONSE extends Struct {
  @Int32()
  external int MessageType;

  @Uint32()
  external int Pad;

  @Uint32()
  external int DataLength;

  external Pointer<Uint8> ValidationData;
}

/// {@category Struct}
class MSV1_0_REMOTE_SUPPLEMENTAL_CREDENTIAL extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Flags;

  external MSV1_0_CREDENTIAL_KEY CredentialKey;

  @Int32()
  external int CredentialKeyType;

  @Uint32()
  external int EncryptedCredsSize;

  @Array(1)
  external Array<Uint8> EncryptedCreds;
}

/// {@category Struct}
class MSV1_0_S4U_LOGON extends Struct {
  @Int32()
  external int MessageType;

  @Uint32()
  external int Flags;

  external UNICODE_STRING UserPrincipalName;

  external UNICODE_STRING DomainName;
}

/// {@category Struct}
class MSV1_0_SUBAUTH_LOGON extends Struct {
  @Int32()
  external int MessageType;

  external UNICODE_STRING LogonDomainName;

  external UNICODE_STRING UserName;

  external UNICODE_STRING Workstation;

  @Array(8)
  external Array<Uint8> ChallengeToClient;

  external STRING AuthenticationInfo1;

  external STRING AuthenticationInfo2;

  @Uint32()
  external int ParameterControl;

  @Uint32()
  external int SubAuthPackageId;
}

/// {@category Struct}
class MSV1_0_SUBAUTH_REQUEST extends Struct {
  @Int32()
  external int MessageType;

  @Uint32()
  external int SubAuthPackageId;

  @Uint32()
  external int SubAuthInfoLength;

  external Pointer<Uint8> SubAuthSubmitBuffer;
}

/// {@category Struct}
class MSV1_0_SUBAUTH_RESPONSE extends Struct {
  @Int32()
  external int MessageType;

  @Uint32()
  external int SubAuthInfoLength;

  external Pointer<Uint8> SubAuthReturnBuffer;
}

/// {@category Struct}
class MSV1_0_SUPPLEMENTAL_CREDENTIAL extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Flags;

  @Array(16)
  external Array<Uint8> LmPassword;

  @Array(16)
  external Array<Uint8> NtPassword;
}

/// {@category Struct}
class MSV1_0_SUPPLEMENTAL_CREDENTIAL_V2 extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Flags;

  @Array(16)
  external Array<Uint8> NtPassword;

  external MSV1_0_CREDENTIAL_KEY CredentialKey;
}

/// {@category Struct}
class MSV1_0_SUPPLEMENTAL_CREDENTIAL_V3 extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Flags;

  @Int32()
  external int CredentialKeyType;

  @Array(16)
  external Array<Uint8> NtPassword;

  external MSV1_0_CREDENTIAL_KEY CredentialKey;

  @Array(20)
  external Array<Uint8> ShaPassword;
}

/// {@category Struct}
class MSV1_0_VALIDATION_INFO extends Struct {
  @Int64()
  external int LogoffTime;

  @Int64()
  external int KickoffTime;

  external UNICODE_STRING LogonServer;

  external UNICODE_STRING LogonDomainName;

  external USER_SESSION_KEY SessionKey;

  @Uint8()
  external int Authoritative;

  @Uint32()
  external int UserFlags;

  @Uint32()
  external int WhichFields;

  @Uint32()
  external int UserId;
}

/// {@category Struct}
class NEGOTIATE_CALLER_NAME_REQUEST extends Struct {
  @Uint32()
  external int MessageType;

  external LUID LogonId;
}

/// {@category Struct}
class NEGOTIATE_CALLER_NAME_RESPONSE extends Struct {
  @Uint32()
  external int MessageType;

  external Pointer<Utf16> CallerName;
}

/// {@category Struct}
class NEGOTIATE_PACKAGE_PREFIX extends Struct {
  @IntPtr()
  external int PackageId;

  external Pointer PackageDataA;

  external Pointer PackageDataW;

  @IntPtr()
  external int PrefixLen;

  @Array(32)
  external Array<Uint8> Prefix;
}

/// {@category Struct}
class NEGOTIATE_PACKAGE_PREFIXES extends Struct {
  @Uint32()
  external int MessageType;

  @Uint32()
  external int PrefixCount;

  @Uint32()
  external int Offset;

  @Uint32()
  external int Pad;
}

/// {@category Struct}
class NETLOGON_GENERIC_INFO extends Struct {
  external NETLOGON_LOGON_IDENTITY_INFO Identity;

  external UNICODE_STRING PackageName;

  @Uint32()
  external int DataLength;

  external Pointer<Uint8> LogonData;
}

/// {@category Struct}
class NETLOGON_INTERACTIVE_INFO extends Struct {
  external NETLOGON_LOGON_IDENTITY_INFO Identity;

  external LM_OWF_PASSWORD LmOwfPassword;

  external LM_OWF_PASSWORD NtOwfPassword;
}

/// {@category Struct}
class NETLOGON_LOGON_IDENTITY_INFO extends Struct {
  external UNICODE_STRING LogonDomainName;

  @Uint32()
  external int ParameterControl;

  @Int64()
  external int LogonId;

  external UNICODE_STRING UserName;

  external UNICODE_STRING Workstation;
}

/// {@category Struct}
class NETLOGON_NETWORK_INFO extends Struct {
  external NETLOGON_LOGON_IDENTITY_INFO Identity;

  external CLEAR_BLOCK LmChallenge;

  external STRING NtChallengeResponse;

  external STRING LmChallengeResponse;
}

/// {@category Struct}
class NETLOGON_SERVICE_INFO extends Struct {
  external NETLOGON_LOGON_IDENTITY_INFO Identity;

  external LM_OWF_PASSWORD LmOwfPassword;

  external LM_OWF_PASSWORD NtOwfPassword;
}

/// {@category Struct}
class PKU2U_CERTIFICATE_S4U_LOGON extends Struct {
  @Int32()
  external int MessageType;

  @Uint32()
  external int Flags;

  external UNICODE_STRING UserPrincipalName;

  external UNICODE_STRING DomainName;

  @Uint32()
  external int CertificateLength;

  external Pointer<Uint8> Certificate;
}

/// {@category Struct}
class PKU2U_CERT_BLOB extends Struct {
  @Uint32()
  external int CertOffset;

  @Uint16()
  external int CertLength;
}

/// {@category Struct}
class PKU2U_CREDUI_CONTEXT extends Struct {
  @Uint64()
  external int Version;

  @Uint16()
  external int cbHeaderLength;

  @Uint32()
  external int cbStructureLength;

  @Uint16()
  external int CertArrayCount;

  @Uint32()
  external int CertArrayOffset;
}

/// {@category Struct}
class POLICY_ACCOUNT_DOMAIN_INFO extends Struct {
  external UNICODE_STRING DomainName;

  @IntPtr()
  external int DomainSid;
}

/// {@category Struct}
class POLICY_AUDIT_CATEGORIES_INFO extends Struct {
  @Uint32()
  external int MaximumCategoryCount;

  external Pointer<POLICY_AUDIT_SUBCATEGORIES_INFO> SubCategoriesInfo;
}

/// {@category Struct}
class POLICY_AUDIT_EVENTS_INFO extends Struct {
  @Uint8()
  external int AuditingMode;

  external Pointer<Uint32> EventAuditingOptions;

  @Uint32()
  external int MaximumAuditEventCount;
}

/// {@category Struct}
class POLICY_AUDIT_FULL_QUERY_INFO extends Struct {
  @Uint8()
  external int ShutDownOnFull;

  @Uint8()
  external int LogIsFull;
}

/// {@category Struct}
class POLICY_AUDIT_FULL_SET_INFO extends Struct {
  @Uint8()
  external int ShutDownOnFull;
}

/// {@category Struct}
class POLICY_AUDIT_LOG_INFO extends Struct {
  @Uint32()
  external int AuditLogPercentFull;

  @Uint32()
  external int MaximumLogSize;

  @Int64()
  external int AuditRetentionPeriod;

  @Uint8()
  external int AuditLogFullShutdownInProgress;

  @Int64()
  external int TimeToShutdown;

  @Uint32()
  external int NextAuditRecordId;
}

/// {@category Struct}
class POLICY_AUDIT_SID_ARRAY extends Struct {
  @Uint32()
  external int UsersCount;

  external Pointer<IntPtr> UserSidArray;
}

/// {@category Struct}
class POLICY_AUDIT_SUBCATEGORIES_INFO extends Struct {
  @Uint32()
  external int MaximumSubCategoryCount;

  external Pointer<Uint32> EventAuditingOptions;
}

/// {@category Struct}
class POLICY_DEFAULT_QUOTA_INFO extends Struct {
  external QUOTA_LIMITS QuotaLimits;
}

/// {@category Struct}
class POLICY_DNS_DOMAIN_INFO extends Struct {
  external UNICODE_STRING Name;

  external UNICODE_STRING DnsDomainName;

  external UNICODE_STRING DnsForestName;

  external GUID DomainGuid;

  @IntPtr()
  external int Sid;
}

/// {@category Struct}
class POLICY_DOMAIN_EFS_INFO extends Struct {
  @Uint32()
  external int InfoLength;

  external Pointer<Uint8> EfsBlob;
}

/// {@category Struct}
class POLICY_DOMAIN_KERBEROS_TICKET_INFO extends Struct {
  @Uint32()
  external int AuthenticationOptions;

  @Int64()
  external int MaxServiceTicketAge;

  @Int64()
  external int MaxTicketAge;

  @Int64()
  external int MaxRenewAge;

  @Int64()
  external int MaxClockSkew;

  @Int64()
  external int Reserved;
}

/// {@category Struct}
class POLICY_LSA_SERVER_ROLE_INFO extends Struct {
  @Int32()
  external int LsaServerRole;
}

/// {@category Struct}
class POLICY_MACHINE_ACCT_INFO extends Struct {
  @Uint32()
  external int Rid;

  @IntPtr()
  external int Sid;
}

/// {@category Struct}
class POLICY_MODIFICATION_INFO extends Struct {
  @Int64()
  external int ModifiedId;

  @Int64()
  external int DatabaseCreationTime;
}

/// {@category Struct}
class POLICY_PD_ACCOUNT_INFO extends Struct {
  external UNICODE_STRING Name;
}

/// {@category Struct}
class POLICY_PRIMARY_DOMAIN_INFO extends Struct {
  external UNICODE_STRING Name;

  @IntPtr()
  external int Sid;
}

/// {@category Struct}
class POLICY_REPLICA_SOURCE_INFO extends Struct {
  external UNICODE_STRING ReplicaSource;

  external UNICODE_STRING ReplicaAccountName;
}

/// {@category Struct}
class PctPublicKey extends Struct {
  @Uint32()
  external int Type;

  @Uint32()
  external int cbKey;

  @Array(1)
  external Array<Uint8> pKey;
}

/// {@category Struct}
class SAM_REGISTER_MAPPING_ELEMENT extends Struct {
  external Pointer<Utf8> Original;

  external Pointer<Utf8> Mapped;

  @Uint8()
  external int Continuable;
}

/// {@category Struct}
class SAM_REGISTER_MAPPING_LIST extends Struct {
  @Uint32()
  external int Count;

  external Pointer<SAM_REGISTER_MAPPING_ELEMENT> Elements;
}

/// {@category Struct}
class SAM_REGISTER_MAPPING_TABLE extends Struct {
  @Uint32()
  external int Count;

  external Pointer<SAM_REGISTER_MAPPING_LIST> Lists;
}

/// {@category Struct}
class SCHANNEL_ALERT_TOKEN extends Struct {
  @Uint32()
  external int dwTokenType;

  @Uint32()
  external int dwAlertType;

  @Uint32()
  external int dwAlertNumber;
}

/// {@category Struct}
class SCHANNEL_CERT_HASH extends Struct {
  @Uint32()
  external int dwLength;

  @Uint32()
  external int dwFlags;

  @IntPtr()
  external int hProv;

  @Array(20)
  external Array<Uint8> ShaHash;
}

/// {@category Struct}
class SCHANNEL_CERT_HASH_STORE extends Struct {
  @Uint32()
  external int dwLength;

  @Uint32()
  external int dwFlags;

  @IntPtr()
  external int hProv;

  @Array(20)
  external Array<Uint8> ShaHash;

  @Array(128)
  external Array<Uint16> _pwszStoreName;

  String get pwszStoreName {
    final charCodes = <int>[];
    for (var i = 0; i < 128; i++) {
      charCodes.add(_pwszStoreName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set pwszStoreName(String value) {
    final stringToStore = value.padRight(128, '\x00');
    for (var i = 0; i < 128; i++) {
      _pwszStoreName[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class SCHANNEL_CLIENT_SIGNATURE extends Struct {
  @Uint32()
  external int cbLength;

  @Uint32()
  external int aiHash;

  @Uint32()
  external int cbHash;

  @Array(36)
  external Array<Uint8> HashValue;

  @Array(20)
  external Array<Uint8> CertThumbprint;
}

/// {@category Struct}
class SCHANNEL_CRED extends Struct {
  @Uint32()
  external int dwVersion;

  @Uint32()
  external int cCreds;

  external Pointer<Pointer<CERT_CONTEXT>> paCred;

  external Pointer hRootStore;

  @Uint32()
  external int cMappers;

  external Pointer<Pointer<HMAPPER>> aphMappers;

  @Uint32()
  external int cSupportedAlgs;

  external Pointer<Uint32> palgSupportedAlgs;

  @Uint32()
  external int grbitEnabledProtocols;

  @Uint32()
  external int dwMinimumCipherStrength;

  @Uint32()
  external int dwMaximumCipherStrength;

  @Uint32()
  external int dwSessionLifespan;

  @Uint32()
  external int dwFlags;

  @Uint32()
  external int dwCredFormat;
}

/// {@category Struct}
class SCHANNEL_SESSION_TOKEN extends Struct {
  @Uint32()
  external int dwTokenType;

  @Uint32()
  external int dwFlags;
}

/// {@category Struct}
class SCH_CRED extends Struct {
  @Uint32()
  external int dwVersion;

  @Uint32()
  external int cCreds;

  external Pointer<Pointer> paSecret;

  external Pointer<Pointer> paPublic;

  @Uint32()
  external int cMappers;

  external Pointer<Pointer<HMAPPER>> aphMappers;
}

/// {@category Struct}
class SCH_CRED_PUBLIC_CERTCHAIN extends Struct {
  @Uint32()
  external int dwType;

  @Uint32()
  external int cbCertChain;

  external Pointer<Uint8> pCertChain;
}

/// {@category Struct}
class SCH_CRED_SECRET_CAPI extends Struct {
  @Uint32()
  external int dwType;

  @IntPtr()
  external int hProv;
}

/// {@category Struct}
class SCH_CRED_SECRET_PRIVKEY extends Struct {
  @Uint32()
  external int dwType;

  external Pointer<Uint8> pPrivateKey;

  @Uint32()
  external int cbPrivateKey;

  external Pointer<Utf8> pszPassword;
}

/// {@category Struct}
class SCH_EXTENSION_DATA extends Struct {
  @Uint16()
  external int ExtensionType;

  external Pointer<Uint8> pExtData;

  @Uint32()
  external int cbExtData;
}

/// {@category Struct}
class SECPKG_APP_MODE_INFO extends Struct {
  @Uint32()
  external int UserFunction;

  @IntPtr()
  external int Argument1;

  @IntPtr()
  external int Argument2;

  external SecBuffer UserData;

  @Uint8()
  external int ReturnToLsa;
}

/// {@category Struct}
class SECPKG_BYTE_VECTOR extends Struct {
  @Uint32()
  external int ByteArrayOffset;

  @Uint16()
  external int ByteArrayLength;
}

/// {@category Struct}
class SECPKG_CALL_INFO extends Struct {
  @Uint32()
  external int ProcessId;

  @Uint32()
  external int ThreadId;

  @Uint32()
  external int Attributes;

  @Uint32()
  external int CallCount;

  external Pointer MechOid;
}

/// {@category Struct}
class SECPKG_CALL_PACKAGE_PIN_DC_REQUEST extends Struct {
  @Uint32()
  external int MessageType;

  @Uint32()
  external int Flags;

  external UNICODE_STRING DomainName;

  external UNICODE_STRING DcName;

  @Uint32()
  external int DcFlags;
}

/// {@category Struct}
class SECPKG_CALL_PACKAGE_TRANSFER_CRED_REQUEST extends Struct {
  @Uint32()
  external int MessageType;

  external LUID OriginLogonId;

  external LUID DestinationLogonId;

  @Uint32()
  external int Flags;
}

/// {@category Struct}
class SECPKG_CALL_PACKAGE_UNPIN_ALL_DCS_REQUEST extends Struct {
  @Uint32()
  external int MessageType;

  @Uint32()
  external int Flags;
}

/// {@category Struct}
class SECPKG_CLIENT_INFO extends Struct {
  external LUID LogonId;

  @Uint32()
  external int ProcessID;

  @Uint32()
  external int ThreadID;

  @Uint8()
  external int HasTcbPrivilege;

  @Uint8()
  external int Impersonating;

  @Uint8()
  external int Restricted;

  @Uint8()
  external int ClientFlags;

  @Int32()
  external int ImpersonationLevel;

  @IntPtr()
  external int ClientToken;
}

/// {@category Struct}
class SECPKG_CONTEXT_THUNKS extends Struct {
  @Uint32()
  external int InfoLevelCount;

  @Array(1)
  external Array<Uint32> Levels;
}

/// {@category Struct}
class SECPKG_CREDENTIAL extends Struct {
  @Uint64()
  external int Version;

  @Uint16()
  external int cbHeaderLength;

  @Uint32()
  external int cbStructureLength;

  @Uint32()
  external int ClientProcess;

  @Uint32()
  external int ClientThread;

  external LUID LogonId;

  @IntPtr()
  external int ClientToken;

  @Uint32()
  external int SessionId;

  external LUID ModifiedId;

  @Uint32()
  external int fCredentials;

  @Uint32()
  external int Flags;

  external SECPKG_BYTE_VECTOR PrincipalName;

  external SECPKG_BYTE_VECTOR PackageList;

  external SECPKG_BYTE_VECTOR MarshaledSuppliedCreds;
}

/// {@category Struct}
class SECPKG_DLL_FUNCTIONS extends Struct {
  external Pointer<NativeFunction<PLSA_ALLOCATE_LSA_HEAP>> AllocateHeap;

  external Pointer<NativeFunction<PLSA_FREE_LSA_HEAP>> FreeHeap;

  external Pointer<NativeFunction<PLSA_REGISTER_CALLBACK>> RegisterCallback;

  external Pointer<NativeFunction<PLSA_LOCATE_PKG_BY_ID>> LocatePackageById;
}

/// {@category Struct}
class SECPKG_EVENT_NOTIFY extends Struct {
  @Uint32()
  external int EventClass;

  @Uint32()
  external int Reserved;

  @Uint32()
  external int EventDataSize;

  external Pointer EventData;

  external Pointer PackageParameter;
}

/// {@category Struct}
class SECPKG_EVENT_PACKAGE_CHANGE extends Struct {
  @Uint32()
  external int ChangeType;

  @IntPtr()
  external int PackageId;

  external UNICODE_STRING PackageName;
}

/// {@category Struct}
class SECPKG_EVENT_ROLE_CHANGE extends Struct {
  @Uint32()
  external int PreviousRole;

  @Uint32()
  external int NewRole;
}

/// {@category Struct}
class SECPKG_EXTENDED_INFORMATION extends Struct {
  @Int32()
  external int Class;

  external _SECPKG_EXTENDED_INFORMATION__Info_e__Union Info;
}

/// {@category Struct}
class _SECPKG_EXTENDED_INFORMATION__Info_e__Union extends Union {
  external SECPKG_GSS_INFO GssInfo;

  external SECPKG_CONTEXT_THUNKS ContextThunks;

  external SECPKG_MUTUAL_AUTH_LEVEL MutualAuthLevel;

  external SECPKG_WOW_CLIENT_DLL WowClientDll;

  external SECPKG_EXTRA_OIDS ExtraOids;

  external SECPKG_NEGO2_INFO Nego2Info;
}

extension SECPKG_EXTENDED_INFORMATION_Extension on SECPKG_EXTENDED_INFORMATION {
  SECPKG_GSS_INFO get GssInfo => this.Info.GssInfo;
  set GssInfo(SECPKG_GSS_INFO value) => this.Info.GssInfo = value;

  SECPKG_CONTEXT_THUNKS get ContextThunks => this.Info.ContextThunks;
  set ContextThunks(SECPKG_CONTEXT_THUNKS value) =>
      this.Info.ContextThunks = value;

  SECPKG_MUTUAL_AUTH_LEVEL get MutualAuthLevel => this.Info.MutualAuthLevel;
  set MutualAuthLevel(SECPKG_MUTUAL_AUTH_LEVEL value) =>
      this.Info.MutualAuthLevel = value;

  SECPKG_WOW_CLIENT_DLL get WowClientDll => this.Info.WowClientDll;
  set WowClientDll(SECPKG_WOW_CLIENT_DLL value) =>
      this.Info.WowClientDll = value;

  SECPKG_EXTRA_OIDS get ExtraOids => this.Info.ExtraOids;
  set ExtraOids(SECPKG_EXTRA_OIDS value) => this.Info.ExtraOids = value;

  SECPKG_NEGO2_INFO get Nego2Info => this.Info.Nego2Info;
  set Nego2Info(SECPKG_NEGO2_INFO value) => this.Info.Nego2Info = value;
}

/// {@category Struct}
class SECPKG_EXTRA_OIDS extends Struct {
  @Uint32()
  external int OidCount;

  @Array(1)
  external Array<SECPKG_SERIALIZED_OID> Oids;
}

/// {@category Struct}
class SECPKG_FUNCTION_TABLE extends Struct {
  external Pointer<NativeFunction<PLSA_AP_INITIALIZE_PACKAGE>>
      InitializePackage;

  external Pointer<NativeFunction<PLSA_AP_LOGON_USER>> LogonUserA;

  external Pointer<NativeFunction<PLSA_AP_CALL_PACKAGE>> CallPackage;

  external Pointer<NativeFunction<PLSA_AP_LOGON_TERMINATED>> LogonTerminated;

  external Pointer<NativeFunction<PLSA_AP_CALL_PACKAGE>> CallPackageUntrusted;

  external Pointer<NativeFunction<PLSA_AP_CALL_PACKAGE_PASSTHROUGH>>
      CallPackagePassthrough;

  external Pointer<NativeFunction<PLSA_AP_LOGON_USER_EX>> LogonUserExA;

  external Pointer<NativeFunction<PLSA_AP_LOGON_USER_EX2>> LogonUserEx2;

  external Pointer<NativeFunction<SpInitializeFn>> Initialize;

  external Pointer<NativeFunction<SpShutdownFn>> Shutdown;

  external Pointer<NativeFunction<SpGetInfoFn>> GetInfo;

  external Pointer<NativeFunction<SpAcceptCredentialsFn>> AcceptCredentials;

  external Pointer<NativeFunction<SpAcquireCredentialsHandleFn>>
      AcquireCredentialsHandleA;

  external Pointer<NativeFunction<SpQueryCredentialsAttributesFn>>
      QueryCredentialsAttributesA;

  external Pointer<NativeFunction<SpFreeCredentialsHandleFn>>
      FreeCredentialsHandle;

  external Pointer<NativeFunction<SpSaveCredentialsFn>> SaveCredentials;

  external Pointer<NativeFunction<SpGetCredentialsFn>> GetCredentials;

  external Pointer<NativeFunction<SpDeleteCredentialsFn>> DeleteCredentials;

  external Pointer<NativeFunction<SpInitLsaModeContextFn>> InitLsaModeContext;

  external Pointer<NativeFunction<SpAcceptLsaModeContextFn>>
      AcceptLsaModeContext;

  external Pointer<NativeFunction<SpDeleteContextFn>> DeleteContext;

  external Pointer<NativeFunction<SpApplyControlTokenFn>> ApplyControlToken;

  external Pointer<NativeFunction<SpGetUserInfoFn>> GetUserInfo;

  external Pointer<NativeFunction<SpGetExtendedInformationFn>>
      GetExtendedInformation;

  external Pointer<NativeFunction<SpQueryContextAttributesFn>>
      QueryContextAttributesA;

  external Pointer<NativeFunction<SpAddCredentialsFn>> AddCredentialsA;

  external Pointer<NativeFunction<SpSetExtendedInformationFn>>
      SetExtendedInformation;

  external Pointer<NativeFunction<SpSetContextAttributesFn>>
      SetContextAttributesA;

  external Pointer<NativeFunction<SpSetCredentialsAttributesFn>>
      SetCredentialsAttributesA;

  external Pointer<NativeFunction<SpChangeAccountPasswordFn>>
      ChangeAccountPasswordA;

  external Pointer<NativeFunction<SpQueryMetaDataFn>> QueryMetaData;

  external Pointer<NativeFunction<SpExchangeMetaDataFn>> ExchangeMetaData;

  external Pointer<NativeFunction<SpGetCredUIContextFn>> GetCredUIContext;

  external Pointer<NativeFunction<SpUpdateCredentialsFn>> UpdateCredentials;

  external Pointer<NativeFunction<SpValidateTargetInfoFn>> ValidateTargetInfo;

  external Pointer<NativeFunction<LSA_AP_POST_LOGON_USER>> PostLogonUser;

  external Pointer<NativeFunction<SpGetRemoteCredGuardLogonBufferFn>>
      GetRemoteCredGuardLogonBuffer;

  external Pointer<NativeFunction<SpGetRemoteCredGuardSupplementalCredsFn>>
      GetRemoteCredGuardSupplementalCreds;

  external Pointer<NativeFunction<SpGetTbalSupplementalCredsFn>>
      GetTbalSupplementalCreds;

  external Pointer<NativeFunction<PLSA_AP_LOGON_USER_EX3>> LogonUserEx3;

  external Pointer<NativeFunction<PLSA_AP_PRE_LOGON_USER_SURROGATE>>
      PreLogonUserSurrogate;

  external Pointer<NativeFunction<PLSA_AP_POST_LOGON_USER_SURROGATE>>
      PostLogonUserSurrogate;
}

/// {@category Struct}
class SECPKG_GSS_INFO extends Struct {
  @Uint32()
  external int EncodedIdLength;

  @Array(4)
  external Array<Uint8> EncodedId;
}

/// {@category Struct}
class SECPKG_KERNEL_FUNCTIONS extends Struct {
  external Pointer<NativeFunction<PLSA_ALLOCATE_LSA_HEAP>> AllocateHeap;

  external Pointer<NativeFunction<PLSA_FREE_LSA_HEAP>> FreeHeap;

  external Pointer<NativeFunction<PKSEC_CREATE_CONTEXT_LIST>> CreateContextList;

  external Pointer<NativeFunction<PKSEC_INSERT_LIST_ENTRY>> InsertListEntry;

  external Pointer<NativeFunction<PKSEC_REFERENCE_LIST_ENTRY>>
      ReferenceListEntry;

  external Pointer<NativeFunction<PKSEC_DEREFERENCE_LIST_ENTRY>>
      DereferenceListEntry;

  external Pointer<NativeFunction<PKSEC_SERIALIZE_WINNT_AUTH_DATA>>
      SerializeWinntAuthData;

  external Pointer<NativeFunction<PKSEC_SERIALIZE_SCHANNEL_AUTH_DATA>>
      SerializeSchannelAuthData;

  external Pointer<NativeFunction<PKSEC_LOCATE_PKG_BY_ID>> LocatePackageById;
}

/// {@category Struct}
class SECPKG_KERNEL_FUNCTION_TABLE extends Struct {
  external Pointer<NativeFunction<KspInitPackageFn>> Initialize;

  external Pointer<NativeFunction<KspDeleteContextFn>> DeleteContext;

  external Pointer<NativeFunction<KspInitContextFn>> InitContext;

  external Pointer<NativeFunction<KspMapHandleFn>> MapHandle;

  external Pointer<NativeFunction<KspMakeSignatureFn>> Sign;

  external Pointer<NativeFunction<KspVerifySignatureFn>> Verify;

  external Pointer<NativeFunction<KspSealMessageFn>> Seal;

  external Pointer<NativeFunction<KspUnsealMessageFn>> Unseal;

  external Pointer<NativeFunction<KspGetTokenFn>> GetToken;

  external Pointer<NativeFunction<KspQueryAttributesFn>> QueryAttributes;

  external Pointer<NativeFunction<KspCompleteTokenFn>> CompleteToken;

  external Pointer<NativeFunction<SpExportSecurityContextFn>> ExportContext;

  external Pointer<NativeFunction<SpImportSecurityContextFn>> ImportContext;

  external Pointer<NativeFunction<KspSetPagingModeFn>> SetPackagePagingMode;

  external Pointer<NativeFunction<KspSerializeAuthDataFn>> SerializeAuthData;
}

/// {@category Struct}
class SECPKG_MUTUAL_AUTH_LEVEL extends Struct {
  @Uint32()
  external int MutualAuthLevel;
}

/// {@category Struct}
class SECPKG_NEGO2_INFO extends Struct {
  @Array(16)
  external Array<Uint8> AuthScheme;

  @Uint32()
  external int PackageFlags;
}

/// {@category Struct}
class SECPKG_PARAMETERS extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int MachineState;

  @Uint32()
  external int SetupMode;

  @IntPtr()
  external int DomainSid;

  external UNICODE_STRING DomainName;

  external UNICODE_STRING DnsDomainName;

  external GUID DomainGuid;
}

/// {@category Struct}
class SECPKG_POST_LOGON_USER_INFO extends Struct {
  @Uint32()
  external int Flags;

  external LUID LogonId;

  external LUID LinkedLogonId;
}

/// {@category Struct}
class SECPKG_PRIMARY_CRED extends Struct {
  external LUID LogonId;

  external UNICODE_STRING DownlevelName;

  external UNICODE_STRING DomainName;

  external UNICODE_STRING Password;

  external UNICODE_STRING OldPassword;

  @IntPtr()
  external int UserSid;

  @Uint32()
  external int Flags;

  external UNICODE_STRING DnsDomainName;

  external UNICODE_STRING Upn;

  external UNICODE_STRING LogonServer;

  external UNICODE_STRING Spare1;

  external UNICODE_STRING Spare2;

  external UNICODE_STRING Spare3;

  external UNICODE_STRING Spare4;
}

/// {@category Struct}
class SECPKG_PRIMARY_CRED_EX extends Struct {
  external LUID LogonId;

  external UNICODE_STRING DownlevelName;

  external UNICODE_STRING DomainName;

  external UNICODE_STRING Password;

  external UNICODE_STRING OldPassword;

  @IntPtr()
  external int UserSid;

  @Uint32()
  external int Flags;

  external UNICODE_STRING DnsDomainName;

  external UNICODE_STRING Upn;

  external UNICODE_STRING LogonServer;

  external UNICODE_STRING Spare1;

  external UNICODE_STRING Spare2;

  external UNICODE_STRING Spare3;

  external UNICODE_STRING Spare4;

  @IntPtr()
  external int PackageId;

  external LUID PrevLogonId;

  @Uint32()
  external int FlagsEx;
}

/// {@category Struct}
class SECPKG_REDIRECTED_LOGON_BUFFER extends Struct {
  external GUID RedirectedLogonGuid;

  @IntPtr()
  external int RedirectedLogonHandle;

  external Pointer<NativeFunction<PLSA_REDIRECTED_LOGON_INIT>> Init;

  external Pointer<NativeFunction<PLSA_REDIRECTED_LOGON_CALLBACK>> Callback;

  external Pointer<NativeFunction<PLSA_REDIRECTED_LOGON_CLEANUP_CALLBACK>>
      CleanupCallback;

  external Pointer<NativeFunction<PLSA_REDIRECTED_LOGON_GET_LOGON_CREDS>>
      GetLogonCreds;

  external Pointer<NativeFunction<PLSA_REDIRECTED_LOGON_GET_SUPP_CREDS>>
      GetSupplementalCreds;
}

/// {@category Struct}
class SECPKG_SERIALIZED_OID extends Struct {
  @Uint32()
  external int OidLength;

  @Uint32()
  external int OidAttributes;

  @Array(32)
  external Array<Uint8> OidValue;
}

/// {@category Struct}
class SECPKG_SHORT_VECTOR extends Struct {
  @Uint32()
  external int ShortArrayOffset;

  @Uint16()
  external int ShortArrayCount;
}

/// {@category Struct}
class SECPKG_SUPPLEMENTAL_CRED extends Struct {
  external UNICODE_STRING PackageName;

  @Uint32()
  external int CredentialSize;

  external Pointer<Uint8> Credentials;
}

/// {@category Struct}
class SECPKG_SUPPLEMENTAL_CRED_ARRAY extends Struct {
  @Uint32()
  external int CredentialCount;

  @Array(1)
  external Array<SECPKG_SUPPLEMENTAL_CRED> Credentials;
}

/// {@category Struct}
class SECPKG_SUPPLIED_CREDENTIAL extends Struct {
  @Uint16()
  external int cbHeaderLength;

  @Uint16()
  external int cbStructureLength;

  external SECPKG_SHORT_VECTOR UserName;

  external SECPKG_SHORT_VECTOR DomainName;

  external SECPKG_BYTE_VECTOR PackedCredentials;

  @Uint32()
  external int CredFlags;
}

/// {@category Struct}
class SECPKG_SURROGATE_LOGON extends Struct {
  @Uint32()
  external int Version;

  external LUID SurrogateLogonID;

  @Uint32()
  external int EntryCount;

  external Pointer<SECPKG_SURROGATE_LOGON_ENTRY> Entries;
}

/// {@category Struct}
class SECPKG_SURROGATE_LOGON_ENTRY extends Struct {
  external GUID Type;

  external Pointer Data;
}

/// {@category Struct}
class SECPKG_TARGETINFO extends Struct {
  @IntPtr()
  external int DomainSid;

  external Pointer<Utf16> ComputerName;
}

/// {@category Struct}
class SECPKG_USER_FUNCTION_TABLE extends Struct {
  external Pointer<NativeFunction<SpInstanceInitFn>> InstanceInit;

  external Pointer<NativeFunction<SpInitUserModeContextFn>> InitUserModeContext;

  external Pointer<NativeFunction<SpMakeSignatureFn>> MakeSignature;

  external Pointer<NativeFunction<SpVerifySignatureFn>> VerifySignature;

  external Pointer<NativeFunction<SpSealMessageFn>> SealMessage;

  external Pointer<NativeFunction<SpUnsealMessageFn>> UnsealMessage;

  external Pointer<NativeFunction<SpGetContextTokenFn>> GetContextToken;

  external Pointer<NativeFunction<SpQueryContextAttributesFn>>
      QueryContextAttributesA;

  external Pointer<NativeFunction<SpCompleteAuthTokenFn>> CompleteAuthToken;

  external Pointer<NativeFunction<SpDeleteContextFn>> DeleteUserModeContext;

  external Pointer<NativeFunction<SpFormatCredentialsFn>> FormatCredentials;

  external Pointer<NativeFunction<SpMarshallSupplementalCredsFn>>
      MarshallSupplementalCreds;

  external Pointer<NativeFunction<SpExportSecurityContextFn>> ExportContext;

  external Pointer<NativeFunction<SpImportSecurityContextFn>> ImportContext;

  external Pointer<NativeFunction<SpMarshalAttributeDataFn>>
      MarshalAttributeData;
}

/// {@category Struct}
class SECPKG_WOW_CLIENT_DLL extends Struct {
  external UNICODE_STRING WowClientDllPath;
}

/// {@category Struct}
class SECURITY_LOGON_SESSION_DATA extends Struct {
  @Uint32()
  external int Size;

  external LUID LogonId;

  external UNICODE_STRING UserName;

  external UNICODE_STRING LogonDomain;

  external UNICODE_STRING AuthenticationPackage;

  @Uint32()
  external int LogonType;

  @Uint32()
  external int Session;

  @IntPtr()
  external int Sid;

  @Int64()
  external int LogonTime;

  external UNICODE_STRING LogonServer;

  external UNICODE_STRING DnsDomainName;

  external UNICODE_STRING Upn;

  @Uint32()
  external int UserFlags;

  external LSA_LAST_INTER_LOGON_INFO LastLogonInfo;

  external UNICODE_STRING LogonScript;

  external UNICODE_STRING ProfilePath;

  external UNICODE_STRING HomeDirectory;

  external UNICODE_STRING HomeDirectoryDrive;

  @Int64()
  external int LogoffTime;

  @Int64()
  external int KickOffTime;

  @Int64()
  external int PasswordLastSet;

  @Int64()
  external int PasswordCanChange;

  @Int64()
  external int PasswordMustChange;
}

/// {@category Struct}
class SECURITY_PACKAGE_OPTIONS extends Struct {
  @Uint32()
  external int Size;

  @Uint32()
  external int Type;

  @Uint32()
  external int Flags;

  @Uint32()
  external int SignatureSize;

  external Pointer Signature;
}

/// {@category Struct}
class SECURITY_USER_DATA extends Struct {
  external UNICODE_STRING UserName;

  external UNICODE_STRING LogonDomainName;

  external UNICODE_STRING LogonServer;

  @IntPtr()
  external int pSid;
}

/// {@category Struct}
class SEC_APPLICATION_PROTOCOLS extends Struct {
  @Uint32()
  external int ProtocolListsSize;

  @Array(1)
  external Array<SEC_APPLICATION_PROTOCOL_LIST> ProtocolLists;
}

/// {@category Struct}
class SEC_APPLICATION_PROTOCOL_LIST extends Struct {
  @Int32()
  external int ProtoNegoExt;

  @Uint16()
  external int ProtocolListSize;

  @Array(1)
  external Array<Uint8> ProtocolList;
}

/// {@category Struct}
class SEC_CHANNEL_BINDINGS extends Struct {
  @Uint32()
  external int dwInitiatorAddrType;

  @Uint32()
  external int cbInitiatorLength;

  @Uint32()
  external int dwInitiatorOffset;

  @Uint32()
  external int dwAcceptorAddrType;

  @Uint32()
  external int cbAcceptorLength;

  @Uint32()
  external int dwAcceptorOffset;

  @Uint32()
  external int cbApplicationDataLength;

  @Uint32()
  external int dwApplicationDataOffset;
}

/// {@category Struct}
class SEC_DTLS_MTU extends Struct {
  @Uint16()
  external int PathMTU;
}

/// {@category Struct}
class SEC_FLAGS extends Struct {
  @Uint64()
  external int Flags;
}

/// {@category Struct}
class SEC_NEGOTIATION_INFO extends Struct {
  @Uint32()
  external int Size;

  @Uint32()
  external int NameLength;

  external Pointer<Uint16> Name;

  external Pointer Reserved;
}

/// {@category Struct}
class SEC_PRESHAREDKEY extends Struct {
  @Uint16()
  external int KeySize;

  @Array(1)
  external Array<Uint8> Key;
}

/// {@category Struct}
class SEC_PRESHAREDKEY_IDENTITY extends Struct {
  @Uint16()
  external int KeyIdentitySize;

  @Array(1)
  external Array<Uint8> KeyIdentity;
}

/// {@category Struct}
class SEC_SRTP_MASTER_KEY_IDENTIFIER extends Struct {
  @Uint8()
  external int MasterKeyIdentifierSize;

  @Array(1)
  external Array<Uint8> MasterKeyIdentifier;
}

/// {@category Struct}
class SEC_SRTP_PROTECTION_PROFILES extends Struct {
  @Uint16()
  external int ProfilesSize;

  @Array(1)
  external Array<Uint16> ProfilesList;
}

/// {@category Struct}
class SEC_TOKEN_BINDING extends Struct {
  @Uint8()
  external int MajorVersion;

  @Uint8()
  external int MinorVersion;

  @Uint16()
  external int KeyParametersSize;

  @Array(1)
  external Array<Uint8> KeyParameters;
}

/// {@category Struct}
class SEC_TRAFFIC_SECRETS extends Struct {
  @Array(64)
  external Array<Uint16> _SymmetricAlgId;

  String get SymmetricAlgId {
    final charCodes = <int>[];
    for (var i = 0; i < 64; i++) {
      charCodes.add(_SymmetricAlgId[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set SymmetricAlgId(String value) {
    final stringToStore = value.padRight(64, '\x00');
    for (var i = 0; i < 64; i++) {
      _SymmetricAlgId[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(64)
  external Array<Uint16> _ChainingMode;

  String get ChainingMode {
    final charCodes = <int>[];
    for (var i = 0; i < 64; i++) {
      charCodes.add(_ChainingMode[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set ChainingMode(String value) {
    final stringToStore = value.padRight(64, '\x00');
    for (var i = 0; i < 64; i++) {
      _ChainingMode[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(64)
  external Array<Uint16> _HashAlgId;

  String get HashAlgId {
    final charCodes = <int>[];
    for (var i = 0; i < 64; i++) {
      charCodes.add(_HashAlgId[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set HashAlgId(String value) {
    final stringToStore = value.padRight(64, '\x00');
    for (var i = 0; i < 64; i++) {
      _HashAlgId[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint16()
  external int KeySize;

  @Uint16()
  external int IvSize;

  @Uint16()
  external int MsgSequenceStart;

  @Uint16()
  external int MsgSequenceEnd;

  @Int32()
  external int TrafficSecretType;

  @Uint16()
  external int TrafficSecretSize;

  @Array(1)
  external Array<Uint8> TrafficSecret;
}

/// {@category Struct}
class SEC_WINNT_AUTH_IDENTITY32 extends Struct {
  @Uint32()
  external int User;

  @Uint32()
  external int UserLength;

  @Uint32()
  external int Domain;

  @Uint32()
  external int DomainLength;

  @Uint32()
  external int Password;

  @Uint32()
  external int PasswordLength;

  @Uint32()
  external int Flags;
}

/// {@category Struct}
class SEC_WINNT_AUTH_IDENTITY_EX2 extends Struct {
  @Uint32()
  external int Version;

  @Uint16()
  external int cbHeaderLength;

  @Uint32()
  external int cbStructureLength;

  @Uint32()
  external int UserOffset;

  @Uint16()
  external int UserLength;

  @Uint32()
  external int DomainOffset;

  @Uint16()
  external int DomainLength;

  @Uint32()
  external int PackedCredentialsOffset;

  @Uint16()
  external int PackedCredentialsLength;

  @Uint32()
  external int Flags;

  @Uint32()
  external int PackageListOffset;

  @Uint16()
  external int PackageListLength;
}

/// {@category Struct}
class SEC_WINNT_AUTH_IDENTITY_EX32 extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Length;

  @Uint32()
  external int User;

  @Uint32()
  external int UserLength;

  @Uint32()
  external int Domain;

  @Uint32()
  external int DomainLength;

  @Uint32()
  external int Password;

  @Uint32()
  external int PasswordLength;

  @Uint32()
  external int Flags;

  @Uint32()
  external int PackageList;

  @Uint32()
  external int PackageListLength;
}

/// {@category Struct}
class SEC_WINNT_AUTH_IDENTITY_EX extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Length;

  external Pointer<Uint16> User;

  @Uint32()
  external int UserLength;

  external Pointer<Uint16> Domain;

  @Uint32()
  external int DomainLength;

  external Pointer<Uint16> Password;

  @Uint32()
  external int PasswordLength;

  @Uint32()
  external int Flags;

  external Pointer<Uint16> PackageList;

  @Uint32()
  external int PackageListLength;
}

/// {@category Struct}
class SEC_WINNT_AUTH_IDENTITY_INFO extends Union {
  external SEC_WINNT_AUTH_IDENTITY_EX AuthIdExw;

  external SEC_WINNT_AUTH_IDENTITY_EX AuthIdExa;

  external SEC_WINNT_AUTH_IDENTITY_ AuthId_a;

  external SEC_WINNT_AUTH_IDENTITY_ AuthId_w;

  external SEC_WINNT_AUTH_IDENTITY_EX2 AuthIdEx2;
}

/// {@category Struct}
class SEND_GENERIC_TLS_EXTENSION extends Struct {
  @Uint16()
  external int ExtensionType;

  @Uint16()
  external int HandshakeType;

  @Uint32()
  external int Flags;

  @Uint16()
  external int BufferSize;

  @Array(1)
  external Array<Uint8> Buffer;
}

/// {@category Struct}
class SE_ADT_ACCESS_REASON extends Struct {
  @Uint32()
  external int AccessMask;

  @Array(32)
  external Array<Uint32> AccessReasons;

  @Uint32()
  external int ObjectTypeIndex;

  @Uint32()
  external int AccessGranted;

  external Pointer<SECURITY_DESCRIPTOR> SecurityDescriptor;
}

/// {@category Struct}
class SE_ADT_CLAIMS extends Struct {
  @Uint32()
  external int Length;

  external Pointer Claims;
}

/// {@category Struct}
class SE_ADT_OBJECT_TYPE extends Struct {
  external GUID ObjectType;

  @Uint16()
  external int Flags;

  @Uint16()
  external int Level;

  @Uint32()
  external int AccessMask;
}

/// {@category Struct}
class SE_ADT_PARAMETER_ARRAY extends Struct {
  @Uint32()
  external int CategoryId;

  @Uint32()
  external int AuditId;

  @Uint32()
  external int ParameterCount;

  @Uint32()
  external int Length;

  @Uint16()
  external int FlatSubCategoryId;

  @Uint16()
  external int Type;

  @Uint32()
  external int Flags;

  @Array(32)
  external Array<SE_ADT_PARAMETER_ARRAY_ENTRY> Parameters;
}

/// {@category Struct}
class SE_ADT_PARAMETER_ARRAY_ENTRY extends Struct {
  @Int32()
  external int Type;

  @Uint32()
  external int Length;

  @Array(2)
  external Array<IntPtr> Data;

  external Pointer Address;
}

/// {@category Struct}
class SE_ADT_PARAMETER_ARRAY_EX extends Struct {
  @Uint32()
  external int CategoryId;

  @Uint32()
  external int AuditId;

  @Uint32()
  external int Version;

  @Uint32()
  external int ParameterCount;

  @Uint32()
  external int Length;

  @Uint16()
  external int FlatSubCategoryId;

  @Uint16()
  external int Type;

  @Uint32()
  external int Flags;

  @Array(32)
  external Array<SE_ADT_PARAMETER_ARRAY_ENTRY> Parameters;
}

/// {@category Struct}
class SL_ACTIVATION_INFO_HEADER extends Struct {
  @Uint32()
  external int cbSize;

  @Int32()
  external int type;
}

/// {@category Struct}
class SL_AD_ACTIVATION_INFO extends Struct {
  external SL_ACTIVATION_INFO_HEADER header;

  external Pointer<Utf16> pwszProductKey;

  external Pointer<Utf16> pwszActivationObjectName;
}

/// {@category Struct}
class SL_LICENSING_STATUS extends Struct {
  external GUID SkuId;

  @Int32()
  external int eStatus;

  @Uint32()
  external int dwGraceTime;

  @Uint32()
  external int dwTotalGraceDays;

  @Int32()
  external int hrReason;

  @Uint64()
  external int qwValidityExpiration;
}

/// {@category Struct}
class SL_NONGENUINE_UI_OPTIONS extends Struct {
  @Uint32()
  external int cbSize;

  external Pointer<GUID> pComponentId;

  @Int32()
  external int hResultUI;
}

/// {@category Struct}
class SL_SYSTEM_POLICY_INFORMATION extends Struct {
  @Array(2)
  external Array<Pointer> Reserved1;

  @Array(3)
  external Array<Uint32> Reserved2;
}

/// {@category Struct}
class SR_SECURITY_DESCRIPTOR extends Struct {
  @Uint32()
  external int Length;

  external Pointer<Uint8> SecurityDescriptor;
}

/// {@category Struct}
class SSL_CREDENTIAL_CERTIFICATE extends Struct {
  @Uint32()
  external int cbPrivateKey;

  external Pointer<Uint8> pPrivateKey;

  @Uint32()
  external int cbCertificate;

  external Pointer<Uint8> pCertificate;

  external Pointer<Utf8> pszPassword;
}

/// {@category Struct}
class SUBSCRIBE_GENERIC_TLS_EXTENSION extends Struct {
  @Uint32()
  external int Flags;

  @Uint32()
  external int SubscriptionsCount;

  @Array(1)
  external Array<TLS_EXTENSION_SUBSCRIPTION> Subscriptions;
}

/// {@category Struct}
class SecBuffer extends Struct {
  @Uint32()
  external int cbBuffer;

  @Uint32()
  external int BufferType;

  external Pointer pvBuffer;
}

/// {@category Struct}
class SecBufferDesc extends Struct {
  @Uint32()
  external int ulVersion;

  @Uint32()
  external int cBuffers;

  external Pointer<SecBuffer> pBuffers;
}

/// {@category Struct}
class SecPkgContext_AccessToken extends Struct {
  external Pointer AccessToken;
}

/// {@category Struct}
class SecPkgContext_ApplicationProtocol extends Struct {
  @Int32()
  external int ProtoNegoStatus;

  @Int32()
  external int ProtoNegoExt;

  @Uint8()
  external int ProtocolIdSize;

  @Array(255)
  external Array<Uint8> ProtocolId;
}

/// {@category Struct}
class SecPkgContext_Authority extends Struct {
  external Pointer<Uint16> sAuthorityName;
}

/// {@category Struct}
class SecPkgContext_AuthzID extends Struct {
  @Uint32()
  external int AuthzIDLength;

  external Pointer<Utf8> AuthzID;
}

/// {@category Struct}
class SecPkgContext_Bindings extends Struct {
  @Uint32()
  external int BindingsLength;

  external Pointer<SEC_CHANNEL_BINDINGS> Bindings;
}

/// {@category Struct}
class SecPkgContext_CertInfo extends Struct {
  @Uint32()
  external int dwVersion;

  @Uint32()
  external int cbSubjectName;

  external Pointer<Utf16> pwszSubjectName;

  @Uint32()
  external int cbIssuerName;

  external Pointer<Utf16> pwszIssuerName;

  @Uint32()
  external int dwKeySize;
}

/// {@category Struct}
class SecPkgContext_CertificateValidationResult extends Struct {
  @Uint32()
  external int dwChainErrorStatus;

  @Int32()
  external int hrVerifyChainStatus;
}

/// {@category Struct}
class SecPkgContext_Certificates extends Struct {
  @Uint32()
  external int cCertificates;

  @Uint32()
  external int cbCertificateChain;

  external Pointer<Uint8> pbCertificateChain;
}

/// {@category Struct}
class SecPkgContext_CipherInfo extends Struct {
  @Uint32()
  external int dwVersion;

  @Uint32()
  external int dwProtocol;

  @Uint32()
  external int dwCipherSuite;

  @Uint32()
  external int dwBaseCipherSuite;

  @Array(64)
  external Array<Uint16> _szCipherSuite;

  String get szCipherSuite {
    final charCodes = <int>[];
    for (var i = 0; i < 64; i++) {
      charCodes.add(_szCipherSuite[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szCipherSuite(String value) {
    final stringToStore = value.padRight(64, '\x00');
    for (var i = 0; i < 64; i++) {
      _szCipherSuite[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(64)
  external Array<Uint16> _szCipher;

  String get szCipher {
    final charCodes = <int>[];
    for (var i = 0; i < 64; i++) {
      charCodes.add(_szCipher[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szCipher(String value) {
    final stringToStore = value.padRight(64, '\x00');
    for (var i = 0; i < 64; i++) {
      _szCipher[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint32()
  external int dwCipherLen;

  @Uint32()
  external int dwCipherBlockLen;

  @Array(64)
  external Array<Uint16> _szHash;

  String get szHash {
    final charCodes = <int>[];
    for (var i = 0; i < 64; i++) {
      charCodes.add(_szHash[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szHash(String value) {
    final stringToStore = value.padRight(64, '\x00');
    for (var i = 0; i < 64; i++) {
      _szHash[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint32()
  external int dwHashLen;

  @Array(64)
  external Array<Uint16> _szExchange;

  String get szExchange {
    final charCodes = <int>[];
    for (var i = 0; i < 64; i++) {
      charCodes.add(_szExchange[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szExchange(String value) {
    final stringToStore = value.padRight(64, '\x00');
    for (var i = 0; i < 64; i++) {
      _szExchange[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint32()
  external int dwMinExchangeLen;

  @Uint32()
  external int dwMaxExchangeLen;

  @Array(64)
  external Array<Uint16> _szCertificate;

  String get szCertificate {
    final charCodes = <int>[];
    for (var i = 0; i < 64; i++) {
      charCodes.add(_szCertificate[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szCertificate(String value) {
    final stringToStore = value.padRight(64, '\x00');
    for (var i = 0; i < 64; i++) {
      _szCertificate[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint32()
  external int dwKeyType;
}

/// {@category Struct}
class SecPkgContext_ClientCertPolicyResult extends Struct {
  @Int32()
  external int dwPolicyResult;

  external GUID guidPolicyId;
}

/// {@category Struct}
class SecPkgContext_ClientSpecifiedTarget extends Struct {
  external Pointer<Uint16> sTargetName;
}

/// {@category Struct}
class SecPkgContext_ConnectionInfo extends Struct {
  @Uint32()
  external int dwProtocol;

  @Uint32()
  external int aiCipher;

  @Uint32()
  external int dwCipherStrength;

  @Uint32()
  external int aiHash;

  @Uint32()
  external int dwHashStrength;

  @Uint32()
  external int aiExch;

  @Uint32()
  external int dwExchStrength;
}

/// {@category Struct}
class SecPkgContext_ConnectionInfoEx extends Struct {
  @Uint32()
  external int dwVersion;

  @Uint32()
  external int dwProtocol;

  @Array(64)
  external Array<Uint16> _szCipher;

  String get szCipher {
    final charCodes = <int>[];
    for (var i = 0; i < 64; i++) {
      charCodes.add(_szCipher[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szCipher(String value) {
    final stringToStore = value.padRight(64, '\x00');
    for (var i = 0; i < 64; i++) {
      _szCipher[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint32()
  external int dwCipherStrength;

  @Array(64)
  external Array<Uint16> _szHash;

  String get szHash {
    final charCodes = <int>[];
    for (var i = 0; i < 64; i++) {
      charCodes.add(_szHash[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szHash(String value) {
    final stringToStore = value.padRight(64, '\x00');
    for (var i = 0; i < 64; i++) {
      _szHash[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint32()
  external int dwHashStrength;

  @Array(64)
  external Array<Uint16> _szExchange;

  String get szExchange {
    final charCodes = <int>[];
    for (var i = 0; i < 64; i++) {
      charCodes.add(_szExchange[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szExchange(String value) {
    final stringToStore = value.padRight(64, '\x00');
    for (var i = 0; i < 64; i++) {
      _szExchange[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint32()
  external int dwExchStrength;
}

/// {@category Struct}
class SecPkgContext_CredInfo extends Struct {
  @Int32()
  external int CredClass;

  @Uint32()
  external int IsPromptingNeeded;
}

/// {@category Struct}
class SecPkgContext_CredentialName extends Struct {
  @Uint32()
  external int CredentialType;

  external Pointer<Uint16> sCredentialName;
}

/// {@category Struct}
class SecPkgContext_DceInfo extends Struct {
  @Uint32()
  external int AuthzSvc;

  external Pointer pPac;
}

/// {@category Struct}
class SecPkgContext_EapKeyBlock extends Struct {
  @Array(128)
  external Array<Uint8> rgbKeys;

  @Array(64)
  external Array<Uint8> rgbIVs;
}

/// {@category Struct}
class SecPkgContext_EapPrfInfo extends Struct {
  @Uint32()
  external int dwVersion;

  @Uint32()
  external int cbPrfData;

  external Pointer<Uint8> pbPrfData;
}

/// {@category Struct}
class SecPkgContext_EarlyStart extends Struct {
  @Uint32()
  external int dwEarlyStartFlags;
}

/// {@category Struct}
class SecPkgContext_Flags extends Struct {
  @Uint32()
  external int Flags;
}

/// {@category Struct}
class SecPkgContext_IssuerListInfoEx extends Struct {
  external Pointer<CRYPTOAPI_BLOB> aIssuers;

  @Uint32()
  external int cIssuers;
}

/// {@category Struct}
class SecPkgContext_KeyInfo extends Struct {
  external Pointer<Uint16> sSignatureAlgorithmName;

  external Pointer<Uint16> sEncryptAlgorithmName;

  @Uint32()
  external int KeySize;

  @Uint32()
  external int SignatureAlgorithm;

  @Uint32()
  external int EncryptAlgorithm;
}

/// {@category Struct}
class SecPkgContext_KeyingMaterial extends Struct {
  @Uint32()
  external int cbKeyingMaterial;

  external Pointer<Uint8> pbKeyingMaterial;
}

/// {@category Struct}
class SecPkgContext_KeyingMaterialInfo extends Struct {
  @Uint16()
  external int cbLabel;

  external Pointer<Utf8> pszLabel;

  @Uint16()
  external int cbContextValue;

  external Pointer<Uint8> pbContextValue;

  @Uint32()
  external int cbKeyingMaterial;
}

/// {@category Struct}
class SecPkgContext_KeyingMaterial_Inproc extends Struct {
  @Uint16()
  external int cbLabel;

  external Pointer<Utf8> pszLabel;

  @Uint16()
  external int cbContextValue;

  external Pointer<Uint8> pbContextValue;

  @Uint32()
  external int cbKeyingMaterial;

  external Pointer<Uint8> pbKeyingMaterial;
}

/// {@category Struct}
class SecPkgContext_LastClientTokenStatus extends Struct {
  @Int32()
  external int LastClientTokenStatus;
}

/// {@category Struct}
class SecPkgContext_Lifespan extends Struct {
  @Int64()
  external int tsStart;

  @Int64()
  external int tsExpiry;
}

/// {@category Struct}
class SecPkgContext_LocalCredentialInfo extends Struct {
  @Uint32()
  external int cbCertificateChain;

  external Pointer<Uint8> pbCertificateChain;

  @Uint32()
  external int cCertificates;

  @Uint32()
  external int fFlags;

  @Uint32()
  external int dwBits;
}

/// {@category Struct}
class SecPkgContext_LogoffTime extends Struct {
  @Int64()
  external int tsLogoffTime;
}

/// {@category Struct}
class SecPkgContext_MappedCredAttr extends Struct {
  @Uint32()
  external int dwAttribute;

  external Pointer pvBuffer;
}

/// {@category Struct}
class SecPkgContext_Names extends Struct {
  external Pointer<Uint16> sUserName;
}

/// {@category Struct}
class SecPkgContext_NativeNames extends Struct {
  external Pointer<Uint16> sClientName;

  external Pointer<Uint16> sServerName;
}

/// {@category Struct}
class SecPkgContext_NegoKeys extends Struct {
  @Uint32()
  external int KeyType;

  @Uint16()
  external int KeyLength;

  external Pointer<Uint8> KeyValue;

  @Uint32()
  external int VerifyKeyType;

  @Uint16()
  external int VerifyKeyLength;

  external Pointer<Uint8> VerifyKeyValue;
}

/// {@category Struct}
class SecPkgContext_NegoPackageInfo extends Struct {
  @Uint32()
  external int PackageMask;
}

/// {@category Struct}
class SecPkgContext_NegoStatus extends Struct {
  @Uint32()
  external int LastStatus;
}

/// {@category Struct}
class SecPkgContext_NegotiatedTlsExtensions extends Struct {
  @Uint32()
  external int ExtensionsCount;

  external Pointer<Uint16> Extensions;
}

/// {@category Struct}
class SecPkgContext_NegotiationInfo extends Struct {
  external Pointer<SecPkgInfo> PackageInfo;

  @Uint32()
  external int NegotiationState;
}

/// {@category Struct}
class SecPkgContext_PackageInfo extends Struct {
  external Pointer<SecPkgInfo> PackageInfo;
}

/// {@category Struct}
class SecPkgContext_PasswordExpiry extends Struct {
  @Int64()
  external int tsPasswordExpires;
}

/// {@category Struct}
class SecPkgContext_ProtoInfo extends Struct {
  external Pointer<Uint16> sProtocolName;

  @Uint32()
  external int majorVersion;

  @Uint32()
  external int minorVersion;
}

/// {@category Struct}
class SecPkgContext_RemoteCredentialInfo extends Struct {
  @Uint32()
  external int cbCertificateChain;

  external Pointer<Uint8> pbCertificateChain;

  @Uint32()
  external int cCertificates;

  @Uint32()
  external int fFlags;

  @Uint32()
  external int dwBits;
}

/// {@category Struct}
class SecPkgContext_SaslContext extends Struct {
  external Pointer SaslContext;
}

/// {@category Struct}
class SecPkgContext_SessionAppData extends Struct {
  @Uint32()
  external int dwFlags;

  @Uint32()
  external int cbAppData;

  external Pointer<Uint8> pbAppData;
}

/// {@category Struct}
class SecPkgContext_SessionInfo extends Struct {
  @Uint32()
  external int dwFlags;

  @Uint32()
  external int cbSessionId;

  @Array(32)
  external Array<Uint8> rgbSessionId;
}

/// {@category Struct}
class SecPkgContext_SessionKey extends Struct {
  @Uint32()
  external int SessionKeyLength;

  external Pointer<Uint8> SessionKey;
}

/// {@category Struct}
class SecPkgContext_Sizes extends Struct {
  @Uint32()
  external int cbMaxToken;

  @Uint32()
  external int cbMaxSignature;

  @Uint32()
  external int cbBlockSize;

  @Uint32()
  external int cbSecurityTrailer;
}

/// {@category Struct}
class SecPkgContext_SrtpParameters extends Struct {
  @Uint16()
  external int ProtectionProfile;

  @Uint8()
  external int MasterKeyIdentifierSize;

  external Pointer<Uint8> MasterKeyIdentifier;
}

/// {@category Struct}
class SecPkgContext_StreamSizes extends Struct {
  @Uint32()
  external int cbHeader;

  @Uint32()
  external int cbTrailer;

  @Uint32()
  external int cbMaximumMessage;

  @Uint32()
  external int cBuffers;

  @Uint32()
  external int cbBlockSize;
}

/// {@category Struct}
class SecPkgContext_SubjectAttributes extends Struct {
  external Pointer AttributeInfo;
}

/// {@category Struct}
class SecPkgContext_SupportedSignatures extends Struct {
  @Uint16()
  external int cSignatureAndHashAlgorithms;

  external Pointer<Uint16> pSignatureAndHashAlgorithms;
}

/// {@category Struct}
class SecPkgContext_Target extends Struct {
  @Uint32()
  external int TargetLength;

  external Pointer<Utf8> Target;
}

/// {@category Struct}
class SecPkgContext_TargetInformation extends Struct {
  @Uint32()
  external int MarshalledTargetInfoLength;

  external Pointer<Uint8> MarshalledTargetInfo;
}

/// {@category Struct}
class SecPkgContext_TokenBinding extends Struct {
  @Uint8()
  external int MajorVersion;

  @Uint8()
  external int MinorVersion;

  @Uint16()
  external int KeyParametersSize;

  external Pointer<Uint8> KeyParameters;
}

/// {@category Struct}
class SecPkgContext_UiInfo extends Struct {
  @IntPtr()
  external int hParentWindow;
}

/// {@category Struct}
class SecPkgContext_UserFlags extends Struct {
  @Uint32()
  external int UserFlags;
}

/// {@category Struct}
class SecPkgCred_CipherStrengths extends Struct {
  @Uint32()
  external int dwMinimumCipherStrength;

  @Uint32()
  external int dwMaximumCipherStrength;
}

/// {@category Struct}
class SecPkgCred_ClientCertPolicy extends Struct {
  @Uint32()
  external int dwFlags;

  external GUID guidPolicyId;

  @Uint32()
  external int dwCertFlags;

  @Uint32()
  external int dwUrlRetrievalTimeout;

  @Int32()
  external int fCheckRevocationFreshnessTime;

  @Uint32()
  external int dwRevocationFreshnessTime;

  @Int32()
  external int fOmitUsageCheck;

  external Pointer<Utf16> pwszSslCtlStoreName;

  external Pointer<Utf16> pwszSslCtlIdentifier;
}

/// {@category Struct}
class SecPkgCred_SessionTicketKey extends Struct {
  @Uint32()
  external int TicketInfoVersion;

  @Array(16)
  external Array<Uint8> KeyId;

  @Array(64)
  external Array<Uint8> KeyingMaterial;

  @Uint8()
  external int KeyingMaterialSize;
}

/// {@category Struct}
class SecPkgCred_SessionTicketKeys extends Struct {
  @Uint32()
  external int cSessionTicketKeys;

  external Pointer<SecPkgCred_SessionTicketKey> pSessionTicketKeys;
}

/// {@category Struct}
class SecPkgCred_SupportedAlgs extends Struct {
  @Uint32()
  external int cSupportedAlgs;

  external Pointer<Uint32> palgSupportedAlgs;
}

/// {@category Struct}
class SecPkgCred_SupportedProtocols extends Struct {
  @Uint32()
  external int grbitProtocol;
}

/// {@category Struct}
class SecPkgCredentials_Cert extends Struct {
  @Uint32()
  external int EncodedCertSize;

  external Pointer<Uint8> EncodedCert;
}

/// {@category Struct}
class SecPkgCredentials_KdcProxySettings extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Flags;

  @Uint16()
  external int ProxyServerOffset;

  @Uint16()
  external int ProxyServerLength;

  @Uint16()
  external int ClientTlsCredOffset;

  @Uint16()
  external int ClientTlsCredLength;
}

/// {@category Struct}
class SecPkgCredentials_Names extends Struct {
  external Pointer<Uint16> sUserName;
}

/// {@category Struct}
class SecPkgCredentials_SSIProvider extends Struct {
  external Pointer<Uint16> sProviderName;

  @Uint32()
  external int ProviderInfoLength;

  external Pointer<Utf8> ProviderInfo;
}

/// {@category Struct}
class SecPkgInfo extends Struct {
  @Uint32()
  external int fCapabilities;

  @Uint16()
  external int wVersion;

  @Uint16()
  external int wRPCID;

  @Uint32()
  external int cbMaxToken;

  external Pointer<Uint16> Name;

  external Pointer<Uint16> Comment;
}

/// {@category Struct}
class SecurityFunctionTable extends Struct {
  @Uint32()
  external int dwVersion;

  external Pointer<NativeFunction<ENUMERATE_SECURITY_PACKAGES_FN_W>>
      EnumerateSecurityPackagesW;

  external Pointer<NativeFunction<QUERY_CREDENTIALS_ATTRIBUTES_FN_W>>
      QueryCredentialsAttributesW;

  external Pointer<NativeFunction<ACQUIRE_CREDENTIALS_HANDLE_FN_W>>
      AcquireCredentialsHandleW;

  external Pointer<NativeFunction<FREE_CREDENTIALS_HANDLE_FN>>
      FreeCredentialsHandle;

  external Pointer Reserved2;

  external Pointer<NativeFunction<INITIALIZE_SECURITY_CONTEXT_FN_W>>
      InitializeSecurityContextW;

  external Pointer<NativeFunction<ACCEPT_SECURITY_CONTEXT_FN>>
      AcceptSecurityContext;

  external Pointer<NativeFunction<COMPLETE_AUTH_TOKEN_FN>> CompleteAuthToken;

  external Pointer<NativeFunction<DELETE_SECURITY_CONTEXT_FN>>
      DeleteSecurityContext;

  external Pointer<NativeFunction<APPLY_CONTROL_TOKEN_FN>> ApplyControlToken;

  external Pointer<NativeFunction<QUERY_CONTEXT_ATTRIBUTES_FN_W>>
      QueryContextAttributesW;

  external Pointer<NativeFunction<IMPERSONATE_SECURITY_CONTEXT_FN>>
      ImpersonateSecurityContext;

  external Pointer<NativeFunction<REVERT_SECURITY_CONTEXT_FN>>
      RevertSecurityContext;

  external Pointer<NativeFunction<MAKE_SIGNATURE_FN>> MakeSignature;

  external Pointer<NativeFunction<VERIFY_SIGNATURE_FN>> VerifySignature;

  external Pointer<NativeFunction<FREE_CONTEXT_BUFFER_FN>> FreeContextBuffer;

  external Pointer<NativeFunction<QUERY_SECURITY_PACKAGE_INFO_FN_W>>
      QuerySecurityPackageInfoW;

  external Pointer Reserved3;

  external Pointer Reserved4;

  external Pointer<NativeFunction<EXPORT_SECURITY_CONTEXT_FN>>
      ExportSecurityContext;

  external Pointer<NativeFunction<IMPORT_SECURITY_CONTEXT_FN_W>>
      ImportSecurityContextW;

  external Pointer<NativeFunction<ADD_CREDENTIALS_FN_W>> AddCredentialsW;

  external Pointer Reserved8;

  external Pointer<NativeFunction<QUERY_SECURITY_CONTEXT_TOKEN_FN>>
      QuerySecurityContextToken;

  external Pointer<NativeFunction<ENCRYPT_MESSAGE_FN>> EncryptMessage;

  external Pointer<NativeFunction<DECRYPT_MESSAGE_FN>> DecryptMessage;

  external Pointer<NativeFunction<SET_CONTEXT_ATTRIBUTES_FN_W>>
      SetContextAttributesW;

  external Pointer<NativeFunction<SET_CREDENTIALS_ATTRIBUTES_FN_W>>
      SetCredentialsAttributesW;

  external Pointer<NativeFunction<CHANGE_PASSWORD_FN_W>> ChangeAccountPasswordW;

  external Pointer<NativeFunction<QUERY_CONTEXT_ATTRIBUTES_EX_FN_W>>
      QueryContextAttributesExW;

  external Pointer<NativeFunction<QUERY_CREDENTIALS_ATTRIBUTES_EX_FN_W>>
      QueryCredentialsAttributesExW;
}

/// {@category Struct}
class TLS_EXTENSION_SUBSCRIPTION extends Struct {
  @Uint16()
  external int ExtensionType;

  @Uint16()
  external int HandshakeType;
}

/// {@category Struct}
class TOKENBINDING_IDENTIFIER extends Struct {
  @Uint8()
  external int keyType;
}

/// {@category Struct}
class TOKENBINDING_KEY_TYPES extends Struct {
  @Uint32()
  external int keyCount;

  external Pointer<Int32> keyType;
}

/// {@category Struct}
class TOKENBINDING_RESULT_DATA extends Struct {
  @Int32()
  external int bindingType;

  @Uint32()
  external int identifierSize;

  external Pointer<TOKENBINDING_IDENTIFIER> identifierData;

  @Int32()
  external int extensionFormat;

  @Uint32()
  external int extensionSize;

  external Pointer extensionData;
}

/// {@category Struct}
class TOKENBINDING_RESULT_LIST extends Struct {
  @Uint32()
  external int resultCount;

  external Pointer<TOKENBINDING_RESULT_DATA> resultData;
}

/// {@category Struct}
class TRUSTED_CONTROLLERS_INFO extends Struct {
  @Uint32()
  external int Entries;

  external Pointer<UNICODE_STRING> Names;
}

/// {@category Struct}
class TRUSTED_DOMAIN_AUTH_INFORMATION extends Struct {
  @Uint32()
  external int IncomingAuthInfos;

  external Pointer<LSA_AUTH_INFORMATION> IncomingAuthenticationInformation;

  external Pointer<LSA_AUTH_INFORMATION>
      IncomingPreviousAuthenticationInformation;

  @Uint32()
  external int OutgoingAuthInfos;

  external Pointer<LSA_AUTH_INFORMATION> OutgoingAuthenticationInformation;

  external Pointer<LSA_AUTH_INFORMATION>
      OutgoingPreviousAuthenticationInformation;
}

/// {@category Struct}
class TRUSTED_DOMAIN_FULL_INFORMATION extends Struct {
  external TRUSTED_DOMAIN_INFORMATION_EX Information;

  external TRUSTED_POSIX_OFFSET_INFO PosixOffset;

  external TRUSTED_DOMAIN_AUTH_INFORMATION AuthInformation;
}

/// {@category Struct}
class TRUSTED_DOMAIN_FULL_INFORMATION2 extends Struct {
  external TRUSTED_DOMAIN_INFORMATION_EX2 Information;

  external TRUSTED_POSIX_OFFSET_INFO PosixOffset;

  external TRUSTED_DOMAIN_AUTH_INFORMATION AuthInformation;
}

/// {@category Struct}
class TRUSTED_DOMAIN_INFORMATION_EX extends Struct {
  external UNICODE_STRING Name;

  external UNICODE_STRING FlatName;

  @IntPtr()
  external int Sid;

  @Uint32()
  external int TrustDirection;

  @Uint32()
  external int TrustType;

  @Uint32()
  external int TrustAttributes;
}

/// {@category Struct}
class TRUSTED_DOMAIN_INFORMATION_EX2 extends Struct {
  external UNICODE_STRING Name;

  external UNICODE_STRING FlatName;

  @IntPtr()
  external int Sid;

  @Uint32()
  external int TrustDirection;

  @Uint32()
  external int TrustType;

  @Uint32()
  external int TrustAttributes;

  @Uint32()
  external int ForestTrustLength;

  external Pointer<Uint8> ForestTrustInfo;
}

/// {@category Struct}
class TRUSTED_DOMAIN_NAME_INFO extends Struct {
  external UNICODE_STRING Name;
}

/// {@category Struct}
class TRUSTED_DOMAIN_SUPPORTED_ENCRYPTION_TYPES extends Struct {
  @Uint32()
  external int SupportedEncryptionTypes;
}

/// {@category Struct}
class TRUSTED_PASSWORD_INFO extends Struct {
  external UNICODE_STRING Password;

  external UNICODE_STRING OldPassword;
}

/// {@category Struct}
class TRUSTED_POSIX_OFFSET_INFO extends Struct {
  @Uint32()
  external int Offset;
}

/// {@category Struct}
class USER_ALL_INFORMATION extends Struct {
  @Int64()
  external int LastLogon;

  @Int64()
  external int LastLogoff;

  @Int64()
  external int PasswordLastSet;

  @Int64()
  external int AccountExpires;

  @Int64()
  external int PasswordCanChange;

  @Int64()
  external int PasswordMustChange;

  external UNICODE_STRING UserName;

  external UNICODE_STRING FullName;

  external UNICODE_STRING HomeDirectory;

  external UNICODE_STRING HomeDirectoryDrive;

  external UNICODE_STRING ScriptPath;

  external UNICODE_STRING ProfilePath;

  external UNICODE_STRING AdminComment;

  external UNICODE_STRING WorkStations;

  external UNICODE_STRING UserComment;

  external UNICODE_STRING Parameters;

  external UNICODE_STRING LmPassword;

  external UNICODE_STRING NtPassword;

  external UNICODE_STRING PrivateData;

  external SR_SECURITY_DESCRIPTOR SecurityDescriptor;

  @Uint32()
  external int UserId;

  @Uint32()
  external int PrimaryGroupId;

  @Uint32()
  external int UserAccountControl;

  @Uint32()
  external int WhichFields;

  external LOGON_HOURS LogonHours;

  @Uint16()
  external int BadPasswordCount;

  @Uint16()
  external int LogonCount;

  @Uint16()
  external int CountryCode;

  @Uint16()
  external int CodePage;

  @Uint8()
  external int LmPasswordPresent;

  @Uint8()
  external int NtPasswordPresent;

  @Uint8()
  external int PasswordExpired;

  @Uint8()
  external int PrivateDataSensitive;
}

/// {@category Struct}
class USER_SESSION_KEY extends Struct {
  @Array(2)
  external Array<CYPHER_BLOCK> data;
}

/// {@category Struct}
class X509Certificate extends Struct {
  @Uint32()
  external int Version;

  @Array(4)
  external Array<Uint32> SerialNumber;

  @Uint32()
  external int SignatureAlgorithm;

  external FILETIME ValidFrom;

  external FILETIME ValidUntil;

  external Pointer<Utf8> pszIssuer;

  external Pointer<Utf8> pszSubject;

  external Pointer<PctPublicKey> pPublicKey;
}

/// {@category Struct}
class HMAPPER extends Opaque {}
