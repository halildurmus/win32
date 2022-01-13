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
import '../../networking/winsock/structs.g.dart';
import '../../networkmanagement/p2p/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../security/cryptography/structs.g.dart';
import '../../networkmanagement/p2p/callbacks.g.dart';
import '../../system/com/structs.g.dart';

/// {@category Struct}
class DRT_ADDRESS extends Struct {
  external SOCKADDR_STORAGE socketAddress;

  @Uint32()
  external int flags;

  @Int32()
  external int nearness;

  @Uint32()
  external int latency;
}

/// {@category Struct}
class DRT_ADDRESS_LIST extends Struct {
  @Uint32()
  external int AddressCount;

  @Array(1)
  external Array<DRT_ADDRESS> AddressList;
}

/// {@category Struct}
class DRT_BOOTSTRAP_PROVIDER extends Struct {
  external Pointer pvContext;

  @IntPtr()
  external int Attach;

  @IntPtr()
  external int Detach;

  @IntPtr()
  external int InitResolve;

  @IntPtr()
  external int IssueResolve;

  @IntPtr()
  external int EndResolve;

  @IntPtr()
  external int Register;

  @IntPtr()
  external int Unregister;
}

/// {@category Struct}
class DRT_DATA extends Struct {
  @Uint32()
  external int cb;

  external Pointer<Uint8> pb;
}

/// {@category Struct}
class DRT_EVENT_DATA extends Struct {
  @Int32()
  external int type;

  @Int32()
  external int hr;

  external Pointer pvContext;

  external _DRT_EVENT_DATA__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _DRT_EVENT_DATA__Anonymous_e__Union extends Union {
  external _DRT_EVENT_DATA__Anonymous_e__Union__leafsetKeyChange_e__Struct
      leafsetKeyChange;

  external _DRT_EVENT_DATA__Anonymous_e__Union__registrationStateChange_e__Struct
      registrationStateChange;

  external _DRT_EVENT_DATA__Anonymous_e__Union__statusChange_e__Struct
      statusChange;
}

/// {@category Struct}
class _DRT_EVENT_DATA__Anonymous_e__Union__leafsetKeyChange_e__Struct
    extends Struct {
  @Int32()
  external int change;

  external DRT_DATA localKey;

  external DRT_DATA remoteKey;
}

extension DRT_EVENT_DATA__Anonymous_e__Union_Extension on DRT_EVENT_DATA {
  int get change => this.Anonymous.leafsetKeyChange.change;
  set change(int value) => this.Anonymous.leafsetKeyChange.change = value;

  DRT_DATA get localKey => this.Anonymous.leafsetKeyChange.localKey;
  set localKey(DRT_DATA value) =>
      this.Anonymous.leafsetKeyChange.localKey = value;

  DRT_DATA get remoteKey => this.Anonymous.leafsetKeyChange.remoteKey;
  set remoteKey(DRT_DATA value) =>
      this.Anonymous.leafsetKeyChange.remoteKey = value;
}

/// {@category Struct}
class _DRT_EVENT_DATA__Anonymous_e__Union__registrationStateChange_e__Struct
    extends Struct {
  @Int32()
  external int state;

  external DRT_DATA localKey;
}

extension DRT_EVENT_DATA__Anonymous_e__Union_Extension_1 on DRT_EVENT_DATA {
  int get state => this.Anonymous.registrationStateChange.state;
  set state(int value) => this.Anonymous.registrationStateChange.state = value;

  DRT_DATA get localKey => this.Anonymous.registrationStateChange.localKey;
  set localKey(DRT_DATA value) =>
      this.Anonymous.registrationStateChange.localKey = value;
}

/// {@category Struct}
class _DRT_EVENT_DATA__Anonymous_e__Union__statusChange_e__Struct
    extends Struct {
  @Int32()
  external int status;

  external _DRT_EVENT_DATA__Anonymous_e__Union__statusChange_e__Struct__bootstrapAddresses_e__Struct
      bootstrapAddresses;
}

/// {@category Struct}
class _DRT_EVENT_DATA__Anonymous_e__Union__statusChange_e__Struct__bootstrapAddresses_e__Struct
    extends Struct {
  @Uint32()
  external int cntAddress;

  external Pointer<SOCKADDR_STORAGE> pAddresses;
}

extension DRT_EVENT_DATA__Anonymous_e__Union__statusChange_e__Struct_Extension
    on DRT_EVENT_DATA {
  int get cntAddress =>
      this.Anonymous.statusChange.bootstrapAddresses.cntAddress;
  set cntAddress(int value) =>
      this.Anonymous.statusChange.bootstrapAddresses.cntAddress = value;

  Pointer<SOCKADDR_STORAGE> get pAddresses =>
      this.Anonymous.statusChange.bootstrapAddresses.pAddresses;
  set pAddresses(Pointer<SOCKADDR_STORAGE> value) =>
      this.Anonymous.statusChange.bootstrapAddresses.pAddresses = value;
}

extension DRT_EVENT_DATA__Anonymous_e__Union_Extension_2 on DRT_EVENT_DATA {
  int get status => this.Anonymous.statusChange.status;
  set status(int value) => this.Anonymous.statusChange.status = value;

  _DRT_EVENT_DATA__Anonymous_e__Union__statusChange_e__Struct__bootstrapAddresses_e__Struct
      get bootstrapAddresses => this.Anonymous.statusChange.bootstrapAddresses;
  set bootstrapAddresses(
          _DRT_EVENT_DATA__Anonymous_e__Union__statusChange_e__Struct__bootstrapAddresses_e__Struct
              value) =>
      this.Anonymous.statusChange.bootstrapAddresses = value;
}

extension DRT_EVENT_DATA_Extension on DRT_EVENT_DATA {
  _DRT_EVENT_DATA__Anonymous_e__Union__leafsetKeyChange_e__Struct
      get leafsetKeyChange => this.Anonymous.leafsetKeyChange;
  set leafsetKeyChange(
          _DRT_EVENT_DATA__Anonymous_e__Union__leafsetKeyChange_e__Struct
              value) =>
      this.Anonymous.leafsetKeyChange = value;

  _DRT_EVENT_DATA__Anonymous_e__Union__registrationStateChange_e__Struct
      get registrationStateChange => this.Anonymous.registrationStateChange;
  set registrationStateChange(
          _DRT_EVENT_DATA__Anonymous_e__Union__registrationStateChange_e__Struct
              value) =>
      this.Anonymous.registrationStateChange = value;

  _DRT_EVENT_DATA__Anonymous_e__Union__statusChange_e__Struct
      get statusChange => this.Anonymous.statusChange;
  set statusChange(
          _DRT_EVENT_DATA__Anonymous_e__Union__statusChange_e__Struct value) =>
      this.Anonymous.statusChange = value;
}

/// {@category Struct}
class DRT_REGISTRATION extends Struct {
  external DRT_DATA key;

  external DRT_DATA appData;
}

/// {@category Struct}
class DRT_SEARCH_INFO extends Struct {
  @Uint32()
  external int dwSize;

  @Int32()
  external int fIterative;

  @Int32()
  external int fAllowCurrentInstanceMatch;

  @Int32()
  external int fAnyMatchInRange;

  @Uint32()
  external int cMaxEndpoints;

  external Pointer<DRT_DATA> pMaximumKey;

  external Pointer<DRT_DATA> pMinimumKey;
}

/// {@category Struct}
class DRT_SEARCH_RESULT extends Struct {
  @Uint32()
  external int dwSize;

  @Int32()
  external int type;

  external Pointer pvContext;

  external DRT_REGISTRATION registration;
}

/// {@category Struct}
class DRT_SECURITY_PROVIDER extends Struct {
  external Pointer pvContext;

  @IntPtr()
  external int Attach;

  @IntPtr()
  external int Detach;

  @IntPtr()
  external int RegisterKey;

  @IntPtr()
  external int UnregisterKey;

  @IntPtr()
  external int ValidateAndUnpackPayload;

  @IntPtr()
  external int SecureAndPackPayload;

  @IntPtr()
  external int FreeData;

  @IntPtr()
  external int EncryptData;

  @IntPtr()
  external int DecryptData;

  @IntPtr()
  external int GetSerializedCredential;

  @IntPtr()
  external int ValidateRemoteCredential;

  @IntPtr()
  external int SignData;

  @IntPtr()
  external int VerifyData;
}

/// {@category Struct}
class DRT_SETTINGS extends Struct {
  @Uint32()
  external int dwSize;

  @Uint32()
  external int cbKey;

  @Uint8()
  external int bProtocolMajorVersion;

  @Uint8()
  external int bProtocolMinorVersion;

  @Uint32()
  external int ulMaxRoutingAddresses;

  external Pointer<Utf16> pwzDrtInstancePrefix;

  external Pointer hTransport;

  external Pointer<DRT_SECURITY_PROVIDER> pSecurityProvider;

  external Pointer<DRT_BOOTSTRAP_PROVIDER> pBootstrapProvider;

  @Int32()
  external int eSecurityMode;
}

/// {@category Struct}
class PEERDIST_CLIENT_BASIC_INFO extends Struct {
  @Int32()
  external int fFlashCrowd;
}

/// {@category Struct}
class PEERDIST_CONTENT_TAG extends Struct {
  @Array(16)
  external Array<Uint8> Data;
}

/// {@category Struct}
class PEERDIST_PUBLICATION_OPTIONS extends Struct {
  @Uint32()
  external int dwVersion;

  @Uint32()
  external int dwFlags;
}

/// {@category Struct}
class PEERDIST_RETRIEVAL_OPTIONS extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int dwContentInfoMinVersion;

  @Uint32()
  external int dwContentInfoMaxVersion;

  @Uint32()
  external int dwReserved;
}

/// {@category Struct}
class PEERDIST_STATUS_INFO extends Struct {
  @Uint32()
  external int cbSize;

  @Int32()
  external int status;

  @Uint32()
  external int dwMinVer;

  @Uint32()
  external int dwMaxVer;
}

/// {@category Struct}
class PEER_ADDRESS extends Struct {
  @Uint32()
  external int dwSize;

  external SOCKADDR_IN6 sin6;
}

/// {@category Struct}
class PEER_APPLICATION extends Struct {
  external GUID id;

  external PEER_DATA data;

  external Pointer<Utf16> pwzDescription;
}

/// {@category Struct}
class PEER_APPLICATION_REGISTRATION_INFO extends Struct {
  external PEER_APPLICATION application;

  external Pointer<Utf16> pwzApplicationToLaunch;

  external Pointer<Utf16> pwzApplicationArguments;

  @Uint32()
  external int dwPublicationScope;
}

/// {@category Struct}
class PEER_APP_LAUNCH_INFO extends Struct {
  external Pointer<PEER_CONTACT> pContact;

  external Pointer<PEER_ENDPOINT> pEndpoint;

  external Pointer<PEER_INVITATION> pInvitation;
}

/// {@category Struct}
class PEER_COLLAB_EVENT_DATA extends Struct {
  @Int32()
  external int eventType;

  external _PEER_COLLAB_EVENT_DATA__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _PEER_COLLAB_EVENT_DATA__Anonymous_e__Union extends Union {
  external PEER_EVENT_WATCHLIST_CHANGED_DATA watchListChangedData;

  external PEER_EVENT_PRESENCE_CHANGED_DATA presenceChangedData;

  external PEER_EVENT_APPLICATION_CHANGED_DATA applicationChangedData;

  external PEER_EVENT_OBJECT_CHANGED_DATA objectChangedData;

  external PEER_EVENT_ENDPOINT_CHANGED_DATA endpointChangedData;

  external PEER_EVENT_PEOPLE_NEAR_ME_CHANGED_DATA peopleNearMeChangedData;

  external PEER_EVENT_REQUEST_STATUS_CHANGED_DATA requestStatusChangedData;
}

extension PEER_COLLAB_EVENT_DATA_Extension on PEER_COLLAB_EVENT_DATA {
  PEER_EVENT_WATCHLIST_CHANGED_DATA get watchListChangedData =>
      this.Anonymous.watchListChangedData;
  set watchListChangedData(PEER_EVENT_WATCHLIST_CHANGED_DATA value) =>
      this.Anonymous.watchListChangedData = value;

  PEER_EVENT_PRESENCE_CHANGED_DATA get presenceChangedData =>
      this.Anonymous.presenceChangedData;
  set presenceChangedData(PEER_EVENT_PRESENCE_CHANGED_DATA value) =>
      this.Anonymous.presenceChangedData = value;

  PEER_EVENT_APPLICATION_CHANGED_DATA get applicationChangedData =>
      this.Anonymous.applicationChangedData;
  set applicationChangedData(PEER_EVENT_APPLICATION_CHANGED_DATA value) =>
      this.Anonymous.applicationChangedData = value;

  PEER_EVENT_OBJECT_CHANGED_DATA get objectChangedData =>
      this.Anonymous.objectChangedData;
  set objectChangedData(PEER_EVENT_OBJECT_CHANGED_DATA value) =>
      this.Anonymous.objectChangedData = value;

  PEER_EVENT_ENDPOINT_CHANGED_DATA get endpointChangedData =>
      this.Anonymous.endpointChangedData;
  set endpointChangedData(PEER_EVENT_ENDPOINT_CHANGED_DATA value) =>
      this.Anonymous.endpointChangedData = value;

  PEER_EVENT_PEOPLE_NEAR_ME_CHANGED_DATA get peopleNearMeChangedData =>
      this.Anonymous.peopleNearMeChangedData;
  set peopleNearMeChangedData(PEER_EVENT_PEOPLE_NEAR_ME_CHANGED_DATA value) =>
      this.Anonymous.peopleNearMeChangedData = value;

  PEER_EVENT_REQUEST_STATUS_CHANGED_DATA get requestStatusChangedData =>
      this.Anonymous.requestStatusChangedData;
  set requestStatusChangedData(PEER_EVENT_REQUEST_STATUS_CHANGED_DATA value) =>
      this.Anonymous.requestStatusChangedData = value;
}

/// {@category Struct}
class PEER_COLLAB_EVENT_REGISTRATION extends Struct {
  @Int32()
  external int eventType;

  external Pointer<GUID> pInstance;
}

/// {@category Struct}
class PEER_CONNECTION_INFO extends Struct {
  @Uint32()
  external int dwSize;

  @Uint32()
  external int dwFlags;

  @Uint64()
  external int ullConnectionId;

  @Uint64()
  external int ullNodeId;

  external Pointer<Utf16> pwzPeerId;

  external PEER_ADDRESS address;
}

/// {@category Struct}
class PEER_CONTACT extends Struct {
  external Pointer<Utf16> pwzPeerName;

  external Pointer<Utf16> pwzNickName;

  external Pointer<Utf16> pwzDisplayName;

  external Pointer<Utf16> pwzEmailAddress;

  @Int32()
  external int fWatch;

  @Int32()
  external int WatcherPermissions;

  external PEER_DATA credentials;
}

/// {@category Struct}
class PEER_CREDENTIAL_INFO extends Struct {
  @Uint32()
  external int dwSize;

  @Uint32()
  external int dwFlags;

  external Pointer<Utf16> pwzFriendlyName;

  external Pointer<CERT_PUBLIC_KEY_INFO> pPublicKey;

  external Pointer<Utf16> pwzIssuerPeerName;

  external Pointer<Utf16> pwzIssuerFriendlyName;

  external FILETIME ftValidityStart;

  external FILETIME ftValidityEnd;

  @Uint32()
  external int cRoles;

  external Pointer<GUID> pRoles;
}

/// {@category Struct}
class PEER_DATA extends Struct {
  @Uint32()
  external int cbData;

  external Pointer<Uint8> pbData;
}

/// {@category Struct}
class PEER_ENDPOINT extends Struct {
  external PEER_ADDRESS address;

  external Pointer<Utf16> pwzEndpointName;
}

/// {@category Struct}
class PEER_EVENT_APPLICATION_CHANGED_DATA extends Struct {
  external Pointer<PEER_CONTACT> pContact;

  external Pointer<PEER_ENDPOINT> pEndpoint;

  @Int32()
  external int changeType;

  external Pointer<PEER_APPLICATION> pApplication;
}

/// {@category Struct}
class PEER_EVENT_CONNECTION_CHANGE_DATA extends Struct {
  @Uint32()
  external int dwSize;

  @Int32()
  external int status;

  @Uint64()
  external int ullConnectionId;

  @Uint64()
  external int ullNodeId;

  @Uint64()
  external int ullNextConnectionId;

  @Int32()
  external int hrConnectionFailedReason;
}

/// {@category Struct}
class PEER_EVENT_ENDPOINT_CHANGED_DATA extends Struct {
  external Pointer<PEER_CONTACT> pContact;

  external Pointer<PEER_ENDPOINT> pEndpoint;
}

/// {@category Struct}
class PEER_EVENT_INCOMING_DATA extends Struct {
  @Uint32()
  external int dwSize;

  @Uint64()
  external int ullConnectionId;

  external GUID type;

  external PEER_DATA data;
}

/// {@category Struct}
class PEER_EVENT_MEMBER_CHANGE_DATA extends Struct {
  @Uint32()
  external int dwSize;

  @Int32()
  external int changeType;

  external Pointer<Utf16> pwzIdentity;
}

/// {@category Struct}
class PEER_EVENT_NODE_CHANGE_DATA extends Struct {
  @Uint32()
  external int dwSize;

  @Int32()
  external int changeType;

  @Uint64()
  external int ullNodeId;

  external Pointer<Utf16> pwzPeerId;
}

/// {@category Struct}
class PEER_EVENT_OBJECT_CHANGED_DATA extends Struct {
  external Pointer<PEER_CONTACT> pContact;

  external Pointer<PEER_ENDPOINT> pEndpoint;

  @Int32()
  external int changeType;

  external Pointer<PEER_OBJECT> pObject;
}

/// {@category Struct}
class PEER_EVENT_PEOPLE_NEAR_ME_CHANGED_DATA extends Struct {
  @Int32()
  external int changeType;

  external Pointer<PEER_PEOPLE_NEAR_ME> pPeopleNearMe;
}

/// {@category Struct}
class PEER_EVENT_PRESENCE_CHANGED_DATA extends Struct {
  external Pointer<PEER_CONTACT> pContact;

  external Pointer<PEER_ENDPOINT> pEndpoint;

  @Int32()
  external int changeType;

  external Pointer<PEER_PRESENCE_INFO> pPresenceInfo;
}

/// {@category Struct}
class PEER_EVENT_RECORD_CHANGE_DATA extends Struct {
  @Uint32()
  external int dwSize;

  @Int32()
  external int changeType;

  external GUID recordId;

  external GUID recordType;
}

/// {@category Struct}
class PEER_EVENT_REQUEST_STATUS_CHANGED_DATA extends Struct {
  external Pointer<PEER_ENDPOINT> pEndpoint;

  @Int32()
  external int hrChange;
}

/// {@category Struct}
class PEER_EVENT_SYNCHRONIZED_DATA extends Struct {
  @Uint32()
  external int dwSize;

  external GUID recordType;
}

/// {@category Struct}
class PEER_EVENT_WATCHLIST_CHANGED_DATA extends Struct {
  external Pointer<PEER_CONTACT> pContact;

  @Int32()
  external int changeType;
}

/// {@category Struct}
class PEER_GRAPH_EVENT_DATA extends Struct {
  @Int32()
  external int eventType;

  external _PEER_GRAPH_EVENT_DATA__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _PEER_GRAPH_EVENT_DATA__Anonymous_e__Union extends Union {
  @Int32()
  external int dwStatus;

  external PEER_EVENT_INCOMING_DATA incomingData;

  external PEER_EVENT_RECORD_CHANGE_DATA recordChangeData;

  external PEER_EVENT_CONNECTION_CHANGE_DATA connectionChangeData;

  external PEER_EVENT_NODE_CHANGE_DATA nodeChangeData;

  external PEER_EVENT_SYNCHRONIZED_DATA synchronizedData;
}

extension PEER_GRAPH_EVENT_DATA_Extension on PEER_GRAPH_EVENT_DATA {
  int get dwStatus => this.Anonymous.dwStatus;
  set dwStatus(int value) => this.Anonymous.dwStatus = value;

  PEER_EVENT_INCOMING_DATA get incomingData => this.Anonymous.incomingData;
  set incomingData(PEER_EVENT_INCOMING_DATA value) =>
      this.Anonymous.incomingData = value;

  PEER_EVENT_RECORD_CHANGE_DATA get recordChangeData =>
      this.Anonymous.recordChangeData;
  set recordChangeData(PEER_EVENT_RECORD_CHANGE_DATA value) =>
      this.Anonymous.recordChangeData = value;

  PEER_EVENT_CONNECTION_CHANGE_DATA get connectionChangeData =>
      this.Anonymous.connectionChangeData;
  set connectionChangeData(PEER_EVENT_CONNECTION_CHANGE_DATA value) =>
      this.Anonymous.connectionChangeData = value;

  PEER_EVENT_NODE_CHANGE_DATA get nodeChangeData =>
      this.Anonymous.nodeChangeData;
  set nodeChangeData(PEER_EVENT_NODE_CHANGE_DATA value) =>
      this.Anonymous.nodeChangeData = value;

  PEER_EVENT_SYNCHRONIZED_DATA get synchronizedData =>
      this.Anonymous.synchronizedData;
  set synchronizedData(PEER_EVENT_SYNCHRONIZED_DATA value) =>
      this.Anonymous.synchronizedData = value;
}

/// {@category Struct}
class PEER_GRAPH_EVENT_REGISTRATION extends Struct {
  @Int32()
  external int eventType;

  external Pointer<GUID> pType;
}

/// {@category Struct}
class PEER_GRAPH_PROPERTIES extends Struct {
  @Uint32()
  external int dwSize;

  @Uint32()
  external int dwFlags;

  @Uint32()
  external int dwScope;

  @Uint32()
  external int dwMaxRecordSize;

  external Pointer<Utf16> pwzGraphId;

  external Pointer<Utf16> pwzCreatorId;

  external Pointer<Utf16> pwzFriendlyName;

  external Pointer<Utf16> pwzComment;

  @Uint32()
  external int ulPresenceLifetime;

  @Uint32()
  external int cPresenceMax;
}

/// {@category Struct}
class PEER_GROUP_EVENT_DATA extends Struct {
  @Int32()
  external int eventType;

  external _PEER_GROUP_EVENT_DATA__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _PEER_GROUP_EVENT_DATA__Anonymous_e__Union extends Union {
  @Int32()
  external int dwStatus;

  external PEER_EVENT_INCOMING_DATA incomingData;

  external PEER_EVENT_RECORD_CHANGE_DATA recordChangeData;

  external PEER_EVENT_CONNECTION_CHANGE_DATA connectionChangeData;

  external PEER_EVENT_MEMBER_CHANGE_DATA memberChangeData;

  @Int32()
  external int hrConnectionFailedReason;
}

extension PEER_GROUP_EVENT_DATA_Extension on PEER_GROUP_EVENT_DATA {
  int get dwStatus => this.Anonymous.dwStatus;
  set dwStatus(int value) => this.Anonymous.dwStatus = value;

  PEER_EVENT_INCOMING_DATA get incomingData => this.Anonymous.incomingData;
  set incomingData(PEER_EVENT_INCOMING_DATA value) =>
      this.Anonymous.incomingData = value;

  PEER_EVENT_RECORD_CHANGE_DATA get recordChangeData =>
      this.Anonymous.recordChangeData;
  set recordChangeData(PEER_EVENT_RECORD_CHANGE_DATA value) =>
      this.Anonymous.recordChangeData = value;

  PEER_EVENT_CONNECTION_CHANGE_DATA get connectionChangeData =>
      this.Anonymous.connectionChangeData;
  set connectionChangeData(PEER_EVENT_CONNECTION_CHANGE_DATA value) =>
      this.Anonymous.connectionChangeData = value;

  PEER_EVENT_MEMBER_CHANGE_DATA get memberChangeData =>
      this.Anonymous.memberChangeData;
  set memberChangeData(PEER_EVENT_MEMBER_CHANGE_DATA value) =>
      this.Anonymous.memberChangeData = value;

  int get hrConnectionFailedReason => this.Anonymous.hrConnectionFailedReason;
  set hrConnectionFailedReason(int value) =>
      this.Anonymous.hrConnectionFailedReason = value;
}

/// {@category Struct}
class PEER_GROUP_EVENT_REGISTRATION extends Struct {
  @Int32()
  external int eventType;

  external Pointer<GUID> pType;
}

/// {@category Struct}
class PEER_GROUP_PROPERTIES extends Struct {
  @Uint32()
  external int dwSize;

  @Uint32()
  external int dwFlags;

  external Pointer<Utf16> pwzCloud;

  external Pointer<Utf16> pwzClassifier;

  external Pointer<Utf16> pwzGroupPeerName;

  external Pointer<Utf16> pwzCreatorPeerName;

  external Pointer<Utf16> pwzFriendlyName;

  external Pointer<Utf16> pwzComment;

  @Uint32()
  external int ulMemberDataLifetime;

  @Uint32()
  external int ulPresenceLifetime;

  @Uint32()
  external int dwAuthenticationSchemes;

  external Pointer<Utf16> pwzGroupPassword;

  external GUID groupPasswordRole;
}

/// {@category Struct}
class PEER_INVITATION extends Struct {
  external GUID applicationId;

  external PEER_DATA applicationData;

  external Pointer<Utf16> pwzMessage;
}

/// {@category Struct}
class PEER_INVITATION_INFO extends Struct {
  @Uint32()
  external int dwSize;

  @Uint32()
  external int dwFlags;

  external Pointer<Utf16> pwzCloudName;

  @Uint32()
  external int dwScope;

  @Uint32()
  external int dwCloudFlags;

  external Pointer<Utf16> pwzGroupPeerName;

  external Pointer<Utf16> pwzIssuerPeerName;

  external Pointer<Utf16> pwzSubjectPeerName;

  external Pointer<Utf16> pwzGroupFriendlyName;

  external Pointer<Utf16> pwzIssuerFriendlyName;

  external Pointer<Utf16> pwzSubjectFriendlyName;

  external FILETIME ftValidityStart;

  external FILETIME ftValidityEnd;

  @Uint32()
  external int cRoles;

  external Pointer<GUID> pRoles;

  @Uint32()
  external int cClassifiers;

  external Pointer<Pointer<Utf16>> ppwzClassifiers;

  external Pointer<CERT_PUBLIC_KEY_INFO> pSubjectPublicKey;

  @Int32()
  external int authScheme;
}

/// {@category Struct}
class PEER_INVITATION_RESPONSE extends Struct {
  @Int32()
  external int action;

  external Pointer<Utf16> pwzMessage;

  @Int32()
  external int hrExtendedInfo;
}

/// {@category Struct}
class PEER_MEMBER extends Struct {
  @Uint32()
  external int dwSize;

  @Uint32()
  external int dwFlags;

  external Pointer<Utf16> pwzIdentity;

  external Pointer<Utf16> pwzAttributes;

  @Uint64()
  external int ullNodeId;

  @Uint32()
  external int cAddresses;

  external Pointer<PEER_ADDRESS> pAddresses;

  external Pointer<PEER_CREDENTIAL_INFO> pCredentialInfo;
}

/// {@category Struct}
class PEER_NAME_PAIR extends Struct {
  @Uint32()
  external int dwSize;

  external Pointer<Utf16> pwzPeerName;

  external Pointer<Utf16> pwzFriendlyName;
}

/// {@category Struct}
class PEER_NODE_INFO extends Struct {
  @Uint32()
  external int dwSize;

  @Uint64()
  external int ullNodeId;

  external Pointer<Utf16> pwzPeerId;

  @Uint32()
  external int cAddresses;

  external Pointer<PEER_ADDRESS> pAddresses;

  external Pointer<Utf16> pwzAttributes;
}

/// {@category Struct}
class PEER_OBJECT extends Struct {
  external GUID id;

  external PEER_DATA data;

  @Uint32()
  external int dwPublicationScope;
}

/// {@category Struct}
class PEER_PEOPLE_NEAR_ME extends Struct {
  external Pointer<Utf16> pwzNickName;

  external PEER_ENDPOINT endpoint;

  external GUID id;
}

/// {@category Struct}
class PEER_PNRP_CLOUD_INFO extends Struct {
  external Pointer<Utf16> pwzCloudName;

  @Int32()
  external int dwScope;

  @Uint32()
  external int dwScopeId;
}

/// {@category Struct}
class PEER_PNRP_ENDPOINT_INFO extends Struct {
  external Pointer<Utf16> pwzPeerName;

  @Uint32()
  external int cAddresses;

  external Pointer<Pointer<SOCKADDR>> ppAddresses;

  external Pointer<Utf16> pwzComment;

  external PEER_DATA payload;
}

/// {@category Struct}
class PEER_PNRP_REGISTRATION_INFO extends Struct {
  external Pointer<Utf16> pwzCloudName;

  external Pointer<Utf16> pwzPublishingIdentity;

  @Uint32()
  external int cAddresses;

  external Pointer<Pointer<SOCKADDR>> ppAddresses;

  @Uint16()
  external int wPort;

  external Pointer<Utf16> pwzComment;

  external PEER_DATA payload;
}

/// {@category Struct}
class PEER_PRESENCE_INFO extends Struct {
  @Int32()
  external int status;

  external Pointer<Utf16> pwzDescriptiveText;
}

/// {@category Struct}
class PEER_RECORD extends Struct {
  @Uint32()
  external int dwSize;

  external GUID type;

  external GUID id;

  @Uint32()
  external int dwVersion;

  @Uint32()
  external int dwFlags;

  external Pointer<Utf16> pwzCreatorId;

  external Pointer<Utf16> pwzModifiedById;

  external Pointer<Utf16> pwzAttributes;

  external FILETIME ftCreation;

  external FILETIME ftExpiration;

  external FILETIME ftLastModified;

  external PEER_DATA securityData;

  external PEER_DATA data;
}

/// {@category Struct}
class PEER_SECURITY_INTERFACE extends Struct {
  @Uint32()
  external int dwSize;

  external Pointer<Utf16> pwzSspFilename;

  external Pointer<Utf16> pwzPackageName;

  @Uint32()
  external int cbSecurityInfo;

  external Pointer<Uint8> pbSecurityInfo;

  external Pointer pvContext;

  external Pointer<NativeFunction<PFNPEER_VALIDATE_RECORD>> pfnValidateRecord;

  external Pointer<NativeFunction<PFNPEER_SECURE_RECORD>> pfnSecureRecord;

  external Pointer<NativeFunction<PFNPEER_FREE_SECURITY_DATA>>
      pfnFreeSecurityData;

  external Pointer<NativeFunction<PFNPEER_ON_PASSWORD_AUTH_FAILED>>
      pfnAuthFailed;
}

/// {@category Struct}
class PEER_VERSION_DATA extends Struct {
  @Uint16()
  external int wVersion;

  @Uint16()
  external int wHighestVersion;
}

/// {@category Struct}
class PNRPCLOUDINFO extends Struct {
  @Uint32()
  external int dwSize;

  external PNRP_CLOUD_ID Cloud;

  @Int32()
  external int enCloudState;

  @Int32()
  external int enCloudFlags;
}

/// {@category Struct}
class PNRPINFO_V1 extends Struct {
  @Uint32()
  external int dwSize;

  external Pointer<Utf16> lpwszIdentity;

  @Uint32()
  external int nMaxResolve;

  @Uint32()
  external int dwTimeout;

  @Uint32()
  external int dwLifetime;

  @Int32()
  external int enResolveCriteria;

  @Uint32()
  external int dwFlags;

  external SOCKET_ADDRESS saHint;

  @Int32()
  external int enNameState;
}

/// {@category Struct}
class PNRPINFO_V2 extends Struct {
  @Uint32()
  external int dwSize;

  external Pointer<Utf16> lpwszIdentity;

  @Uint32()
  external int nMaxResolve;

  @Uint32()
  external int dwTimeout;

  @Uint32()
  external int dwLifetime;

  @Int32()
  external int enResolveCriteria;

  @Uint32()
  external int dwFlags;

  external SOCKET_ADDRESS saHint;

  @Int32()
  external int enNameState;

  @Int32()
  external int enExtendedPayloadType;

  external _PNRPINFO_V2__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _PNRPINFO_V2__Anonymous_e__Union extends Union {
  external BLOB blobPayload;

  external Pointer<Utf16> pwszPayload;
}

extension PNRPINFO_V2_Extension on PNRPINFO_V2 {
  BLOB get blobPayload => this.Anonymous.blobPayload;
  set blobPayload(BLOB value) => this.Anonymous.blobPayload = value;

  Pointer<Utf16> get pwszPayload => this.Anonymous.pwszPayload;
  set pwszPayload(Pointer<Utf16> value) => this.Anonymous.pwszPayload = value;
}

/// {@category Struct}
class PNRP_CLOUD_ID extends Struct {
  @Int32()
  external int AddressFamily;

  @Int32()
  external int Scope;

  @Uint32()
  external int ScopeId;
}
