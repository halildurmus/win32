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
import '../../system/rpc/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../system/rpc/callbacks.g.dart';

typedef CS_TAG_GETTING_ROUTINE = Void Function(
  Pointer hBinding,
  Int32 fServerSide,
  Pointer<Uint32> pulSendingTag,
  Pointer<Uint32> pulDesiredReceivingTag,
  Pointer<Uint32> pulReceivingTag,
  Pointer<Uint32> pStatus,
);
typedef CS_TYPE_FROM_NETCS_ROUTINE = Void Function(
  Pointer hBinding,
  Uint32 ulNetworkCodeSet,
  Pointer<Uint8> pNetworkData,
  Uint32 ulNetworkDataLength,
  Uint32 ulLocalBufferSize,
  Pointer pLocalData,
  Pointer<Uint32> pulLocalDataLength,
  Pointer<Uint32> pStatus,
);
typedef CS_TYPE_LOCAL_SIZE_ROUTINE = Void Function(
  Pointer hBinding,
  Uint32 ulNetworkCodeSet,
  Uint32 ulNetworkBufferSize,
  Pointer<Int32> conversionType,
  Pointer<Uint32> pulLocalBufferSize,
  Pointer<Uint32> pStatus,
);
typedef CS_TYPE_NET_SIZE_ROUTINE = Void Function(
  Pointer hBinding,
  Uint32 ulNetworkCodeSet,
  Uint32 ulLocalBufferSize,
  Pointer<Int32> conversionType,
  Pointer<Uint32> pulNetworkBufferSize,
  Pointer<Uint32> pStatus,
);
typedef CS_TYPE_TO_NETCS_ROUTINE = Void Function(
  Pointer hBinding,
  Uint32 ulNetworkCodeSet,
  Pointer pLocalData,
  Uint32 ulLocalDataLength,
  Pointer<Uint8> pNetworkData,
  Pointer<Uint32> pulNetworkDataLength,
  Pointer<Uint32> pStatus,
);
typedef EXPR_EVAL = Void Function(
  Pointer<MIDL_STUB_MESSAGE> param0,
);
typedef GENERIC_BINDING_ROUTINE = Pointer Function(
  Pointer param0,
);
typedef GENERIC_UNBIND_ROUTINE = Void Function(
  Pointer param0,
  Pointer<Uint8> param1,
);
typedef I_RpcFreeCalloutStateFn = Void Function(
  Pointer<RDR_CALLOUT_STATE> CallOutState,
);
typedef I_RpcPerformCalloutFn = Int32 Function(
  Pointer Context,
  Pointer<RDR_CALLOUT_STATE> CallOutState,
  Int32 Stage,
);
typedef I_RpcProxyFilterIfFn = Int32 Function(
  Pointer Context,
  Pointer<GUID> IfUuid,
  Uint16 IfMajorVersion,
  Pointer<Int32> fAllow,
);
typedef I_RpcProxyGetClientAddressFn = Int32 Function(
  Pointer Context,
  Pointer<Utf8> Buffer,
  Pointer<Uint32> BufferLength,
);
typedef I_RpcProxyGetClientSessionAndResourceUUID = Int32 Function(
  Pointer Context,
  Pointer<Int32> SessionIdPresent,
  Pointer<GUID> SessionId,
  Pointer<Int32> ResourceIdPresent,
  Pointer<GUID> ResourceId,
);
typedef I_RpcProxyGetConnectionTimeoutFn = Int32 Function(
  Pointer<Uint32> ConnectionTimeout,
);
typedef I_RpcProxyIsValidMachineFn = Int32 Function(
  Pointer<Uint16> Machine,
  Pointer<Uint16> DotMachine,
  Uint32 PortNumber,
);
typedef I_RpcProxyUpdatePerfCounterBackendServerFn = Void Function(
  Pointer<Uint16> MachineName,
  Int32 IsConnectEvent,
);
typedef I_RpcProxyUpdatePerfCounterFn = Void Function(
  Int32 Counter,
  Int32 ModifyTrend,
  Uint32 Size,
);
typedef MIDL_ES_ALLOC = Void Function(
  Pointer state,
  Pointer<Pointer<Int8>> pbuffer,
  Pointer<Uint32> psize,
);
typedef MIDL_ES_READ = Void Function(
  Pointer state,
  Pointer<Pointer<Int8>> pbuffer,
  Pointer<Uint32> psize,
);
typedef MIDL_ES_WRITE = Void Function(
  Pointer state,
  Pointer<Utf8> buffer,
  Uint32 size,
);
typedef NDR_NOTIFY2_ROUTINE = Void Function(
  Uint8 flag,
);
typedef NDR_NOTIFY_ROUTINE = Void Function();
typedef NDR_RUNDOWN = Void Function(
  Pointer context,
);
typedef PFN_RPCNOTIFICATION_ROUTINE = Void Function(
  Pointer<RPC_ASYNC_STATE> pAsync,
  Pointer Context,
  Int32 Event,
);
typedef PRPC_RUNDOWN = Void Function(
  Pointer AssociationContext,
);
typedef RPCLT_PDU_FILTER_FUNC = Void Function(
  Pointer Buffer,
  Uint32 BufferLength,
  Int32 fDatagram,
);
typedef RPC_ADDRESS_CHANGE_FN = Void Function(
  Pointer arg,
);
typedef RPC_AUTH_KEY_RETRIEVAL_FN = Void Function(
  Pointer Arg,
  Pointer<Uint16> ServerPrincName,
  Uint32 KeyVer,
  Pointer<Pointer> Key,
  Pointer<Int32> Status,
);
typedef RPC_BLOCKING_FN = Int32 Function(
  Pointer hWnd,
  Pointer Context,
  Pointer hSyncEvent,
);
typedef RPC_CLIENT_ALLOC = Pointer Function(
  IntPtr Size,
);
typedef RPC_CLIENT_FREE = Void Function(
  Pointer Ptr,
);
typedef RPC_DISPATCH_FUNCTION = Void Function(
  Pointer<RPC_MESSAGE> Message,
);
typedef RPC_FORWARD_FUNCTION = Int32 Function(
  Pointer<GUID> InterfaceId,
  Pointer<RPC_VERSION> InterfaceVersion,
  Pointer<GUID> ObjectId,
  Pointer<Uint8> Rpcpro,
  Pointer<Pointer> ppDestEndpoint,
);
typedef RPC_HTTP_PROXY_FREE_STRING = Void Function(
  Pointer<Uint16> $String,
);
typedef RPC_IF_CALLBACK_FN = Int32 Function(
  Pointer InterfaceUuid,
  Pointer Context,
);
typedef RPC_INTERFACE_GROUP_IDLE_CALLBACK_FN = Void Function(
  Pointer IfGroup,
  Pointer IdleCallbackContext,
  Uint32 IsGroupIdle,
);
typedef RPC_MGMT_AUTHORIZATION_FN = Int32 Function(
  Pointer ClientBinding,
  Uint32 RequestedMgmtOperation,
  Pointer<Int32> Status,
);
typedef RPC_NEW_HTTP_PROXY_CHANNEL = Int32 Function(
  Int32 RedirectorStage,
  Pointer<Uint16> ServerName,
  Pointer<Uint16> ServerPort,
  Pointer<Uint16> RemoteUser,
  Pointer<Uint16> AuthType,
  Pointer ResourceUuid,
  Pointer SessionId,
  Pointer Interface,
  Pointer Reserved,
  Uint32 Flags,
  Pointer<Pointer<Uint16>> NewServerName,
  Pointer<Pointer<Uint16>> NewServerPort,
);
typedef RPC_OBJECT_INQ_FN = Void Function(
  Pointer<GUID> ObjectUuid,
  Pointer<GUID> TypeUuid,
  Pointer<Int32> Status,
);
typedef RPC_SECURITY_CALLBACK_FN = Void Function(
  Pointer Context,
);
typedef RPC_SETFILTER_FUNC = Void Function(
  Pointer<NativeFunction<RPCLT_PDU_FILTER_FUNC>> pfnFilter,
);
typedef SERVER_ROUTINE = Int32 Function();
typedef STUB_THUNK = Void Function(
  Pointer<MIDL_STUB_MESSAGE> param0,
);
typedef USER_MARSHAL_FREEING_ROUTINE = Void Function(
  Pointer<Uint32> param0,
  Pointer param1,
);
typedef USER_MARSHAL_MARSHALLING_ROUTINE = Pointer<Uint8> Function(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer param2,
);
typedef USER_MARSHAL_SIZING_ROUTINE = Uint32 Function(
  Pointer<Uint32> param0,
  Uint32 param1,
  Pointer param2,
);
typedef USER_MARSHAL_UNMARSHALLING_ROUTINE = Pointer<Uint8> Function(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer param2,
);
typedef XMIT_HELPER_ROUTINE = Void Function(
  Pointer<MIDL_STUB_MESSAGE> param0,
);
