// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// Native callback functions that can get called by the Win32 API

// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: directives_ordering, unnecessary_getters_setters
// ignore_for_file: unused_field, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'structs.g.dart';
import '../../combase.dart';
import '../../guid.dart';
import '../../foundation/structs.g.dart';
import '../../networkmanagement/ndis/structs.g.dart';
import '../../networkmanagement/wifi/structs.g.dart';
import '../../system/remotedesktop/structs.g.dart';
import '../../security/extensibleauthenticationprotocol/structs.g.dart';

typedef DOT11EXTIHV_ADAPTER_RESET = Uint32 Function(
  IntPtr hIhvExtAdapter,
);
typedef DOT11EXTIHV_CONTROL = Uint32 Function(
  IntPtr hIhvExtAdapter,
  Uint32 dwInBufferSize,
  Pointer<Uint8> pInBuffer,
  Uint32 dwOutBufferSize,
  Pointer<Uint8> pOutBuffer,
  Pointer<Uint32> pdwBytesReturned,
);
typedef DOT11EXTIHV_CREATE_DISCOVERY_PROFILES = Uint32 Function(
  IntPtr hIhvExtAdapter,
  Int32 bInsecure,
  Pointer<DOT11EXT_IHV_PROFILE_PARAMS> pIhvProfileParams,
  Pointer<DOT11_BSS_LIST> pConnectableBssid,
  Pointer<DOT11EXT_IHV_DISCOVERY_PROFILE_LIST> pIhvDiscoveryProfileList,
  Pointer<Uint32> pdwReasonCode,
);
typedef DOT11EXTIHV_DEINIT_ADAPTER = Void Function(
  IntPtr hIhvExtAdapter,
);
typedef DOT11EXTIHV_DEINIT_SERVICE = Void Function();
typedef DOT11EXTIHV_GET_VERSION_INFO = Uint32 Function(
  Pointer<DOT11_IHV_VERSION_INFO> pDot11IHVVersionInfo,
);
typedef DOT11EXTIHV_INIT_ADAPTER = Uint32 Function(
  Pointer<DOT11_ADAPTER> pDot11Adapter,
  IntPtr hDot11SvcHandle,
  Pointer<IntPtr> phIhvExtAdapter,
);
typedef DOT11EXTIHV_INIT_SERVICE = Uint32 Function(
  Uint32 dwVerNumUsed,
  Pointer<DOT11EXT_APIS> pDot11ExtAPI,
  Pointer pvReserved,
  Pointer<DOT11EXT_IHV_HANDLERS> pDot11IHVHandlers,
);
typedef DOT11EXTIHV_INIT_VIRTUAL_STATION = Uint32 Function(
  Pointer<DOT11EXT_VIRTUAL_STATION_APIS> pDot11ExtVSAPI,
  Pointer pvReserved,
);
typedef DOT11EXTIHV_IS_UI_REQUEST_PENDING = Uint32 Function(
  GUID guidUIRequest,
  Pointer<Int32> pbIsRequestPending,
);
typedef DOT11EXTIHV_ONEX_INDICATE_RESULT = Uint32 Function(
  IntPtr hIhvExtAdapter,
  Int32 msOneXResult,
  Pointer<DOT11_MSONEX_RESULT_PARAMS> pDot11MsOneXResultParams,
);
typedef DOT11EXTIHV_PERFORM_CAPABILITY_MATCH = Uint32 Function(
  IntPtr hIhvExtAdapter,
  Pointer<DOT11EXT_IHV_PROFILE_PARAMS> pIhvProfileParams,
  Pointer<DOT11EXT_IHV_CONNECTIVITY_PROFILE> pIhvConnProfile,
  Pointer<DOT11EXT_IHV_SECURITY_PROFILE> pIhvSecProfile,
  Pointer<DOT11_BSS_LIST> pConnectableBssid,
  Pointer<Uint32> pdwReasonCode,
);
typedef DOT11EXTIHV_PERFORM_POST_ASSOCIATE = Uint32 Function(
  IntPtr hIhvExtAdapter,
  IntPtr hSecuritySessionID,
  Pointer<DOT11_PORT_STATE> pPortState,
  Uint32 uDot11AssocParamsBytes,
  Pointer<DOT11_ASSOCIATION_COMPLETION_PARAMETERS> pDot11AssocParams,
);
typedef DOT11EXTIHV_PERFORM_PRE_ASSOCIATE = Uint32 Function(
  IntPtr hIhvExtAdapter,
  IntPtr hConnectSession,
  Pointer<DOT11EXT_IHV_PROFILE_PARAMS> pIhvProfileParams,
  Pointer<DOT11EXT_IHV_CONNECTIVITY_PROFILE> pIhvConnProfile,
  Pointer<DOT11EXT_IHV_SECURITY_PROFILE> pIhvSecProfile,
  Pointer<DOT11_BSS_LIST> pConnectableBssid,
  Pointer<Uint32> pdwReasonCode,
);
typedef DOT11EXTIHV_PROCESS_SESSION_CHANGE = Uint32 Function(
  Uint32 uEventType,
  Pointer<WTSSESSION_NOTIFICATION> pSessionNotification,
);
typedef DOT11EXTIHV_PROCESS_UI_RESPONSE = Uint32 Function(
  GUID guidUIRequest,
  Uint32 dwByteCount,
  Pointer pvResponseBuffer,
);
typedef DOT11EXTIHV_QUERY_UI_REQUEST = Uint32 Function(
  IntPtr hIhvExtAdapter,
  Int32 connectionPhase,
  Pointer<Pointer<DOT11EXT_IHV_UI_REQUEST>> ppIhvUIRequest,
);
typedef DOT11EXTIHV_RECEIVE_INDICATION = Uint32 Function(
  IntPtr hIhvExtAdapter,
  Int32 indicationType,
  Uint32 uBufferLength,
  Pointer pvBuffer,
);
typedef DOT11EXTIHV_RECEIVE_PACKET = Uint32 Function(
  IntPtr hIhvExtAdapter,
  Uint32 dwInBufferSize,
  Pointer pvInBuffer,
);
typedef DOT11EXTIHV_SEND_PACKET_COMPLETION = Uint32 Function(
  IntPtr hSendCompletion,
);
typedef DOT11EXTIHV_STOP_POST_ASSOCIATE = Uint32 Function(
  IntPtr hIhvExtAdapter,
  Pointer<Pointer<Uint8>> pPeer,
  Uint32 dot11AssocStatus,
);
typedef DOT11EXTIHV_VALIDATE_PROFILE = Uint32 Function(
  IntPtr hIhvExtAdapter,
  Pointer<DOT11EXT_IHV_PROFILE_PARAMS> pIhvProfileParams,
  Pointer<DOT11EXT_IHV_CONNECTIVITY_PROFILE> pIhvConnProfile,
  Pointer<DOT11EXT_IHV_SECURITY_PROFILE> pIhvSecProfile,
  Pointer<Uint32> pdwReasonCode,
);
typedef DOT11EXT_ALLOCATE_BUFFER = Uint32 Function(
  Uint32 dwByteCount,
  Pointer<Pointer> ppvBuffer,
);
typedef DOT11EXT_FREE_BUFFER = Void Function(
  Pointer pvMemory,
);
typedef DOT11EXT_GET_PROFILE_CUSTOM_USER_DATA = Uint32 Function(
  IntPtr hDot11SvcHandle,
  IntPtr hConnectSession,
  Uint32 dwSessionID,
  Pointer<Uint32> pdwDataSize,
  Pointer<Pointer> ppvData,
);
typedef DOT11EXT_NIC_SPECIFIC_EXTENSION = Uint32 Function(
  IntPtr hDot11SvcHandle,
  Uint32 dwInBufferSize,
  Pointer pvInBuffer,
  Pointer<Uint32> pdwOutBufferSize,
  Pointer pvOutBuffer,
);
typedef DOT11EXT_ONEX_START = Uint32 Function(
  IntPtr hDot11SvcHandle,
  Pointer<EAP_ATTRIBUTES> pEapAttributes,
);
typedef DOT11EXT_ONEX_STOP = Uint32 Function(
  IntPtr hDot11SvcHandle,
);
typedef DOT11EXT_POST_ASSOCIATE_COMPLETION = Uint32 Function(
  IntPtr hDot11SvcHandle,
  IntPtr hSecuritySessionID,
  Pointer<Pointer<Uint8>> pPeer,
  Uint32 dwReasonCode,
  Uint32 dwWin32Error,
);
typedef DOT11EXT_PRE_ASSOCIATE_COMPLETION = Uint32 Function(
  IntPtr hDot11SvcHandle,
  IntPtr hConnectSession,
  Uint32 dwReasonCode,
  Uint32 dwWin32Error,
);
typedef DOT11EXT_PROCESS_ONEX_PACKET = Uint32 Function(
  IntPtr hDot11SvcHandle,
  Uint32 dwInPacketSize,
  Pointer pvInPacket,
);
typedef DOT11EXT_QUERY_VIRTUAL_STATION_PROPERTIES = Uint32 Function(
  IntPtr hDot11SvcHandle,
  Pointer<Int32> pbIsVirtualStation,
  Pointer<GUID> pgPrimary,
  Pointer pvReserved,
);
typedef DOT11EXT_RELEASE_VIRTUAL_STATION = Uint32 Function(
  IntPtr hDot11PrimaryHandle,
  Pointer pvReserved,
);
typedef DOT11EXT_REQUEST_VIRTUAL_STATION = Uint32 Function(
  IntPtr hDot11PrimaryHandle,
  Pointer pvReserved,
);
typedef DOT11EXT_SEND_NOTIFICATION = Uint32 Function(
  IntPtr hDot11SvcHandle,
  Pointer<L2_NOTIFICATION_DATA> pNotificationData,
);
typedef DOT11EXT_SEND_PACKET = Uint32 Function(
  IntPtr hDot11SvcHandle,
  Uint32 uPacketLen,
  Pointer pvPacket,
  IntPtr hSendCompletion,
);
typedef DOT11EXT_SEND_UI_REQUEST = Uint32 Function(
  IntPtr hDot11SvcHandle,
  Pointer<DOT11EXT_IHV_UI_REQUEST> pIhvUIRequest,
);
typedef DOT11EXT_SET_AUTH_ALGORITHM = Uint32 Function(
  IntPtr hDot11SvcHandle,
  Uint32 dwAuthAlgo,
);
typedef DOT11EXT_SET_CURRENT_PROFILE = Uint32 Function(
  IntPtr hDot11SvcHandle,
  IntPtr hConnectSession,
  Pointer<DOT11EXT_IHV_CONNECTIVITY_PROFILE> pIhvConnProfile,
  Pointer<DOT11EXT_IHV_SECURITY_PROFILE> pIhvSecProfile,
);
typedef DOT11EXT_SET_DEFAULT_KEY = Uint32 Function(
  IntPtr hDot11SvcHandle,
  Pointer<DOT11_CIPHER_DEFAULT_KEY_VALUE> pKey,
  Int32 dot11Direction,
);
typedef DOT11EXT_SET_DEFAULT_KEY_ID = Uint32 Function(
  IntPtr hDot11SvcHandle,
  Uint32 uDefaultKeyId,
);
typedef DOT11EXT_SET_ETHERTYPE_HANDLING = Uint32 Function(
  IntPtr hDot11SvcHandle,
  Uint32 uMaxBackLog,
  Uint32 uNumOfExemption,
  Pointer<DOT11_PRIVACY_EXEMPTION> pExemption,
  Uint32 uNumOfRegistration,
  Pointer<Uint16> pusRegistration,
);
typedef DOT11EXT_SET_EXCLUDE_UNENCRYPTED = Uint32 Function(
  IntPtr hDot11SvcHandle,
  Int32 bExcludeUnencrypted,
);
typedef DOT11EXT_SET_KEY_MAPPING_KEY = Uint32 Function(
  IntPtr hDot11SvcHandle,
  Pointer<DOT11_CIPHER_KEY_MAPPING_KEY_VALUE> pKey,
);
typedef DOT11EXT_SET_MULTICAST_CIPHER_ALGORITHM = Uint32 Function(
  IntPtr hDot11SvcHandle,
  Uint32 dwMulticastCipherAlgo,
);
typedef DOT11EXT_SET_PROFILE_CUSTOM_USER_DATA = Uint32 Function(
  IntPtr hDot11SvcHandle,
  IntPtr hConnectSession,
  Uint32 dwSessionID,
  Uint32 dwDataSize,
  Pointer pvData,
);
typedef DOT11EXT_SET_UNICAST_CIPHER_ALGORITHM = Uint32 Function(
  IntPtr hDot11SvcHandle,
  Uint32 dwUnicastCipherAlgo,
);
typedef DOT11EXT_SET_VIRTUAL_STATION_AP_PROPERTIES = Uint32 Function(
  IntPtr hDot11SvcHandle,
  IntPtr hConnectSession,
  Uint32 dwNumProperties,
  Pointer<DOT11EXT_VIRTUAL_STATION_AP_PROPERTY> pProperties,
  Pointer pvReserved,
);
