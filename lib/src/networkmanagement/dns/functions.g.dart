// Maps FFI prototypes onto the corresponding Win32 API function calls

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: directives_ordering, unnecessary_getters_setters
// ignore_for_file: unused_field, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'enums.g.dart';

import '../../combase.dart';
import '../../guid.dart';
import '../../networkmanagement/dns/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../networkmanagement/dns/callbacks.g.dart'; // -----------------------------------------------------------------------

// dnsapi.dll
// -----------------------------------------------------------------------
final _dnsapi = DynamicLibrary.open('dnsapi.dll');

int DnsAcquireContextHandle_(
  int CredentialFlags,
  Pointer Credentials,
  Pointer<IntPtr> pContext,
) =>
    _DnsAcquireContextHandle_(
      CredentialFlags,
      Credentials,
      pContext,
    );

late final _DnsAcquireContextHandle_ = _dnsapi.lookupFunction<
    Int32 Function(
  Uint32 CredentialFlags,
  Pointer Credentials,
  Pointer<IntPtr> pContext,
),
    int Function(
  int CredentialFlags,
  Pointer Credentials,
  Pointer<IntPtr> pContext,
)>('DnsAcquireContextHandle_W');

int DnsCancelQuery(
  Pointer<DNS_QUERY_CANCEL> pCancelHandle,
) =>
    _DnsCancelQuery(
      pCancelHandle,
    );

late final _DnsCancelQuery = _dnsapi.lookupFunction<
    Int32 Function(
  Pointer<DNS_QUERY_CANCEL> pCancelHandle,
),
    int Function(
  Pointer<DNS_QUERY_CANCEL> pCancelHandle,
)>('DnsCancelQuery');

int DnsConnectionDeletePolicyEntries(
  int PolicyEntryTag,
) =>
    _DnsConnectionDeletePolicyEntries(
      PolicyEntryTag,
    );

late final _DnsConnectionDeletePolicyEntries = _dnsapi.lookupFunction<
    Uint32 Function(
  Int32 PolicyEntryTag,
),
    int Function(
  int PolicyEntryTag,
)>('DnsConnectionDeletePolicyEntries');

int DnsConnectionDeleteProxyInfo(
  Pointer<Utf16> pwszConnectionName,
  int Type,
) =>
    _DnsConnectionDeleteProxyInfo(
      pwszConnectionName,
      Type,
    );

late final _DnsConnectionDeleteProxyInfo = _dnsapi.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> pwszConnectionName,
  Int32 Type,
),
    int Function(
  Pointer<Utf16> pwszConnectionName,
  int Type,
)>('DnsConnectionDeleteProxyInfo');

void DnsConnectionFreeNameList(
  Pointer<DNS_CONNECTION_NAME_LIST> pNameList,
) =>
    _DnsConnectionFreeNameList(
      pNameList,
    );

late final _DnsConnectionFreeNameList = _dnsapi.lookupFunction<
    Void Function(
  Pointer<DNS_CONNECTION_NAME_LIST> pNameList,
),
    void Function(
  Pointer<DNS_CONNECTION_NAME_LIST> pNameList,
)>('DnsConnectionFreeNameList');

void DnsConnectionFreeProxyInfo(
  Pointer<DNS_CONNECTION_PROXY_INFO> pProxyInfo,
) =>
    _DnsConnectionFreeProxyInfo(
      pProxyInfo,
    );

late final _DnsConnectionFreeProxyInfo = _dnsapi.lookupFunction<
    Void Function(
  Pointer<DNS_CONNECTION_PROXY_INFO> pProxyInfo,
),
    void Function(
  Pointer<DNS_CONNECTION_PROXY_INFO> pProxyInfo,
)>('DnsConnectionFreeProxyInfo');

void DnsConnectionFreeProxyInfoEx(
  Pointer<DNS_CONNECTION_PROXY_INFO_EX> pProxyInfoEx,
) =>
    _DnsConnectionFreeProxyInfoEx(
      pProxyInfoEx,
    );

late final _DnsConnectionFreeProxyInfoEx = _dnsapi.lookupFunction<
    Void Function(
  Pointer<DNS_CONNECTION_PROXY_INFO_EX> pProxyInfoEx,
),
    void Function(
  Pointer<DNS_CONNECTION_PROXY_INFO_EX> pProxyInfoEx,
)>('DnsConnectionFreeProxyInfoEx');

void DnsConnectionFreeProxyList(
  Pointer<DNS_CONNECTION_PROXY_LIST> pProxyList,
) =>
    _DnsConnectionFreeProxyList(
      pProxyList,
    );

late final _DnsConnectionFreeProxyList = _dnsapi.lookupFunction<
    Void Function(
  Pointer<DNS_CONNECTION_PROXY_LIST> pProxyList,
),
    void Function(
  Pointer<DNS_CONNECTION_PROXY_LIST> pProxyList,
)>('DnsConnectionFreeProxyList');

int DnsConnectionGetNameList(
  Pointer<DNS_CONNECTION_NAME_LIST> pNameList,
) =>
    _DnsConnectionGetNameList(
      pNameList,
    );

late final _DnsConnectionGetNameList = _dnsapi.lookupFunction<
    Uint32 Function(
  Pointer<DNS_CONNECTION_NAME_LIST> pNameList,
),
    int Function(
  Pointer<DNS_CONNECTION_NAME_LIST> pNameList,
)>('DnsConnectionGetNameList');

int DnsConnectionGetProxyInfo(
  Pointer<Utf16> pwszConnectionName,
  int Type,
  Pointer<DNS_CONNECTION_PROXY_INFO> pProxyInfo,
) =>
    _DnsConnectionGetProxyInfo(
      pwszConnectionName,
      Type,
      pProxyInfo,
    );

late final _DnsConnectionGetProxyInfo = _dnsapi.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> pwszConnectionName,
  Int32 Type,
  Pointer<DNS_CONNECTION_PROXY_INFO> pProxyInfo,
),
    int Function(
  Pointer<Utf16> pwszConnectionName,
  int Type,
  Pointer<DNS_CONNECTION_PROXY_INFO> pProxyInfo,
)>('DnsConnectionGetProxyInfo');

int DnsConnectionGetProxyInfoForHostUrl(
  Pointer<Utf16> pwszHostUrl,
  Pointer<Uint8> pSelectionContext,
  int dwSelectionContextLength,
  int dwExplicitInterfaceIndex,
  Pointer<DNS_CONNECTION_PROXY_INFO_EX> pProxyInfoEx,
) =>
    _DnsConnectionGetProxyInfoForHostUrl(
      pwszHostUrl,
      pSelectionContext,
      dwSelectionContextLength,
      dwExplicitInterfaceIndex,
      pProxyInfoEx,
    );

late final _DnsConnectionGetProxyInfoForHostUrl = _dnsapi.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> pwszHostUrl,
  Pointer<Uint8> pSelectionContext,
  Uint32 dwSelectionContextLength,
  Uint32 dwExplicitInterfaceIndex,
  Pointer<DNS_CONNECTION_PROXY_INFO_EX> pProxyInfoEx,
),
    int Function(
  Pointer<Utf16> pwszHostUrl,
  Pointer<Uint8> pSelectionContext,
  int dwSelectionContextLength,
  int dwExplicitInterfaceIndex,
  Pointer<DNS_CONNECTION_PROXY_INFO_EX> pProxyInfoEx,
)>('DnsConnectionGetProxyInfoForHostUrl');

int DnsConnectionGetProxyList(
  Pointer<Utf16> pwszConnectionName,
  Pointer<DNS_CONNECTION_PROXY_LIST> pProxyList,
) =>
    _DnsConnectionGetProxyList(
      pwszConnectionName,
      pProxyList,
    );

late final _DnsConnectionGetProxyList = _dnsapi.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> pwszConnectionName,
  Pointer<DNS_CONNECTION_PROXY_LIST> pProxyList,
),
    int Function(
  Pointer<Utf16> pwszConnectionName,
  Pointer<DNS_CONNECTION_PROXY_LIST> pProxyList,
)>('DnsConnectionGetProxyList');

int DnsConnectionSetPolicyEntries(
  int PolicyEntryTag,
  Pointer<DNS_CONNECTION_POLICY_ENTRY_LIST> pPolicyEntryList,
) =>
    _DnsConnectionSetPolicyEntries(
      PolicyEntryTag,
      pPolicyEntryList,
    );

late final _DnsConnectionSetPolicyEntries = _dnsapi.lookupFunction<
    Uint32 Function(
  Int32 PolicyEntryTag,
  Pointer<DNS_CONNECTION_POLICY_ENTRY_LIST> pPolicyEntryList,
),
    int Function(
  int PolicyEntryTag,
  Pointer<DNS_CONNECTION_POLICY_ENTRY_LIST> pPolicyEntryList,
)>('DnsConnectionSetPolicyEntries');

int DnsConnectionSetProxyInfo(
  Pointer<Utf16> pwszConnectionName,
  int Type,
  Pointer<DNS_CONNECTION_PROXY_INFO> pProxyInfo,
) =>
    _DnsConnectionSetProxyInfo(
      pwszConnectionName,
      Type,
      pProxyInfo,
    );

late final _DnsConnectionSetProxyInfo = _dnsapi.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> pwszConnectionName,
  Int32 Type,
  Pointer<DNS_CONNECTION_PROXY_INFO> pProxyInfo,
),
    int Function(
  Pointer<Utf16> pwszConnectionName,
  int Type,
  Pointer<DNS_CONNECTION_PROXY_INFO> pProxyInfo,
)>('DnsConnectionSetProxyInfo');

int DnsConnectionUpdateIfIndexTable(
  Pointer<DNS_CONNECTION_IFINDEX_LIST> pConnectionIfIndexEntries,
) =>
    _DnsConnectionUpdateIfIndexTable(
      pConnectionIfIndexEntries,
    );

late final _DnsConnectionUpdateIfIndexTable = _dnsapi.lookupFunction<
    Uint32 Function(
  Pointer<DNS_CONNECTION_IFINDEX_LIST> pConnectionIfIndexEntries,
),
    int Function(
  Pointer<DNS_CONNECTION_IFINDEX_LIST> pConnectionIfIndexEntries,
)>('DnsConnectionUpdateIfIndexTable');

int DnsExtractRecordsFromMessage_UTF8(
  Pointer<DNS_MESSAGE_BUFFER> pDnsBuffer,
  int wMessageLength,
  Pointer<Pointer<DNS_RECORD>> ppRecord,
) =>
    _DnsExtractRecordsFromMessage_UTF8(
      pDnsBuffer,
      wMessageLength,
      ppRecord,
    );

late final _DnsExtractRecordsFromMessage_UTF8 = _dnsapi.lookupFunction<
    Int32 Function(
  Pointer<DNS_MESSAGE_BUFFER> pDnsBuffer,
  Uint16 wMessageLength,
  Pointer<Pointer<DNS_RECORD>> ppRecord,
),
    int Function(
  Pointer<DNS_MESSAGE_BUFFER> pDnsBuffer,
  int wMessageLength,
  Pointer<Pointer<DNS_RECORD>> ppRecord,
)>('DnsExtractRecordsFromMessage_UTF8');

int DnsExtractRecordsFromMessage_(
  Pointer<DNS_MESSAGE_BUFFER> pDnsBuffer,
  int wMessageLength,
  Pointer<Pointer<DNS_RECORD>> ppRecord,
) =>
    _DnsExtractRecordsFromMessage_(
      pDnsBuffer,
      wMessageLength,
      ppRecord,
    );

late final _DnsExtractRecordsFromMessage_ = _dnsapi.lookupFunction<
    Int32 Function(
  Pointer<DNS_MESSAGE_BUFFER> pDnsBuffer,
  Uint16 wMessageLength,
  Pointer<Pointer<DNS_RECORD>> ppRecord,
),
    int Function(
  Pointer<DNS_MESSAGE_BUFFER> pDnsBuffer,
  int wMessageLength,
  Pointer<Pointer<DNS_RECORD>> ppRecord,
)>('DnsExtractRecordsFromMessage_W');

void DnsFree(
  Pointer pData,
  int FreeType,
) =>
    _DnsFree(
      pData,
      FreeType,
    );

late final _DnsFree = _dnsapi.lookupFunction<
    Void Function(
  Pointer pData,
  Int32 FreeType,
),
    void Function(
  Pointer pData,
  int FreeType,
)>('DnsFree');

void DnsFreeCustomServers(
  Pointer<Uint32> pcServers,
  Pointer<Pointer<DNS_CUSTOM_SERVER>> ppServers,
) =>
    _DnsFreeCustomServers(
      pcServers,
      ppServers,
    );

late final _DnsFreeCustomServers = _dnsapi.lookupFunction<
    Void Function(
  Pointer<Uint32> pcServers,
  Pointer<Pointer<DNS_CUSTOM_SERVER>> ppServers,
),
    void Function(
  Pointer<Uint32> pcServers,
  Pointer<Pointer<DNS_CUSTOM_SERVER>> ppServers,
)>('DnsFreeCustomServers');

void DnsFreeProxyName(
  Pointer<Utf16> proxyName,
) =>
    _DnsFreeProxyName(
      proxyName,
    );

late final _DnsFreeProxyName = _dnsapi.lookupFunction<
    Void Function(
  Pointer<Utf16> proxyName,
),
    void Function(
  Pointer<Utf16> proxyName,
)>('DnsFreeProxyName');

int DnsGetApplicationSettings(
  Pointer<Uint32> pcServers,
  Pointer<Pointer<DNS_CUSTOM_SERVER>> ppDefaultServers,
  Pointer<DNS_APPLICATION_SETTINGS> pSettings,
) =>
    _DnsGetApplicationSettings(
      pcServers,
      ppDefaultServers,
      pSettings,
    );

late final _DnsGetApplicationSettings = _dnsapi.lookupFunction<
    Uint32 Function(
  Pointer<Uint32> pcServers,
  Pointer<Pointer<DNS_CUSTOM_SERVER>> ppDefaultServers,
  Pointer<DNS_APPLICATION_SETTINGS> pSettings,
),
    int Function(
  Pointer<Uint32> pcServers,
  Pointer<Pointer<DNS_CUSTOM_SERVER>> ppDefaultServers,
  Pointer<DNS_APPLICATION_SETTINGS> pSettings,
)>('DnsGetApplicationSettings');

int DnsGetProxyInformation(
  Pointer<Utf16> hostName,
  Pointer<DNS_PROXY_INFORMATION> proxyInformation,
  Pointer<DNS_PROXY_INFORMATION> defaultProxyInformation,
  Pointer<NativeFunction<DNS_PROXY_COMPLETION_ROUTINE>> completionRoutine,
  Pointer completionContext,
) =>
    _DnsGetProxyInformation(
      hostName,
      proxyInformation,
      defaultProxyInformation,
      completionRoutine,
      completionContext,
    );

late final _DnsGetProxyInformation = _dnsapi.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> hostName,
  Pointer<DNS_PROXY_INFORMATION> proxyInformation,
  Pointer<DNS_PROXY_INFORMATION> defaultProxyInformation,
  Pointer<NativeFunction<DNS_PROXY_COMPLETION_ROUTINE>> completionRoutine,
  Pointer completionContext,
),
    int Function(
  Pointer<Utf16> hostName,
  Pointer<DNS_PROXY_INFORMATION> proxyInformation,
  Pointer<DNS_PROXY_INFORMATION> defaultProxyInformation,
  Pointer<NativeFunction<DNS_PROXY_COMPLETION_ROUTINE>> completionRoutine,
  Pointer completionContext,
)>('DnsGetProxyInformation');

int DnsModifyRecordsInSet_UTF8(
  Pointer<DNS_RECORD> pAddRecords,
  Pointer<DNS_RECORD> pDeleteRecords,
  int Options,
  int hCredentials,
  Pointer pExtraList,
  Pointer pReserved,
) =>
    _DnsModifyRecordsInSet_UTF8(
      pAddRecords,
      pDeleteRecords,
      Options,
      hCredentials,
      pExtraList,
      pReserved,
    );

late final _DnsModifyRecordsInSet_UTF8 = _dnsapi.lookupFunction<
    Int32 Function(
  Pointer<DNS_RECORD> pAddRecords,
  Pointer<DNS_RECORD> pDeleteRecords,
  Uint32 Options,
  IntPtr hCredentials,
  Pointer pExtraList,
  Pointer pReserved,
),
    int Function(
  Pointer<DNS_RECORD> pAddRecords,
  Pointer<DNS_RECORD> pDeleteRecords,
  int Options,
  int hCredentials,
  Pointer pExtraList,
  Pointer pReserved,
)>('DnsModifyRecordsInSet_UTF8');

int DnsModifyRecordsInSet_(
  Pointer<DNS_RECORD> pAddRecords,
  Pointer<DNS_RECORD> pDeleteRecords,
  int Options,
  int hCredentials,
  Pointer pExtraList,
  Pointer pReserved,
) =>
    _DnsModifyRecordsInSet_(
      pAddRecords,
      pDeleteRecords,
      Options,
      hCredentials,
      pExtraList,
      pReserved,
    );

late final _DnsModifyRecordsInSet_ = _dnsapi.lookupFunction<
    Int32 Function(
  Pointer<DNS_RECORD> pAddRecords,
  Pointer<DNS_RECORD> pDeleteRecords,
  Uint32 Options,
  IntPtr hCredentials,
  Pointer pExtraList,
  Pointer pReserved,
),
    int Function(
  Pointer<DNS_RECORD> pAddRecords,
  Pointer<DNS_RECORD> pDeleteRecords,
  int Options,
  int hCredentials,
  Pointer pExtraList,
  Pointer pReserved,
)>('DnsModifyRecordsInSet_W');

int DnsNameCompare_(
  Pointer<Utf16> pName1,
  Pointer<Utf16> pName2,
) =>
    _DnsNameCompare_(
      pName1,
      pName2,
    );

late final _DnsNameCompare_ = _dnsapi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pName1,
  Pointer<Utf16> pName2,
),
    int Function(
  Pointer<Utf16> pName1,
  Pointer<Utf16> pName2,
)>('DnsNameCompare_W');

int DnsQueryConfig(
  int Config,
  int Flag,
  Pointer<Utf16> pwsAdapterName,
  Pointer pReserved,
  Pointer pBuffer,
  Pointer<Uint32> pBufLen,
) =>
    _DnsQueryConfig(
      Config,
      Flag,
      pwsAdapterName,
      pReserved,
      pBuffer,
      pBufLen,
    );

late final _DnsQueryConfig = _dnsapi.lookupFunction<
    Int32 Function(
  Int32 Config,
  Uint32 Flag,
  Pointer<Utf16> pwsAdapterName,
  Pointer pReserved,
  Pointer pBuffer,
  Pointer<Uint32> pBufLen,
),
    int Function(
  int Config,
  int Flag,
  Pointer<Utf16> pwsAdapterName,
  Pointer pReserved,
  Pointer pBuffer,
  Pointer<Uint32> pBufLen,
)>('DnsQueryConfig');

int DnsQueryEx(
  Pointer<DNS_QUERY_REQUEST> pQueryRequest,
  Pointer<DNS_QUERY_RESULT> pQueryResults,
  Pointer<DNS_QUERY_CANCEL> pCancelHandle,
) =>
    _DnsQueryEx(
      pQueryRequest,
      pQueryResults,
      pCancelHandle,
    );

late final _DnsQueryEx = _dnsapi.lookupFunction<
    Int32 Function(
  Pointer<DNS_QUERY_REQUEST> pQueryRequest,
  Pointer<DNS_QUERY_RESULT> pQueryResults,
  Pointer<DNS_QUERY_CANCEL> pCancelHandle,
),
    int Function(
  Pointer<DNS_QUERY_REQUEST> pQueryRequest,
  Pointer<DNS_QUERY_RESULT> pQueryResults,
  Pointer<DNS_QUERY_CANCEL> pCancelHandle,
)>('DnsQueryEx');

int DnsQuery_UTF8(
  Pointer<Utf8> pszName,
  int wType,
  int Options,
  Pointer pExtra,
  Pointer<Pointer<DNS_RECORD>> ppQueryResults,
  Pointer<Pointer> pReserved,
) =>
    _DnsQuery_UTF8(
      pszName,
      wType,
      Options,
      pExtra,
      ppQueryResults,
      pReserved,
    );

late final _DnsQuery_UTF8 = _dnsapi.lookupFunction<
    Int32 Function(
  Pointer<Utf8> pszName,
  Uint16 wType,
  Uint32 Options,
  Pointer pExtra,
  Pointer<Pointer<DNS_RECORD>> ppQueryResults,
  Pointer<Pointer> pReserved,
),
    int Function(
  Pointer<Utf8> pszName,
  int wType,
  int Options,
  Pointer pExtra,
  Pointer<Pointer<DNS_RECORD>> ppQueryResults,
  Pointer<Pointer> pReserved,
)>('DnsQuery_UTF8');

int DnsQuery_(
  Pointer<Utf16> pszName,
  int wType,
  int Options,
  Pointer pExtra,
  Pointer<Pointer<DNS_RECORD>> ppQueryResults,
  Pointer<Pointer> pReserved,
) =>
    _DnsQuery_(
      pszName,
      wType,
      Options,
      pExtra,
      ppQueryResults,
      pReserved,
    );

late final _DnsQuery_ = _dnsapi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszName,
  Uint16 wType,
  Uint32 Options,
  Pointer pExtra,
  Pointer<Pointer<DNS_RECORD>> ppQueryResults,
  Pointer<Pointer> pReserved,
),
    int Function(
  Pointer<Utf16> pszName,
  int wType,
  int Options,
  Pointer pExtra,
  Pointer<Pointer<DNS_RECORD>> ppQueryResults,
  Pointer<Pointer> pReserved,
)>('DnsQuery_W');

int DnsRecordCompare(
  Pointer<DNS_RECORD> pRecord1,
  Pointer<DNS_RECORD> pRecord2,
) =>
    _DnsRecordCompare(
      pRecord1,
      pRecord2,
    );

late final _DnsRecordCompare = _dnsapi.lookupFunction<
    Int32 Function(
  Pointer<DNS_RECORD> pRecord1,
  Pointer<DNS_RECORD> pRecord2,
),
    int Function(
  Pointer<DNS_RECORD> pRecord1,
  Pointer<DNS_RECORD> pRecord2,
)>('DnsRecordCompare');

Pointer<DNS_RECORD> DnsRecordCopyEx(
  Pointer<DNS_RECORD> pRecord,
  int CharSetIn,
  int CharSetOut,
) =>
    _DnsRecordCopyEx(
      pRecord,
      CharSetIn,
      CharSetOut,
    );

late final _DnsRecordCopyEx = _dnsapi.lookupFunction<
    Pointer<DNS_RECORD> Function(
  Pointer<DNS_RECORD> pRecord,
  Int32 CharSetIn,
  Int32 CharSetOut,
),
    Pointer<DNS_RECORD> Function(
  Pointer<DNS_RECORD> pRecord,
  int CharSetIn,
  int CharSetOut,
)>('DnsRecordCopyEx');

int DnsRecordSetCompare(
  Pointer<DNS_RECORD> pRR1,
  Pointer<DNS_RECORD> pRR2,
  Pointer<Pointer<DNS_RECORD>> ppDiff1,
  Pointer<Pointer<DNS_RECORD>> ppDiff2,
) =>
    _DnsRecordSetCompare(
      pRR1,
      pRR2,
      ppDiff1,
      ppDiff2,
    );

late final _DnsRecordSetCompare = _dnsapi.lookupFunction<
    Int32 Function(
  Pointer<DNS_RECORD> pRR1,
  Pointer<DNS_RECORD> pRR2,
  Pointer<Pointer<DNS_RECORD>> ppDiff1,
  Pointer<Pointer<DNS_RECORD>> ppDiff2,
),
    int Function(
  Pointer<DNS_RECORD> pRR1,
  Pointer<DNS_RECORD> pRR2,
  Pointer<Pointer<DNS_RECORD>> ppDiff1,
  Pointer<Pointer<DNS_RECORD>> ppDiff2,
)>('DnsRecordSetCompare');

Pointer<DNS_RECORD> DnsRecordSetCopyEx(
  Pointer<DNS_RECORD> pRecordSet,
  int CharSetIn,
  int CharSetOut,
) =>
    _DnsRecordSetCopyEx(
      pRecordSet,
      CharSetIn,
      CharSetOut,
    );

late final _DnsRecordSetCopyEx = _dnsapi.lookupFunction<
    Pointer<DNS_RECORD> Function(
  Pointer<DNS_RECORD> pRecordSet,
  Int32 CharSetIn,
  Int32 CharSetOut,
),
    Pointer<DNS_RECORD> Function(
  Pointer<DNS_RECORD> pRecordSet,
  int CharSetIn,
  int CharSetOut,
)>('DnsRecordSetCopyEx');

Pointer<DNS_RECORD> DnsRecordSetDetach(
  Pointer<DNS_RECORD> pRecordList,
) =>
    _DnsRecordSetDetach(
      pRecordList,
    );

late final _DnsRecordSetDetach = _dnsapi.lookupFunction<
    Pointer<DNS_RECORD> Function(
  Pointer<DNS_RECORD> pRecordList,
),
    Pointer<DNS_RECORD> Function(
  Pointer<DNS_RECORD> pRecordList,
)>('DnsRecordSetDetach');

void DnsReleaseContextHandle(
  int hContext,
) =>
    _DnsReleaseContextHandle(
      hContext,
    );

late final _DnsReleaseContextHandle = _dnsapi.lookupFunction<
    Void Function(
  IntPtr hContext,
),
    void Function(
  int hContext,
)>('DnsReleaseContextHandle');

int DnsReplaceRecordSetUTF8(
  Pointer<DNS_RECORD> pReplaceSet,
  int Options,
  int hContext,
  Pointer pExtraInfo,
  Pointer pReserved,
) =>
    _DnsReplaceRecordSetUTF8(
      pReplaceSet,
      Options,
      hContext,
      pExtraInfo,
      pReserved,
    );

late final _DnsReplaceRecordSetUTF8 = _dnsapi.lookupFunction<
    Int32 Function(
  Pointer<DNS_RECORD> pReplaceSet,
  Uint32 Options,
  IntPtr hContext,
  Pointer pExtraInfo,
  Pointer pReserved,
),
    int Function(
  Pointer<DNS_RECORD> pReplaceSet,
  int Options,
  int hContext,
  Pointer pExtraInfo,
  Pointer pReserved,
)>('DnsReplaceRecordSetUTF8');

int DnsReplaceRecordSet(
  Pointer<DNS_RECORD> pReplaceSet,
  int Options,
  int hContext,
  Pointer pExtraInfo,
  Pointer pReserved,
) =>
    _DnsReplaceRecordSet(
      pReplaceSet,
      Options,
      hContext,
      pExtraInfo,
      pReserved,
    );

late final _DnsReplaceRecordSet = _dnsapi.lookupFunction<
    Int32 Function(
  Pointer<DNS_RECORD> pReplaceSet,
  Uint32 Options,
  IntPtr hContext,
  Pointer pExtraInfo,
  Pointer pReserved,
),
    int Function(
  Pointer<DNS_RECORD> pReplaceSet,
  int Options,
  int hContext,
  Pointer pExtraInfo,
  Pointer pReserved,
)>('DnsReplaceRecordSetW');

int DnsServiceBrowse(
  Pointer<DNS_SERVICE_BROWSE_REQUEST> pRequest,
  Pointer<DNS_SERVICE_CANCEL> pCancel,
) =>
    _DnsServiceBrowse(
      pRequest,
      pCancel,
    );

late final _DnsServiceBrowse = _dnsapi.lookupFunction<
    Int32 Function(
  Pointer<DNS_SERVICE_BROWSE_REQUEST> pRequest,
  Pointer<DNS_SERVICE_CANCEL> pCancel,
),
    int Function(
  Pointer<DNS_SERVICE_BROWSE_REQUEST> pRequest,
  Pointer<DNS_SERVICE_CANCEL> pCancel,
)>('DnsServiceBrowse');

int DnsServiceBrowseCancel(
  Pointer<DNS_SERVICE_CANCEL> pCancelHandle,
) =>
    _DnsServiceBrowseCancel(
      pCancelHandle,
    );

late final _DnsServiceBrowseCancel = _dnsapi.lookupFunction<
    Int32 Function(
  Pointer<DNS_SERVICE_CANCEL> pCancelHandle,
),
    int Function(
  Pointer<DNS_SERVICE_CANCEL> pCancelHandle,
)>('DnsServiceBrowseCancel');

Pointer<DNS_SERVICE_INSTANCE> DnsServiceConstructInstance(
  Pointer<Utf16> pServiceName,
  Pointer<Utf16> pHostName,
  Pointer<Uint32> pIp4,
  Pointer<IP6_ADDRESS> pIp6,
  int wPort,
  int wPriority,
  int wWeight,
  int dwPropertiesCount,
  Pointer<Pointer<Utf16>> keys,
  Pointer<Pointer<Utf16>> values,
) =>
    _DnsServiceConstructInstance(
      pServiceName,
      pHostName,
      pIp4,
      pIp6,
      wPort,
      wPriority,
      wWeight,
      dwPropertiesCount,
      keys,
      values,
    );

late final _DnsServiceConstructInstance = _dnsapi.lookupFunction<
    Pointer<DNS_SERVICE_INSTANCE> Function(
  Pointer<Utf16> pServiceName,
  Pointer<Utf16> pHostName,
  Pointer<Uint32> pIp4,
  Pointer<IP6_ADDRESS> pIp6,
  Uint16 wPort,
  Uint16 wPriority,
  Uint16 wWeight,
  Uint32 dwPropertiesCount,
  Pointer<Pointer<Utf16>> keys,
  Pointer<Pointer<Utf16>> values,
),
    Pointer<DNS_SERVICE_INSTANCE> Function(
  Pointer<Utf16> pServiceName,
  Pointer<Utf16> pHostName,
  Pointer<Uint32> pIp4,
  Pointer<IP6_ADDRESS> pIp6,
  int wPort,
  int wPriority,
  int wWeight,
  int dwPropertiesCount,
  Pointer<Pointer<Utf16>> keys,
  Pointer<Pointer<Utf16>> values,
)>('DnsServiceConstructInstance');

Pointer<DNS_SERVICE_INSTANCE> DnsServiceCopyInstance(
  Pointer<DNS_SERVICE_INSTANCE> pOrig,
) =>
    _DnsServiceCopyInstance(
      pOrig,
    );

late final _DnsServiceCopyInstance = _dnsapi.lookupFunction<
    Pointer<DNS_SERVICE_INSTANCE> Function(
  Pointer<DNS_SERVICE_INSTANCE> pOrig,
),
    Pointer<DNS_SERVICE_INSTANCE> Function(
  Pointer<DNS_SERVICE_INSTANCE> pOrig,
)>('DnsServiceCopyInstance');

int DnsServiceDeRegister(
  Pointer<DNS_SERVICE_REGISTER_REQUEST> pRequest,
  Pointer<DNS_SERVICE_CANCEL> pCancel,
) =>
    _DnsServiceDeRegister(
      pRequest,
      pCancel,
    );

late final _DnsServiceDeRegister = _dnsapi.lookupFunction<
    Uint32 Function(
  Pointer<DNS_SERVICE_REGISTER_REQUEST> pRequest,
  Pointer<DNS_SERVICE_CANCEL> pCancel,
),
    int Function(
  Pointer<DNS_SERVICE_REGISTER_REQUEST> pRequest,
  Pointer<DNS_SERVICE_CANCEL> pCancel,
)>('DnsServiceDeRegister');

void DnsServiceFreeInstance(
  Pointer<DNS_SERVICE_INSTANCE> pInstance,
) =>
    _DnsServiceFreeInstance(
      pInstance,
    );

late final _DnsServiceFreeInstance = _dnsapi.lookupFunction<
    Void Function(
  Pointer<DNS_SERVICE_INSTANCE> pInstance,
),
    void Function(
  Pointer<DNS_SERVICE_INSTANCE> pInstance,
)>('DnsServiceFreeInstance');

int DnsServiceRegister(
  Pointer<DNS_SERVICE_REGISTER_REQUEST> pRequest,
  Pointer<DNS_SERVICE_CANCEL> pCancel,
) =>
    _DnsServiceRegister(
      pRequest,
      pCancel,
    );

late final _DnsServiceRegister = _dnsapi.lookupFunction<
    Uint32 Function(
  Pointer<DNS_SERVICE_REGISTER_REQUEST> pRequest,
  Pointer<DNS_SERVICE_CANCEL> pCancel,
),
    int Function(
  Pointer<DNS_SERVICE_REGISTER_REQUEST> pRequest,
  Pointer<DNS_SERVICE_CANCEL> pCancel,
)>('DnsServiceRegister');

int DnsServiceRegisterCancel(
  Pointer<DNS_SERVICE_CANCEL> pCancelHandle,
) =>
    _DnsServiceRegisterCancel(
      pCancelHandle,
    );

late final _DnsServiceRegisterCancel = _dnsapi.lookupFunction<
    Uint32 Function(
  Pointer<DNS_SERVICE_CANCEL> pCancelHandle,
),
    int Function(
  Pointer<DNS_SERVICE_CANCEL> pCancelHandle,
)>('DnsServiceRegisterCancel');

int DnsServiceResolve(
  Pointer<DNS_SERVICE_RESOLVE_REQUEST> pRequest,
  Pointer<DNS_SERVICE_CANCEL> pCancel,
) =>
    _DnsServiceResolve(
      pRequest,
      pCancel,
    );

late final _DnsServiceResolve = _dnsapi.lookupFunction<
    Int32 Function(
  Pointer<DNS_SERVICE_RESOLVE_REQUEST> pRequest,
  Pointer<DNS_SERVICE_CANCEL> pCancel,
),
    int Function(
  Pointer<DNS_SERVICE_RESOLVE_REQUEST> pRequest,
  Pointer<DNS_SERVICE_CANCEL> pCancel,
)>('DnsServiceResolve');

int DnsServiceResolveCancel(
  Pointer<DNS_SERVICE_CANCEL> pCancelHandle,
) =>
    _DnsServiceResolveCancel(
      pCancelHandle,
    );

late final _DnsServiceResolveCancel = _dnsapi.lookupFunction<
    Int32 Function(
  Pointer<DNS_SERVICE_CANCEL> pCancelHandle,
),
    int Function(
  Pointer<DNS_SERVICE_CANCEL> pCancelHandle,
)>('DnsServiceResolveCancel');

int DnsSetApplicationSettings(
  int cServers,
  Pointer<DNS_CUSTOM_SERVER> pServers,
  Pointer<DNS_APPLICATION_SETTINGS> pSettings,
) =>
    _DnsSetApplicationSettings(
      cServers,
      pServers,
      pSettings,
    );

late final _DnsSetApplicationSettings = _dnsapi.lookupFunction<
    Uint32 Function(
  Uint32 cServers,
  Pointer<DNS_CUSTOM_SERVER> pServers,
  Pointer<DNS_APPLICATION_SETTINGS> pSettings,
),
    int Function(
  int cServers,
  Pointer<DNS_CUSTOM_SERVER> pServers,
  Pointer<DNS_APPLICATION_SETTINGS> pSettings,
)>('DnsSetApplicationSettings');

int DnsStartMulticastQuery(
  Pointer<MDNS_QUERY_REQUEST> pQueryRequest,
  Pointer<MDNS_QUERY_HANDLE> pHandle,
) =>
    _DnsStartMulticastQuery(
      pQueryRequest,
      pHandle,
    );

late final _DnsStartMulticastQuery = _dnsapi.lookupFunction<
    Int32 Function(
  Pointer<MDNS_QUERY_REQUEST> pQueryRequest,
  Pointer<MDNS_QUERY_HANDLE> pHandle,
),
    int Function(
  Pointer<MDNS_QUERY_REQUEST> pQueryRequest,
  Pointer<MDNS_QUERY_HANDLE> pHandle,
)>('DnsStartMulticastQuery');

int DnsStopMulticastQuery(
  Pointer<MDNS_QUERY_HANDLE> pHandle,
) =>
    _DnsStopMulticastQuery(
      pHandle,
    );

late final _DnsStopMulticastQuery = _dnsapi.lookupFunction<
    Int32 Function(
  Pointer<MDNS_QUERY_HANDLE> pHandle,
),
    int Function(
  Pointer<MDNS_QUERY_HANDLE> pHandle,
)>('DnsStopMulticastQuery');

int DnsValidateName_UTF8(
  Pointer<Utf8> pszName,
  int Format,
) =>
    _DnsValidateName_UTF8(
      pszName,
      Format,
    );

late final _DnsValidateName_UTF8 = _dnsapi.lookupFunction<
    Int32 Function(
  Pointer<Utf8> pszName,
  Int32 Format,
),
    int Function(
  Pointer<Utf8> pszName,
  int Format,
)>('DnsValidateName_UTF8');

int DnsValidateName_(
  Pointer<Utf16> pszName,
  int Format,
) =>
    _DnsValidateName_(
      pszName,
      Format,
    );

late final _DnsValidateName_ = _dnsapi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszName,
  Int32 Format,
),
    int Function(
  Pointer<Utf16> pszName,
  int Format,
)>('DnsValidateName_W');

int DnsWriteQuestionToBuffer_UTF8(
  Pointer<DNS_MESSAGE_BUFFER> pDnsBuffer,
  Pointer<Uint32> pdwBufferSize,
  Pointer<Utf8> pszName,
  int wType,
  int Xid,
  int fRecursionDesired,
) =>
    _DnsWriteQuestionToBuffer_UTF8(
      pDnsBuffer,
      pdwBufferSize,
      pszName,
      wType,
      Xid,
      fRecursionDesired,
    );

late final _DnsWriteQuestionToBuffer_UTF8 = _dnsapi.lookupFunction<
    Int32 Function(
  Pointer<DNS_MESSAGE_BUFFER> pDnsBuffer,
  Pointer<Uint32> pdwBufferSize,
  Pointer<Utf8> pszName,
  Uint16 wType,
  Uint16 Xid,
  Int32 fRecursionDesired,
),
    int Function(
  Pointer<DNS_MESSAGE_BUFFER> pDnsBuffer,
  Pointer<Uint32> pdwBufferSize,
  Pointer<Utf8> pszName,
  int wType,
  int Xid,
  int fRecursionDesired,
)>('DnsWriteQuestionToBuffer_UTF8');

int DnsWriteQuestionToBuffer_(
  Pointer<DNS_MESSAGE_BUFFER> pDnsBuffer,
  Pointer<Uint32> pdwBufferSize,
  Pointer<Utf16> pszName,
  int wType,
  int Xid,
  int fRecursionDesired,
) =>
    _DnsWriteQuestionToBuffer_(
      pDnsBuffer,
      pdwBufferSize,
      pszName,
      wType,
      Xid,
      fRecursionDesired,
    );

late final _DnsWriteQuestionToBuffer_ = _dnsapi.lookupFunction<
    Int32 Function(
  Pointer<DNS_MESSAGE_BUFFER> pDnsBuffer,
  Pointer<Uint32> pdwBufferSize,
  Pointer<Utf16> pszName,
  Uint16 wType,
  Uint16 Xid,
  Int32 fRecursionDesired,
),
    int Function(
  Pointer<DNS_MESSAGE_BUFFER> pDnsBuffer,
  Pointer<Uint32> pdwBufferSize,
  Pointer<Utf16> pszName,
  int wType,
  int Xid,
  int fRecursionDesired,
)>('DnsWriteQuestionToBuffer_W');
