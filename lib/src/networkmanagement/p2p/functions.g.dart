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
import '../../networkmanagement/p2p/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../security/cryptography/structs.g.dart';
import '../../specialTypes.dart'; // -----------------------------------------------------------------------

// p2pgraph.dll
// -----------------------------------------------------------------------
final _p2pgraph = DynamicLibrary.open('p2pgraph.dll');

int PeerGraphAddRecord(
  Pointer hGraph,
  Pointer<PEER_RECORD> pRecord,
  Pointer<GUID> pRecordId,
) =>
    _PeerGraphAddRecord(
      hGraph,
      pRecord,
      pRecordId,
    );

late final _PeerGraphAddRecord = _p2pgraph.lookupFunction<
    Int32 Function(
  Pointer hGraph,
  Pointer<PEER_RECORD> pRecord,
  Pointer<GUID> pRecordId,
),
    int Function(
  Pointer hGraph,
  Pointer<PEER_RECORD> pRecord,
  Pointer<GUID> pRecordId,
)>('PeerGraphAddRecord');

int PeerGraphClose(
  Pointer hGraph,
) =>
    _PeerGraphClose(
      hGraph,
    );

late final _PeerGraphClose = _p2pgraph.lookupFunction<
    Int32 Function(
  Pointer hGraph,
),
    int Function(
  Pointer hGraph,
)>('PeerGraphClose');

int PeerGraphCloseDirectConnection(
  Pointer hGraph,
  int ullConnectionId,
) =>
    _PeerGraphCloseDirectConnection(
      hGraph,
      ullConnectionId,
    );

late final _PeerGraphCloseDirectConnection = _p2pgraph.lookupFunction<
    Int32 Function(
  Pointer hGraph,
  Uint64 ullConnectionId,
),
    int Function(
  Pointer hGraph,
  int ullConnectionId,
)>('PeerGraphCloseDirectConnection');

int PeerGraphConnect(
  Pointer hGraph,
  Pointer<Utf16> pwzPeerId,
  Pointer<PEER_ADDRESS> pAddress,
  Pointer<Uint64> pullConnectionId,
) =>
    _PeerGraphConnect(
      hGraph,
      pwzPeerId,
      pAddress,
      pullConnectionId,
    );

late final _PeerGraphConnect = _p2pgraph.lookupFunction<
    Int32 Function(
  Pointer hGraph,
  Pointer<Utf16> pwzPeerId,
  Pointer<PEER_ADDRESS> pAddress,
  Pointer<Uint64> pullConnectionId,
),
    int Function(
  Pointer hGraph,
  Pointer<Utf16> pwzPeerId,
  Pointer<PEER_ADDRESS> pAddress,
  Pointer<Uint64> pullConnectionId,
)>('PeerGraphConnect');

int PeerGraphCreate(
  Pointer<PEER_GRAPH_PROPERTIES> pGraphProperties,
  Pointer<Utf16> pwzDatabaseName,
  Pointer<PEER_SECURITY_INTERFACE> pSecurityInterface,
  Pointer<Pointer> phGraph,
) =>
    _PeerGraphCreate(
      pGraphProperties,
      pwzDatabaseName,
      pSecurityInterface,
      phGraph,
    );

late final _PeerGraphCreate = _p2pgraph.lookupFunction<
    Int32 Function(
  Pointer<PEER_GRAPH_PROPERTIES> pGraphProperties,
  Pointer<Utf16> pwzDatabaseName,
  Pointer<PEER_SECURITY_INTERFACE> pSecurityInterface,
  Pointer<Pointer> phGraph,
),
    int Function(
  Pointer<PEER_GRAPH_PROPERTIES> pGraphProperties,
  Pointer<Utf16> pwzDatabaseName,
  Pointer<PEER_SECURITY_INTERFACE> pSecurityInterface,
  Pointer<Pointer> phGraph,
)>('PeerGraphCreate');

int PeerGraphDelete(
  Pointer<Utf16> pwzGraphId,
  Pointer<Utf16> pwzPeerId,
  Pointer<Utf16> pwzDatabaseName,
) =>
    _PeerGraphDelete(
      pwzGraphId,
      pwzPeerId,
      pwzDatabaseName,
    );

late final _PeerGraphDelete = _p2pgraph.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pwzGraphId,
  Pointer<Utf16> pwzPeerId,
  Pointer<Utf16> pwzDatabaseName,
),
    int Function(
  Pointer<Utf16> pwzGraphId,
  Pointer<Utf16> pwzPeerId,
  Pointer<Utf16> pwzDatabaseName,
)>('PeerGraphDelete');

int PeerGraphDeleteRecord(
  Pointer hGraph,
  Pointer<GUID> pRecordId,
  int fLocal,
) =>
    _PeerGraphDeleteRecord(
      hGraph,
      pRecordId,
      fLocal,
    );

late final _PeerGraphDeleteRecord = _p2pgraph.lookupFunction<
    Int32 Function(
  Pointer hGraph,
  Pointer<GUID> pRecordId,
  Int32 fLocal,
),
    int Function(
  Pointer hGraph,
  Pointer<GUID> pRecordId,
  int fLocal,
)>('PeerGraphDeleteRecord');

int PeerGraphEndEnumeration(
  Pointer hPeerEnum,
) =>
    _PeerGraphEndEnumeration(
      hPeerEnum,
    );

late final _PeerGraphEndEnumeration = _p2pgraph.lookupFunction<
    Int32 Function(
  Pointer hPeerEnum,
),
    int Function(
  Pointer hPeerEnum,
)>('PeerGraphEndEnumeration');

int PeerGraphEnumConnections(
  Pointer hGraph,
  int dwFlags,
  Pointer<Pointer> phPeerEnum,
) =>
    _PeerGraphEnumConnections(
      hGraph,
      dwFlags,
      phPeerEnum,
    );

late final _PeerGraphEnumConnections = _p2pgraph.lookupFunction<
    Int32 Function(
  Pointer hGraph,
  Uint32 dwFlags,
  Pointer<Pointer> phPeerEnum,
),
    int Function(
  Pointer hGraph,
  int dwFlags,
  Pointer<Pointer> phPeerEnum,
)>('PeerGraphEnumConnections');

int PeerGraphEnumNodes(
  Pointer hGraph,
  Pointer<Utf16> pwzPeerId,
  Pointer<Pointer> phPeerEnum,
) =>
    _PeerGraphEnumNodes(
      hGraph,
      pwzPeerId,
      phPeerEnum,
    );

late final _PeerGraphEnumNodes = _p2pgraph.lookupFunction<
    Int32 Function(
  Pointer hGraph,
  Pointer<Utf16> pwzPeerId,
  Pointer<Pointer> phPeerEnum,
),
    int Function(
  Pointer hGraph,
  Pointer<Utf16> pwzPeerId,
  Pointer<Pointer> phPeerEnum,
)>('PeerGraphEnumNodes');

int PeerGraphEnumRecords(
  Pointer hGraph,
  Pointer<GUID> pRecordType,
  Pointer<Utf16> pwzPeerId,
  Pointer<Pointer> phPeerEnum,
) =>
    _PeerGraphEnumRecords(
      hGraph,
      pRecordType,
      pwzPeerId,
      phPeerEnum,
    );

late final _PeerGraphEnumRecords = _p2pgraph.lookupFunction<
    Int32 Function(
  Pointer hGraph,
  Pointer<GUID> pRecordType,
  Pointer<Utf16> pwzPeerId,
  Pointer<Pointer> phPeerEnum,
),
    int Function(
  Pointer hGraph,
  Pointer<GUID> pRecordType,
  Pointer<Utf16> pwzPeerId,
  Pointer<Pointer> phPeerEnum,
)>('PeerGraphEnumRecords');

int PeerGraphExportDatabase(
  Pointer hGraph,
  Pointer<Utf16> pwzFilePath,
) =>
    _PeerGraphExportDatabase(
      hGraph,
      pwzFilePath,
    );

late final _PeerGraphExportDatabase = _p2pgraph.lookupFunction<
    Int32 Function(
  Pointer hGraph,
  Pointer<Utf16> pwzFilePath,
),
    int Function(
  Pointer hGraph,
  Pointer<Utf16> pwzFilePath,
)>('PeerGraphExportDatabase');

void PeerGraphFreeData(
  Pointer pvData,
) =>
    _PeerGraphFreeData(
      pvData,
    );

late final _PeerGraphFreeData = _p2pgraph.lookupFunction<
    Void Function(
  Pointer pvData,
),
    void Function(
  Pointer pvData,
)>('PeerGraphFreeData');

int PeerGraphGetEventData(
  Pointer hPeerEvent,
  Pointer<Pointer<PEER_GRAPH_EVENT_DATA>> ppEventData,
) =>
    _PeerGraphGetEventData(
      hPeerEvent,
      ppEventData,
    );

late final _PeerGraphGetEventData = _p2pgraph.lookupFunction<
    Int32 Function(
  Pointer hPeerEvent,
  Pointer<Pointer<PEER_GRAPH_EVENT_DATA>> ppEventData,
),
    int Function(
  Pointer hPeerEvent,
  Pointer<Pointer<PEER_GRAPH_EVENT_DATA>> ppEventData,
)>('PeerGraphGetEventData');

int PeerGraphGetItemCount(
  Pointer hPeerEnum,
  Pointer<Uint32> pCount,
) =>
    _PeerGraphGetItemCount(
      hPeerEnum,
      pCount,
    );

late final _PeerGraphGetItemCount = _p2pgraph.lookupFunction<
    Int32 Function(
  Pointer hPeerEnum,
  Pointer<Uint32> pCount,
),
    int Function(
  Pointer hPeerEnum,
  Pointer<Uint32> pCount,
)>('PeerGraphGetItemCount');

int PeerGraphGetNextItem(
  Pointer hPeerEnum,
  Pointer<Uint32> pCount,
  Pointer<Pointer<Pointer>> pppvItems,
) =>
    _PeerGraphGetNextItem(
      hPeerEnum,
      pCount,
      pppvItems,
    );

late final _PeerGraphGetNextItem = _p2pgraph.lookupFunction<
    Int32 Function(
  Pointer hPeerEnum,
  Pointer<Uint32> pCount,
  Pointer<Pointer<Pointer>> pppvItems,
),
    int Function(
  Pointer hPeerEnum,
  Pointer<Uint32> pCount,
  Pointer<Pointer<Pointer>> pppvItems,
)>('PeerGraphGetNextItem');

int PeerGraphGetNodeInfo(
  Pointer hGraph,
  int ullNodeId,
  Pointer<Pointer<PEER_NODE_INFO>> ppNodeInfo,
) =>
    _PeerGraphGetNodeInfo(
      hGraph,
      ullNodeId,
      ppNodeInfo,
    );

late final _PeerGraphGetNodeInfo = _p2pgraph.lookupFunction<
    Int32 Function(
  Pointer hGraph,
  Uint64 ullNodeId,
  Pointer<Pointer<PEER_NODE_INFO>> ppNodeInfo,
),
    int Function(
  Pointer hGraph,
  int ullNodeId,
  Pointer<Pointer<PEER_NODE_INFO>> ppNodeInfo,
)>('PeerGraphGetNodeInfo');

int PeerGraphGetProperties(
  Pointer hGraph,
  Pointer<Pointer<PEER_GRAPH_PROPERTIES>> ppGraphProperties,
) =>
    _PeerGraphGetProperties(
      hGraph,
      ppGraphProperties,
    );

late final _PeerGraphGetProperties = _p2pgraph.lookupFunction<
    Int32 Function(
  Pointer hGraph,
  Pointer<Pointer<PEER_GRAPH_PROPERTIES>> ppGraphProperties,
),
    int Function(
  Pointer hGraph,
  Pointer<Pointer<PEER_GRAPH_PROPERTIES>> ppGraphProperties,
)>('PeerGraphGetProperties');

int PeerGraphGetRecord(
  Pointer hGraph,
  Pointer<GUID> pRecordId,
  Pointer<Pointer<PEER_RECORD>> ppRecord,
) =>
    _PeerGraphGetRecord(
      hGraph,
      pRecordId,
      ppRecord,
    );

late final _PeerGraphGetRecord = _p2pgraph.lookupFunction<
    Int32 Function(
  Pointer hGraph,
  Pointer<GUID> pRecordId,
  Pointer<Pointer<PEER_RECORD>> ppRecord,
),
    int Function(
  Pointer hGraph,
  Pointer<GUID> pRecordId,
  Pointer<Pointer<PEER_RECORD>> ppRecord,
)>('PeerGraphGetRecord');

int PeerGraphGetStatus(
  Pointer hGraph,
  Pointer<Uint32> pdwStatus,
) =>
    _PeerGraphGetStatus(
      hGraph,
      pdwStatus,
    );

late final _PeerGraphGetStatus = _p2pgraph.lookupFunction<
    Int32 Function(
  Pointer hGraph,
  Pointer<Uint32> pdwStatus,
),
    int Function(
  Pointer hGraph,
  Pointer<Uint32> pdwStatus,
)>('PeerGraphGetStatus');

int PeerGraphImportDatabase(
  Pointer hGraph,
  Pointer<Utf16> pwzFilePath,
) =>
    _PeerGraphImportDatabase(
      hGraph,
      pwzFilePath,
    );

late final _PeerGraphImportDatabase = _p2pgraph.lookupFunction<
    Int32 Function(
  Pointer hGraph,
  Pointer<Utf16> pwzFilePath,
),
    int Function(
  Pointer hGraph,
  Pointer<Utf16> pwzFilePath,
)>('PeerGraphImportDatabase');

int PeerGraphListen(
  Pointer hGraph,
  int dwScope,
  int dwScopeId,
  int wPort,
) =>
    _PeerGraphListen(
      hGraph,
      dwScope,
      dwScopeId,
      wPort,
    );

late final _PeerGraphListen = _p2pgraph.lookupFunction<
    Int32 Function(
  Pointer hGraph,
  Uint32 dwScope,
  Uint32 dwScopeId,
  Uint16 wPort,
),
    int Function(
  Pointer hGraph,
  int dwScope,
  int dwScopeId,
  int wPort,
)>('PeerGraphListen');

int PeerGraphOpen(
  Pointer<Utf16> pwzGraphId,
  Pointer<Utf16> pwzPeerId,
  Pointer<Utf16> pwzDatabaseName,
  Pointer<PEER_SECURITY_INTERFACE> pSecurityInterface,
  int cRecordTypeSyncPrecedence,
  Pointer<GUID> pRecordTypeSyncPrecedence,
  Pointer<Pointer> phGraph,
) =>
    _PeerGraphOpen(
      pwzGraphId,
      pwzPeerId,
      pwzDatabaseName,
      pSecurityInterface,
      cRecordTypeSyncPrecedence,
      pRecordTypeSyncPrecedence,
      phGraph,
    );

late final _PeerGraphOpen = _p2pgraph.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pwzGraphId,
  Pointer<Utf16> pwzPeerId,
  Pointer<Utf16> pwzDatabaseName,
  Pointer<PEER_SECURITY_INTERFACE> pSecurityInterface,
  Uint32 cRecordTypeSyncPrecedence,
  Pointer<GUID> pRecordTypeSyncPrecedence,
  Pointer<Pointer> phGraph,
),
    int Function(
  Pointer<Utf16> pwzGraphId,
  Pointer<Utf16> pwzPeerId,
  Pointer<Utf16> pwzDatabaseName,
  Pointer<PEER_SECURITY_INTERFACE> pSecurityInterface,
  int cRecordTypeSyncPrecedence,
  Pointer<GUID> pRecordTypeSyncPrecedence,
  Pointer<Pointer> phGraph,
)>('PeerGraphOpen');

int PeerGraphOpenDirectConnection(
  Pointer hGraph,
  Pointer<Utf16> pwzPeerId,
  Pointer<PEER_ADDRESS> pAddress,
  Pointer<Uint64> pullConnectionId,
) =>
    _PeerGraphOpenDirectConnection(
      hGraph,
      pwzPeerId,
      pAddress,
      pullConnectionId,
    );

late final _PeerGraphOpenDirectConnection = _p2pgraph.lookupFunction<
    Int32 Function(
  Pointer hGraph,
  Pointer<Utf16> pwzPeerId,
  Pointer<PEER_ADDRESS> pAddress,
  Pointer<Uint64> pullConnectionId,
),
    int Function(
  Pointer hGraph,
  Pointer<Utf16> pwzPeerId,
  Pointer<PEER_ADDRESS> pAddress,
  Pointer<Uint64> pullConnectionId,
)>('PeerGraphOpenDirectConnection');

int PeerGraphPeerTimeToUniversalTime(
  Pointer hGraph,
  Pointer<FILETIME> pftPeerTime,
  Pointer<FILETIME> pftUniversalTime,
) =>
    _PeerGraphPeerTimeToUniversalTime(
      hGraph,
      pftPeerTime,
      pftUniversalTime,
    );

late final _PeerGraphPeerTimeToUniversalTime = _p2pgraph.lookupFunction<
    Int32 Function(
  Pointer hGraph,
  Pointer<FILETIME> pftPeerTime,
  Pointer<FILETIME> pftUniversalTime,
),
    int Function(
  Pointer hGraph,
  Pointer<FILETIME> pftPeerTime,
  Pointer<FILETIME> pftUniversalTime,
)>('PeerGraphPeerTimeToUniversalTime');

int PeerGraphRegisterEvent(
  Pointer hGraph,
  int hEvent,
  int cEventRegistrations,
  Pointer<PEER_GRAPH_EVENT_REGISTRATION> pEventRegistrations,
  Pointer<Pointer> phPeerEvent,
) =>
    _PeerGraphRegisterEvent(
      hGraph,
      hEvent,
      cEventRegistrations,
      pEventRegistrations,
      phPeerEvent,
    );

late final _PeerGraphRegisterEvent = _p2pgraph.lookupFunction<
    Int32 Function(
  Pointer hGraph,
  IntPtr hEvent,
  Uint32 cEventRegistrations,
  Pointer<PEER_GRAPH_EVENT_REGISTRATION> pEventRegistrations,
  Pointer<Pointer> phPeerEvent,
),
    int Function(
  Pointer hGraph,
  int hEvent,
  int cEventRegistrations,
  Pointer<PEER_GRAPH_EVENT_REGISTRATION> pEventRegistrations,
  Pointer<Pointer> phPeerEvent,
)>('PeerGraphRegisterEvent');

int PeerGraphSearchRecords(
  Pointer hGraph,
  Pointer<Utf16> pwzCriteria,
  Pointer<Pointer> phPeerEnum,
) =>
    _PeerGraphSearchRecords(
      hGraph,
      pwzCriteria,
      phPeerEnum,
    );

late final _PeerGraphSearchRecords = _p2pgraph.lookupFunction<
    Int32 Function(
  Pointer hGraph,
  Pointer<Utf16> pwzCriteria,
  Pointer<Pointer> phPeerEnum,
),
    int Function(
  Pointer hGraph,
  Pointer<Utf16> pwzCriteria,
  Pointer<Pointer> phPeerEnum,
)>('PeerGraphSearchRecords');

int PeerGraphSendData(
  Pointer hGraph,
  int ullConnectionId,
  Pointer<GUID> pType,
  int cbData,
  Pointer pvData,
) =>
    _PeerGraphSendData(
      hGraph,
      ullConnectionId,
      pType,
      cbData,
      pvData,
    );

late final _PeerGraphSendData = _p2pgraph.lookupFunction<
    Int32 Function(
  Pointer hGraph,
  Uint64 ullConnectionId,
  Pointer<GUID> pType,
  Uint32 cbData,
  Pointer pvData,
),
    int Function(
  Pointer hGraph,
  int ullConnectionId,
  Pointer<GUID> pType,
  int cbData,
  Pointer pvData,
)>('PeerGraphSendData');

int PeerGraphSetNodeAttributes(
  Pointer hGraph,
  Pointer<Utf16> pwzAttributes,
) =>
    _PeerGraphSetNodeAttributes(
      hGraph,
      pwzAttributes,
    );

late final _PeerGraphSetNodeAttributes = _p2pgraph.lookupFunction<
    Int32 Function(
  Pointer hGraph,
  Pointer<Utf16> pwzAttributes,
),
    int Function(
  Pointer hGraph,
  Pointer<Utf16> pwzAttributes,
)>('PeerGraphSetNodeAttributes');

int PeerGraphSetPresence(
  Pointer hGraph,
  int fPresent,
) =>
    _PeerGraphSetPresence(
      hGraph,
      fPresent,
    );

late final _PeerGraphSetPresence = _p2pgraph.lookupFunction<
    Int32 Function(
  Pointer hGraph,
  Int32 fPresent,
),
    int Function(
  Pointer hGraph,
  int fPresent,
)>('PeerGraphSetPresence');

int PeerGraphSetProperties(
  Pointer hGraph,
  Pointer<PEER_GRAPH_PROPERTIES> pGraphProperties,
) =>
    _PeerGraphSetProperties(
      hGraph,
      pGraphProperties,
    );

late final _PeerGraphSetProperties = _p2pgraph.lookupFunction<
    Int32 Function(
  Pointer hGraph,
  Pointer<PEER_GRAPH_PROPERTIES> pGraphProperties,
),
    int Function(
  Pointer hGraph,
  Pointer<PEER_GRAPH_PROPERTIES> pGraphProperties,
)>('PeerGraphSetProperties');

int PeerGraphShutdown() => _PeerGraphShutdown();

late final _PeerGraphShutdown = _p2pgraph
    .lookupFunction<Int32 Function(), int Function()>('PeerGraphShutdown');

int PeerGraphStartup(
  int wVersionRequested,
  Pointer<PEER_VERSION_DATA> pVersionData,
) =>
    _PeerGraphStartup(
      wVersionRequested,
      pVersionData,
    );

late final _PeerGraphStartup = _p2pgraph.lookupFunction<
    Int32 Function(
  Uint16 wVersionRequested,
  Pointer<PEER_VERSION_DATA> pVersionData,
),
    int Function(
  int wVersionRequested,
  Pointer<PEER_VERSION_DATA> pVersionData,
)>('PeerGraphStartup');

int PeerGraphUniversalTimeToPeerTime(
  Pointer hGraph,
  Pointer<FILETIME> pftUniversalTime,
  Pointer<FILETIME> pftPeerTime,
) =>
    _PeerGraphUniversalTimeToPeerTime(
      hGraph,
      pftUniversalTime,
      pftPeerTime,
    );

late final _PeerGraphUniversalTimeToPeerTime = _p2pgraph.lookupFunction<
    Int32 Function(
  Pointer hGraph,
  Pointer<FILETIME> pftUniversalTime,
  Pointer<FILETIME> pftPeerTime,
),
    int Function(
  Pointer hGraph,
  Pointer<FILETIME> pftUniversalTime,
  Pointer<FILETIME> pftPeerTime,
)>('PeerGraphUniversalTimeToPeerTime');

int PeerGraphUnregisterEvent(
  Pointer hPeerEvent,
) =>
    _PeerGraphUnregisterEvent(
      hPeerEvent,
    );

late final _PeerGraphUnregisterEvent = _p2pgraph.lookupFunction<
    Int32 Function(
  Pointer hPeerEvent,
),
    int Function(
  Pointer hPeerEvent,
)>('PeerGraphUnregisterEvent');

int PeerGraphUpdateRecord(
  Pointer hGraph,
  Pointer<PEER_RECORD> pRecord,
) =>
    _PeerGraphUpdateRecord(
      hGraph,
      pRecord,
    );

late final _PeerGraphUpdateRecord = _p2pgraph.lookupFunction<
    Int32 Function(
  Pointer hGraph,
  Pointer<PEER_RECORD> pRecord,
),
    int Function(
  Pointer hGraph,
  Pointer<PEER_RECORD> pRecord,
)>('PeerGraphUpdateRecord');

int PeerGraphValidateDeferredRecords(
  Pointer hGraph,
  int cRecordIds,
  Pointer<GUID> pRecordIds,
) =>
    _PeerGraphValidateDeferredRecords(
      hGraph,
      cRecordIds,
      pRecordIds,
    );

late final _PeerGraphValidateDeferredRecords = _p2pgraph.lookupFunction<
    Int32 Function(
  Pointer hGraph,
  Uint32 cRecordIds,
  Pointer<GUID> pRecordIds,
),
    int Function(
  Pointer hGraph,
  int cRecordIds,
  Pointer<GUID> pRecordIds,
)>('PeerGraphValidateDeferredRecords');

// -----------------------------------------------------------------------
// p2p.dll
// -----------------------------------------------------------------------
final _p2p = DynamicLibrary.open('p2p.dll');

int PeerCollabAddContact(
  Pointer<Utf16> pwzContactData,
  Pointer<Pointer<PEER_CONTACT>> ppContact,
) =>
    _PeerCollabAddContact(
      pwzContactData,
      ppContact,
    );

late final _PeerCollabAddContact = _p2p.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pwzContactData,
  Pointer<Pointer<PEER_CONTACT>> ppContact,
),
    int Function(
  Pointer<Utf16> pwzContactData,
  Pointer<Pointer<PEER_CONTACT>> ppContact,
)>('PeerCollabAddContact');

int PeerCollabAsyncInviteContact(
  Pointer<PEER_CONTACT> pcContact,
  Pointer<PEER_ENDPOINT> pcEndpoint,
  Pointer<PEER_INVITATION> pcInvitation,
  int hEvent,
  Pointer<IntPtr> phInvitation,
) =>
    _PeerCollabAsyncInviteContact(
      pcContact,
      pcEndpoint,
      pcInvitation,
      hEvent,
      phInvitation,
    );

late final _PeerCollabAsyncInviteContact = _p2p.lookupFunction<
    Int32 Function(
  Pointer<PEER_CONTACT> pcContact,
  Pointer<PEER_ENDPOINT> pcEndpoint,
  Pointer<PEER_INVITATION> pcInvitation,
  IntPtr hEvent,
  Pointer<IntPtr> phInvitation,
),
    int Function(
  Pointer<PEER_CONTACT> pcContact,
  Pointer<PEER_ENDPOINT> pcEndpoint,
  Pointer<PEER_INVITATION> pcInvitation,
  int hEvent,
  Pointer<IntPtr> phInvitation,
)>('PeerCollabAsyncInviteContact');

int PeerCollabAsyncInviteEndpoint(
  Pointer<PEER_ENDPOINT> pcEndpoint,
  Pointer<PEER_INVITATION> pcInvitation,
  int hEvent,
  Pointer<IntPtr> phInvitation,
) =>
    _PeerCollabAsyncInviteEndpoint(
      pcEndpoint,
      pcInvitation,
      hEvent,
      phInvitation,
    );

late final _PeerCollabAsyncInviteEndpoint = _p2p.lookupFunction<
    Int32 Function(
  Pointer<PEER_ENDPOINT> pcEndpoint,
  Pointer<PEER_INVITATION> pcInvitation,
  IntPtr hEvent,
  Pointer<IntPtr> phInvitation,
),
    int Function(
  Pointer<PEER_ENDPOINT> pcEndpoint,
  Pointer<PEER_INVITATION> pcInvitation,
  int hEvent,
  Pointer<IntPtr> phInvitation,
)>('PeerCollabAsyncInviteEndpoint');

int PeerCollabCancelInvitation(
  int hInvitation,
) =>
    _PeerCollabCancelInvitation(
      hInvitation,
    );

late final _PeerCollabCancelInvitation = _p2p.lookupFunction<
    Int32 Function(
  IntPtr hInvitation,
),
    int Function(
  int hInvitation,
)>('PeerCollabCancelInvitation');

int PeerCollabCloseHandle(
  int hInvitation,
) =>
    _PeerCollabCloseHandle(
      hInvitation,
    );

late final _PeerCollabCloseHandle = _p2p.lookupFunction<
    Int32 Function(
  IntPtr hInvitation,
),
    int Function(
  int hInvitation,
)>('PeerCollabCloseHandle');

int PeerCollabDeleteContact(
  Pointer<Utf16> pwzPeerName,
) =>
    _PeerCollabDeleteContact(
      pwzPeerName,
    );

late final _PeerCollabDeleteContact = _p2p.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pwzPeerName,
),
    int Function(
  Pointer<Utf16> pwzPeerName,
)>('PeerCollabDeleteContact');

int PeerCollabDeleteEndpointData(
  Pointer<PEER_ENDPOINT> pcEndpoint,
) =>
    _PeerCollabDeleteEndpointData(
      pcEndpoint,
    );

late final _PeerCollabDeleteEndpointData = _p2p.lookupFunction<
    Int32 Function(
  Pointer<PEER_ENDPOINT> pcEndpoint,
),
    int Function(
  Pointer<PEER_ENDPOINT> pcEndpoint,
)>('PeerCollabDeleteEndpointData');

int PeerCollabDeleteObject(
  Pointer<GUID> pObjectId,
) =>
    _PeerCollabDeleteObject(
      pObjectId,
    );

late final _PeerCollabDeleteObject = _p2p.lookupFunction<
    Int32 Function(
  Pointer<GUID> pObjectId,
),
    int Function(
  Pointer<GUID> pObjectId,
)>('PeerCollabDeleteObject');

int PeerCollabEnumApplicationRegistrationInfo(
  int registrationType,
  Pointer<Pointer> phPeerEnum,
) =>
    _PeerCollabEnumApplicationRegistrationInfo(
      registrationType,
      phPeerEnum,
    );

late final _PeerCollabEnumApplicationRegistrationInfo = _p2p.lookupFunction<
    Int32 Function(
  Int32 registrationType,
  Pointer<Pointer> phPeerEnum,
),
    int Function(
  int registrationType,
  Pointer<Pointer> phPeerEnum,
)>('PeerCollabEnumApplicationRegistrationInfo');

int PeerCollabEnumApplications(
  Pointer<PEER_ENDPOINT> pcEndpoint,
  Pointer<GUID> pApplicationId,
  Pointer<Pointer> phPeerEnum,
) =>
    _PeerCollabEnumApplications(
      pcEndpoint,
      pApplicationId,
      phPeerEnum,
    );

late final _PeerCollabEnumApplications = _p2p.lookupFunction<
    Int32 Function(
  Pointer<PEER_ENDPOINT> pcEndpoint,
  Pointer<GUID> pApplicationId,
  Pointer<Pointer> phPeerEnum,
),
    int Function(
  Pointer<PEER_ENDPOINT> pcEndpoint,
  Pointer<GUID> pApplicationId,
  Pointer<Pointer> phPeerEnum,
)>('PeerCollabEnumApplications');

int PeerCollabEnumContacts(
  Pointer<Pointer> phPeerEnum,
) =>
    _PeerCollabEnumContacts(
      phPeerEnum,
    );

late final _PeerCollabEnumContacts = _p2p.lookupFunction<
    Int32 Function(
  Pointer<Pointer> phPeerEnum,
),
    int Function(
  Pointer<Pointer> phPeerEnum,
)>('PeerCollabEnumContacts');

int PeerCollabEnumEndpoints(
  Pointer<PEER_CONTACT> pcContact,
  Pointer<Pointer> phPeerEnum,
) =>
    _PeerCollabEnumEndpoints(
      pcContact,
      phPeerEnum,
    );

late final _PeerCollabEnumEndpoints = _p2p.lookupFunction<
    Int32 Function(
  Pointer<PEER_CONTACT> pcContact,
  Pointer<Pointer> phPeerEnum,
),
    int Function(
  Pointer<PEER_CONTACT> pcContact,
  Pointer<Pointer> phPeerEnum,
)>('PeerCollabEnumEndpoints');

int PeerCollabEnumObjects(
  Pointer<PEER_ENDPOINT> pcEndpoint,
  Pointer<GUID> pObjectId,
  Pointer<Pointer> phPeerEnum,
) =>
    _PeerCollabEnumObjects(
      pcEndpoint,
      pObjectId,
      phPeerEnum,
    );

late final _PeerCollabEnumObjects = _p2p.lookupFunction<
    Int32 Function(
  Pointer<PEER_ENDPOINT> pcEndpoint,
  Pointer<GUID> pObjectId,
  Pointer<Pointer> phPeerEnum,
),
    int Function(
  Pointer<PEER_ENDPOINT> pcEndpoint,
  Pointer<GUID> pObjectId,
  Pointer<Pointer> phPeerEnum,
)>('PeerCollabEnumObjects');

int PeerCollabEnumPeopleNearMe(
  Pointer<Pointer> phPeerEnum,
) =>
    _PeerCollabEnumPeopleNearMe(
      phPeerEnum,
    );

late final _PeerCollabEnumPeopleNearMe = _p2p.lookupFunction<
    Int32 Function(
  Pointer<Pointer> phPeerEnum,
),
    int Function(
  Pointer<Pointer> phPeerEnum,
)>('PeerCollabEnumPeopleNearMe');

int PeerCollabExportContact(
  Pointer<Utf16> pwzPeerName,
  Pointer<Pointer<Utf16>> ppwzContactData,
) =>
    _PeerCollabExportContact(
      pwzPeerName,
      ppwzContactData,
    );

late final _PeerCollabExportContact = _p2p.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pwzPeerName,
  Pointer<Pointer<Utf16>> ppwzContactData,
),
    int Function(
  Pointer<Utf16> pwzPeerName,
  Pointer<Pointer<Utf16>> ppwzContactData,
)>('PeerCollabExportContact');

int PeerCollabGetAppLaunchInfo(
  Pointer<Pointer<PEER_APP_LAUNCH_INFO>> ppLaunchInfo,
) =>
    _PeerCollabGetAppLaunchInfo(
      ppLaunchInfo,
    );

late final _PeerCollabGetAppLaunchInfo = _p2p.lookupFunction<
    Int32 Function(
  Pointer<Pointer<PEER_APP_LAUNCH_INFO>> ppLaunchInfo,
),
    int Function(
  Pointer<Pointer<PEER_APP_LAUNCH_INFO>> ppLaunchInfo,
)>('PeerCollabGetAppLaunchInfo');

int PeerCollabGetApplicationRegistrationInfo(
  Pointer<GUID> pApplicationId,
  int registrationType,
  Pointer<Pointer<PEER_APPLICATION_REGISTRATION_INFO>> ppApplication,
) =>
    _PeerCollabGetApplicationRegistrationInfo(
      pApplicationId,
      registrationType,
      ppApplication,
    );

late final _PeerCollabGetApplicationRegistrationInfo = _p2p.lookupFunction<
    Int32 Function(
  Pointer<GUID> pApplicationId,
  Int32 registrationType,
  Pointer<Pointer<PEER_APPLICATION_REGISTRATION_INFO>> ppApplication,
),
    int Function(
  Pointer<GUID> pApplicationId,
  int registrationType,
  Pointer<Pointer<PEER_APPLICATION_REGISTRATION_INFO>> ppApplication,
)>('PeerCollabGetApplicationRegistrationInfo');

int PeerCollabGetContact(
  Pointer<Utf16> pwzPeerName,
  Pointer<Pointer<PEER_CONTACT>> ppContact,
) =>
    _PeerCollabGetContact(
      pwzPeerName,
      ppContact,
    );

late final _PeerCollabGetContact = _p2p.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pwzPeerName,
  Pointer<Pointer<PEER_CONTACT>> ppContact,
),
    int Function(
  Pointer<Utf16> pwzPeerName,
  Pointer<Pointer<PEER_CONTACT>> ppContact,
)>('PeerCollabGetContact');

int PeerCollabGetEndpointName(
  Pointer<Pointer<Utf16>> ppwzEndpointName,
) =>
    _PeerCollabGetEndpointName(
      ppwzEndpointName,
    );

late final _PeerCollabGetEndpointName = _p2p.lookupFunction<
    Int32 Function(
  Pointer<Pointer<Utf16>> ppwzEndpointName,
),
    int Function(
  Pointer<Pointer<Utf16>> ppwzEndpointName,
)>('PeerCollabGetEndpointName');

int PeerCollabGetEventData(
  Pointer hPeerEvent,
  Pointer<Pointer<PEER_COLLAB_EVENT_DATA>> ppEventData,
) =>
    _PeerCollabGetEventData(
      hPeerEvent,
      ppEventData,
    );

late final _PeerCollabGetEventData = _p2p.lookupFunction<
    Int32 Function(
  Pointer hPeerEvent,
  Pointer<Pointer<PEER_COLLAB_EVENT_DATA>> ppEventData,
),
    int Function(
  Pointer hPeerEvent,
  Pointer<Pointer<PEER_COLLAB_EVENT_DATA>> ppEventData,
)>('PeerCollabGetEventData');

int PeerCollabGetInvitationResponse(
  int hInvitation,
  Pointer<Pointer<PEER_INVITATION_RESPONSE>> ppInvitationResponse,
) =>
    _PeerCollabGetInvitationResponse(
      hInvitation,
      ppInvitationResponse,
    );

late final _PeerCollabGetInvitationResponse = _p2p.lookupFunction<
    Int32 Function(
  IntPtr hInvitation,
  Pointer<Pointer<PEER_INVITATION_RESPONSE>> ppInvitationResponse,
),
    int Function(
  int hInvitation,
  Pointer<Pointer<PEER_INVITATION_RESPONSE>> ppInvitationResponse,
)>('PeerCollabGetInvitationResponse');

int PeerCollabGetPresenceInfo(
  Pointer<PEER_ENDPOINT> pcEndpoint,
  Pointer<Pointer<PEER_PRESENCE_INFO>> ppPresenceInfo,
) =>
    _PeerCollabGetPresenceInfo(
      pcEndpoint,
      ppPresenceInfo,
    );

late final _PeerCollabGetPresenceInfo = _p2p.lookupFunction<
    Int32 Function(
  Pointer<PEER_ENDPOINT> pcEndpoint,
  Pointer<Pointer<PEER_PRESENCE_INFO>> ppPresenceInfo,
),
    int Function(
  Pointer<PEER_ENDPOINT> pcEndpoint,
  Pointer<Pointer<PEER_PRESENCE_INFO>> ppPresenceInfo,
)>('PeerCollabGetPresenceInfo');

int PeerCollabGetSigninOptions(
  Pointer<Uint32> pdwSigninOptions,
) =>
    _PeerCollabGetSigninOptions(
      pdwSigninOptions,
    );

late final _PeerCollabGetSigninOptions = _p2p.lookupFunction<
    Int32 Function(
  Pointer<Uint32> pdwSigninOptions,
),
    int Function(
  Pointer<Uint32> pdwSigninOptions,
)>('PeerCollabGetSigninOptions');

int PeerCollabInviteContact(
  Pointer<PEER_CONTACT> pcContact,
  Pointer<PEER_ENDPOINT> pcEndpoint,
  Pointer<PEER_INVITATION> pcInvitation,
  Pointer<Pointer<PEER_INVITATION_RESPONSE>> ppResponse,
) =>
    _PeerCollabInviteContact(
      pcContact,
      pcEndpoint,
      pcInvitation,
      ppResponse,
    );

late final _PeerCollabInviteContact = _p2p.lookupFunction<
    Int32 Function(
  Pointer<PEER_CONTACT> pcContact,
  Pointer<PEER_ENDPOINT> pcEndpoint,
  Pointer<PEER_INVITATION> pcInvitation,
  Pointer<Pointer<PEER_INVITATION_RESPONSE>> ppResponse,
),
    int Function(
  Pointer<PEER_CONTACT> pcContact,
  Pointer<PEER_ENDPOINT> pcEndpoint,
  Pointer<PEER_INVITATION> pcInvitation,
  Pointer<Pointer<PEER_INVITATION_RESPONSE>> ppResponse,
)>('PeerCollabInviteContact');

int PeerCollabInviteEndpoint(
  Pointer<PEER_ENDPOINT> pcEndpoint,
  Pointer<PEER_INVITATION> pcInvitation,
  Pointer<Pointer<PEER_INVITATION_RESPONSE>> ppResponse,
) =>
    _PeerCollabInviteEndpoint(
      pcEndpoint,
      pcInvitation,
      ppResponse,
    );

late final _PeerCollabInviteEndpoint = _p2p.lookupFunction<
    Int32 Function(
  Pointer<PEER_ENDPOINT> pcEndpoint,
  Pointer<PEER_INVITATION> pcInvitation,
  Pointer<Pointer<PEER_INVITATION_RESPONSE>> ppResponse,
),
    int Function(
  Pointer<PEER_ENDPOINT> pcEndpoint,
  Pointer<PEER_INVITATION> pcInvitation,
  Pointer<Pointer<PEER_INVITATION_RESPONSE>> ppResponse,
)>('PeerCollabInviteEndpoint');

int PeerCollabParseContact(
  Pointer<Utf16> pwzContactData,
  Pointer<Pointer<PEER_CONTACT>> ppContact,
) =>
    _PeerCollabParseContact(
      pwzContactData,
      ppContact,
    );

late final _PeerCollabParseContact = _p2p.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pwzContactData,
  Pointer<Pointer<PEER_CONTACT>> ppContact,
),
    int Function(
  Pointer<Utf16> pwzContactData,
  Pointer<Pointer<PEER_CONTACT>> ppContact,
)>('PeerCollabParseContact');

int PeerCollabQueryContactData(
  Pointer<PEER_ENDPOINT> pcEndpoint,
  Pointer<Pointer<Utf16>> ppwzContactData,
) =>
    _PeerCollabQueryContactData(
      pcEndpoint,
      ppwzContactData,
    );

late final _PeerCollabQueryContactData = _p2p.lookupFunction<
    Int32 Function(
  Pointer<PEER_ENDPOINT> pcEndpoint,
  Pointer<Pointer<Utf16>> ppwzContactData,
),
    int Function(
  Pointer<PEER_ENDPOINT> pcEndpoint,
  Pointer<Pointer<Utf16>> ppwzContactData,
)>('PeerCollabQueryContactData');

int PeerCollabRefreshEndpointData(
  Pointer<PEER_ENDPOINT> pcEndpoint,
) =>
    _PeerCollabRefreshEndpointData(
      pcEndpoint,
    );

late final _PeerCollabRefreshEndpointData = _p2p.lookupFunction<
    Int32 Function(
  Pointer<PEER_ENDPOINT> pcEndpoint,
),
    int Function(
  Pointer<PEER_ENDPOINT> pcEndpoint,
)>('PeerCollabRefreshEndpointData');

int PeerCollabRegisterApplication(
  Pointer<PEER_APPLICATION_REGISTRATION_INFO> pcApplication,
  int registrationType,
) =>
    _PeerCollabRegisterApplication(
      pcApplication,
      registrationType,
    );

late final _PeerCollabRegisterApplication = _p2p.lookupFunction<
    Int32 Function(
  Pointer<PEER_APPLICATION_REGISTRATION_INFO> pcApplication,
  Int32 registrationType,
),
    int Function(
  Pointer<PEER_APPLICATION_REGISTRATION_INFO> pcApplication,
  int registrationType,
)>('PeerCollabRegisterApplication');

int PeerCollabRegisterEvent(
  int hEvent,
  int cEventRegistration,
  Pointer<PEER_COLLAB_EVENT_REGISTRATION> pEventRegistrations,
  Pointer<Pointer> phPeerEvent,
) =>
    _PeerCollabRegisterEvent(
      hEvent,
      cEventRegistration,
      pEventRegistrations,
      phPeerEvent,
    );

late final _PeerCollabRegisterEvent = _p2p.lookupFunction<
    Int32 Function(
  IntPtr hEvent,
  Uint32 cEventRegistration,
  Pointer<PEER_COLLAB_EVENT_REGISTRATION> pEventRegistrations,
  Pointer<Pointer> phPeerEvent,
),
    int Function(
  int hEvent,
  int cEventRegistration,
  Pointer<PEER_COLLAB_EVENT_REGISTRATION> pEventRegistrations,
  Pointer<Pointer> phPeerEvent,
)>('PeerCollabRegisterEvent');

int PeerCollabSetEndpointName(
  Pointer<Utf16> pwzEndpointName,
) =>
    _PeerCollabSetEndpointName(
      pwzEndpointName,
    );

late final _PeerCollabSetEndpointName = _p2p.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pwzEndpointName,
),
    int Function(
  Pointer<Utf16> pwzEndpointName,
)>('PeerCollabSetEndpointName');

int PeerCollabSetObject(
  Pointer<PEER_OBJECT> pcObject,
) =>
    _PeerCollabSetObject(
      pcObject,
    );

late final _PeerCollabSetObject = _p2p.lookupFunction<
    Int32 Function(
  Pointer<PEER_OBJECT> pcObject,
),
    int Function(
  Pointer<PEER_OBJECT> pcObject,
)>('PeerCollabSetObject');

int PeerCollabSetPresenceInfo(
  Pointer<PEER_PRESENCE_INFO> pcPresenceInfo,
) =>
    _PeerCollabSetPresenceInfo(
      pcPresenceInfo,
    );

late final _PeerCollabSetPresenceInfo = _p2p.lookupFunction<
    Int32 Function(
  Pointer<PEER_PRESENCE_INFO> pcPresenceInfo,
),
    int Function(
  Pointer<PEER_PRESENCE_INFO> pcPresenceInfo,
)>('PeerCollabSetPresenceInfo');

int PeerCollabShutdown() => _PeerCollabShutdown();

late final _PeerCollabShutdown =
    _p2p.lookupFunction<Int32 Function(), int Function()>('PeerCollabShutdown');

int PeerCollabSignin(
  int hwndParent,
  int dwSigninOptions,
) =>
    _PeerCollabSignin(
      hwndParent,
      dwSigninOptions,
    );

late final _PeerCollabSignin = _p2p.lookupFunction<
    Int32 Function(
  IntPtr hwndParent,
  Uint32 dwSigninOptions,
),
    int Function(
  int hwndParent,
  int dwSigninOptions,
)>('PeerCollabSignin');

int PeerCollabSignout(
  int dwSigninOptions,
) =>
    _PeerCollabSignout(
      dwSigninOptions,
    );

late final _PeerCollabSignout = _p2p.lookupFunction<
    Int32 Function(
  Uint32 dwSigninOptions,
),
    int Function(
  int dwSigninOptions,
)>('PeerCollabSignout');

int PeerCollabStartup(
  int wVersionRequested,
) =>
    _PeerCollabStartup(
      wVersionRequested,
    );

late final _PeerCollabStartup = _p2p.lookupFunction<
    Int32 Function(
  Uint16 wVersionRequested,
),
    int Function(
  int wVersionRequested,
)>('PeerCollabStartup');

int PeerCollabSubscribeEndpointData(
  Pointer<PEER_ENDPOINT> pcEndpoint,
) =>
    _PeerCollabSubscribeEndpointData(
      pcEndpoint,
    );

late final _PeerCollabSubscribeEndpointData = _p2p.lookupFunction<
    Int32 Function(
  Pointer<PEER_ENDPOINT> pcEndpoint,
),
    int Function(
  Pointer<PEER_ENDPOINT> pcEndpoint,
)>('PeerCollabSubscribeEndpointData');

int PeerCollabUnregisterApplication(
  Pointer<GUID> pApplicationId,
  int registrationType,
) =>
    _PeerCollabUnregisterApplication(
      pApplicationId,
      registrationType,
    );

late final _PeerCollabUnregisterApplication = _p2p.lookupFunction<
    Int32 Function(
  Pointer<GUID> pApplicationId,
  Int32 registrationType,
),
    int Function(
  Pointer<GUID> pApplicationId,
  int registrationType,
)>('PeerCollabUnregisterApplication');

int PeerCollabUnregisterEvent(
  Pointer hPeerEvent,
) =>
    _PeerCollabUnregisterEvent(
      hPeerEvent,
    );

late final _PeerCollabUnregisterEvent = _p2p.lookupFunction<
    Int32 Function(
  Pointer hPeerEvent,
),
    int Function(
  Pointer hPeerEvent,
)>('PeerCollabUnregisterEvent');

int PeerCollabUnsubscribeEndpointData(
  Pointer<PEER_ENDPOINT> pcEndpoint,
) =>
    _PeerCollabUnsubscribeEndpointData(
      pcEndpoint,
    );

late final _PeerCollabUnsubscribeEndpointData = _p2p.lookupFunction<
    Int32 Function(
  Pointer<PEER_ENDPOINT> pcEndpoint,
),
    int Function(
  Pointer<PEER_ENDPOINT> pcEndpoint,
)>('PeerCollabUnsubscribeEndpointData');

int PeerCollabUpdateContact(
  Pointer<PEER_CONTACT> pContact,
) =>
    _PeerCollabUpdateContact(
      pContact,
    );

late final _PeerCollabUpdateContact = _p2p.lookupFunction<
    Int32 Function(
  Pointer<PEER_CONTACT> pContact,
),
    int Function(
  Pointer<PEER_CONTACT> pContact,
)>('PeerCollabUpdateContact');

int PeerCreatePeerName(
  Pointer<Utf16> pwzIdentity,
  Pointer<Utf16> pwzClassifier,
  Pointer<Pointer<Utf16>> ppwzPeerName,
) =>
    _PeerCreatePeerName(
      pwzIdentity,
      pwzClassifier,
      ppwzPeerName,
    );

late final _PeerCreatePeerName = _p2p.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pwzIdentity,
  Pointer<Utf16> pwzClassifier,
  Pointer<Pointer<Utf16>> ppwzPeerName,
),
    int Function(
  Pointer<Utf16> pwzIdentity,
  Pointer<Utf16> pwzClassifier,
  Pointer<Pointer<Utf16>> ppwzPeerName,
)>('PeerCreatePeerName');

int PeerEndEnumeration(
  Pointer hPeerEnum,
) =>
    _PeerEndEnumeration(
      hPeerEnum,
    );

late final _PeerEndEnumeration = _p2p.lookupFunction<
    Int32 Function(
  Pointer hPeerEnum,
),
    int Function(
  Pointer hPeerEnum,
)>('PeerEndEnumeration');

int PeerEnumGroups(
  Pointer<Utf16> pwzIdentity,
  Pointer<Pointer> phPeerEnum,
) =>
    _PeerEnumGroups(
      pwzIdentity,
      phPeerEnum,
    );

late final _PeerEnumGroups = _p2p.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pwzIdentity,
  Pointer<Pointer> phPeerEnum,
),
    int Function(
  Pointer<Utf16> pwzIdentity,
  Pointer<Pointer> phPeerEnum,
)>('PeerEnumGroups');

int PeerEnumIdentities(
  Pointer<Pointer> phPeerEnum,
) =>
    _PeerEnumIdentities(
      phPeerEnum,
    );

late final _PeerEnumIdentities = _p2p.lookupFunction<
    Int32 Function(
  Pointer<Pointer> phPeerEnum,
),
    int Function(
  Pointer<Pointer> phPeerEnum,
)>('PeerEnumIdentities');

void PeerFreeData(
  Pointer pvData,
) =>
    _PeerFreeData(
      pvData,
    );

late final _PeerFreeData = _p2p.lookupFunction<
    Void Function(
  Pointer pvData,
),
    void Function(
  Pointer pvData,
)>('PeerFreeData');

int PeerGetItemCount(
  Pointer hPeerEnum,
  Pointer<Uint32> pCount,
) =>
    _PeerGetItemCount(
      hPeerEnum,
      pCount,
    );

late final _PeerGetItemCount = _p2p.lookupFunction<
    Int32 Function(
  Pointer hPeerEnum,
  Pointer<Uint32> pCount,
),
    int Function(
  Pointer hPeerEnum,
  Pointer<Uint32> pCount,
)>('PeerGetItemCount');

int PeerGetNextItem(
  Pointer hPeerEnum,
  Pointer<Uint32> pCount,
  Pointer<Pointer<Pointer>> pppvItems,
) =>
    _PeerGetNextItem(
      hPeerEnum,
      pCount,
      pppvItems,
    );

late final _PeerGetNextItem = _p2p.lookupFunction<
    Int32 Function(
  Pointer hPeerEnum,
  Pointer<Uint32> pCount,
  Pointer<Pointer<Pointer>> pppvItems,
),
    int Function(
  Pointer hPeerEnum,
  Pointer<Uint32> pCount,
  Pointer<Pointer<Pointer>> pppvItems,
)>('PeerGetNextItem');

int PeerGroupAddRecord(
  Pointer hGroup,
  Pointer<PEER_RECORD> pRecord,
  Pointer<GUID> pRecordId,
) =>
    _PeerGroupAddRecord(
      hGroup,
      pRecord,
      pRecordId,
    );

late final _PeerGroupAddRecord = _p2p.lookupFunction<
    Int32 Function(
  Pointer hGroup,
  Pointer<PEER_RECORD> pRecord,
  Pointer<GUID> pRecordId,
),
    int Function(
  Pointer hGroup,
  Pointer<PEER_RECORD> pRecord,
  Pointer<GUID> pRecordId,
)>('PeerGroupAddRecord');

int PeerGroupClose(
  Pointer hGroup,
) =>
    _PeerGroupClose(
      hGroup,
    );

late final _PeerGroupClose = _p2p.lookupFunction<
    Int32 Function(
  Pointer hGroup,
),
    int Function(
  Pointer hGroup,
)>('PeerGroupClose');

int PeerGroupCloseDirectConnection(
  Pointer hGroup,
  int ullConnectionId,
) =>
    _PeerGroupCloseDirectConnection(
      hGroup,
      ullConnectionId,
    );

late final _PeerGroupCloseDirectConnection = _p2p.lookupFunction<
    Int32 Function(
  Pointer hGroup,
  Uint64 ullConnectionId,
),
    int Function(
  Pointer hGroup,
  int ullConnectionId,
)>('PeerGroupCloseDirectConnection');

int PeerGroupConnect(
  Pointer hGroup,
) =>
    _PeerGroupConnect(
      hGroup,
    );

late final _PeerGroupConnect = _p2p.lookupFunction<
    Int32 Function(
  Pointer hGroup,
),
    int Function(
  Pointer hGroup,
)>('PeerGroupConnect');

int PeerGroupConnectByAddress(
  Pointer hGroup,
  int cAddresses,
  Pointer<PEER_ADDRESS> pAddresses,
) =>
    _PeerGroupConnectByAddress(
      hGroup,
      cAddresses,
      pAddresses,
    );

late final _PeerGroupConnectByAddress = _p2p.lookupFunction<
    Int32 Function(
  Pointer hGroup,
  Uint32 cAddresses,
  Pointer<PEER_ADDRESS> pAddresses,
),
    int Function(
  Pointer hGroup,
  int cAddresses,
  Pointer<PEER_ADDRESS> pAddresses,
)>('PeerGroupConnectByAddress');

int PeerGroupCreate(
  Pointer<PEER_GROUP_PROPERTIES> pProperties,
  Pointer<Pointer> phGroup,
) =>
    _PeerGroupCreate(
      pProperties,
      phGroup,
    );

late final _PeerGroupCreate = _p2p.lookupFunction<
    Int32 Function(
  Pointer<PEER_GROUP_PROPERTIES> pProperties,
  Pointer<Pointer> phGroup,
),
    int Function(
  Pointer<PEER_GROUP_PROPERTIES> pProperties,
  Pointer<Pointer> phGroup,
)>('PeerGroupCreate');

int PeerGroupCreateInvitation(
  Pointer hGroup,
  Pointer<Utf16> pwzIdentityInfo,
  Pointer<FILETIME> pftExpiration,
  int cRoles,
  Pointer<GUID> pRoles,
  Pointer<Pointer<Utf16>> ppwzInvitation,
) =>
    _PeerGroupCreateInvitation(
      hGroup,
      pwzIdentityInfo,
      pftExpiration,
      cRoles,
      pRoles,
      ppwzInvitation,
    );

late final _PeerGroupCreateInvitation = _p2p.lookupFunction<
    Int32 Function(
  Pointer hGroup,
  Pointer<Utf16> pwzIdentityInfo,
  Pointer<FILETIME> pftExpiration,
  Uint32 cRoles,
  Pointer<GUID> pRoles,
  Pointer<Pointer<Utf16>> ppwzInvitation,
),
    int Function(
  Pointer hGroup,
  Pointer<Utf16> pwzIdentityInfo,
  Pointer<FILETIME> pftExpiration,
  int cRoles,
  Pointer<GUID> pRoles,
  Pointer<Pointer<Utf16>> ppwzInvitation,
)>('PeerGroupCreateInvitation');

int PeerGroupCreatePasswordInvitation(
  Pointer hGroup,
  Pointer<Pointer<Utf16>> ppwzInvitation,
) =>
    _PeerGroupCreatePasswordInvitation(
      hGroup,
      ppwzInvitation,
    );

late final _PeerGroupCreatePasswordInvitation = _p2p.lookupFunction<
    Int32 Function(
  Pointer hGroup,
  Pointer<Pointer<Utf16>> ppwzInvitation,
),
    int Function(
  Pointer hGroup,
  Pointer<Pointer<Utf16>> ppwzInvitation,
)>('PeerGroupCreatePasswordInvitation');

int PeerGroupDelete(
  Pointer<Utf16> pwzIdentity,
  Pointer<Utf16> pwzGroupPeerName,
) =>
    _PeerGroupDelete(
      pwzIdentity,
      pwzGroupPeerName,
    );

late final _PeerGroupDelete = _p2p.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pwzIdentity,
  Pointer<Utf16> pwzGroupPeerName,
),
    int Function(
  Pointer<Utf16> pwzIdentity,
  Pointer<Utf16> pwzGroupPeerName,
)>('PeerGroupDelete');

int PeerGroupDeleteRecord(
  Pointer hGroup,
  Pointer<GUID> pRecordId,
) =>
    _PeerGroupDeleteRecord(
      hGroup,
      pRecordId,
    );

late final _PeerGroupDeleteRecord = _p2p.lookupFunction<
    Int32 Function(
  Pointer hGroup,
  Pointer<GUID> pRecordId,
),
    int Function(
  Pointer hGroup,
  Pointer<GUID> pRecordId,
)>('PeerGroupDeleteRecord');

int PeerGroupEnumConnections(
  Pointer hGroup,
  int dwFlags,
  Pointer<Pointer> phPeerEnum,
) =>
    _PeerGroupEnumConnections(
      hGroup,
      dwFlags,
      phPeerEnum,
    );

late final _PeerGroupEnumConnections = _p2p.lookupFunction<
    Int32 Function(
  Pointer hGroup,
  Uint32 dwFlags,
  Pointer<Pointer> phPeerEnum,
),
    int Function(
  Pointer hGroup,
  int dwFlags,
  Pointer<Pointer> phPeerEnum,
)>('PeerGroupEnumConnections');

int PeerGroupEnumMembers(
  Pointer hGroup,
  int dwFlags,
  Pointer<Utf16> pwzIdentity,
  Pointer<Pointer> phPeerEnum,
) =>
    _PeerGroupEnumMembers(
      hGroup,
      dwFlags,
      pwzIdentity,
      phPeerEnum,
    );

late final _PeerGroupEnumMembers = _p2p.lookupFunction<
    Int32 Function(
  Pointer hGroup,
  Uint32 dwFlags,
  Pointer<Utf16> pwzIdentity,
  Pointer<Pointer> phPeerEnum,
),
    int Function(
  Pointer hGroup,
  int dwFlags,
  Pointer<Utf16> pwzIdentity,
  Pointer<Pointer> phPeerEnum,
)>('PeerGroupEnumMembers');

int PeerGroupEnumRecords(
  Pointer hGroup,
  Pointer<GUID> pRecordType,
  Pointer<Pointer> phPeerEnum,
) =>
    _PeerGroupEnumRecords(
      hGroup,
      pRecordType,
      phPeerEnum,
    );

late final _PeerGroupEnumRecords = _p2p.lookupFunction<
    Int32 Function(
  Pointer hGroup,
  Pointer<GUID> pRecordType,
  Pointer<Pointer> phPeerEnum,
),
    int Function(
  Pointer hGroup,
  Pointer<GUID> pRecordType,
  Pointer<Pointer> phPeerEnum,
)>('PeerGroupEnumRecords');

int PeerGroupExportConfig(
  Pointer hGroup,
  Pointer<Utf16> pwzPassword,
  Pointer<Pointer<Utf16>> ppwzXML,
) =>
    _PeerGroupExportConfig(
      hGroup,
      pwzPassword,
      ppwzXML,
    );

late final _PeerGroupExportConfig = _p2p.lookupFunction<
    Int32 Function(
  Pointer hGroup,
  Pointer<Utf16> pwzPassword,
  Pointer<Pointer<Utf16>> ppwzXML,
),
    int Function(
  Pointer hGroup,
  Pointer<Utf16> pwzPassword,
  Pointer<Pointer<Utf16>> ppwzXML,
)>('PeerGroupExportConfig');

int PeerGroupExportDatabase(
  Pointer hGroup,
  Pointer<Utf16> pwzFilePath,
) =>
    _PeerGroupExportDatabase(
      hGroup,
      pwzFilePath,
    );

late final _PeerGroupExportDatabase = _p2p.lookupFunction<
    Int32 Function(
  Pointer hGroup,
  Pointer<Utf16> pwzFilePath,
),
    int Function(
  Pointer hGroup,
  Pointer<Utf16> pwzFilePath,
)>('PeerGroupExportDatabase');

int PeerGroupGetEventData(
  Pointer hPeerEvent,
  Pointer<Pointer<PEER_GROUP_EVENT_DATA>> ppEventData,
) =>
    _PeerGroupGetEventData(
      hPeerEvent,
      ppEventData,
    );

late final _PeerGroupGetEventData = _p2p.lookupFunction<
    Int32 Function(
  Pointer hPeerEvent,
  Pointer<Pointer<PEER_GROUP_EVENT_DATA>> ppEventData,
),
    int Function(
  Pointer hPeerEvent,
  Pointer<Pointer<PEER_GROUP_EVENT_DATA>> ppEventData,
)>('PeerGroupGetEventData');

int PeerGroupGetProperties(
  Pointer hGroup,
  Pointer<Pointer<PEER_GROUP_PROPERTIES>> ppProperties,
) =>
    _PeerGroupGetProperties(
      hGroup,
      ppProperties,
    );

late final _PeerGroupGetProperties = _p2p.lookupFunction<
    Int32 Function(
  Pointer hGroup,
  Pointer<Pointer<PEER_GROUP_PROPERTIES>> ppProperties,
),
    int Function(
  Pointer hGroup,
  Pointer<Pointer<PEER_GROUP_PROPERTIES>> ppProperties,
)>('PeerGroupGetProperties');

int PeerGroupGetRecord(
  Pointer hGroup,
  Pointer<GUID> pRecordId,
  Pointer<Pointer<PEER_RECORD>> ppRecord,
) =>
    _PeerGroupGetRecord(
      hGroup,
      pRecordId,
      ppRecord,
    );

late final _PeerGroupGetRecord = _p2p.lookupFunction<
    Int32 Function(
  Pointer hGroup,
  Pointer<GUID> pRecordId,
  Pointer<Pointer<PEER_RECORD>> ppRecord,
),
    int Function(
  Pointer hGroup,
  Pointer<GUID> pRecordId,
  Pointer<Pointer<PEER_RECORD>> ppRecord,
)>('PeerGroupGetRecord');

int PeerGroupGetStatus(
  Pointer hGroup,
  Pointer<Uint32> pdwStatus,
) =>
    _PeerGroupGetStatus(
      hGroup,
      pdwStatus,
    );

late final _PeerGroupGetStatus = _p2p.lookupFunction<
    Int32 Function(
  Pointer hGroup,
  Pointer<Uint32> pdwStatus,
),
    int Function(
  Pointer hGroup,
  Pointer<Uint32> pdwStatus,
)>('PeerGroupGetStatus');

int PeerGroupImportConfig(
  Pointer<Utf16> pwzXML,
  Pointer<Utf16> pwzPassword,
  int fOverwrite,
  Pointer<Pointer<Utf16>> ppwzIdentity,
  Pointer<Pointer<Utf16>> ppwzGroup,
) =>
    _PeerGroupImportConfig(
      pwzXML,
      pwzPassword,
      fOverwrite,
      ppwzIdentity,
      ppwzGroup,
    );

late final _PeerGroupImportConfig = _p2p.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pwzXML,
  Pointer<Utf16> pwzPassword,
  Int32 fOverwrite,
  Pointer<Pointer<Utf16>> ppwzIdentity,
  Pointer<Pointer<Utf16>> ppwzGroup,
),
    int Function(
  Pointer<Utf16> pwzXML,
  Pointer<Utf16> pwzPassword,
  int fOverwrite,
  Pointer<Pointer<Utf16>> ppwzIdentity,
  Pointer<Pointer<Utf16>> ppwzGroup,
)>('PeerGroupImportConfig');

int PeerGroupImportDatabase(
  Pointer hGroup,
  Pointer<Utf16> pwzFilePath,
) =>
    _PeerGroupImportDatabase(
      hGroup,
      pwzFilePath,
    );

late final _PeerGroupImportDatabase = _p2p.lookupFunction<
    Int32 Function(
  Pointer hGroup,
  Pointer<Utf16> pwzFilePath,
),
    int Function(
  Pointer hGroup,
  Pointer<Utf16> pwzFilePath,
)>('PeerGroupImportDatabase');

int PeerGroupIssueCredentials(
  Pointer hGroup,
  Pointer<Utf16> pwzSubjectIdentity,
  Pointer<PEER_CREDENTIAL_INFO> pCredentialInfo,
  int dwFlags,
  Pointer<Pointer<Utf16>> ppwzInvitation,
) =>
    _PeerGroupIssueCredentials(
      hGroup,
      pwzSubjectIdentity,
      pCredentialInfo,
      dwFlags,
      ppwzInvitation,
    );

late final _PeerGroupIssueCredentials = _p2p.lookupFunction<
    Int32 Function(
  Pointer hGroup,
  Pointer<Utf16> pwzSubjectIdentity,
  Pointer<PEER_CREDENTIAL_INFO> pCredentialInfo,
  Uint32 dwFlags,
  Pointer<Pointer<Utf16>> ppwzInvitation,
),
    int Function(
  Pointer hGroup,
  Pointer<Utf16> pwzSubjectIdentity,
  Pointer<PEER_CREDENTIAL_INFO> pCredentialInfo,
  int dwFlags,
  Pointer<Pointer<Utf16>> ppwzInvitation,
)>('PeerGroupIssueCredentials');

int PeerGroupJoin(
  Pointer<Utf16> pwzIdentity,
  Pointer<Utf16> pwzInvitation,
  Pointer<Utf16> pwzCloud,
  Pointer<Pointer> phGroup,
) =>
    _PeerGroupJoin(
      pwzIdentity,
      pwzInvitation,
      pwzCloud,
      phGroup,
    );

late final _PeerGroupJoin = _p2p.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pwzIdentity,
  Pointer<Utf16> pwzInvitation,
  Pointer<Utf16> pwzCloud,
  Pointer<Pointer> phGroup,
),
    int Function(
  Pointer<Utf16> pwzIdentity,
  Pointer<Utf16> pwzInvitation,
  Pointer<Utf16> pwzCloud,
  Pointer<Pointer> phGroup,
)>('PeerGroupJoin');

int PeerGroupOpen(
  Pointer<Utf16> pwzIdentity,
  Pointer<Utf16> pwzGroupPeerName,
  Pointer<Utf16> pwzCloud,
  Pointer<Pointer> phGroup,
) =>
    _PeerGroupOpen(
      pwzIdentity,
      pwzGroupPeerName,
      pwzCloud,
      phGroup,
    );

late final _PeerGroupOpen = _p2p.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pwzIdentity,
  Pointer<Utf16> pwzGroupPeerName,
  Pointer<Utf16> pwzCloud,
  Pointer<Pointer> phGroup,
),
    int Function(
  Pointer<Utf16> pwzIdentity,
  Pointer<Utf16> pwzGroupPeerName,
  Pointer<Utf16> pwzCloud,
  Pointer<Pointer> phGroup,
)>('PeerGroupOpen');

int PeerGroupOpenDirectConnection(
  Pointer hGroup,
  Pointer<Utf16> pwzIdentity,
  Pointer<PEER_ADDRESS> pAddress,
  Pointer<Uint64> pullConnectionId,
) =>
    _PeerGroupOpenDirectConnection(
      hGroup,
      pwzIdentity,
      pAddress,
      pullConnectionId,
    );

late final _PeerGroupOpenDirectConnection = _p2p.lookupFunction<
    Int32 Function(
  Pointer hGroup,
  Pointer<Utf16> pwzIdentity,
  Pointer<PEER_ADDRESS> pAddress,
  Pointer<Uint64> pullConnectionId,
),
    int Function(
  Pointer hGroup,
  Pointer<Utf16> pwzIdentity,
  Pointer<PEER_ADDRESS> pAddress,
  Pointer<Uint64> pullConnectionId,
)>('PeerGroupOpenDirectConnection');

int PeerGroupParseInvitation(
  Pointer<Utf16> pwzInvitation,
  Pointer<Pointer<PEER_INVITATION_INFO>> ppInvitationInfo,
) =>
    _PeerGroupParseInvitation(
      pwzInvitation,
      ppInvitationInfo,
    );

late final _PeerGroupParseInvitation = _p2p.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pwzInvitation,
  Pointer<Pointer<PEER_INVITATION_INFO>> ppInvitationInfo,
),
    int Function(
  Pointer<Utf16> pwzInvitation,
  Pointer<Pointer<PEER_INVITATION_INFO>> ppInvitationInfo,
)>('PeerGroupParseInvitation');

int PeerGroupPasswordJoin(
  Pointer<Utf16> pwzIdentity,
  Pointer<Utf16> pwzInvitation,
  Pointer<Utf16> pwzPassword,
  Pointer<Utf16> pwzCloud,
  Pointer<Pointer> phGroup,
) =>
    _PeerGroupPasswordJoin(
      pwzIdentity,
      pwzInvitation,
      pwzPassword,
      pwzCloud,
      phGroup,
    );

late final _PeerGroupPasswordJoin = _p2p.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pwzIdentity,
  Pointer<Utf16> pwzInvitation,
  Pointer<Utf16> pwzPassword,
  Pointer<Utf16> pwzCloud,
  Pointer<Pointer> phGroup,
),
    int Function(
  Pointer<Utf16> pwzIdentity,
  Pointer<Utf16> pwzInvitation,
  Pointer<Utf16> pwzPassword,
  Pointer<Utf16> pwzCloud,
  Pointer<Pointer> phGroup,
)>('PeerGroupPasswordJoin');

int PeerGroupPeerTimeToUniversalTime(
  Pointer hGroup,
  Pointer<FILETIME> pftPeerTime,
  Pointer<FILETIME> pftUniversalTime,
) =>
    _PeerGroupPeerTimeToUniversalTime(
      hGroup,
      pftPeerTime,
      pftUniversalTime,
    );

late final _PeerGroupPeerTimeToUniversalTime = _p2p.lookupFunction<
    Int32 Function(
  Pointer hGroup,
  Pointer<FILETIME> pftPeerTime,
  Pointer<FILETIME> pftUniversalTime,
),
    int Function(
  Pointer hGroup,
  Pointer<FILETIME> pftPeerTime,
  Pointer<FILETIME> pftUniversalTime,
)>('PeerGroupPeerTimeToUniversalTime');

int PeerGroupRegisterEvent(
  Pointer hGroup,
  int hEvent,
  int cEventRegistration,
  Pointer<PEER_GROUP_EVENT_REGISTRATION> pEventRegistrations,
  Pointer<Pointer> phPeerEvent,
) =>
    _PeerGroupRegisterEvent(
      hGroup,
      hEvent,
      cEventRegistration,
      pEventRegistrations,
      phPeerEvent,
    );

late final _PeerGroupRegisterEvent = _p2p.lookupFunction<
    Int32 Function(
  Pointer hGroup,
  IntPtr hEvent,
  Uint32 cEventRegistration,
  Pointer<PEER_GROUP_EVENT_REGISTRATION> pEventRegistrations,
  Pointer<Pointer> phPeerEvent,
),
    int Function(
  Pointer hGroup,
  int hEvent,
  int cEventRegistration,
  Pointer<PEER_GROUP_EVENT_REGISTRATION> pEventRegistrations,
  Pointer<Pointer> phPeerEvent,
)>('PeerGroupRegisterEvent');

int PeerGroupResumePasswordAuthentication(
  Pointer hGroup,
  Pointer hPeerEventHandle,
) =>
    _PeerGroupResumePasswordAuthentication(
      hGroup,
      hPeerEventHandle,
    );

late final _PeerGroupResumePasswordAuthentication = _p2p.lookupFunction<
    Int32 Function(
  Pointer hGroup,
  Pointer hPeerEventHandle,
),
    int Function(
  Pointer hGroup,
  Pointer hPeerEventHandle,
)>('PeerGroupResumePasswordAuthentication');

int PeerGroupSearchRecords(
  Pointer hGroup,
  Pointer<Utf16> pwzCriteria,
  Pointer<Pointer> phPeerEnum,
) =>
    _PeerGroupSearchRecords(
      hGroup,
      pwzCriteria,
      phPeerEnum,
    );

late final _PeerGroupSearchRecords = _p2p.lookupFunction<
    Int32 Function(
  Pointer hGroup,
  Pointer<Utf16> pwzCriteria,
  Pointer<Pointer> phPeerEnum,
),
    int Function(
  Pointer hGroup,
  Pointer<Utf16> pwzCriteria,
  Pointer<Pointer> phPeerEnum,
)>('PeerGroupSearchRecords');

int PeerGroupSendData(
  Pointer hGroup,
  int ullConnectionId,
  Pointer<GUID> pType,
  int cbData,
  Pointer pvData,
) =>
    _PeerGroupSendData(
      hGroup,
      ullConnectionId,
      pType,
      cbData,
      pvData,
    );

late final _PeerGroupSendData = _p2p.lookupFunction<
    Int32 Function(
  Pointer hGroup,
  Uint64 ullConnectionId,
  Pointer<GUID> pType,
  Uint32 cbData,
  Pointer pvData,
),
    int Function(
  Pointer hGroup,
  int ullConnectionId,
  Pointer<GUID> pType,
  int cbData,
  Pointer pvData,
)>('PeerGroupSendData');

int PeerGroupSetProperties(
  Pointer hGroup,
  Pointer<PEER_GROUP_PROPERTIES> pProperties,
) =>
    _PeerGroupSetProperties(
      hGroup,
      pProperties,
    );

late final _PeerGroupSetProperties = _p2p.lookupFunction<
    Int32 Function(
  Pointer hGroup,
  Pointer<PEER_GROUP_PROPERTIES> pProperties,
),
    int Function(
  Pointer hGroup,
  Pointer<PEER_GROUP_PROPERTIES> pProperties,
)>('PeerGroupSetProperties');

int PeerGroupShutdown() => _PeerGroupShutdown();

late final _PeerGroupShutdown =
    _p2p.lookupFunction<Int32 Function(), int Function()>('PeerGroupShutdown');

int PeerGroupStartup(
  int wVersionRequested,
  Pointer<PEER_VERSION_DATA> pVersionData,
) =>
    _PeerGroupStartup(
      wVersionRequested,
      pVersionData,
    );

late final _PeerGroupStartup = _p2p.lookupFunction<
    Int32 Function(
  Uint16 wVersionRequested,
  Pointer<PEER_VERSION_DATA> pVersionData,
),
    int Function(
  int wVersionRequested,
  Pointer<PEER_VERSION_DATA> pVersionData,
)>('PeerGroupStartup');

int PeerGroupUniversalTimeToPeerTime(
  Pointer hGroup,
  Pointer<FILETIME> pftUniversalTime,
  Pointer<FILETIME> pftPeerTime,
) =>
    _PeerGroupUniversalTimeToPeerTime(
      hGroup,
      pftUniversalTime,
      pftPeerTime,
    );

late final _PeerGroupUniversalTimeToPeerTime = _p2p.lookupFunction<
    Int32 Function(
  Pointer hGroup,
  Pointer<FILETIME> pftUniversalTime,
  Pointer<FILETIME> pftPeerTime,
),
    int Function(
  Pointer hGroup,
  Pointer<FILETIME> pftUniversalTime,
  Pointer<FILETIME> pftPeerTime,
)>('PeerGroupUniversalTimeToPeerTime');

int PeerGroupUnregisterEvent(
  Pointer hPeerEvent,
) =>
    _PeerGroupUnregisterEvent(
      hPeerEvent,
    );

late final _PeerGroupUnregisterEvent = _p2p.lookupFunction<
    Int32 Function(
  Pointer hPeerEvent,
),
    int Function(
  Pointer hPeerEvent,
)>('PeerGroupUnregisterEvent');

int PeerGroupUpdateRecord(
  Pointer hGroup,
  Pointer<PEER_RECORD> pRecord,
) =>
    _PeerGroupUpdateRecord(
      hGroup,
      pRecord,
    );

late final _PeerGroupUpdateRecord = _p2p.lookupFunction<
    Int32 Function(
  Pointer hGroup,
  Pointer<PEER_RECORD> pRecord,
),
    int Function(
  Pointer hGroup,
  Pointer<PEER_RECORD> pRecord,
)>('PeerGroupUpdateRecord');

int PeerHostNameToPeerName(
  Pointer<Utf16> pwzHostName,
  Pointer<Pointer<Utf16>> ppwzPeerName,
) =>
    _PeerHostNameToPeerName(
      pwzHostName,
      ppwzPeerName,
    );

late final _PeerHostNameToPeerName = _p2p.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pwzHostName,
  Pointer<Pointer<Utf16>> ppwzPeerName,
),
    int Function(
  Pointer<Utf16> pwzHostName,
  Pointer<Pointer<Utf16>> ppwzPeerName,
)>('PeerHostNameToPeerName');

int PeerIdentityCreate(
  Pointer<Utf16> pwzClassifier,
  Pointer<Utf16> pwzFriendlyName,
  int hCryptProv,
  Pointer<Pointer<Utf16>> ppwzIdentity,
) =>
    _PeerIdentityCreate(
      pwzClassifier,
      pwzFriendlyName,
      hCryptProv,
      ppwzIdentity,
    );

late final _PeerIdentityCreate = _p2p.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pwzClassifier,
  Pointer<Utf16> pwzFriendlyName,
  IntPtr hCryptProv,
  Pointer<Pointer<Utf16>> ppwzIdentity,
),
    int Function(
  Pointer<Utf16> pwzClassifier,
  Pointer<Utf16> pwzFriendlyName,
  int hCryptProv,
  Pointer<Pointer<Utf16>> ppwzIdentity,
)>('PeerIdentityCreate');

int PeerIdentityDelete(
  Pointer<Utf16> pwzIdentity,
) =>
    _PeerIdentityDelete(
      pwzIdentity,
    );

late final _PeerIdentityDelete = _p2p.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pwzIdentity,
),
    int Function(
  Pointer<Utf16> pwzIdentity,
)>('PeerIdentityDelete');

int PeerIdentityExport(
  Pointer<Utf16> pwzIdentity,
  Pointer<Utf16> pwzPassword,
  Pointer<Pointer<Utf16>> ppwzExportXML,
) =>
    _PeerIdentityExport(
      pwzIdentity,
      pwzPassword,
      ppwzExportXML,
    );

late final _PeerIdentityExport = _p2p.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pwzIdentity,
  Pointer<Utf16> pwzPassword,
  Pointer<Pointer<Utf16>> ppwzExportXML,
),
    int Function(
  Pointer<Utf16> pwzIdentity,
  Pointer<Utf16> pwzPassword,
  Pointer<Pointer<Utf16>> ppwzExportXML,
)>('PeerIdentityExport');

int PeerIdentityGetCryptKey(
  Pointer<Utf16> pwzIdentity,
  Pointer<IntPtr> phCryptProv,
) =>
    _PeerIdentityGetCryptKey(
      pwzIdentity,
      phCryptProv,
    );

late final _PeerIdentityGetCryptKey = _p2p.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pwzIdentity,
  Pointer<IntPtr> phCryptProv,
),
    int Function(
  Pointer<Utf16> pwzIdentity,
  Pointer<IntPtr> phCryptProv,
)>('PeerIdentityGetCryptKey');

int PeerIdentityGetDefault(
  Pointer<Pointer<Utf16>> ppwzPeerName,
) =>
    _PeerIdentityGetDefault(
      ppwzPeerName,
    );

late final _PeerIdentityGetDefault = _p2p.lookupFunction<
    Int32 Function(
  Pointer<Pointer<Utf16>> ppwzPeerName,
),
    int Function(
  Pointer<Pointer<Utf16>> ppwzPeerName,
)>('PeerIdentityGetDefault');

int PeerIdentityGetFriendlyName(
  Pointer<Utf16> pwzIdentity,
  Pointer<Pointer<Utf16>> ppwzFriendlyName,
) =>
    _PeerIdentityGetFriendlyName(
      pwzIdentity,
      ppwzFriendlyName,
    );

late final _PeerIdentityGetFriendlyName = _p2p.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pwzIdentity,
  Pointer<Pointer<Utf16>> ppwzFriendlyName,
),
    int Function(
  Pointer<Utf16> pwzIdentity,
  Pointer<Pointer<Utf16>> ppwzFriendlyName,
)>('PeerIdentityGetFriendlyName');

int PeerIdentityGetXML(
  Pointer<Utf16> pwzIdentity,
  Pointer<Pointer<Utf16>> ppwzIdentityXML,
) =>
    _PeerIdentityGetXML(
      pwzIdentity,
      ppwzIdentityXML,
    );

late final _PeerIdentityGetXML = _p2p.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pwzIdentity,
  Pointer<Pointer<Utf16>> ppwzIdentityXML,
),
    int Function(
  Pointer<Utf16> pwzIdentity,
  Pointer<Pointer<Utf16>> ppwzIdentityXML,
)>('PeerIdentityGetXML');

int PeerIdentityImport(
  Pointer<Utf16> pwzImportXML,
  Pointer<Utf16> pwzPassword,
  Pointer<Pointer<Utf16>> ppwzIdentity,
) =>
    _PeerIdentityImport(
      pwzImportXML,
      pwzPassword,
      ppwzIdentity,
    );

late final _PeerIdentityImport = _p2p.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pwzImportXML,
  Pointer<Utf16> pwzPassword,
  Pointer<Pointer<Utf16>> ppwzIdentity,
),
    int Function(
  Pointer<Utf16> pwzImportXML,
  Pointer<Utf16> pwzPassword,
  Pointer<Pointer<Utf16>> ppwzIdentity,
)>('PeerIdentityImport');

int PeerIdentitySetFriendlyName(
  Pointer<Utf16> pwzIdentity,
  Pointer<Utf16> pwzFriendlyName,
) =>
    _PeerIdentitySetFriendlyName(
      pwzIdentity,
      pwzFriendlyName,
    );

late final _PeerIdentitySetFriendlyName = _p2p.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pwzIdentity,
  Pointer<Utf16> pwzFriendlyName,
),
    int Function(
  Pointer<Utf16> pwzIdentity,
  Pointer<Utf16> pwzFriendlyName,
)>('PeerIdentitySetFriendlyName');

int PeerNameToPeerHostName(
  Pointer<Utf16> pwzPeerName,
  Pointer<Pointer<Utf16>> ppwzHostName,
) =>
    _PeerNameToPeerHostName(
      pwzPeerName,
      ppwzHostName,
    );

late final _PeerNameToPeerHostName = _p2p.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pwzPeerName,
  Pointer<Pointer<Utf16>> ppwzHostName,
),
    int Function(
  Pointer<Utf16> pwzPeerName,
  Pointer<Pointer<Utf16>> ppwzHostName,
)>('PeerNameToPeerHostName');

int PeerPnrpEndResolve(
  Pointer hResolve,
) =>
    _PeerPnrpEndResolve(
      hResolve,
    );

late final _PeerPnrpEndResolve = _p2p.lookupFunction<
    Int32 Function(
  Pointer hResolve,
),
    int Function(
  Pointer hResolve,
)>('PeerPnrpEndResolve');

int PeerPnrpGetCloudInfo(
  Pointer<Uint32> pcNumClouds,
  Pointer<Pointer<PEER_PNRP_CLOUD_INFO>> ppCloudInfo,
) =>
    _PeerPnrpGetCloudInfo(
      pcNumClouds,
      ppCloudInfo,
    );

late final _PeerPnrpGetCloudInfo = _p2p.lookupFunction<
    Int32 Function(
  Pointer<Uint32> pcNumClouds,
  Pointer<Pointer<PEER_PNRP_CLOUD_INFO>> ppCloudInfo,
),
    int Function(
  Pointer<Uint32> pcNumClouds,
  Pointer<Pointer<PEER_PNRP_CLOUD_INFO>> ppCloudInfo,
)>('PeerPnrpGetCloudInfo');

int PeerPnrpGetEndpoint(
  Pointer hResolve,
  Pointer<Pointer<PEER_PNRP_ENDPOINT_INFO>> ppEndpoint,
) =>
    _PeerPnrpGetEndpoint(
      hResolve,
      ppEndpoint,
    );

late final _PeerPnrpGetEndpoint = _p2p.lookupFunction<
    Int32 Function(
  Pointer hResolve,
  Pointer<Pointer<PEER_PNRP_ENDPOINT_INFO>> ppEndpoint,
),
    int Function(
  Pointer hResolve,
  Pointer<Pointer<PEER_PNRP_ENDPOINT_INFO>> ppEndpoint,
)>('PeerPnrpGetEndpoint');

int PeerPnrpRegister(
  Pointer<Utf16> pcwzPeerName,
  Pointer<PEER_PNRP_REGISTRATION_INFO> pRegistrationInfo,
  Pointer<Pointer> phRegistration,
) =>
    _PeerPnrpRegister(
      pcwzPeerName,
      pRegistrationInfo,
      phRegistration,
    );

late final _PeerPnrpRegister = _p2p.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pcwzPeerName,
  Pointer<PEER_PNRP_REGISTRATION_INFO> pRegistrationInfo,
  Pointer<Pointer> phRegistration,
),
    int Function(
  Pointer<Utf16> pcwzPeerName,
  Pointer<PEER_PNRP_REGISTRATION_INFO> pRegistrationInfo,
  Pointer<Pointer> phRegistration,
)>('PeerPnrpRegister');

int PeerPnrpResolve(
  Pointer<Utf16> pcwzPeerName,
  Pointer<Utf16> pcwzCloudName,
  Pointer<Uint32> pcEndpoints,
  Pointer<Pointer<PEER_PNRP_ENDPOINT_INFO>> ppEndpoints,
) =>
    _PeerPnrpResolve(
      pcwzPeerName,
      pcwzCloudName,
      pcEndpoints,
      ppEndpoints,
    );

late final _PeerPnrpResolve = _p2p.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pcwzPeerName,
  Pointer<Utf16> pcwzCloudName,
  Pointer<Uint32> pcEndpoints,
  Pointer<Pointer<PEER_PNRP_ENDPOINT_INFO>> ppEndpoints,
),
    int Function(
  Pointer<Utf16> pcwzPeerName,
  Pointer<Utf16> pcwzCloudName,
  Pointer<Uint32> pcEndpoints,
  Pointer<Pointer<PEER_PNRP_ENDPOINT_INFO>> ppEndpoints,
)>('PeerPnrpResolve');

int PeerPnrpShutdown() => _PeerPnrpShutdown();

late final _PeerPnrpShutdown =
    _p2p.lookupFunction<Int32 Function(), int Function()>('PeerPnrpShutdown');

int PeerPnrpStartResolve(
  Pointer<Utf16> pcwzPeerName,
  Pointer<Utf16> pcwzCloudName,
  int cMaxEndpoints,
  int hEvent,
  Pointer<Pointer> phResolve,
) =>
    _PeerPnrpStartResolve(
      pcwzPeerName,
      pcwzCloudName,
      cMaxEndpoints,
      hEvent,
      phResolve,
    );

late final _PeerPnrpStartResolve = _p2p.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pcwzPeerName,
  Pointer<Utf16> pcwzCloudName,
  Uint32 cMaxEndpoints,
  IntPtr hEvent,
  Pointer<Pointer> phResolve,
),
    int Function(
  Pointer<Utf16> pcwzPeerName,
  Pointer<Utf16> pcwzCloudName,
  int cMaxEndpoints,
  int hEvent,
  Pointer<Pointer> phResolve,
)>('PeerPnrpStartResolve');

int PeerPnrpStartup(
  int wVersionRequested,
) =>
    _PeerPnrpStartup(
      wVersionRequested,
    );

late final _PeerPnrpStartup = _p2p.lookupFunction<
    Int32 Function(
  Uint16 wVersionRequested,
),
    int Function(
  int wVersionRequested,
)>('PeerPnrpStartup');

int PeerPnrpUnregister(
  Pointer hRegistration,
) =>
    _PeerPnrpUnregister(
      hRegistration,
    );

late final _PeerPnrpUnregister = _p2p.lookupFunction<
    Int32 Function(
  Pointer hRegistration,
),
    int Function(
  Pointer hRegistration,
)>('PeerPnrpUnregister');

int PeerPnrpUpdateRegistration(
  Pointer hRegistration,
  Pointer<PEER_PNRP_REGISTRATION_INFO> pRegistrationInfo,
) =>
    _PeerPnrpUpdateRegistration(
      hRegistration,
      pRegistrationInfo,
    );

late final _PeerPnrpUpdateRegistration = _p2p.lookupFunction<
    Int32 Function(
  Pointer hRegistration,
  Pointer<PEER_PNRP_REGISTRATION_INFO> pRegistrationInfo,
),
    int Function(
  Pointer hRegistration,
  Pointer<PEER_PNRP_REGISTRATION_INFO> pRegistrationInfo,
)>('PeerPnrpUpdateRegistration');

// -----------------------------------------------------------------------
// drtprov.dll
// -----------------------------------------------------------------------
final _drtprov = DynamicLibrary.open('drtprov.dll');

int DrtCreateDerivedKey(
  Pointer<CERT_CONTEXT> pLocalCert,
  Pointer<DRT_DATA> pKey,
) =>
    _DrtCreateDerivedKey(
      pLocalCert,
      pKey,
    );

late final _DrtCreateDerivedKey = _drtprov.lookupFunction<
    Int32 Function(
  Pointer<CERT_CONTEXT> pLocalCert,
  Pointer<DRT_DATA> pKey,
),
    int Function(
  Pointer<CERT_CONTEXT> pLocalCert,
  Pointer<DRT_DATA> pKey,
)>('DrtCreateDerivedKey');

int DrtCreateDerivedKeySecurityProvider(
  Pointer<CERT_CONTEXT> pRootCert,
  Pointer<CERT_CONTEXT> pLocalCert,
  Pointer<Pointer<DRT_SECURITY_PROVIDER>> ppSecurityProvider,
) =>
    _DrtCreateDerivedKeySecurityProvider(
      pRootCert,
      pLocalCert,
      ppSecurityProvider,
    );

late final _DrtCreateDerivedKeySecurityProvider = _drtprov.lookupFunction<
    Int32 Function(
  Pointer<CERT_CONTEXT> pRootCert,
  Pointer<CERT_CONTEXT> pLocalCert,
  Pointer<Pointer<DRT_SECURITY_PROVIDER>> ppSecurityProvider,
),
    int Function(
  Pointer<CERT_CONTEXT> pRootCert,
  Pointer<CERT_CONTEXT> pLocalCert,
  Pointer<Pointer<DRT_SECURITY_PROVIDER>> ppSecurityProvider,
)>('DrtCreateDerivedKeySecurityProvider');

int DrtCreateDnsBootstrapResolver(
  int port,
  Pointer<Utf16> pwszAddress,
  Pointer<Pointer<DRT_BOOTSTRAP_PROVIDER>> ppModule,
) =>
    _DrtCreateDnsBootstrapResolver(
      port,
      pwszAddress,
      ppModule,
    );

late final _DrtCreateDnsBootstrapResolver = _drtprov.lookupFunction<
    Int32 Function(
  Uint16 port,
  Pointer<Utf16> pwszAddress,
  Pointer<Pointer<DRT_BOOTSTRAP_PROVIDER>> ppModule,
),
    int Function(
  int port,
  Pointer<Utf16> pwszAddress,
  Pointer<Pointer<DRT_BOOTSTRAP_PROVIDER>> ppModule,
)>('DrtCreateDnsBootstrapResolver');

int DrtCreateNullSecurityProvider(
  Pointer<Pointer<DRT_SECURITY_PROVIDER>> ppSecurityProvider,
) =>
    _DrtCreateNullSecurityProvider(
      ppSecurityProvider,
    );

late final _DrtCreateNullSecurityProvider = _drtprov.lookupFunction<
    Int32 Function(
  Pointer<Pointer<DRT_SECURITY_PROVIDER>> ppSecurityProvider,
),
    int Function(
  Pointer<Pointer<DRT_SECURITY_PROVIDER>> ppSecurityProvider,
)>('DrtCreateNullSecurityProvider');

int DrtCreatePnrpBootstrapResolver(
  int fPublish,
  Pointer<Utf16> pwzPeerName,
  Pointer<Utf16> pwzCloudName,
  Pointer<Utf16> pwzPublishingIdentity,
  Pointer<Pointer<DRT_BOOTSTRAP_PROVIDER>> ppResolver,
) =>
    _DrtCreatePnrpBootstrapResolver(
      fPublish,
      pwzPeerName,
      pwzCloudName,
      pwzPublishingIdentity,
      ppResolver,
    );

late final _DrtCreatePnrpBootstrapResolver = _drtprov.lookupFunction<
    Int32 Function(
  Int32 fPublish,
  Pointer<Utf16> pwzPeerName,
  Pointer<Utf16> pwzCloudName,
  Pointer<Utf16> pwzPublishingIdentity,
  Pointer<Pointer<DRT_BOOTSTRAP_PROVIDER>> ppResolver,
),
    int Function(
  int fPublish,
  Pointer<Utf16> pwzPeerName,
  Pointer<Utf16> pwzCloudName,
  Pointer<Utf16> pwzPublishingIdentity,
  Pointer<Pointer<DRT_BOOTSTRAP_PROVIDER>> ppResolver,
)>('DrtCreatePnrpBootstrapResolver');

void DrtDeleteDerivedKeySecurityProvider(
  Pointer<DRT_SECURITY_PROVIDER> pSecurityProvider,
) =>
    _DrtDeleteDerivedKeySecurityProvider(
      pSecurityProvider,
    );

late final _DrtDeleteDerivedKeySecurityProvider = _drtprov.lookupFunction<
    Void Function(
  Pointer<DRT_SECURITY_PROVIDER> pSecurityProvider,
),
    void Function(
  Pointer<DRT_SECURITY_PROVIDER> pSecurityProvider,
)>('DrtDeleteDerivedKeySecurityProvider');

void DrtDeleteDnsBootstrapResolver(
  Pointer<DRT_BOOTSTRAP_PROVIDER> pResolver,
) =>
    _DrtDeleteDnsBootstrapResolver(
      pResolver,
    );

late final _DrtDeleteDnsBootstrapResolver = _drtprov.lookupFunction<
    Void Function(
  Pointer<DRT_BOOTSTRAP_PROVIDER> pResolver,
),
    void Function(
  Pointer<DRT_BOOTSTRAP_PROVIDER> pResolver,
)>('DrtDeleteDnsBootstrapResolver');

void DrtDeleteNullSecurityProvider(
  Pointer<DRT_SECURITY_PROVIDER> pSecurityProvider,
) =>
    _DrtDeleteNullSecurityProvider(
      pSecurityProvider,
    );

late final _DrtDeleteNullSecurityProvider = _drtprov.lookupFunction<
    Void Function(
  Pointer<DRT_SECURITY_PROVIDER> pSecurityProvider,
),
    void Function(
  Pointer<DRT_SECURITY_PROVIDER> pSecurityProvider,
)>('DrtDeleteNullSecurityProvider');

void DrtDeletePnrpBootstrapResolver(
  Pointer<DRT_BOOTSTRAP_PROVIDER> pResolver,
) =>
    _DrtDeletePnrpBootstrapResolver(
      pResolver,
    );

late final _DrtDeletePnrpBootstrapResolver = _drtprov.lookupFunction<
    Void Function(
  Pointer<DRT_BOOTSTRAP_PROVIDER> pResolver,
),
    void Function(
  Pointer<DRT_BOOTSTRAP_PROVIDER> pResolver,
)>('DrtDeletePnrpBootstrapResolver');

// -----------------------------------------------------------------------
// drttransport.dll
// -----------------------------------------------------------------------
final _drttransport = DynamicLibrary.open('drttransport.dll');

int DrtCreateIpv6UdpTransport(
  int scope,
  int dwScopeId,
  int dwLocalityThreshold,
  Pointer<Uint16> pwPort,
  Pointer<Pointer> phTransport,
) =>
    _DrtCreateIpv6UdpTransport(
      scope,
      dwScopeId,
      dwLocalityThreshold,
      pwPort,
      phTransport,
    );

late final _DrtCreateIpv6UdpTransport = _drttransport.lookupFunction<
    Int32 Function(
  Int32 scope,
  Uint32 dwScopeId,
  Uint32 dwLocalityThreshold,
  Pointer<Uint16> pwPort,
  Pointer<Pointer> phTransport,
),
    int Function(
  int scope,
  int dwScopeId,
  int dwLocalityThreshold,
  Pointer<Uint16> pwPort,
  Pointer<Pointer> phTransport,
)>('DrtCreateIpv6UdpTransport');

int DrtDeleteIpv6UdpTransport(
  Pointer hTransport,
) =>
    _DrtDeleteIpv6UdpTransport(
      hTransport,
    );

late final _DrtDeleteIpv6UdpTransport = _drttransport.lookupFunction<
    Int32 Function(
  Pointer hTransport,
),
    int Function(
  Pointer hTransport,
)>('DrtDeleteIpv6UdpTransport');

// -----------------------------------------------------------------------
// drt.dll
// -----------------------------------------------------------------------
final _drt = DynamicLibrary.open('drt.dll');

void DrtClose(
  Pointer hDrt,
) =>
    _DrtClose(
      hDrt,
    );

late final _DrtClose = _drt.lookupFunction<
    Void Function(
  Pointer hDrt,
),
    void Function(
  Pointer hDrt,
)>('DrtClose');

int DrtContinueSearch(
  Pointer hSearchContext,
) =>
    _DrtContinueSearch(
      hSearchContext,
    );

late final _DrtContinueSearch = _drt.lookupFunction<
    Int32 Function(
  Pointer hSearchContext,
),
    int Function(
  Pointer hSearchContext,
)>('DrtContinueSearch');

int DrtEndSearch(
  Pointer hSearchContext,
) =>
    _DrtEndSearch(
      hSearchContext,
    );

late final _DrtEndSearch = _drt.lookupFunction<
    Int32 Function(
  Pointer hSearchContext,
),
    int Function(
  Pointer hSearchContext,
)>('DrtEndSearch');

int DrtGetEventData(
  Pointer hDrt,
  int ulEventDataLen,
  Pointer<DRT_EVENT_DATA> pEventData,
) =>
    _DrtGetEventData(
      hDrt,
      ulEventDataLen,
      pEventData,
    );

late final _DrtGetEventData = _drt.lookupFunction<
    Int32 Function(
  Pointer hDrt,
  Uint32 ulEventDataLen,
  Pointer<DRT_EVENT_DATA> pEventData,
),
    int Function(
  Pointer hDrt,
  int ulEventDataLen,
  Pointer<DRT_EVENT_DATA> pEventData,
)>('DrtGetEventData');

int DrtGetEventDataSize(
  Pointer hDrt,
  Pointer<Uint32> pulEventDataLen,
) =>
    _DrtGetEventDataSize(
      hDrt,
      pulEventDataLen,
    );

late final _DrtGetEventDataSize = _drt.lookupFunction<
    Int32 Function(
  Pointer hDrt,
  Pointer<Uint32> pulEventDataLen,
),
    int Function(
  Pointer hDrt,
  Pointer<Uint32> pulEventDataLen,
)>('DrtGetEventDataSize');

int DrtGetInstanceName(
  Pointer hDrt,
  int ulcbInstanceNameSize,
  Pointer<Utf16> pwzDrtInstanceName,
) =>
    _DrtGetInstanceName(
      hDrt,
      ulcbInstanceNameSize,
      pwzDrtInstanceName,
    );

late final _DrtGetInstanceName = _drt.lookupFunction<
    Int32 Function(
  Pointer hDrt,
  Uint32 ulcbInstanceNameSize,
  Pointer<Utf16> pwzDrtInstanceName,
),
    int Function(
  Pointer hDrt,
  int ulcbInstanceNameSize,
  Pointer<Utf16> pwzDrtInstanceName,
)>('DrtGetInstanceName');

int DrtGetInstanceNameSize(
  Pointer hDrt,
  Pointer<Uint32> pulcbInstanceNameSize,
) =>
    _DrtGetInstanceNameSize(
      hDrt,
      pulcbInstanceNameSize,
    );

late final _DrtGetInstanceNameSize = _drt.lookupFunction<
    Int32 Function(
  Pointer hDrt,
  Pointer<Uint32> pulcbInstanceNameSize,
),
    int Function(
  Pointer hDrt,
  Pointer<Uint32> pulcbInstanceNameSize,
)>('DrtGetInstanceNameSize');

int DrtGetSearchPath(
  Pointer hSearchContext,
  int ulSearchPathSize,
  Pointer<DRT_ADDRESS_LIST> pSearchPath,
) =>
    _DrtGetSearchPath(
      hSearchContext,
      ulSearchPathSize,
      pSearchPath,
    );

late final _DrtGetSearchPath = _drt.lookupFunction<
    Int32 Function(
  Pointer hSearchContext,
  Uint32 ulSearchPathSize,
  Pointer<DRT_ADDRESS_LIST> pSearchPath,
),
    int Function(
  Pointer hSearchContext,
  int ulSearchPathSize,
  Pointer<DRT_ADDRESS_LIST> pSearchPath,
)>('DrtGetSearchPath');

int DrtGetSearchPathSize(
  Pointer hSearchContext,
  Pointer<Uint32> pulSearchPathSize,
) =>
    _DrtGetSearchPathSize(
      hSearchContext,
      pulSearchPathSize,
    );

late final _DrtGetSearchPathSize = _drt.lookupFunction<
    Int32 Function(
  Pointer hSearchContext,
  Pointer<Uint32> pulSearchPathSize,
),
    int Function(
  Pointer hSearchContext,
  Pointer<Uint32> pulSearchPathSize,
)>('DrtGetSearchPathSize');

int DrtGetSearchResult(
  Pointer hSearchContext,
  int ulSearchResultSize,
  Pointer<DRT_SEARCH_RESULT> pSearchResult,
) =>
    _DrtGetSearchResult(
      hSearchContext,
      ulSearchResultSize,
      pSearchResult,
    );

late final _DrtGetSearchResult = _drt.lookupFunction<
    Int32 Function(
  Pointer hSearchContext,
  Uint32 ulSearchResultSize,
  Pointer<DRT_SEARCH_RESULT> pSearchResult,
),
    int Function(
  Pointer hSearchContext,
  int ulSearchResultSize,
  Pointer<DRT_SEARCH_RESULT> pSearchResult,
)>('DrtGetSearchResult');

int DrtGetSearchResultSize(
  Pointer hSearchContext,
  Pointer<Uint32> pulSearchResultSize,
) =>
    _DrtGetSearchResultSize(
      hSearchContext,
      pulSearchResultSize,
    );

late final _DrtGetSearchResultSize = _drt.lookupFunction<
    Int32 Function(
  Pointer hSearchContext,
  Pointer<Uint32> pulSearchResultSize,
),
    int Function(
  Pointer hSearchContext,
  Pointer<Uint32> pulSearchResultSize,
)>('DrtGetSearchResultSize');

int DrtOpen(
  Pointer<DRT_SETTINGS> pSettings,
  int hEvent,
  Pointer pvContext,
  Pointer<Pointer> phDrt,
) =>
    _DrtOpen(
      pSettings,
      hEvent,
      pvContext,
      phDrt,
    );

late final _DrtOpen = _drt.lookupFunction<
    Int32 Function(
  Pointer<DRT_SETTINGS> pSettings,
  IntPtr hEvent,
  Pointer pvContext,
  Pointer<Pointer> phDrt,
),
    int Function(
  Pointer<DRT_SETTINGS> pSettings,
  int hEvent,
  Pointer pvContext,
  Pointer<Pointer> phDrt,
)>('DrtOpen');

int DrtRegisterKey(
  Pointer hDrt,
  Pointer<DRT_REGISTRATION> pRegistration,
  Pointer pvKeyContext,
  Pointer<Pointer> phKeyRegistration,
) =>
    _DrtRegisterKey(
      hDrt,
      pRegistration,
      pvKeyContext,
      phKeyRegistration,
    );

late final _DrtRegisterKey = _drt.lookupFunction<
    Int32 Function(
  Pointer hDrt,
  Pointer<DRT_REGISTRATION> pRegistration,
  Pointer pvKeyContext,
  Pointer<Pointer> phKeyRegistration,
),
    int Function(
  Pointer hDrt,
  Pointer<DRT_REGISTRATION> pRegistration,
  Pointer pvKeyContext,
  Pointer<Pointer> phKeyRegistration,
)>('DrtRegisterKey');

int DrtStartSearch(
  Pointer hDrt,
  Pointer<DRT_DATA> pKey,
  Pointer<DRT_SEARCH_INFO> pInfo,
  int timeout,
  int hEvent,
  Pointer pvContext,
  Pointer<Pointer> hSearchContext,
) =>
    _DrtStartSearch(
      hDrt,
      pKey,
      pInfo,
      timeout,
      hEvent,
      pvContext,
      hSearchContext,
    );

late final _DrtStartSearch = _drt.lookupFunction<
    Int32 Function(
  Pointer hDrt,
  Pointer<DRT_DATA> pKey,
  Pointer<DRT_SEARCH_INFO> pInfo,
  Uint32 timeout,
  IntPtr hEvent,
  Pointer pvContext,
  Pointer<Pointer> hSearchContext,
),
    int Function(
  Pointer hDrt,
  Pointer<DRT_DATA> pKey,
  Pointer<DRT_SEARCH_INFO> pInfo,
  int timeout,
  int hEvent,
  Pointer pvContext,
  Pointer<Pointer> hSearchContext,
)>('DrtStartSearch');

void DrtUnregisterKey(
  Pointer hKeyRegistration,
) =>
    _DrtUnregisterKey(
      hKeyRegistration,
    );

late final _DrtUnregisterKey = _drt.lookupFunction<
    Void Function(
  Pointer hKeyRegistration,
),
    void Function(
  Pointer hKeyRegistration,
)>('DrtUnregisterKey');

int DrtUpdateKey(
  Pointer hKeyRegistration,
  Pointer<DRT_DATA> pAppData,
) =>
    _DrtUpdateKey(
      hKeyRegistration,
      pAppData,
    );

late final _DrtUpdateKey = _drt.lookupFunction<
    Int32 Function(
  Pointer hKeyRegistration,
  Pointer<DRT_DATA> pAppData,
),
    int Function(
  Pointer hKeyRegistration,
  Pointer<DRT_DATA> pAppData,
)>('DrtUpdateKey');

// -----------------------------------------------------------------------
// peerdist.dll
// -----------------------------------------------------------------------
final _peerdist = DynamicLibrary.open('peerdist.dll');

int PeerDistClientAddContentInformation(
  int hPeerDist,
  int hContentHandle,
  int cbNumberOfBytes,
  Pointer<Uint8> pBuffer,
  Pointer<OVERLAPPED> lpOverlapped,
) =>
    _PeerDistClientAddContentInformation(
      hPeerDist,
      hContentHandle,
      cbNumberOfBytes,
      pBuffer,
      lpOverlapped,
    );

late final _PeerDistClientAddContentInformation = _peerdist.lookupFunction<
    Uint32 Function(
  IntPtr hPeerDist,
  IntPtr hContentHandle,
  Uint32 cbNumberOfBytes,
  Pointer<Uint8> pBuffer,
  Pointer<OVERLAPPED> lpOverlapped,
),
    int Function(
  int hPeerDist,
  int hContentHandle,
  int cbNumberOfBytes,
  Pointer<Uint8> pBuffer,
  Pointer<OVERLAPPED> lpOverlapped,
)>('PeerDistClientAddContentInformation');

int PeerDistClientAddData(
  int hPeerDist,
  int hContentHandle,
  int cbNumberOfBytes,
  Pointer<Uint8> pBuffer,
  Pointer<OVERLAPPED> lpOverlapped,
) =>
    _PeerDistClientAddData(
      hPeerDist,
      hContentHandle,
      cbNumberOfBytes,
      pBuffer,
      lpOverlapped,
    );

late final _PeerDistClientAddData = _peerdist.lookupFunction<
    Uint32 Function(
  IntPtr hPeerDist,
  IntPtr hContentHandle,
  Uint32 cbNumberOfBytes,
  Pointer<Uint8> pBuffer,
  Pointer<OVERLAPPED> lpOverlapped,
),
    int Function(
  int hPeerDist,
  int hContentHandle,
  int cbNumberOfBytes,
  Pointer<Uint8> pBuffer,
  Pointer<OVERLAPPED> lpOverlapped,
)>('PeerDistClientAddData');

int PeerDistClientBlockRead(
  int hPeerDist,
  int hContentHandle,
  int cbMaxNumberOfBytes,
  Pointer<Uint8> pBuffer,
  int dwTimeoutInMilliseconds,
  Pointer<OVERLAPPED> lpOverlapped,
) =>
    _PeerDistClientBlockRead(
      hPeerDist,
      hContentHandle,
      cbMaxNumberOfBytes,
      pBuffer,
      dwTimeoutInMilliseconds,
      lpOverlapped,
    );

late final _PeerDistClientBlockRead = _peerdist.lookupFunction<
    Uint32 Function(
  IntPtr hPeerDist,
  IntPtr hContentHandle,
  Uint32 cbMaxNumberOfBytes,
  Pointer<Uint8> pBuffer,
  Uint32 dwTimeoutInMilliseconds,
  Pointer<OVERLAPPED> lpOverlapped,
),
    int Function(
  int hPeerDist,
  int hContentHandle,
  int cbMaxNumberOfBytes,
  Pointer<Uint8> pBuffer,
  int dwTimeoutInMilliseconds,
  Pointer<OVERLAPPED> lpOverlapped,
)>('PeerDistClientBlockRead');

int PeerDistClientCancelAsyncOperation(
  int hPeerDist,
  int hContentHandle,
  Pointer<OVERLAPPED> pOverlapped,
) =>
    _PeerDistClientCancelAsyncOperation(
      hPeerDist,
      hContentHandle,
      pOverlapped,
    );

late final _PeerDistClientCancelAsyncOperation = _peerdist.lookupFunction<
    Uint32 Function(
  IntPtr hPeerDist,
  IntPtr hContentHandle,
  Pointer<OVERLAPPED> pOverlapped,
),
    int Function(
  int hPeerDist,
  int hContentHandle,
  Pointer<OVERLAPPED> pOverlapped,
)>('PeerDistClientCancelAsyncOperation');

int PeerDistClientCloseContent(
  int hPeerDist,
  int hContentHandle,
) =>
    _PeerDistClientCloseContent(
      hPeerDist,
      hContentHandle,
    );

late final _PeerDistClientCloseContent = _peerdist.lookupFunction<
    Uint32 Function(
  IntPtr hPeerDist,
  IntPtr hContentHandle,
),
    int Function(
  int hPeerDist,
  int hContentHandle,
)>('PeerDistClientCloseContent');

int PeerDistClientCompleteContentInformation(
  int hPeerDist,
  int hContentHandle,
  Pointer<OVERLAPPED> lpOverlapped,
) =>
    _PeerDistClientCompleteContentInformation(
      hPeerDist,
      hContentHandle,
      lpOverlapped,
    );

late final _PeerDistClientCompleteContentInformation = _peerdist.lookupFunction<
    Uint32 Function(
  IntPtr hPeerDist,
  IntPtr hContentHandle,
  Pointer<OVERLAPPED> lpOverlapped,
),
    int Function(
  int hPeerDist,
  int hContentHandle,
  Pointer<OVERLAPPED> lpOverlapped,
)>('PeerDistClientCompleteContentInformation');

int PeerDistClientFlushContent(
  int hPeerDist,
  Pointer<PEERDIST_CONTENT_TAG> pContentTag,
  int hCompletionPort,
  int ulCompletionKey,
  Pointer<OVERLAPPED> lpOverlapped,
) =>
    _PeerDistClientFlushContent(
      hPeerDist,
      pContentTag,
      hCompletionPort,
      ulCompletionKey,
      lpOverlapped,
    );

late final _PeerDistClientFlushContent = _peerdist.lookupFunction<
    Uint32 Function(
  IntPtr hPeerDist,
  Pointer<PEERDIST_CONTENT_TAG> pContentTag,
  IntPtr hCompletionPort,
  IntPtr ulCompletionKey,
  Pointer<OVERLAPPED> lpOverlapped,
),
    int Function(
  int hPeerDist,
  Pointer<PEERDIST_CONTENT_TAG> pContentTag,
  int hCompletionPort,
  int ulCompletionKey,
  Pointer<OVERLAPPED> lpOverlapped,
)>('PeerDistClientFlushContent');

int PeerDistClientGetInformationByHandle(
  int hPeerDist,
  int hContentHandle,
  int PeerDistClientInfoClass,
  int dwBufferSize,
  Pointer lpInformation,
) =>
    _PeerDistClientGetInformationByHandle(
      hPeerDist,
      hContentHandle,
      PeerDistClientInfoClass,
      dwBufferSize,
      lpInformation,
    );

late final _PeerDistClientGetInformationByHandle = _peerdist.lookupFunction<
    Uint32 Function(
  IntPtr hPeerDist,
  IntPtr hContentHandle,
  Int32 PeerDistClientInfoClass,
  Uint32 dwBufferSize,
  Pointer lpInformation,
),
    int Function(
  int hPeerDist,
  int hContentHandle,
  int PeerDistClientInfoClass,
  int dwBufferSize,
  Pointer lpInformation,
)>('PeerDistClientGetInformationByHandle');

int PeerDistClientOpenContent(
  int hPeerDist,
  Pointer<PEERDIST_CONTENT_TAG> pContentTag,
  int hCompletionPort,
  int ulCompletionKey,
  Pointer<IntPtr> phContentHandle,
) =>
    _PeerDistClientOpenContent(
      hPeerDist,
      pContentTag,
      hCompletionPort,
      ulCompletionKey,
      phContentHandle,
    );

late final _PeerDistClientOpenContent = _peerdist.lookupFunction<
    Uint32 Function(
  IntPtr hPeerDist,
  Pointer<PEERDIST_CONTENT_TAG> pContentTag,
  IntPtr hCompletionPort,
  IntPtr ulCompletionKey,
  Pointer<IntPtr> phContentHandle,
),
    int Function(
  int hPeerDist,
  Pointer<PEERDIST_CONTENT_TAG> pContentTag,
  int hCompletionPort,
  int ulCompletionKey,
  Pointer<IntPtr> phContentHandle,
)>('PeerDistClientOpenContent');

int PeerDistClientStreamRead(
  int hPeerDist,
  int hContentHandle,
  int cbMaxNumberOfBytes,
  Pointer<Uint8> pBuffer,
  int dwTimeoutInMilliseconds,
  Pointer<OVERLAPPED> lpOverlapped,
) =>
    _PeerDistClientStreamRead(
      hPeerDist,
      hContentHandle,
      cbMaxNumberOfBytes,
      pBuffer,
      dwTimeoutInMilliseconds,
      lpOverlapped,
    );

late final _PeerDistClientStreamRead = _peerdist.lookupFunction<
    Uint32 Function(
  IntPtr hPeerDist,
  IntPtr hContentHandle,
  Uint32 cbMaxNumberOfBytes,
  Pointer<Uint8> pBuffer,
  Uint32 dwTimeoutInMilliseconds,
  Pointer<OVERLAPPED> lpOverlapped,
),
    int Function(
  int hPeerDist,
  int hContentHandle,
  int cbMaxNumberOfBytes,
  Pointer<Uint8> pBuffer,
  int dwTimeoutInMilliseconds,
  Pointer<OVERLAPPED> lpOverlapped,
)>('PeerDistClientStreamRead');

int PeerDistGetOverlappedResult(
  Pointer<OVERLAPPED> lpOverlapped,
  Pointer<Uint32> lpNumberOfBytesTransferred,
  int bWait,
) =>
    _PeerDistGetOverlappedResult(
      lpOverlapped,
      lpNumberOfBytesTransferred,
      bWait,
    );

late final _PeerDistGetOverlappedResult = _peerdist.lookupFunction<
    Int32 Function(
  Pointer<OVERLAPPED> lpOverlapped,
  Pointer<Uint32> lpNumberOfBytesTransferred,
  Int32 bWait,
),
    int Function(
  Pointer<OVERLAPPED> lpOverlapped,
  Pointer<Uint32> lpNumberOfBytesTransferred,
  int bWait,
)>('PeerDistGetOverlappedResult');

int PeerDistGetStatus(
  int hPeerDist,
  Pointer<Int32> pPeerDistStatus,
) =>
    _PeerDistGetStatus(
      hPeerDist,
      pPeerDistStatus,
    );

late final _PeerDistGetStatus = _peerdist.lookupFunction<
    Uint32 Function(
  IntPtr hPeerDist,
  Pointer<Int32> pPeerDistStatus,
),
    int Function(
  int hPeerDist,
  Pointer<Int32> pPeerDistStatus,
)>('PeerDistGetStatus');

int PeerDistGetStatusEx(
  int hPeerDist,
  Pointer<PEERDIST_STATUS_INFO> pPeerDistStatus,
) =>
    _PeerDistGetStatusEx(
      hPeerDist,
      pPeerDistStatus,
    );

late final _PeerDistGetStatusEx = _peerdist.lookupFunction<
    Uint32 Function(
  IntPtr hPeerDist,
  Pointer<PEERDIST_STATUS_INFO> pPeerDistStatus,
),
    int Function(
  int hPeerDist,
  Pointer<PEERDIST_STATUS_INFO> pPeerDistStatus,
)>('PeerDistGetStatusEx');

int PeerDistRegisterForStatusChangeNotification(
  int hPeerDist,
  int hCompletionPort,
  int ulCompletionKey,
  Pointer<OVERLAPPED> lpOverlapped,
  Pointer<Int32> pPeerDistStatus,
) =>
    _PeerDistRegisterForStatusChangeNotification(
      hPeerDist,
      hCompletionPort,
      ulCompletionKey,
      lpOverlapped,
      pPeerDistStatus,
    );

late final _PeerDistRegisterForStatusChangeNotification =
    _peerdist.lookupFunction<
        Uint32 Function(
  IntPtr hPeerDist,
  IntPtr hCompletionPort,
  IntPtr ulCompletionKey,
  Pointer<OVERLAPPED> lpOverlapped,
  Pointer<Int32> pPeerDistStatus,
),
        int Function(
  int hPeerDist,
  int hCompletionPort,
  int ulCompletionKey,
  Pointer<OVERLAPPED> lpOverlapped,
  Pointer<Int32> pPeerDistStatus,
)>('PeerDistRegisterForStatusChangeNotification');

int PeerDistRegisterForStatusChangeNotificationEx(
  int hPeerDist,
  int hCompletionPort,
  int ulCompletionKey,
  Pointer<OVERLAPPED> lpOverlapped,
  Pointer<PEERDIST_STATUS_INFO> pPeerDistStatus,
) =>
    _PeerDistRegisterForStatusChangeNotificationEx(
      hPeerDist,
      hCompletionPort,
      ulCompletionKey,
      lpOverlapped,
      pPeerDistStatus,
    );

late final _PeerDistRegisterForStatusChangeNotificationEx =
    _peerdist.lookupFunction<
        Uint32 Function(
  IntPtr hPeerDist,
  IntPtr hCompletionPort,
  IntPtr ulCompletionKey,
  Pointer<OVERLAPPED> lpOverlapped,
  Pointer<PEERDIST_STATUS_INFO> pPeerDistStatus,
),
        int Function(
  int hPeerDist,
  int hCompletionPort,
  int ulCompletionKey,
  Pointer<OVERLAPPED> lpOverlapped,
  Pointer<PEERDIST_STATUS_INFO> pPeerDistStatus,
)>('PeerDistRegisterForStatusChangeNotificationEx');

int PeerDistServerCancelAsyncOperation(
  int hPeerDist,
  int cbContentIdentifier,
  Pointer<Uint8> pContentIdentifier,
  Pointer<OVERLAPPED> pOverlapped,
) =>
    _PeerDistServerCancelAsyncOperation(
      hPeerDist,
      cbContentIdentifier,
      pContentIdentifier,
      pOverlapped,
    );

late final _PeerDistServerCancelAsyncOperation = _peerdist.lookupFunction<
    Uint32 Function(
  IntPtr hPeerDist,
  Uint32 cbContentIdentifier,
  Pointer<Uint8> pContentIdentifier,
  Pointer<OVERLAPPED> pOverlapped,
),
    int Function(
  int hPeerDist,
  int cbContentIdentifier,
  Pointer<Uint8> pContentIdentifier,
  Pointer<OVERLAPPED> pOverlapped,
)>('PeerDistServerCancelAsyncOperation');

int PeerDistServerCloseContentInformation(
  int hPeerDist,
  int hContentInfo,
) =>
    _PeerDistServerCloseContentInformation(
      hPeerDist,
      hContentInfo,
    );

late final _PeerDistServerCloseContentInformation = _peerdist.lookupFunction<
    Uint32 Function(
  IntPtr hPeerDist,
  IntPtr hContentInfo,
),
    int Function(
  int hPeerDist,
  int hContentInfo,
)>('PeerDistServerCloseContentInformation');

int PeerDistServerCloseStreamHandle(
  int hPeerDist,
  int hStream,
) =>
    _PeerDistServerCloseStreamHandle(
      hPeerDist,
      hStream,
    );

late final _PeerDistServerCloseStreamHandle = _peerdist.lookupFunction<
    Uint32 Function(
  IntPtr hPeerDist,
  IntPtr hStream,
),
    int Function(
  int hPeerDist,
  int hStream,
)>('PeerDistServerCloseStreamHandle');

int PeerDistServerOpenContentInformation(
  int hPeerDist,
  int cbContentIdentifier,
  Pointer<Uint8> pContentIdentifier,
  int ullContentOffset,
  int cbContentLength,
  int hCompletionPort,
  int ulCompletionKey,
  Pointer<IntPtr> phContentInfo,
) =>
    _PeerDistServerOpenContentInformation(
      hPeerDist,
      cbContentIdentifier,
      pContentIdentifier,
      ullContentOffset,
      cbContentLength,
      hCompletionPort,
      ulCompletionKey,
      phContentInfo,
    );

late final _PeerDistServerOpenContentInformation = _peerdist.lookupFunction<
    Uint32 Function(
  IntPtr hPeerDist,
  Uint32 cbContentIdentifier,
  Pointer<Uint8> pContentIdentifier,
  Uint64 ullContentOffset,
  Uint64 cbContentLength,
  IntPtr hCompletionPort,
  IntPtr ulCompletionKey,
  Pointer<IntPtr> phContentInfo,
),
    int Function(
  int hPeerDist,
  int cbContentIdentifier,
  Pointer<Uint8> pContentIdentifier,
  int ullContentOffset,
  int cbContentLength,
  int hCompletionPort,
  int ulCompletionKey,
  Pointer<IntPtr> phContentInfo,
)>('PeerDistServerOpenContentInformation');

int PeerDistServerOpenContentInformationEx(
  int hPeerDist,
  int cbContentIdentifier,
  Pointer<Uint8> pContentIdentifier,
  int ullContentOffset,
  int cbContentLength,
  Pointer<PEERDIST_RETRIEVAL_OPTIONS> pRetrievalOptions,
  int hCompletionPort,
  int ulCompletionKey,
  Pointer<IntPtr> phContentInfo,
) =>
    _PeerDistServerOpenContentInformationEx(
      hPeerDist,
      cbContentIdentifier,
      pContentIdentifier,
      ullContentOffset,
      cbContentLength,
      pRetrievalOptions,
      hCompletionPort,
      ulCompletionKey,
      phContentInfo,
    );

late final _PeerDistServerOpenContentInformationEx = _peerdist.lookupFunction<
    Uint32 Function(
  IntPtr hPeerDist,
  Uint32 cbContentIdentifier,
  Pointer<Uint8> pContentIdentifier,
  Uint64 ullContentOffset,
  Uint64 cbContentLength,
  Pointer<PEERDIST_RETRIEVAL_OPTIONS> pRetrievalOptions,
  IntPtr hCompletionPort,
  IntPtr ulCompletionKey,
  Pointer<IntPtr> phContentInfo,
),
    int Function(
  int hPeerDist,
  int cbContentIdentifier,
  Pointer<Uint8> pContentIdentifier,
  int ullContentOffset,
  int cbContentLength,
  Pointer<PEERDIST_RETRIEVAL_OPTIONS> pRetrievalOptions,
  int hCompletionPort,
  int ulCompletionKey,
  Pointer<IntPtr> phContentInfo,
)>('PeerDistServerOpenContentInformationEx');

int PeerDistServerPublishAddToStream(
  int hPeerDist,
  int hStream,
  int cbNumberOfBytes,
  Pointer<Uint8> pBuffer,
  Pointer<OVERLAPPED> lpOverlapped,
) =>
    _PeerDistServerPublishAddToStream(
      hPeerDist,
      hStream,
      cbNumberOfBytes,
      pBuffer,
      lpOverlapped,
    );

late final _PeerDistServerPublishAddToStream = _peerdist.lookupFunction<
    Uint32 Function(
  IntPtr hPeerDist,
  IntPtr hStream,
  Uint32 cbNumberOfBytes,
  Pointer<Uint8> pBuffer,
  Pointer<OVERLAPPED> lpOverlapped,
),
    int Function(
  int hPeerDist,
  int hStream,
  int cbNumberOfBytes,
  Pointer<Uint8> pBuffer,
  Pointer<OVERLAPPED> lpOverlapped,
)>('PeerDistServerPublishAddToStream');

int PeerDistServerPublishCompleteStream(
  int hPeerDist,
  int hStream,
  Pointer<OVERLAPPED> lpOverlapped,
) =>
    _PeerDistServerPublishCompleteStream(
      hPeerDist,
      hStream,
      lpOverlapped,
    );

late final _PeerDistServerPublishCompleteStream = _peerdist.lookupFunction<
    Uint32 Function(
  IntPtr hPeerDist,
  IntPtr hStream,
  Pointer<OVERLAPPED> lpOverlapped,
),
    int Function(
  int hPeerDist,
  int hStream,
  Pointer<OVERLAPPED> lpOverlapped,
)>('PeerDistServerPublishCompleteStream');

int PeerDistServerPublishStream(
  int hPeerDist,
  int cbContentIdentifier,
  Pointer<Uint8> pContentIdentifier,
  int cbContentLength,
  Pointer<PEERDIST_PUBLICATION_OPTIONS> pPublishOptions,
  int hCompletionPort,
  int ulCompletionKey,
  Pointer<IntPtr> phStream,
) =>
    _PeerDistServerPublishStream(
      hPeerDist,
      cbContentIdentifier,
      pContentIdentifier,
      cbContentLength,
      pPublishOptions,
      hCompletionPort,
      ulCompletionKey,
      phStream,
    );

late final _PeerDistServerPublishStream = _peerdist.lookupFunction<
    Uint32 Function(
  IntPtr hPeerDist,
  Uint32 cbContentIdentifier,
  Pointer<Uint8> pContentIdentifier,
  Uint64 cbContentLength,
  Pointer<PEERDIST_PUBLICATION_OPTIONS> pPublishOptions,
  IntPtr hCompletionPort,
  IntPtr ulCompletionKey,
  Pointer<IntPtr> phStream,
),
    int Function(
  int hPeerDist,
  int cbContentIdentifier,
  Pointer<Uint8> pContentIdentifier,
  int cbContentLength,
  Pointer<PEERDIST_PUBLICATION_OPTIONS> pPublishOptions,
  int hCompletionPort,
  int ulCompletionKey,
  Pointer<IntPtr> phStream,
)>('PeerDistServerPublishStream');

int PeerDistServerRetrieveContentInformation(
  int hPeerDist,
  int hContentInfo,
  int cbMaxNumberOfBytes,
  Pointer<Uint8> pBuffer,
  Pointer<OVERLAPPED> lpOverlapped,
) =>
    _PeerDistServerRetrieveContentInformation(
      hPeerDist,
      hContentInfo,
      cbMaxNumberOfBytes,
      pBuffer,
      lpOverlapped,
    );

late final _PeerDistServerRetrieveContentInformation = _peerdist.lookupFunction<
    Uint32 Function(
  IntPtr hPeerDist,
  IntPtr hContentInfo,
  Uint32 cbMaxNumberOfBytes,
  Pointer<Uint8> pBuffer,
  Pointer<OVERLAPPED> lpOverlapped,
),
    int Function(
  int hPeerDist,
  int hContentInfo,
  int cbMaxNumberOfBytes,
  Pointer<Uint8> pBuffer,
  Pointer<OVERLAPPED> lpOverlapped,
)>('PeerDistServerRetrieveContentInformation');

int PeerDistServerUnpublish(
  int hPeerDist,
  int cbContentIdentifier,
  Pointer<Uint8> pContentIdentifier,
) =>
    _PeerDistServerUnpublish(
      hPeerDist,
      cbContentIdentifier,
      pContentIdentifier,
    );

late final _PeerDistServerUnpublish = _peerdist.lookupFunction<
    Uint32 Function(
  IntPtr hPeerDist,
  Uint32 cbContentIdentifier,
  Pointer<Uint8> pContentIdentifier,
),
    int Function(
  int hPeerDist,
  int cbContentIdentifier,
  Pointer<Uint8> pContentIdentifier,
)>('PeerDistServerUnpublish');

int PeerDistShutdown(
  int hPeerDist,
) =>
    _PeerDistShutdown(
      hPeerDist,
    );

late final _PeerDistShutdown = _peerdist.lookupFunction<
    Uint32 Function(
  IntPtr hPeerDist,
),
    int Function(
  int hPeerDist,
)>('PeerDistShutdown');

int PeerDistStartup(
  int dwVersionRequested,
  Pointer<IntPtr> phPeerDist,
  Pointer<Uint32> pdwSupportedVersion,
) =>
    _PeerDistStartup(
      dwVersionRequested,
      phPeerDist,
      pdwSupportedVersion,
    );

late final _PeerDistStartup = _peerdist.lookupFunction<
    Uint32 Function(
  Uint32 dwVersionRequested,
  Pointer<IntPtr> phPeerDist,
  Pointer<Uint32> pdwSupportedVersion,
),
    int Function(
  int dwVersionRequested,
  Pointer<IntPtr> phPeerDist,
  Pointer<Uint32> pdwSupportedVersion,
)>('PeerDistStartup');

int PeerDistUnregisterForStatusChangeNotification(
  int hPeerDist,
) =>
    _PeerDistUnregisterForStatusChangeNotification(
      hPeerDist,
    );

late final _PeerDistUnregisterForStatusChangeNotification =
    _peerdist.lookupFunction<
        Uint32 Function(
  IntPtr hPeerDist,
),
        int Function(
  int hPeerDist,
)>('PeerDistUnregisterForStatusChangeNotification');
