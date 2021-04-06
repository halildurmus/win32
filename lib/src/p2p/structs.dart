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

class PNRP_CLOUD_ID extends Struct {
  @Int32()
  external int AddressFamily;
  @Uint32()
  external int Scope;
  @Uint32()
  external int ScopeId;
}

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
  @Uint32()
  external int enResolveCriteria;
  @Uint32()
  external int dwFlags;
  external SOCKET_ADDRESS saHint;
  @Uint32()
  external int enNameState;
}

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
  @Uint32()
  external int enResolveCriteria;
  @Uint32()
  external int dwFlags;
  external SOCKET_ADDRESS saHint;
  @Uint32()
  external int enNameState;
  @Uint32()
  external int enExtendedPayloadType;
  @Uint32()
  external int Anonymous;
}

class PNRPCLOUDINFO extends Struct {
  @Uint32()
  external int dwSize;
  external PNRP_CLOUD_ID Cloud;
  @Uint32()
  external int enCloudState;
  @Uint32()
  external int enCloudFlags;
}

class PEER_VERSION_DATA extends Struct {
  @Uint16()
  external int wVersion;
  @Uint16()
  external int wHighestVersion;
}

class PEER_DATA extends Struct {
  @Uint32()
  external int cbData;
  external Pointer<Uint8> pbData;
}

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

class PEER_ADDRESS extends Struct {
  @Uint32()
  external int dwSize;
  external SOCKADDR_IN6 sin6;
}

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

class PEER_EVENT_INCOMING_DATA extends Struct {
  @Uint32()
  external int dwSize;
  @Uint64()
  external int ullConnectionId;
  external GUID type;
  external PEER_DATA data;
}

class PEER_EVENT_RECORD_CHANGE_DATA extends Struct {
  @Uint32()
  external int dwSize;
  @Uint32()
  external int changeType;
  external GUID recordId;
  external GUID recordType;
}

class PEER_EVENT_CONNECTION_CHANGE_DATA extends Struct {
  @Uint32()
  external int dwSize;
  @Uint32()
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

class PEER_EVENT_SYNCHRONIZED_DATA extends Struct {
  @Uint32()
  external int dwSize;
  external GUID recordType;
}

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

class PEER_EVENT_NODE_CHANGE_DATA extends Struct {
  @Uint32()
  external int dwSize;
  @Uint32()
  external int changeType;
  @Uint64()
  external int ullNodeId;
  external Pointer<Utf16> pwzPeerId;
}

class PEER_GRAPH_EVENT_REGISTRATION extends Struct {
  @Uint32()
  external int eventType;
  external Pointer<GUID> pType;
}

class PEER_GRAPH_EVENT_DATA extends Struct {
  @Uint32()
  external int eventType;
  @Uint32()
  external int Anonymous;
}

class PEER_SECURITY_INTERFACE extends Struct {
  @Uint32()
  external int dwSize;
  external Pointer<Utf16> pwzSspFilename;
  external Pointer<Utf16> pwzPackageName;
  @Uint32()
  external int cbSecurityInfo;
  external Pointer<Uint8> pbSecurityInfo;
  external Pointer pvContext;
  external PFNPEER_VALIDATE_RECORD pfnValidateRecord;
  external PFNPEER_SECURE_RECORD pfnSecureRecord;
  external PFNPEER_FREE_SECURITY_DATA pfnFreeSecurityData;
  external PFNPEER_ON_PASSWORD_AUTH_FAILED pfnAuthFailed;
}

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
  @Uint32()
  external int authScheme;
}

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

class PEER_EVENT_MEMBER_CHANGE_DATA extends Struct {
  @Uint32()
  external int dwSize;
  @Uint32()
  external int changeType;
  external Pointer<Utf16> pwzIdentity;
}

class PEER_GROUP_EVENT_REGISTRATION extends Struct {
  @Uint32()
  external int eventType;
  external Pointer<GUID> pType;
}

class PEER_GROUP_EVENT_DATA extends Struct {
  @Uint32()
  external int eventType;
  @Uint32()
  external int Anonymous;
}

class PEER_NAME_PAIR extends Struct {
  @Uint32()
  external int dwSize;
  external Pointer<Utf16> pwzPeerName;
  external Pointer<Utf16> pwzFriendlyName;
}

class PEER_APPLICATION extends Struct {
  external GUID id;
  external PEER_DATA data;
  external Pointer<Utf16> pwzDescription;
}

class PEER_OBJECT extends Struct {
  external GUID id;
  external PEER_DATA data;
  @Uint32()
  external int dwPublicationScope;
}

class PEER_CONTACT extends Struct {
  external Pointer<Utf16> pwzPeerName;
  external Pointer<Utf16> pwzNickName;
  external Pointer<Utf16> pwzDisplayName;
  external Pointer<Utf16> pwzEmailAddress;
  @Int32()
  external int fWatch;
  @Uint32()
  external int WatcherPermissions;
  external PEER_DATA credentials;
}

class PEER_ENDPOINT extends Struct {
  external PEER_ADDRESS address;
  external Pointer<Utf16> pwzEndpointName;
}

class PEER_PEOPLE_NEAR_ME extends Struct {
  external Pointer<Utf16> pwzNickName;
  external PEER_ENDPOINT endpoint;
  external GUID id;
}

class PEER_INVITATION extends Struct {
  external GUID applicationId;
  external PEER_DATA applicationData;
  external Pointer<Utf16> pwzMessage;
}

class PEER_INVITATION_RESPONSE extends Struct {
  @Uint32()
  external int action;
  external Pointer<Utf16> pwzMessage;
  @Int32()
  external int hrExtendedInfo;
}

class PEER_APP_LAUNCH_INFO extends Struct {
  external Pointer<PEER_CONTACT> pContact;
  external Pointer<PEER_ENDPOINT> pEndpoint;
  external Pointer<PEER_INVITATION> pInvitation;
}

class PEER_APPLICATION_REGISTRATION_INFO extends Struct {
  external PEER_APPLICATION application;
  external Pointer<Utf16> pwzApplicationToLaunch;
  external Pointer<Utf16> pwzApplicationArguments;
  @Uint32()
  external int dwPublicationScope;
}

class PEER_PRESENCE_INFO extends Struct {
  @Uint32()
  external int status;
  external Pointer<Utf16> pwzDescriptiveText;
}

class PEER_COLLAB_EVENT_REGISTRATION extends Struct {
  @Uint32()
  external int eventType;
  external Pointer<GUID> pInstance;
}

class PEER_EVENT_WATCHLIST_CHANGED_DATA extends Struct {
  external Pointer<PEER_CONTACT> pContact;
  @Uint32()
  external int changeType;
}

class PEER_EVENT_PRESENCE_CHANGED_DATA extends Struct {
  external Pointer<PEER_CONTACT> pContact;
  external Pointer<PEER_ENDPOINT> pEndpoint;
  @Uint32()
  external int changeType;
  external Pointer<PEER_PRESENCE_INFO> pPresenceInfo;
}

class PEER_EVENT_APPLICATION_CHANGED_DATA extends Struct {
  external Pointer<PEER_CONTACT> pContact;
  external Pointer<PEER_ENDPOINT> pEndpoint;
  @Uint32()
  external int changeType;
  external Pointer<PEER_APPLICATION> pApplication;
}

class PEER_EVENT_OBJECT_CHANGED_DATA extends Struct {
  external Pointer<PEER_CONTACT> pContact;
  external Pointer<PEER_ENDPOINT> pEndpoint;
  @Uint32()
  external int changeType;
  external Pointer<PEER_OBJECT> pObject;
}

class PEER_EVENT_ENDPOINT_CHANGED_DATA extends Struct {
  external Pointer<PEER_CONTACT> pContact;
  external Pointer<PEER_ENDPOINT> pEndpoint;
}

class PEER_EVENT_PEOPLE_NEAR_ME_CHANGED_DATA extends Struct {
  @Uint32()
  external int changeType;
  external Pointer<PEER_PEOPLE_NEAR_ME> pPeopleNearMe;
}

class PEER_EVENT_REQUEST_STATUS_CHANGED_DATA extends Struct {
  external Pointer<PEER_ENDPOINT> pEndpoint;
  @Int32()
  external int hrChange;
}

class PEER_COLLAB_EVENT_DATA extends Struct {
  @Uint32()
  external int eventType;
  @Uint32()
  external int Anonymous;
}

class PEER_PNRP_ENDPOINT_INFO extends Struct {
  external Pointer<Utf16> pwzPeerName;
  @Uint32()
  external int cAddresses;
  external Pointer<Pointer<SOCKADDR>> ppAddresses;
  external Pointer<Utf16> pwzComment;
  external PEER_DATA payload;
}

class PEER_PNRP_CLOUD_INFO extends Struct {
  external Pointer<Utf16> pwzCloudName;
  @Uint32()
  external int dwScope;
  @Uint32()
  external int dwScopeId;
}

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

class DRT_DATA extends Struct {
  @Uint32()
  external int cb;
  external Pointer<Uint8> pb;
}

class DRT_REGISTRATION extends Struct {
  external DRT_DATA key;
  external DRT_DATA appData;
}

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
  @Uint32()
  external int eSecurityMode;
}

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

class DRT_ADDRESS extends Struct {
  external SOCKADDR_STORAGE socketAddress;
  @Uint32()
  external int flags;
  @Int32()
  external int nearness;
  @Uint32()
  external int latency;
}

class DRT_ADDRESS_LIST extends Struct {
  @Uint32()
  external int AddressCount;
  @Array(1)
  external Array<DRT_ADDRESS> AddressList;
}

class DRT_SEARCH_RESULT extends Struct {
  @Uint32()
  external int dwSize;
  @Uint32()
  external int type;
  external Pointer pvContext;
  external DRT_REGISTRATION registration;
}

class DRT_EVENT_DATA extends Struct {
  @Uint32()
  external int type;
  @Int32()
  external int hr;
  external Pointer pvContext;
  @Uint32()
  external int Anonymous;
}

class PEERDIST_PUBLICATION_OPTIONS extends Struct {
  @Uint32()
  external int dwVersion;
  @Uint32()
  external int dwFlags;
}

class PEERDIST_CONTENT_TAG extends Struct {
  @Array(16)
  external Array<Uint8> Data;
}

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

class PEERDIST_STATUS_INFO extends Struct {
  @Uint32()
  external int cbSize;
  @Uint32()
  external int status;
  @Uint32()
  external int dwMinVer;
  @Uint32()
  external int dwMaxVer;
}

class PEERDIST_CLIENT_BASIC_INFO extends Struct {
  @Int32()
  external int fFlashCrowd;
}
