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
import '../../system/rpc/structs.g.dart';
import '../../system/com/IUnknown.dart';
import '../../foundation/structs.g.dart';
import '../../system/rpc/callbacks.g.dart';
import '../../system/com/IRpcStubBuffer.dart';
import '../../system/com/IRpcChannelBuffer.dart';
import '../../security/cryptography/structs.g.dart'; // -----------------------------------------------------------------------

// rpcrt4.dll
// -----------------------------------------------------------------------
final _rpcrt4 = DynamicLibrary.open('rpcrt4.dll');

int DceErrorInqText(
  int RpcStatus,
  Pointer<Uint16> ErrorText,
) =>
    _DceErrorInqText(
      RpcStatus,
      ErrorText,
    );

late final _DceErrorInqText = _rpcrt4.lookupFunction<
    Int32 Function(
  Int32 RpcStatus,
  Pointer<Uint16> ErrorText,
),
    int Function(
  int RpcStatus,
  Pointer<Uint16> ErrorText,
)>('DceErrorInqTextW');

int IUnknown_AddRef_Proxy(
  Pointer<COMObject> This,
) =>
    _IUnknown_AddRef_Proxy(
      This,
    );

late final _IUnknown_AddRef_Proxy = _rpcrt4.lookupFunction<
    Uint32 Function(
  Pointer<COMObject> This,
),
    int Function(
  Pointer<COMObject> This,
)>('IUnknown_AddRef_Proxy');

int IUnknown_QueryInterface_Proxy(
  Pointer<COMObject> This,
  Pointer<GUID> riid,
  Pointer<Pointer> ppvObject,
) =>
    _IUnknown_QueryInterface_Proxy(
      This,
      riid,
      ppvObject,
    );

late final _IUnknown_QueryInterface_Proxy = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer<COMObject> This,
  Pointer<GUID> riid,
  Pointer<Pointer> ppvObject,
),
    int Function(
  Pointer<COMObject> This,
  Pointer<GUID> riid,
  Pointer<Pointer> ppvObject,
)>('IUnknown_QueryInterface_Proxy');

int IUnknown_Release_Proxy(
  Pointer<COMObject> This,
) =>
    _IUnknown_Release_Proxy(
      This,
    );

late final _IUnknown_Release_Proxy = _rpcrt4.lookupFunction<
    Uint32 Function(
  Pointer<COMObject> This,
),
    int Function(
  Pointer<COMObject> This,
)>('IUnknown_Release_Proxy');

Pointer I_RpcAllocate(
  int Size,
) =>
    _I_RpcAllocate(
      Size,
    );

late final _I_RpcAllocate = _rpcrt4.lookupFunction<
    Pointer Function(
  Uint32 Size,
),
    Pointer Function(
  int Size,
)>('I_RpcAllocate');

int I_RpcAsyncAbortCall(
  Pointer<RPC_ASYNC_STATE> pAsync,
  int ExceptionCode,
) =>
    _I_RpcAsyncAbortCall(
      pAsync,
      ExceptionCode,
    );

late final _I_RpcAsyncAbortCall = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer<RPC_ASYNC_STATE> pAsync,
  Uint32 ExceptionCode,
),
    int Function(
  Pointer<RPC_ASYNC_STATE> pAsync,
  int ExceptionCode,
)>('I_RpcAsyncAbortCall');

int I_RpcAsyncSetHandle(
  Pointer<RPC_MESSAGE> Message,
  Pointer<RPC_ASYNC_STATE> pAsync,
) =>
    _I_RpcAsyncSetHandle(
      Message,
      pAsync,
    );

late final _I_RpcAsyncSetHandle = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer<RPC_MESSAGE> Message,
  Pointer<RPC_ASYNC_STATE> pAsync,
),
    int Function(
  Pointer<RPC_MESSAGE> Message,
  Pointer<RPC_ASYNC_STATE> pAsync,
)>('I_RpcAsyncSetHandle');

int I_RpcBindingCopy(
  Pointer SourceBinding,
  Pointer<Pointer> DestinationBinding,
) =>
    _I_RpcBindingCopy(
      SourceBinding,
      DestinationBinding,
    );

late final _I_RpcBindingCopy = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer SourceBinding,
  Pointer<Pointer> DestinationBinding,
),
    int Function(
  Pointer SourceBinding,
  Pointer<Pointer> DestinationBinding,
)>('I_RpcBindingCopy');

int I_RpcBindingCreateNP(
  Pointer<Uint16> ServerName,
  Pointer<Uint16> ServiceName,
  Pointer<Uint16> NetworkOptions,
  Pointer<Pointer> Binding,
) =>
    _I_RpcBindingCreateNP(
      ServerName,
      ServiceName,
      NetworkOptions,
      Binding,
    );

late final _I_RpcBindingCreateNP = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer<Uint16> ServerName,
  Pointer<Uint16> ServiceName,
  Pointer<Uint16> NetworkOptions,
  Pointer<Pointer> Binding,
),
    int Function(
  Pointer<Uint16> ServerName,
  Pointer<Uint16> ServiceName,
  Pointer<Uint16> NetworkOptions,
  Pointer<Pointer> Binding,
)>('I_RpcBindingCreateNP');

int I_RpcBindingHandleToAsyncHandle(
  Pointer Binding,
  Pointer<Pointer> AsyncHandle,
) =>
    _I_RpcBindingHandleToAsyncHandle(
      Binding,
      AsyncHandle,
    );

late final _I_RpcBindingHandleToAsyncHandle = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer Binding,
  Pointer<Pointer> AsyncHandle,
),
    int Function(
  Pointer Binding,
  Pointer<Pointer> AsyncHandle,
)>('I_RpcBindingHandleToAsyncHandle');

int I_RpcBindingInqClientTokenAttributes(
  Pointer Binding,
  Pointer<LUID> TokenId,
  Pointer<LUID> AuthenticationId,
  Pointer<LUID> ModifiedId,
) =>
    _I_RpcBindingInqClientTokenAttributes(
      Binding,
      TokenId,
      AuthenticationId,
      ModifiedId,
    );

late final _I_RpcBindingInqClientTokenAttributes = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer Binding,
  Pointer<LUID> TokenId,
  Pointer<LUID> AuthenticationId,
  Pointer<LUID> ModifiedId,
),
    int Function(
  Pointer Binding,
  Pointer<LUID> TokenId,
  Pointer<LUID> AuthenticationId,
  Pointer<LUID> ModifiedId,
)>('I_RpcBindingInqClientTokenAttributes');

int I_RpcBindingInqDynamicEndpoint(
  Pointer Binding,
  Pointer<Pointer<Uint16>> DynamicEndpoint,
) =>
    _I_RpcBindingInqDynamicEndpoint(
      Binding,
      DynamicEndpoint,
    );

late final _I_RpcBindingInqDynamicEndpoint = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer Binding,
  Pointer<Pointer<Uint16>> DynamicEndpoint,
),
    int Function(
  Pointer Binding,
  Pointer<Pointer<Uint16>> DynamicEndpoint,
)>('I_RpcBindingInqDynamicEndpointW');

int I_RpcBindingInqLocalClientPID(
  Pointer Binding,
  Pointer<Uint32> Pid,
) =>
    _I_RpcBindingInqLocalClientPID(
      Binding,
      Pid,
    );

late final _I_RpcBindingInqLocalClientPID = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer Binding,
  Pointer<Uint32> Pid,
),
    int Function(
  Pointer Binding,
  Pointer<Uint32> Pid,
)>('I_RpcBindingInqLocalClientPID');

int I_RpcBindingInqMarshalledTargetInfo(
  Pointer Binding,
  Pointer<Uint32> MarshalledTargetInfoSize,
  Pointer<Pointer<Uint8>> MarshalledTargetInfo,
) =>
    _I_RpcBindingInqMarshalledTargetInfo(
      Binding,
      MarshalledTargetInfoSize,
      MarshalledTargetInfo,
    );

late final _I_RpcBindingInqMarshalledTargetInfo = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer Binding,
  Pointer<Uint32> MarshalledTargetInfoSize,
  Pointer<Pointer<Uint8>> MarshalledTargetInfo,
),
    int Function(
  Pointer Binding,
  Pointer<Uint32> MarshalledTargetInfoSize,
  Pointer<Pointer<Uint8>> MarshalledTargetInfo,
)>('I_RpcBindingInqMarshalledTargetInfo');

int I_RpcBindingInqSecurityContext(
  Pointer Binding,
  Pointer<Pointer> SecurityContextHandle,
) =>
    _I_RpcBindingInqSecurityContext(
      Binding,
      SecurityContextHandle,
    );

late final _I_RpcBindingInqSecurityContext = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer Binding,
  Pointer<Pointer> SecurityContextHandle,
),
    int Function(
  Pointer Binding,
  Pointer<Pointer> SecurityContextHandle,
)>('I_RpcBindingInqSecurityContext');

int I_RpcBindingInqSecurityContextKeyInfo(
  Pointer Binding,
  Pointer KeyInfo,
) =>
    _I_RpcBindingInqSecurityContextKeyInfo(
      Binding,
      KeyInfo,
    );

late final _I_RpcBindingInqSecurityContextKeyInfo = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer Binding,
  Pointer KeyInfo,
),
    int Function(
  Pointer Binding,
  Pointer KeyInfo,
)>('I_RpcBindingInqSecurityContextKeyInfo');

int I_RpcBindingInqTransportType(
  Pointer Binding,
  Pointer<Uint32> Type,
) =>
    _I_RpcBindingInqTransportType(
      Binding,
      Type,
    );

late final _I_RpcBindingInqTransportType = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer Binding,
  Pointer<Uint32> Type,
),
    int Function(
  Pointer Binding,
  Pointer<Uint32> Type,
)>('I_RpcBindingInqTransportType');

int I_RpcBindingInqWireIdForSnego(
  Pointer Binding,
  Pointer<Uint8> WireId,
) =>
    _I_RpcBindingInqWireIdForSnego(
      Binding,
      WireId,
    );

late final _I_RpcBindingInqWireIdForSnego = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer Binding,
  Pointer<Uint8> WireId,
),
    int Function(
  Pointer Binding,
  Pointer<Uint8> WireId,
)>('I_RpcBindingInqWireIdForSnego');

int I_RpcBindingIsClientLocal(
  Pointer BindingHandle,
  Pointer<Uint32> ClientLocalFlag,
) =>
    _I_RpcBindingIsClientLocal(
      BindingHandle,
      ClientLocalFlag,
    );

late final _I_RpcBindingIsClientLocal = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer BindingHandle,
  Pointer<Uint32> ClientLocalFlag,
),
    int Function(
  Pointer BindingHandle,
  Pointer<Uint32> ClientLocalFlag,
)>('I_RpcBindingIsClientLocal');

int I_RpcBindingIsServerLocal(
  Pointer Binding,
  Pointer<Uint32> ServerLocalFlag,
) =>
    _I_RpcBindingIsServerLocal(
      Binding,
      ServerLocalFlag,
    );

late final _I_RpcBindingIsServerLocal = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer Binding,
  Pointer<Uint32> ServerLocalFlag,
),
    int Function(
  Pointer Binding,
  Pointer<Uint32> ServerLocalFlag,
)>('I_RpcBindingIsServerLocal');

int I_RpcBindingSetPrivateOption(
  Pointer hBinding,
  int option,
  int optionValue,
) =>
    _I_RpcBindingSetPrivateOption(
      hBinding,
      option,
      optionValue,
    );

late final _I_RpcBindingSetPrivateOption = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer hBinding,
  Uint32 option,
  IntPtr optionValue,
),
    int Function(
  Pointer hBinding,
  int option,
  int optionValue,
)>('I_RpcBindingSetPrivateOption');

int I_RpcBindingToStaticStringBinding(
  Pointer Binding,
  Pointer<Pointer<Uint16>> StringBinding,
) =>
    _I_RpcBindingToStaticStringBinding(
      Binding,
      StringBinding,
    );

late final _I_RpcBindingToStaticStringBinding = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer Binding,
  Pointer<Pointer<Uint16>> StringBinding,
),
    int Function(
  Pointer Binding,
  Pointer<Pointer<Uint16>> StringBinding,
)>('I_RpcBindingToStaticStringBindingW');

void I_RpcClearMutex(
  Pointer Mutex,
) =>
    _I_RpcClearMutex(
      Mutex,
    );

late final _I_RpcClearMutex = _rpcrt4.lookupFunction<
    Void Function(
  Pointer Mutex,
),
    void Function(
  Pointer Mutex,
)>('I_RpcClearMutex');

void I_RpcDeleteMutex(
  Pointer Mutex,
) =>
    _I_RpcDeleteMutex(
      Mutex,
    );

late final _I_RpcDeleteMutex = _rpcrt4.lookupFunction<
    Void Function(
  Pointer Mutex,
),
    void Function(
  Pointer Mutex,
)>('I_RpcDeleteMutex');

int I_RpcExceptionFilter(
  int ExceptionCode,
) =>
    _I_RpcExceptionFilter(
      ExceptionCode,
    );

late final _I_RpcExceptionFilter = _rpcrt4.lookupFunction<
    Int32 Function(
  Uint32 ExceptionCode,
),
    int Function(
  int ExceptionCode,
)>('I_RpcExceptionFilter');

void I_RpcFree(
  Pointer Object,
) =>
    _I_RpcFree(
      Object,
    );

late final _I_RpcFree = _rpcrt4.lookupFunction<
    Void Function(
  Pointer Object,
),
    void Function(
  Pointer Object,
)>('I_RpcFree');

int I_RpcFreeBuffer(
  Pointer<RPC_MESSAGE> Message,
) =>
    _I_RpcFreeBuffer(
      Message,
    );

late final _I_RpcFreeBuffer = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer<RPC_MESSAGE> Message,
),
    int Function(
  Pointer<RPC_MESSAGE> Message,
)>('I_RpcFreeBuffer');

int I_RpcFreePipeBuffer(
  Pointer<RPC_MESSAGE> Message,
) =>
    _I_RpcFreePipeBuffer(
      Message,
    );

late final _I_RpcFreePipeBuffer = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer<RPC_MESSAGE> Message,
),
    int Function(
  Pointer<RPC_MESSAGE> Message,
)>('I_RpcFreePipeBuffer');

int I_RpcGetBuffer(
  Pointer<RPC_MESSAGE> Message,
) =>
    _I_RpcGetBuffer(
      Message,
    );

late final _I_RpcGetBuffer = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer<RPC_MESSAGE> Message,
),
    int Function(
  Pointer<RPC_MESSAGE> Message,
)>('I_RpcGetBuffer');

int I_RpcGetBufferWithObject(
  Pointer<RPC_MESSAGE> Message,
  Pointer<GUID> ObjectUuid,
) =>
    _I_RpcGetBufferWithObject(
      Message,
      ObjectUuid,
    );

late final _I_RpcGetBufferWithObject = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer<RPC_MESSAGE> Message,
  Pointer<GUID> ObjectUuid,
),
    int Function(
  Pointer<RPC_MESSAGE> Message,
  Pointer<GUID> ObjectUuid,
)>('I_RpcGetBufferWithObject');

Pointer I_RpcGetCurrentCallHandle() => _I_RpcGetCurrentCallHandle();

late final _I_RpcGetCurrentCallHandle =
    _rpcrt4.lookupFunction<Pointer Function(), Pointer Function()>(
        'I_RpcGetCurrentCallHandle');

int I_RpcGetDefaultSD(
  Pointer<Pointer> ppSecurityDescriptor,
) =>
    _I_RpcGetDefaultSD(
      ppSecurityDescriptor,
    );

late final _I_RpcGetDefaultSD = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer<Pointer> ppSecurityDescriptor,
),
    int Function(
  Pointer<Pointer> ppSecurityDescriptor,
)>('I_RpcGetDefaultSD');

int I_RpcGetExtendedError() => _I_RpcGetExtendedError();

late final _I_RpcGetExtendedError = _rpcrt4
    .lookupFunction<Int32 Function(), int Function()>('I_RpcGetExtendedError');

int I_RpcIfInqTransferSyntaxes(
  Pointer RpcIfHandle,
  Pointer<RPC_TRANSFER_SYNTAX> TransferSyntaxes,
  int TransferSyntaxSize,
  Pointer<Uint32> TransferSyntaxCount,
) =>
    _I_RpcIfInqTransferSyntaxes(
      RpcIfHandle,
      TransferSyntaxes,
      TransferSyntaxSize,
      TransferSyntaxCount,
    );

late final _I_RpcIfInqTransferSyntaxes = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer RpcIfHandle,
  Pointer<RPC_TRANSFER_SYNTAX> TransferSyntaxes,
  Uint32 TransferSyntaxSize,
  Pointer<Uint32> TransferSyntaxCount,
),
    int Function(
  Pointer RpcIfHandle,
  Pointer<RPC_TRANSFER_SYNTAX> TransferSyntaxes,
  int TransferSyntaxSize,
  Pointer<Uint32> TransferSyntaxCount,
)>('I_RpcIfInqTransferSyntaxes');

int I_RpcMapWin32Status(
  int Status,
) =>
    _I_RpcMapWin32Status(
      Status,
    );

late final _I_RpcMapWin32Status = _rpcrt4.lookupFunction<
    Int32 Function(
  Int32 Status,
),
    int Function(
  int Status,
)>('I_RpcMapWin32Status');

int I_RpcMgmtEnableDedicatedThreadPool() =>
    _I_RpcMgmtEnableDedicatedThreadPool();

late final _I_RpcMgmtEnableDedicatedThreadPool =
    _rpcrt4.lookupFunction<Int32 Function(), int Function()>(
        'I_RpcMgmtEnableDedicatedThreadPool');

int I_RpcNegotiateTransferSyntax(
  Pointer<RPC_MESSAGE> Message,
) =>
    _I_RpcNegotiateTransferSyntax(
      Message,
    );

late final _I_RpcNegotiateTransferSyntax = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer<RPC_MESSAGE> Message,
),
    int Function(
  Pointer<RPC_MESSAGE> Message,
)>('I_RpcNegotiateTransferSyntax');

int I_RpcNsBindingSetEntryName(
  Pointer Binding,
  int EntryNameSyntax,
  Pointer<Uint16> EntryName,
) =>
    _I_RpcNsBindingSetEntryName(
      Binding,
      EntryNameSyntax,
      EntryName,
    );

late final _I_RpcNsBindingSetEntryName = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer Binding,
  Uint32 EntryNameSyntax,
  Pointer<Uint16> EntryName,
),
    int Function(
  Pointer Binding,
  int EntryNameSyntax,
  Pointer<Uint16> EntryName,
)>('I_RpcNsBindingSetEntryNameW');

int I_RpcNsInterfaceExported(
  int EntryNameSyntax,
  Pointer<Uint16> EntryName,
  Pointer<RPC_SERVER_INTERFACE> RpcInterfaceInformation,
) =>
    _I_RpcNsInterfaceExported(
      EntryNameSyntax,
      EntryName,
      RpcInterfaceInformation,
    );

late final _I_RpcNsInterfaceExported = _rpcrt4.lookupFunction<
    Int32 Function(
  Uint32 EntryNameSyntax,
  Pointer<Uint16> EntryName,
  Pointer<RPC_SERVER_INTERFACE> RpcInterfaceInformation,
),
    int Function(
  int EntryNameSyntax,
  Pointer<Uint16> EntryName,
  Pointer<RPC_SERVER_INTERFACE> RpcInterfaceInformation,
)>('I_RpcNsInterfaceExported');

int I_RpcNsInterfaceUnexported(
  int EntryNameSyntax,
  Pointer<Uint16> EntryName,
  Pointer<RPC_SERVER_INTERFACE> RpcInterfaceInformation,
) =>
    _I_RpcNsInterfaceUnexported(
      EntryNameSyntax,
      EntryName,
      RpcInterfaceInformation,
    );

late final _I_RpcNsInterfaceUnexported = _rpcrt4.lookupFunction<
    Int32 Function(
  Uint32 EntryNameSyntax,
  Pointer<Uint16> EntryName,
  Pointer<RPC_SERVER_INTERFACE> RpcInterfaceInformation,
),
    int Function(
  int EntryNameSyntax,
  Pointer<Uint16> EntryName,
  Pointer<RPC_SERVER_INTERFACE> RpcInterfaceInformation,
)>('I_RpcNsInterfaceUnexported');

int I_RpcOpenClientProcess(
  Pointer Binding,
  int DesiredAccess,
  Pointer<Pointer> ClientProcess,
) =>
    _I_RpcOpenClientProcess(
      Binding,
      DesiredAccess,
      ClientProcess,
    );

late final _I_RpcOpenClientProcess = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer Binding,
  Uint32 DesiredAccess,
  Pointer<Pointer> ClientProcess,
),
    int Function(
  Pointer Binding,
  int DesiredAccess,
  Pointer<Pointer> ClientProcess,
)>('I_RpcOpenClientProcess');

void I_RpcPauseExecution(
  int Milliseconds,
) =>
    _I_RpcPauseExecution(
      Milliseconds,
    );

late final _I_RpcPauseExecution = _rpcrt4.lookupFunction<
    Void Function(
  Uint32 Milliseconds,
),
    void Function(
  int Milliseconds,
)>('I_RpcPauseExecution');

int I_RpcReallocPipeBuffer(
  Pointer<RPC_MESSAGE> Message,
  int NewSize,
) =>
    _I_RpcReallocPipeBuffer(
      Message,
      NewSize,
    );

late final _I_RpcReallocPipeBuffer = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer<RPC_MESSAGE> Message,
  Uint32 NewSize,
),
    int Function(
  Pointer<RPC_MESSAGE> Message,
  int NewSize,
)>('I_RpcReallocPipeBuffer');

int I_RpcReceive(
  Pointer<RPC_MESSAGE> Message,
  int Size,
) =>
    _I_RpcReceive(
      Message,
      Size,
    );

late final _I_RpcReceive = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer<RPC_MESSAGE> Message,
  Uint32 Size,
),
    int Function(
  Pointer<RPC_MESSAGE> Message,
  int Size,
)>('I_RpcReceive');

void I_RpcRecordCalloutFailure(
  int RpcStatus,
  Pointer<RDR_CALLOUT_STATE> CallOutState,
  Pointer<Uint16> DllName,
) =>
    _I_RpcRecordCalloutFailure(
      RpcStatus,
      CallOutState,
      DllName,
    );

late final _I_RpcRecordCalloutFailure = _rpcrt4.lookupFunction<
    Void Function(
  Int32 RpcStatus,
  Pointer<RDR_CALLOUT_STATE> CallOutState,
  Pointer<Uint16> DllName,
),
    void Function(
  int RpcStatus,
  Pointer<RDR_CALLOUT_STATE> CallOutState,
  Pointer<Uint16> DllName,
)>('I_RpcRecordCalloutFailure');

void I_RpcRequestMutex(
  Pointer<Pointer> Mutex,
) =>
    _I_RpcRequestMutex(
      Mutex,
    );

late final _I_RpcRequestMutex = _rpcrt4.lookupFunction<
    Void Function(
  Pointer<Pointer> Mutex,
),
    void Function(
  Pointer<Pointer> Mutex,
)>('I_RpcRequestMutex');

int I_RpcSend(
  Pointer<RPC_MESSAGE> Message,
) =>
    _I_RpcSend(
      Message,
    );

late final _I_RpcSend = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer<RPC_MESSAGE> Message,
),
    int Function(
  Pointer<RPC_MESSAGE> Message,
)>('I_RpcSend');

int I_RpcSendReceive(
  Pointer<RPC_MESSAGE> Message,
) =>
    _I_RpcSendReceive(
      Message,
    );

late final _I_RpcSendReceive = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer<RPC_MESSAGE> Message,
),
    int Function(
  Pointer<RPC_MESSAGE> Message,
)>('I_RpcSendReceive');

int I_RpcServerCheckClientRestriction(
  Pointer Context,
) =>
    _I_RpcServerCheckClientRestriction(
      Context,
    );

late final _I_RpcServerCheckClientRestriction = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer Context,
),
    int Function(
  Pointer Context,
)>('I_RpcServerCheckClientRestriction');

int I_RpcServerDisableExceptionFilter() => _I_RpcServerDisableExceptionFilter();

late final _I_RpcServerDisableExceptionFilter =
    _rpcrt4.lookupFunction<Int32 Function(), int Function()>(
        'I_RpcServerDisableExceptionFilter');

int I_RpcServerGetAssociationID(
  Pointer Binding,
  Pointer<Uint32> AssociationID,
) =>
    _I_RpcServerGetAssociationID(
      Binding,
      AssociationID,
    );

late final _I_RpcServerGetAssociationID = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer Binding,
  Pointer<Uint32> AssociationID,
),
    int Function(
  Pointer Binding,
  Pointer<Uint32> AssociationID,
)>('I_RpcServerGetAssociationID');

Pointer<Pointer<NativeFunction<RPC_ADDRESS_CHANGE_FN>>>
    I_RpcServerInqAddressChangeFn() => _I_RpcServerInqAddressChangeFn();

late final _I_RpcServerInqAddressChangeFn = _rpcrt4.lookupFunction<
    Pointer<Pointer<NativeFunction<RPC_ADDRESS_CHANGE_FN>>> Function(),
    Pointer<Pointer<NativeFunction<RPC_ADDRESS_CHANGE_FN>>>
        Function()>('I_RpcServerInqAddressChangeFn');

int I_RpcServerInqLocalConnAddress(
  Pointer Binding,
  Pointer Buffer,
  Pointer<Uint32> BufferSize,
  Pointer<Uint32> AddressFormat,
) =>
    _I_RpcServerInqLocalConnAddress(
      Binding,
      Buffer,
      BufferSize,
      AddressFormat,
    );

late final _I_RpcServerInqLocalConnAddress = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer Binding,
  Pointer Buffer,
  Pointer<Uint32> BufferSize,
  Pointer<Uint32> AddressFormat,
),
    int Function(
  Pointer Binding,
  Pointer Buffer,
  Pointer<Uint32> BufferSize,
  Pointer<Uint32> AddressFormat,
)>('I_RpcServerInqLocalConnAddress');

int I_RpcServerInqRemoteConnAddress(
  Pointer Binding,
  Pointer Buffer,
  Pointer<Uint32> BufferSize,
  Pointer<Uint32> AddressFormat,
) =>
    _I_RpcServerInqRemoteConnAddress(
      Binding,
      Buffer,
      BufferSize,
      AddressFormat,
    );

late final _I_RpcServerInqRemoteConnAddress = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer Binding,
  Pointer Buffer,
  Pointer<Uint32> BufferSize,
  Pointer<Uint32> AddressFormat,
),
    int Function(
  Pointer Binding,
  Pointer Buffer,
  Pointer<Uint32> BufferSize,
  Pointer<Uint32> AddressFormat,
)>('I_RpcServerInqRemoteConnAddress');

int I_RpcServerInqTransportType(
  Pointer<Uint32> Type,
) =>
    _I_RpcServerInqTransportType(
      Type,
    );

late final _I_RpcServerInqTransportType = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer<Uint32> Type,
),
    int Function(
  Pointer<Uint32> Type,
)>('I_RpcServerInqTransportType');

int I_RpcServerRegisterForwardFunction(
  Pointer<Pointer<NativeFunction<RPC_FORWARD_FUNCTION>>> pForwardFunction,
) =>
    _I_RpcServerRegisterForwardFunction(
      pForwardFunction,
    );

late final _I_RpcServerRegisterForwardFunction = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer<Pointer<NativeFunction<RPC_FORWARD_FUNCTION>>> pForwardFunction,
),
    int Function(
  Pointer<Pointer<NativeFunction<RPC_FORWARD_FUNCTION>>> pForwardFunction,
)>('I_RpcServerRegisterForwardFunction');

int I_RpcServerSetAddressChangeFn(
  Pointer<Pointer<NativeFunction<RPC_ADDRESS_CHANGE_FN>>> pAddressChangeFn,
) =>
    _I_RpcServerSetAddressChangeFn(
      pAddressChangeFn,
    );

late final _I_RpcServerSetAddressChangeFn = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer<Pointer<NativeFunction<RPC_ADDRESS_CHANGE_FN>>> pAddressChangeFn,
),
    int Function(
  Pointer<Pointer<NativeFunction<RPC_ADDRESS_CHANGE_FN>>> pAddressChangeFn,
)>('I_RpcServerSetAddressChangeFn');

int I_RpcServerStartService(
  Pointer<Uint16> Protseq,
  Pointer<Uint16> Endpoint,
  Pointer IfSpec,
) =>
    _I_RpcServerStartService(
      Protseq,
      Endpoint,
      IfSpec,
    );

late final _I_RpcServerStartService = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer<Uint16> Protseq,
  Pointer<Uint16> Endpoint,
  Pointer IfSpec,
),
    int Function(
  Pointer<Uint16> Protseq,
  Pointer<Uint16> Endpoint,
  Pointer IfSpec,
)>('I_RpcServerStartService');

int I_RpcServerSubscribeForDisconnectNotification(
  Pointer Binding,
  Pointer hEvent,
) =>
    _I_RpcServerSubscribeForDisconnectNotification(
      Binding,
      hEvent,
    );

late final _I_RpcServerSubscribeForDisconnectNotification =
    _rpcrt4.lookupFunction<
        Int32 Function(
  Pointer Binding,
  Pointer hEvent,
),
        int Function(
  Pointer Binding,
  Pointer hEvent,
)>('I_RpcServerSubscribeForDisconnectNotification');

int I_RpcServerSubscribeForDisconnectNotification2(
  Pointer Binding,
  Pointer hEvent,
  Pointer<GUID> SubscriptionId,
) =>
    _I_RpcServerSubscribeForDisconnectNotification2(
      Binding,
      hEvent,
      SubscriptionId,
    );

late final _I_RpcServerSubscribeForDisconnectNotification2 =
    _rpcrt4.lookupFunction<
        Int32 Function(
  Pointer Binding,
  Pointer hEvent,
  Pointer<GUID> SubscriptionId,
),
        int Function(
  Pointer Binding,
  Pointer hEvent,
  Pointer<GUID> SubscriptionId,
)>('I_RpcServerSubscribeForDisconnectNotification2');

int I_RpcServerUnsubscribeForDisconnectNotification(
  Pointer Binding,
  GUID SubscriptionId,
) =>
    _I_RpcServerUnsubscribeForDisconnectNotification(
      Binding,
      SubscriptionId,
    );

late final _I_RpcServerUnsubscribeForDisconnectNotification =
    _rpcrt4.lookupFunction<
        Int32 Function(
  Pointer Binding,
  GUID SubscriptionId,
),
        int Function(
  Pointer Binding,
  GUID SubscriptionId,
)>('I_RpcServerUnsubscribeForDisconnectNotification');

int I_RpcServerUseProtseq2(
  Pointer<Uint16> NetworkAddress,
  Pointer<Uint16> Protseq,
  int MaxCalls,
  Pointer SecurityDescriptor,
  Pointer Policy,
) =>
    _I_RpcServerUseProtseq2(
      NetworkAddress,
      Protseq,
      MaxCalls,
      SecurityDescriptor,
      Policy,
    );

late final _I_RpcServerUseProtseq2 = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer<Uint16> NetworkAddress,
  Pointer<Uint16> Protseq,
  Uint32 MaxCalls,
  Pointer SecurityDescriptor,
  Pointer Policy,
),
    int Function(
  Pointer<Uint16> NetworkAddress,
  Pointer<Uint16> Protseq,
  int MaxCalls,
  Pointer SecurityDescriptor,
  Pointer Policy,
)>('I_RpcServerUseProtseq2W');

int I_RpcServerUseProtseqEp2(
  Pointer<Uint16> NetworkAddress,
  Pointer<Uint16> Protseq,
  int MaxCalls,
  Pointer<Uint16> Endpoint,
  Pointer SecurityDescriptor,
  Pointer Policy,
) =>
    _I_RpcServerUseProtseqEp2(
      NetworkAddress,
      Protseq,
      MaxCalls,
      Endpoint,
      SecurityDescriptor,
      Policy,
    );

late final _I_RpcServerUseProtseqEp2 = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer<Uint16> NetworkAddress,
  Pointer<Uint16> Protseq,
  Uint32 MaxCalls,
  Pointer<Uint16> Endpoint,
  Pointer SecurityDescriptor,
  Pointer Policy,
),
    int Function(
  Pointer<Uint16> NetworkAddress,
  Pointer<Uint16> Protseq,
  int MaxCalls,
  Pointer<Uint16> Endpoint,
  Pointer SecurityDescriptor,
  Pointer Policy,
)>('I_RpcServerUseProtseqEp2W');

void I_RpcSessionStrictContextHandle() => _I_RpcSessionStrictContextHandle();

late final _I_RpcSessionStrictContextHandle =
    _rpcrt4.lookupFunction<Void Function(), void Function()>(
        'I_RpcSessionStrictContextHandle');

void I_RpcSsDontSerializeContext() => _I_RpcSsDontSerializeContext();

late final _I_RpcSsDontSerializeContext =
    _rpcrt4.lookupFunction<Void Function(), void Function()>(
        'I_RpcSsDontSerializeContext');

int I_RpcSystemHandleTypeSpecificWork(
  Pointer $Handle,
  int ActualType,
  int IdlType,
  int MarshalDirection,
) =>
    _I_RpcSystemHandleTypeSpecificWork(
      $Handle,
      ActualType,
      IdlType,
      MarshalDirection,
    );

late final _I_RpcSystemHandleTypeSpecificWork = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer $Handle,
  Uint8 ActualType,
  Uint8 IdlType,
  Int32 MarshalDirection,
),
    int Function(
  Pointer $Handle,
  int ActualType,
  int IdlType,
  int MarshalDirection,
)>('I_RpcSystemHandleTypeSpecificWork');

int I_RpcTurnOnEEInfoPropagation() => _I_RpcTurnOnEEInfoPropagation();

late final _I_RpcTurnOnEEInfoPropagation =
    _rpcrt4.lookupFunction<Int32 Function(), int Function()>(
        'I_RpcTurnOnEEInfoPropagation');

int I_UuidCreate(
  Pointer<GUID> Uuid,
) =>
    _I_UuidCreate(
      Uuid,
    );

late final _I_UuidCreate = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer<GUID> Uuid,
),
    int Function(
  Pointer<GUID> Uuid,
)>('I_UuidCreate');

int MesBufferHandleReset(
  Pointer $Handle,
  int HandleStyle,
  int Operation,
  Pointer<Pointer<Int8>> pBuffer,
  int BufferSize,
  Pointer<Uint32> pEncodedSize,
) =>
    _MesBufferHandleReset(
      $Handle,
      HandleStyle,
      Operation,
      pBuffer,
      BufferSize,
      pEncodedSize,
    );

late final _MesBufferHandleReset = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer $Handle,
  Uint32 HandleStyle,
  Int32 Operation,
  Pointer<Pointer<Int8>> pBuffer,
  Uint32 BufferSize,
  Pointer<Uint32> pEncodedSize,
),
    int Function(
  Pointer $Handle,
  int HandleStyle,
  int Operation,
  Pointer<Pointer<Int8>> pBuffer,
  int BufferSize,
  Pointer<Uint32> pEncodedSize,
)>('MesBufferHandleReset');

int MesDecodeBufferHandleCreate(
  Pointer<Utf8> Buffer,
  int BufferSize,
  Pointer<Pointer> pHandle,
) =>
    _MesDecodeBufferHandleCreate(
      Buffer,
      BufferSize,
      pHandle,
    );

late final _MesDecodeBufferHandleCreate = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer<Utf8> Buffer,
  Uint32 BufferSize,
  Pointer<Pointer> pHandle,
),
    int Function(
  Pointer<Utf8> Buffer,
  int BufferSize,
  Pointer<Pointer> pHandle,
)>('MesDecodeBufferHandleCreate');

int MesDecodeIncrementalHandleCreate(
  Pointer UserState,
  Pointer<NativeFunction<MIDL_ES_READ>> ReadFn,
  Pointer<Pointer> pHandle,
) =>
    _MesDecodeIncrementalHandleCreate(
      UserState,
      ReadFn,
      pHandle,
    );

late final _MesDecodeIncrementalHandleCreate = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer UserState,
  Pointer<NativeFunction<MIDL_ES_READ>> ReadFn,
  Pointer<Pointer> pHandle,
),
    int Function(
  Pointer UserState,
  Pointer<NativeFunction<MIDL_ES_READ>> ReadFn,
  Pointer<Pointer> pHandle,
)>('MesDecodeIncrementalHandleCreate');

int MesEncodeDynBufferHandleCreate(
  Pointer<Pointer<Int8>> pBuffer,
  Pointer<Uint32> pEncodedSize,
  Pointer<Pointer> pHandle,
) =>
    _MesEncodeDynBufferHandleCreate(
      pBuffer,
      pEncodedSize,
      pHandle,
    );

late final _MesEncodeDynBufferHandleCreate = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer<Pointer<Int8>> pBuffer,
  Pointer<Uint32> pEncodedSize,
  Pointer<Pointer> pHandle,
),
    int Function(
  Pointer<Pointer<Int8>> pBuffer,
  Pointer<Uint32> pEncodedSize,
  Pointer<Pointer> pHandle,
)>('MesEncodeDynBufferHandleCreate');

int MesEncodeFixedBufferHandleCreate(
  Pointer<Utf8> pBuffer,
  int BufferSize,
  Pointer<Uint32> pEncodedSize,
  Pointer<Pointer> pHandle,
) =>
    _MesEncodeFixedBufferHandleCreate(
      pBuffer,
      BufferSize,
      pEncodedSize,
      pHandle,
    );

late final _MesEncodeFixedBufferHandleCreate = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer<Utf8> pBuffer,
  Uint32 BufferSize,
  Pointer<Uint32> pEncodedSize,
  Pointer<Pointer> pHandle,
),
    int Function(
  Pointer<Utf8> pBuffer,
  int BufferSize,
  Pointer<Uint32> pEncodedSize,
  Pointer<Pointer> pHandle,
)>('MesEncodeFixedBufferHandleCreate');

int MesEncodeIncrementalHandleCreate(
  Pointer UserState,
  Pointer<NativeFunction<MIDL_ES_ALLOC>> AllocFn,
  Pointer<NativeFunction<MIDL_ES_WRITE>> WriteFn,
  Pointer<Pointer> pHandle,
) =>
    _MesEncodeIncrementalHandleCreate(
      UserState,
      AllocFn,
      WriteFn,
      pHandle,
    );

late final _MesEncodeIncrementalHandleCreate = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer UserState,
  Pointer<NativeFunction<MIDL_ES_ALLOC>> AllocFn,
  Pointer<NativeFunction<MIDL_ES_WRITE>> WriteFn,
  Pointer<Pointer> pHandle,
),
    int Function(
  Pointer UserState,
  Pointer<NativeFunction<MIDL_ES_ALLOC>> AllocFn,
  Pointer<NativeFunction<MIDL_ES_WRITE>> WriteFn,
  Pointer<Pointer> pHandle,
)>('MesEncodeIncrementalHandleCreate');

int MesHandleFree(
  Pointer $Handle,
) =>
    _MesHandleFree(
      $Handle,
    );

late final _MesHandleFree = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer $Handle,
),
    int Function(
  Pointer $Handle,
)>('MesHandleFree');

int MesIncrementalHandleReset(
  Pointer $Handle,
  Pointer UserState,
  Pointer<NativeFunction<MIDL_ES_ALLOC>> AllocFn,
  Pointer<NativeFunction<MIDL_ES_WRITE>> WriteFn,
  Pointer<NativeFunction<MIDL_ES_READ>> ReadFn,
  int Operation,
) =>
    _MesIncrementalHandleReset(
      $Handle,
      UserState,
      AllocFn,
      WriteFn,
      ReadFn,
      Operation,
    );

late final _MesIncrementalHandleReset = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer $Handle,
  Pointer UserState,
  Pointer<NativeFunction<MIDL_ES_ALLOC>> AllocFn,
  Pointer<NativeFunction<MIDL_ES_WRITE>> WriteFn,
  Pointer<NativeFunction<MIDL_ES_READ>> ReadFn,
  Int32 Operation,
),
    int Function(
  Pointer $Handle,
  Pointer UserState,
  Pointer<NativeFunction<MIDL_ES_ALLOC>> AllocFn,
  Pointer<NativeFunction<MIDL_ES_WRITE>> WriteFn,
  Pointer<NativeFunction<MIDL_ES_READ>> ReadFn,
  int Operation,
)>('MesIncrementalHandleReset');

int MesInqProcEncodingId(
  Pointer $Handle,
  Pointer<RPC_SYNTAX_IDENTIFIER> pInterfaceId,
  Pointer<Uint32> pProcNum,
) =>
    _MesInqProcEncodingId(
      $Handle,
      pInterfaceId,
      pProcNum,
    );

late final _MesInqProcEncodingId = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer $Handle,
  Pointer<RPC_SYNTAX_IDENTIFIER> pInterfaceId,
  Pointer<Uint32> pProcNum,
),
    int Function(
  Pointer $Handle,
  Pointer<RPC_SYNTAX_IDENTIFIER> pInterfaceId,
  Pointer<Uint32> pProcNum,
)>('MesInqProcEncodingId');

Pointer NDRCContextBinding(
  int CContext,
) =>
    _NDRCContextBinding(
      CContext,
    );

late final _NDRCContextBinding = _rpcrt4.lookupFunction<
    Pointer Function(
  IntPtr CContext,
),
    Pointer Function(
  int CContext,
)>('NDRCContextBinding');

void NDRCContextMarshall(
  int CContext,
  Pointer pBuff,
) =>
    _NDRCContextMarshall(
      CContext,
      pBuff,
    );

late final _NDRCContextMarshall = _rpcrt4.lookupFunction<
    Void Function(
  IntPtr CContext,
  Pointer pBuff,
),
    void Function(
  int CContext,
  Pointer pBuff,
)>('NDRCContextMarshall');

void NDRCContextUnmarshall(
  Pointer<IntPtr> pCContext,
  Pointer hBinding,
  Pointer pBuff,
  int DataRepresentation,
) =>
    _NDRCContextUnmarshall(
      pCContext,
      hBinding,
      pBuff,
      DataRepresentation,
    );

late final _NDRCContextUnmarshall = _rpcrt4.lookupFunction<
    Void Function(
  Pointer<IntPtr> pCContext,
  Pointer hBinding,
  Pointer pBuff,
  Uint32 DataRepresentation,
),
    void Function(
  Pointer<IntPtr> pCContext,
  Pointer hBinding,
  Pointer pBuff,
  int DataRepresentation,
)>('NDRCContextUnmarshall');

void NDRSContextMarshall(
  Pointer<NDR_SCONTEXT_1> CContext,
  Pointer pBuff,
  Pointer<NativeFunction<NDR_RUNDOWN>> userRunDownIn,
) =>
    _NDRSContextMarshall(
      CContext,
      pBuff,
      userRunDownIn,
    );

late final _NDRSContextMarshall = _rpcrt4.lookupFunction<
    Void Function(
  Pointer<NDR_SCONTEXT_1> CContext,
  Pointer pBuff,
  Pointer<NativeFunction<NDR_RUNDOWN>> userRunDownIn,
),
    void Function(
  Pointer<NDR_SCONTEXT_1> CContext,
  Pointer pBuff,
  Pointer<NativeFunction<NDR_RUNDOWN>> userRunDownIn,
)>('NDRSContextMarshall');

void NDRSContextMarshall2(
  Pointer BindingHandle,
  Pointer<NDR_SCONTEXT_1> CContext,
  Pointer pBuff,
  Pointer<NativeFunction<NDR_RUNDOWN>> userRunDownIn,
  Pointer CtxGuard,
  int Flags,
) =>
    _NDRSContextMarshall2(
      BindingHandle,
      CContext,
      pBuff,
      userRunDownIn,
      CtxGuard,
      Flags,
    );

late final _NDRSContextMarshall2 = _rpcrt4.lookupFunction<
    Void Function(
  Pointer BindingHandle,
  Pointer<NDR_SCONTEXT_1> CContext,
  Pointer pBuff,
  Pointer<NativeFunction<NDR_RUNDOWN>> userRunDownIn,
  Pointer CtxGuard,
  Uint32 Flags,
),
    void Function(
  Pointer BindingHandle,
  Pointer<NDR_SCONTEXT_1> CContext,
  Pointer pBuff,
  Pointer<NativeFunction<NDR_RUNDOWN>> userRunDownIn,
  Pointer CtxGuard,
  int Flags,
)>('NDRSContextMarshall2');

void NDRSContextMarshallEx(
  Pointer BindingHandle,
  Pointer<NDR_SCONTEXT_1> CContext,
  Pointer pBuff,
  Pointer<NativeFunction<NDR_RUNDOWN>> userRunDownIn,
) =>
    _NDRSContextMarshallEx(
      BindingHandle,
      CContext,
      pBuff,
      userRunDownIn,
    );

late final _NDRSContextMarshallEx = _rpcrt4.lookupFunction<
    Void Function(
  Pointer BindingHandle,
  Pointer<NDR_SCONTEXT_1> CContext,
  Pointer pBuff,
  Pointer<NativeFunction<NDR_RUNDOWN>> userRunDownIn,
),
    void Function(
  Pointer BindingHandle,
  Pointer<NDR_SCONTEXT_1> CContext,
  Pointer pBuff,
  Pointer<NativeFunction<NDR_RUNDOWN>> userRunDownIn,
)>('NDRSContextMarshallEx');

Pointer<NDR_SCONTEXT_1> NDRSContextUnmarshall(
  Pointer pBuff,
  int DataRepresentation,
) =>
    _NDRSContextUnmarshall(
      pBuff,
      DataRepresentation,
    );

late final _NDRSContextUnmarshall = _rpcrt4.lookupFunction<
    Pointer<NDR_SCONTEXT_1> Function(
  Pointer pBuff,
  Uint32 DataRepresentation,
),
    Pointer<NDR_SCONTEXT_1> Function(
  Pointer pBuff,
  int DataRepresentation,
)>('NDRSContextUnmarshall');

Pointer<NDR_SCONTEXT_1> NDRSContextUnmarshall2(
  Pointer BindingHandle,
  Pointer pBuff,
  int DataRepresentation,
  Pointer CtxGuard,
  int Flags,
) =>
    _NDRSContextUnmarshall2(
      BindingHandle,
      pBuff,
      DataRepresentation,
      CtxGuard,
      Flags,
    );

late final _NDRSContextUnmarshall2 = _rpcrt4.lookupFunction<
    Pointer<NDR_SCONTEXT_1> Function(
  Pointer BindingHandle,
  Pointer pBuff,
  Uint32 DataRepresentation,
  Pointer CtxGuard,
  Uint32 Flags,
),
    Pointer<NDR_SCONTEXT_1> Function(
  Pointer BindingHandle,
  Pointer pBuff,
  int DataRepresentation,
  Pointer CtxGuard,
  int Flags,
)>('NDRSContextUnmarshall2');

Pointer<NDR_SCONTEXT_1> NDRSContextUnmarshallEx(
  Pointer BindingHandle,
  Pointer pBuff,
  int DataRepresentation,
) =>
    _NDRSContextUnmarshallEx(
      BindingHandle,
      pBuff,
      DataRepresentation,
    );

late final _NDRSContextUnmarshallEx = _rpcrt4.lookupFunction<
    Pointer<NDR_SCONTEXT_1> Function(
  Pointer BindingHandle,
  Pointer pBuff,
  Uint32 DataRepresentation,
),
    Pointer<NDR_SCONTEXT_1> Function(
  Pointer BindingHandle,
  Pointer pBuff,
  int DataRepresentation,
)>('NDRSContextUnmarshallEx');

CLIENT_CALL_RETURN Ndr64AsyncClientCall(
  Pointer<MIDL_STUBLESS_PROXY_INFO> pProxyInfo,
  int nProcNum,
  Pointer pReturnValue,
) =>
    _Ndr64AsyncClientCall(
      pProxyInfo,
      nProcNum,
      pReturnValue,
    );

late final _Ndr64AsyncClientCall = _rpcrt4.lookupFunction<
    CLIENT_CALL_RETURN Function(
  Pointer<MIDL_STUBLESS_PROXY_INFO> pProxyInfo,
  Uint32 nProcNum,
  Pointer pReturnValue,
),
    CLIENT_CALL_RETURN Function(
  Pointer<MIDL_STUBLESS_PROXY_INFO> pProxyInfo,
  int nProcNum,
  Pointer pReturnValue,
)>('Ndr64AsyncClientCall');

void Ndr64AsyncServerCall64(
  Pointer<RPC_MESSAGE> pRpcMsg,
) =>
    _Ndr64AsyncServerCall64(
      pRpcMsg,
    );

late final _Ndr64AsyncServerCall64 = _rpcrt4.lookupFunction<
    Void Function(
  Pointer<RPC_MESSAGE> pRpcMsg,
),
    void Function(
  Pointer<RPC_MESSAGE> pRpcMsg,
)>('Ndr64AsyncServerCall64');

void Ndr64AsyncServerCallAll(
  Pointer<RPC_MESSAGE> pRpcMsg,
) =>
    _Ndr64AsyncServerCallAll(
      pRpcMsg,
    );

late final _Ndr64AsyncServerCallAll = _rpcrt4.lookupFunction<
    Void Function(
  Pointer<RPC_MESSAGE> pRpcMsg,
),
    void Function(
  Pointer<RPC_MESSAGE> pRpcMsg,
)>('Ndr64AsyncServerCallAll');

CLIENT_CALL_RETURN Ndr64DcomAsyncClientCall(
  Pointer<MIDL_STUBLESS_PROXY_INFO> pProxyInfo,
  int nProcNum,
  Pointer pReturnValue,
) =>
    _Ndr64DcomAsyncClientCall(
      pProxyInfo,
      nProcNum,
      pReturnValue,
    );

late final _Ndr64DcomAsyncClientCall = _rpcrt4.lookupFunction<
    CLIENT_CALL_RETURN Function(
  Pointer<MIDL_STUBLESS_PROXY_INFO> pProxyInfo,
  Uint32 nProcNum,
  Pointer pReturnValue,
),
    CLIENT_CALL_RETURN Function(
  Pointer<MIDL_STUBLESS_PROXY_INFO> pProxyInfo,
  int nProcNum,
  Pointer pReturnValue,
)>('Ndr64DcomAsyncClientCall');

int Ndr64DcomAsyncStubCall(
  Pointer<COMObject> pThis,
  Pointer<COMObject> pChannel,
  Pointer<RPC_MESSAGE> pRpcMsg,
  Pointer<Uint32> pdwStubPhase,
) =>
    _Ndr64DcomAsyncStubCall(
      pThis,
      pChannel,
      pRpcMsg,
      pdwStubPhase,
    );

late final _Ndr64DcomAsyncStubCall = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pThis,
  Pointer<COMObject> pChannel,
  Pointer<RPC_MESSAGE> pRpcMsg,
  Pointer<Uint32> pdwStubPhase,
),
    int Function(
  Pointer<COMObject> pThis,
  Pointer<COMObject> pChannel,
  Pointer<RPC_MESSAGE> pRpcMsg,
  Pointer<Uint32> pdwStubPhase,
)>('Ndr64DcomAsyncStubCall');

Pointer NdrAllocate(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  int Len,
) =>
    _NdrAllocate(
      pStubMsg,
      Len,
    );

late final _NdrAllocate = _rpcrt4.lookupFunction<
    Pointer Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  IntPtr Len,
),
    Pointer Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  int Len,
)>('NdrAllocate');

CLIENT_CALL_RETURN NdrAsyncClientCall(
  Pointer<MIDL_STUB_DESC> pStubDescriptor,
  Pointer<Uint8> pFormat,
) =>
    _NdrAsyncClientCall(
      pStubDescriptor,
      pFormat,
    );

late final _NdrAsyncClientCall = _rpcrt4.lookupFunction<
    CLIENT_CALL_RETURN Function(
  Pointer<MIDL_STUB_DESC> pStubDescriptor,
  Pointer<Uint8> pFormat,
),
    CLIENT_CALL_RETURN Function(
  Pointer<MIDL_STUB_DESC> pStubDescriptor,
  Pointer<Uint8> pFormat,
)>('NdrAsyncClientCall');

void NdrAsyncServerCall(
  Pointer<RPC_MESSAGE> pRpcMsg,
) =>
    _NdrAsyncServerCall(
      pRpcMsg,
    );

late final _NdrAsyncServerCall = _rpcrt4.lookupFunction<
    Void Function(
  Pointer<RPC_MESSAGE> pRpcMsg,
),
    void Function(
  Pointer<RPC_MESSAGE> pRpcMsg,
)>('NdrAsyncServerCall');

void NdrByteCountPointerBufferSize(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
) =>
    _NdrByteCountPointerBufferSize(
      pStubMsg,
      pMemory,
      pFormat,
    );

late final _NdrByteCountPointerBufferSize = _rpcrt4.lookupFunction<
    Void Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
),
    void Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
)>('NdrByteCountPointerBufferSize');

void NdrByteCountPointerFree(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
) =>
    _NdrByteCountPointerFree(
      pStubMsg,
      pMemory,
      pFormat,
    );

late final _NdrByteCountPointerFree = _rpcrt4.lookupFunction<
    Void Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
),
    void Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
)>('NdrByteCountPointerFree');

Pointer<Uint8> NdrByteCountPointerMarshall(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
) =>
    _NdrByteCountPointerMarshall(
      pStubMsg,
      pMemory,
      pFormat,
    );

late final _NdrByteCountPointerMarshall = _rpcrt4.lookupFunction<
    Pointer<Uint8> Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
),
    Pointer<Uint8> Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
)>('NdrByteCountPointerMarshall');

Pointer<Uint8> NdrByteCountPointerUnmarshall(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Pointer<Uint8>> ppMemory,
  Pointer<Uint8> pFormat,
  int fMustAlloc,
) =>
    _NdrByteCountPointerUnmarshall(
      pStubMsg,
      ppMemory,
      pFormat,
      fMustAlloc,
    );

late final _NdrByteCountPointerUnmarshall = _rpcrt4.lookupFunction<
    Pointer<Uint8> Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Pointer<Uint8>> ppMemory,
  Pointer<Uint8> pFormat,
  Uint8 fMustAlloc,
),
    Pointer<Uint8> Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Pointer<Uint8>> ppMemory,
  Pointer<Uint8> pFormat,
  int fMustAlloc,
)>('NdrByteCountPointerUnmarshall');

void NdrClearOutParameters(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pFormat,
  Pointer ArgAddr,
) =>
    _NdrClearOutParameters(
      pStubMsg,
      pFormat,
      ArgAddr,
    );

late final _NdrClearOutParameters = _rpcrt4.lookupFunction<
    Void Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pFormat,
  Pointer ArgAddr,
),
    void Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pFormat,
  Pointer ArgAddr,
)>('NdrClearOutParameters');

CLIENT_CALL_RETURN NdrClientCall2(
  Pointer<MIDL_STUB_DESC> pStubDescriptor,
  Pointer<Uint8> pFormat,
) =>
    _NdrClientCall2(
      pStubDescriptor,
      pFormat,
    );

late final _NdrClientCall2 = _rpcrt4.lookupFunction<
    CLIENT_CALL_RETURN Function(
  Pointer<MIDL_STUB_DESC> pStubDescriptor,
  Pointer<Uint8> pFormat,
),
    CLIENT_CALL_RETURN Function(
  Pointer<MIDL_STUB_DESC> pStubDescriptor,
  Pointer<Uint8> pFormat,
)>('NdrClientCall2');

CLIENT_CALL_RETURN NdrClientCall3(
  Pointer<MIDL_STUBLESS_PROXY_INFO> pProxyInfo,
  int nProcNum,
  Pointer pReturnValue,
) =>
    _NdrClientCall3(
      pProxyInfo,
      nProcNum,
      pReturnValue,
    );

late final _NdrClientCall3 = _rpcrt4.lookupFunction<
    CLIENT_CALL_RETURN Function(
  Pointer<MIDL_STUBLESS_PROXY_INFO> pProxyInfo,
  Uint32 nProcNum,
  Pointer pReturnValue,
),
    CLIENT_CALL_RETURN Function(
  Pointer<MIDL_STUBLESS_PROXY_INFO> pProxyInfo,
  int nProcNum,
  Pointer pReturnValue,
)>('NdrClientCall3');

void NdrClientContextMarshall(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  int ContextHandle,
  int fCheck,
) =>
    _NdrClientContextMarshall(
      pStubMsg,
      ContextHandle,
      fCheck,
    );

late final _NdrClientContextMarshall = _rpcrt4.lookupFunction<
    Void Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  IntPtr ContextHandle,
  Int32 fCheck,
),
    void Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  int ContextHandle,
  int fCheck,
)>('NdrClientContextMarshall');

void NdrClientContextUnmarshall(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<IntPtr> pContextHandle,
  Pointer BindHandle,
) =>
    _NdrClientContextUnmarshall(
      pStubMsg,
      pContextHandle,
      BindHandle,
    );

late final _NdrClientContextUnmarshall = _rpcrt4.lookupFunction<
    Void Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<IntPtr> pContextHandle,
  Pointer BindHandle,
),
    void Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<IntPtr> pContextHandle,
  Pointer BindHandle,
)>('NdrClientContextUnmarshall');

void NdrClientInitialize(
  Pointer<RPC_MESSAGE> pRpcMsg,
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<MIDL_STUB_DESC> pStubDescriptor,
  int ProcNum,
) =>
    _NdrClientInitialize(
      pRpcMsg,
      pStubMsg,
      pStubDescriptor,
      ProcNum,
    );

late final _NdrClientInitialize = _rpcrt4.lookupFunction<
    Void Function(
  Pointer<RPC_MESSAGE> pRpcMsg,
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<MIDL_STUB_DESC> pStubDescriptor,
  Uint32 ProcNum,
),
    void Function(
  Pointer<RPC_MESSAGE> pRpcMsg,
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<MIDL_STUB_DESC> pStubDescriptor,
  int ProcNum,
)>('NdrClientInitialize');

void NdrClientInitializeNew(
  Pointer<RPC_MESSAGE> pRpcMsg,
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<MIDL_STUB_DESC> pStubDescriptor,
  int ProcNum,
) =>
    _NdrClientInitializeNew(
      pRpcMsg,
      pStubMsg,
      pStubDescriptor,
      ProcNum,
    );

late final _NdrClientInitializeNew = _rpcrt4.lookupFunction<
    Void Function(
  Pointer<RPC_MESSAGE> pRpcMsg,
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<MIDL_STUB_DESC> pStubDescriptor,
  Uint32 ProcNum,
),
    void Function(
  Pointer<RPC_MESSAGE> pRpcMsg,
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<MIDL_STUB_DESC> pStubDescriptor,
  int ProcNum,
)>('NdrClientInitializeNew');

void NdrComplexArrayBufferSize(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
) =>
    _NdrComplexArrayBufferSize(
      pStubMsg,
      pMemory,
      pFormat,
    );

late final _NdrComplexArrayBufferSize = _rpcrt4.lookupFunction<
    Void Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
),
    void Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
)>('NdrComplexArrayBufferSize');

void NdrComplexArrayFree(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
) =>
    _NdrComplexArrayFree(
      pStubMsg,
      pMemory,
      pFormat,
    );

late final _NdrComplexArrayFree = _rpcrt4.lookupFunction<
    Void Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
),
    void Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
)>('NdrComplexArrayFree');

Pointer<Uint8> NdrComplexArrayMarshall(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
) =>
    _NdrComplexArrayMarshall(
      pStubMsg,
      pMemory,
      pFormat,
    );

late final _NdrComplexArrayMarshall = _rpcrt4.lookupFunction<
    Pointer<Uint8> Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
),
    Pointer<Uint8> Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
)>('NdrComplexArrayMarshall');

int NdrComplexArrayMemorySize(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pFormat,
) =>
    _NdrComplexArrayMemorySize(
      pStubMsg,
      pFormat,
    );

late final _NdrComplexArrayMemorySize = _rpcrt4.lookupFunction<
    Uint32 Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pFormat,
),
    int Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pFormat,
)>('NdrComplexArrayMemorySize');

Pointer<Uint8> NdrComplexArrayUnmarshall(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Pointer<Uint8>> ppMemory,
  Pointer<Uint8> pFormat,
  int fMustAlloc,
) =>
    _NdrComplexArrayUnmarshall(
      pStubMsg,
      ppMemory,
      pFormat,
      fMustAlloc,
    );

late final _NdrComplexArrayUnmarshall = _rpcrt4.lookupFunction<
    Pointer<Uint8> Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Pointer<Uint8>> ppMemory,
  Pointer<Uint8> pFormat,
  Uint8 fMustAlloc,
),
    Pointer<Uint8> Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Pointer<Uint8>> ppMemory,
  Pointer<Uint8> pFormat,
  int fMustAlloc,
)>('NdrComplexArrayUnmarshall');

void NdrComplexStructBufferSize(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
) =>
    _NdrComplexStructBufferSize(
      pStubMsg,
      pMemory,
      pFormat,
    );

late final _NdrComplexStructBufferSize = _rpcrt4.lookupFunction<
    Void Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
),
    void Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
)>('NdrComplexStructBufferSize');

void NdrComplexStructFree(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
) =>
    _NdrComplexStructFree(
      pStubMsg,
      pMemory,
      pFormat,
    );

late final _NdrComplexStructFree = _rpcrt4.lookupFunction<
    Void Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
),
    void Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
)>('NdrComplexStructFree');

Pointer<Uint8> NdrComplexStructMarshall(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
) =>
    _NdrComplexStructMarshall(
      pStubMsg,
      pMemory,
      pFormat,
    );

late final _NdrComplexStructMarshall = _rpcrt4.lookupFunction<
    Pointer<Uint8> Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
),
    Pointer<Uint8> Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
)>('NdrComplexStructMarshall');

int NdrComplexStructMemorySize(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pFormat,
) =>
    _NdrComplexStructMemorySize(
      pStubMsg,
      pFormat,
    );

late final _NdrComplexStructMemorySize = _rpcrt4.lookupFunction<
    Uint32 Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pFormat,
),
    int Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pFormat,
)>('NdrComplexStructMemorySize');

Pointer<Uint8> NdrComplexStructUnmarshall(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Pointer<Uint8>> ppMemory,
  Pointer<Uint8> pFormat,
  int fMustAlloc,
) =>
    _NdrComplexStructUnmarshall(
      pStubMsg,
      ppMemory,
      pFormat,
      fMustAlloc,
    );

late final _NdrComplexStructUnmarshall = _rpcrt4.lookupFunction<
    Pointer<Uint8> Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Pointer<Uint8>> ppMemory,
  Pointer<Uint8> pFormat,
  Uint8 fMustAlloc,
),
    Pointer<Uint8> Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Pointer<Uint8>> ppMemory,
  Pointer<Uint8> pFormat,
  int fMustAlloc,
)>('NdrComplexStructUnmarshall');

void NdrConformantArrayBufferSize(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
) =>
    _NdrConformantArrayBufferSize(
      pStubMsg,
      pMemory,
      pFormat,
    );

late final _NdrConformantArrayBufferSize = _rpcrt4.lookupFunction<
    Void Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
),
    void Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
)>('NdrConformantArrayBufferSize');

void NdrConformantArrayFree(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
) =>
    _NdrConformantArrayFree(
      pStubMsg,
      pMemory,
      pFormat,
    );

late final _NdrConformantArrayFree = _rpcrt4.lookupFunction<
    Void Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
),
    void Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
)>('NdrConformantArrayFree');

Pointer<Uint8> NdrConformantArrayMarshall(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
) =>
    _NdrConformantArrayMarshall(
      pStubMsg,
      pMemory,
      pFormat,
    );

late final _NdrConformantArrayMarshall = _rpcrt4.lookupFunction<
    Pointer<Uint8> Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
),
    Pointer<Uint8> Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
)>('NdrConformantArrayMarshall');

int NdrConformantArrayMemorySize(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pFormat,
) =>
    _NdrConformantArrayMemorySize(
      pStubMsg,
      pFormat,
    );

late final _NdrConformantArrayMemorySize = _rpcrt4.lookupFunction<
    Uint32 Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pFormat,
),
    int Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pFormat,
)>('NdrConformantArrayMemorySize');

Pointer<Uint8> NdrConformantArrayUnmarshall(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Pointer<Uint8>> ppMemory,
  Pointer<Uint8> pFormat,
  int fMustAlloc,
) =>
    _NdrConformantArrayUnmarshall(
      pStubMsg,
      ppMemory,
      pFormat,
      fMustAlloc,
    );

late final _NdrConformantArrayUnmarshall = _rpcrt4.lookupFunction<
    Pointer<Uint8> Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Pointer<Uint8>> ppMemory,
  Pointer<Uint8> pFormat,
  Uint8 fMustAlloc,
),
    Pointer<Uint8> Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Pointer<Uint8>> ppMemory,
  Pointer<Uint8> pFormat,
  int fMustAlloc,
)>('NdrConformantArrayUnmarshall');

void NdrConformantStringBufferSize(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
) =>
    _NdrConformantStringBufferSize(
      pStubMsg,
      pMemory,
      pFormat,
    );

late final _NdrConformantStringBufferSize = _rpcrt4.lookupFunction<
    Void Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
),
    void Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
)>('NdrConformantStringBufferSize');

Pointer<Uint8> NdrConformantStringMarshall(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
) =>
    _NdrConformantStringMarshall(
      pStubMsg,
      pMemory,
      pFormat,
    );

late final _NdrConformantStringMarshall = _rpcrt4.lookupFunction<
    Pointer<Uint8> Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
),
    Pointer<Uint8> Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
)>('NdrConformantStringMarshall');

int NdrConformantStringMemorySize(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pFormat,
) =>
    _NdrConformantStringMemorySize(
      pStubMsg,
      pFormat,
    );

late final _NdrConformantStringMemorySize = _rpcrt4.lookupFunction<
    Uint32 Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pFormat,
),
    int Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pFormat,
)>('NdrConformantStringMemorySize');

Pointer<Uint8> NdrConformantStringUnmarshall(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Pointer<Uint8>> ppMemory,
  Pointer<Uint8> pFormat,
  int fMustAlloc,
) =>
    _NdrConformantStringUnmarshall(
      pStubMsg,
      ppMemory,
      pFormat,
      fMustAlloc,
    );

late final _NdrConformantStringUnmarshall = _rpcrt4.lookupFunction<
    Pointer<Uint8> Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Pointer<Uint8>> ppMemory,
  Pointer<Uint8> pFormat,
  Uint8 fMustAlloc,
),
    Pointer<Uint8> Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Pointer<Uint8>> ppMemory,
  Pointer<Uint8> pFormat,
  int fMustAlloc,
)>('NdrConformantStringUnmarshall');

void NdrConformantStructBufferSize(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
) =>
    _NdrConformantStructBufferSize(
      pStubMsg,
      pMemory,
      pFormat,
    );

late final _NdrConformantStructBufferSize = _rpcrt4.lookupFunction<
    Void Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
),
    void Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
)>('NdrConformantStructBufferSize');

void NdrConformantStructFree(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
) =>
    _NdrConformantStructFree(
      pStubMsg,
      pMemory,
      pFormat,
    );

late final _NdrConformantStructFree = _rpcrt4.lookupFunction<
    Void Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
),
    void Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
)>('NdrConformantStructFree');

Pointer<Uint8> NdrConformantStructMarshall(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
) =>
    _NdrConformantStructMarshall(
      pStubMsg,
      pMemory,
      pFormat,
    );

late final _NdrConformantStructMarshall = _rpcrt4.lookupFunction<
    Pointer<Uint8> Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
),
    Pointer<Uint8> Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
)>('NdrConformantStructMarshall');

int NdrConformantStructMemorySize(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pFormat,
) =>
    _NdrConformantStructMemorySize(
      pStubMsg,
      pFormat,
    );

late final _NdrConformantStructMemorySize = _rpcrt4.lookupFunction<
    Uint32 Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pFormat,
),
    int Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pFormat,
)>('NdrConformantStructMemorySize');

Pointer<Uint8> NdrConformantStructUnmarshall(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Pointer<Uint8>> ppMemory,
  Pointer<Uint8> pFormat,
  int fMustAlloc,
) =>
    _NdrConformantStructUnmarshall(
      pStubMsg,
      ppMemory,
      pFormat,
      fMustAlloc,
    );

late final _NdrConformantStructUnmarshall = _rpcrt4.lookupFunction<
    Pointer<Uint8> Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Pointer<Uint8>> ppMemory,
  Pointer<Uint8> pFormat,
  Uint8 fMustAlloc,
),
    Pointer<Uint8> Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Pointer<Uint8>> ppMemory,
  Pointer<Uint8> pFormat,
  int fMustAlloc,
)>('NdrConformantStructUnmarshall');

void NdrConformantVaryingArrayBufferSize(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
) =>
    _NdrConformantVaryingArrayBufferSize(
      pStubMsg,
      pMemory,
      pFormat,
    );

late final _NdrConformantVaryingArrayBufferSize = _rpcrt4.lookupFunction<
    Void Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
),
    void Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
)>('NdrConformantVaryingArrayBufferSize');

void NdrConformantVaryingArrayFree(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
) =>
    _NdrConformantVaryingArrayFree(
      pStubMsg,
      pMemory,
      pFormat,
    );

late final _NdrConformantVaryingArrayFree = _rpcrt4.lookupFunction<
    Void Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
),
    void Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
)>('NdrConformantVaryingArrayFree');

Pointer<Uint8> NdrConformantVaryingArrayMarshall(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
) =>
    _NdrConformantVaryingArrayMarshall(
      pStubMsg,
      pMemory,
      pFormat,
    );

late final _NdrConformantVaryingArrayMarshall = _rpcrt4.lookupFunction<
    Pointer<Uint8> Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
),
    Pointer<Uint8> Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
)>('NdrConformantVaryingArrayMarshall');

int NdrConformantVaryingArrayMemorySize(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pFormat,
) =>
    _NdrConformantVaryingArrayMemorySize(
      pStubMsg,
      pFormat,
    );

late final _NdrConformantVaryingArrayMemorySize = _rpcrt4.lookupFunction<
    Uint32 Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pFormat,
),
    int Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pFormat,
)>('NdrConformantVaryingArrayMemorySize');

Pointer<Uint8> NdrConformantVaryingArrayUnmarshall(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Pointer<Uint8>> ppMemory,
  Pointer<Uint8> pFormat,
  int fMustAlloc,
) =>
    _NdrConformantVaryingArrayUnmarshall(
      pStubMsg,
      ppMemory,
      pFormat,
      fMustAlloc,
    );

late final _NdrConformantVaryingArrayUnmarshall = _rpcrt4.lookupFunction<
    Pointer<Uint8> Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Pointer<Uint8>> ppMemory,
  Pointer<Uint8> pFormat,
  Uint8 fMustAlloc,
),
    Pointer<Uint8> Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Pointer<Uint8>> ppMemory,
  Pointer<Uint8> pFormat,
  int fMustAlloc,
)>('NdrConformantVaryingArrayUnmarshall');

void NdrConformantVaryingStructBufferSize(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
) =>
    _NdrConformantVaryingStructBufferSize(
      pStubMsg,
      pMemory,
      pFormat,
    );

late final _NdrConformantVaryingStructBufferSize = _rpcrt4.lookupFunction<
    Void Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
),
    void Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
)>('NdrConformantVaryingStructBufferSize');

void NdrConformantVaryingStructFree(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
) =>
    _NdrConformantVaryingStructFree(
      pStubMsg,
      pMemory,
      pFormat,
    );

late final _NdrConformantVaryingStructFree = _rpcrt4.lookupFunction<
    Void Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
),
    void Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
)>('NdrConformantVaryingStructFree');

Pointer<Uint8> NdrConformantVaryingStructMarshall(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
) =>
    _NdrConformantVaryingStructMarshall(
      pStubMsg,
      pMemory,
      pFormat,
    );

late final _NdrConformantVaryingStructMarshall = _rpcrt4.lookupFunction<
    Pointer<Uint8> Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
),
    Pointer<Uint8> Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
)>('NdrConformantVaryingStructMarshall');

int NdrConformantVaryingStructMemorySize(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pFormat,
) =>
    _NdrConformantVaryingStructMemorySize(
      pStubMsg,
      pFormat,
    );

late final _NdrConformantVaryingStructMemorySize = _rpcrt4.lookupFunction<
    Uint32 Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pFormat,
),
    int Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pFormat,
)>('NdrConformantVaryingStructMemorySize');

Pointer<Uint8> NdrConformantVaryingStructUnmarshall(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Pointer<Uint8>> ppMemory,
  Pointer<Uint8> pFormat,
  int fMustAlloc,
) =>
    _NdrConformantVaryingStructUnmarshall(
      pStubMsg,
      ppMemory,
      pFormat,
      fMustAlloc,
    );

late final _NdrConformantVaryingStructUnmarshall = _rpcrt4.lookupFunction<
    Pointer<Uint8> Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Pointer<Uint8>> ppMemory,
  Pointer<Uint8> pFormat,
  Uint8 fMustAlloc,
),
    Pointer<Uint8> Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Pointer<Uint8>> ppMemory,
  Pointer<Uint8> pFormat,
  int fMustAlloc,
)>('NdrConformantVaryingStructUnmarshall');

Pointer<NDR_SCONTEXT_1> NdrContextHandleInitialize(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pFormat,
) =>
    _NdrContextHandleInitialize(
      pStubMsg,
      pFormat,
    );

late final _NdrContextHandleInitialize = _rpcrt4.lookupFunction<
    Pointer<NDR_SCONTEXT_1> Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pFormat,
),
    Pointer<NDR_SCONTEXT_1> Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pFormat,
)>('NdrContextHandleInitialize');

void NdrContextHandleSize(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
) =>
    _NdrContextHandleSize(
      pStubMsg,
      pMemory,
      pFormat,
    );

late final _NdrContextHandleSize = _rpcrt4.lookupFunction<
    Void Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
),
    void Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
)>('NdrContextHandleSize');

void NdrConvert(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pFormat,
) =>
    _NdrConvert(
      pStubMsg,
      pFormat,
    );

late final _NdrConvert = _rpcrt4.lookupFunction<
    Void Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pFormat,
),
    void Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pFormat,
)>('NdrConvert');

void NdrConvert2(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pFormat,
  int NumberParams,
) =>
    _NdrConvert2(
      pStubMsg,
      pFormat,
      NumberParams,
    );

late final _NdrConvert2 = _rpcrt4.lookupFunction<
    Void Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pFormat,
  Int32 NumberParams,
),
    void Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pFormat,
  int NumberParams,
)>('NdrConvert2');

void NdrCorrelationFree(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
) =>
    _NdrCorrelationFree(
      pStubMsg,
    );

late final _NdrCorrelationFree = _rpcrt4.lookupFunction<
    Void Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
),
    void Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
)>('NdrCorrelationFree');

void NdrCorrelationInitialize(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer pMemory,
  int CacheSize,
  int flags,
) =>
    _NdrCorrelationInitialize(
      pStubMsg,
      pMemory,
      CacheSize,
      flags,
    );

late final _NdrCorrelationInitialize = _rpcrt4.lookupFunction<
    Void Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer pMemory,
  Uint32 CacheSize,
  Uint32 flags,
),
    void Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer pMemory,
  int CacheSize,
  int flags,
)>('NdrCorrelationInitialize');

void NdrCorrelationPass(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
) =>
    _NdrCorrelationPass(
      pStubMsg,
    );

late final _NdrCorrelationPass = _rpcrt4.lookupFunction<
    Void Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
),
    void Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
)>('NdrCorrelationPass');

int NdrCreateServerInterfaceFromStub(
  Pointer<COMObject> pStub,
  Pointer<RPC_SERVER_INTERFACE> pServerIf,
) =>
    _NdrCreateServerInterfaceFromStub(
      pStub,
      pServerIf,
    );

late final _NdrCreateServerInterfaceFromStub = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pStub,
  Pointer<RPC_SERVER_INTERFACE> pServerIf,
),
    int Function(
  Pointer<COMObject> pStub,
  Pointer<RPC_SERVER_INTERFACE> pServerIf,
)>('NdrCreateServerInterfaceFromStub');

CLIENT_CALL_RETURN NdrDcomAsyncClientCall(
  Pointer<MIDL_STUB_DESC> pStubDescriptor,
  Pointer<Uint8> pFormat,
) =>
    _NdrDcomAsyncClientCall(
      pStubDescriptor,
      pFormat,
    );

late final _NdrDcomAsyncClientCall = _rpcrt4.lookupFunction<
    CLIENT_CALL_RETURN Function(
  Pointer<MIDL_STUB_DESC> pStubDescriptor,
  Pointer<Uint8> pFormat,
),
    CLIENT_CALL_RETURN Function(
  Pointer<MIDL_STUB_DESC> pStubDescriptor,
  Pointer<Uint8> pFormat,
)>('NdrDcomAsyncClientCall');

int NdrDcomAsyncStubCall(
  Pointer<COMObject> pThis,
  Pointer<COMObject> pChannel,
  Pointer<RPC_MESSAGE> pRpcMsg,
  Pointer<Uint32> pdwStubPhase,
) =>
    _NdrDcomAsyncStubCall(
      pThis,
      pChannel,
      pRpcMsg,
      pdwStubPhase,
    );

late final _NdrDcomAsyncStubCall = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pThis,
  Pointer<COMObject> pChannel,
  Pointer<RPC_MESSAGE> pRpcMsg,
  Pointer<Uint32> pdwStubPhase,
),
    int Function(
  Pointer<COMObject> pThis,
  Pointer<COMObject> pChannel,
  Pointer<RPC_MESSAGE> pRpcMsg,
  Pointer<Uint32> pdwStubPhase,
)>('NdrDcomAsyncStubCall');

void NdrEncapsulatedUnionBufferSize(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
) =>
    _NdrEncapsulatedUnionBufferSize(
      pStubMsg,
      pMemory,
      pFormat,
    );

late final _NdrEncapsulatedUnionBufferSize = _rpcrt4.lookupFunction<
    Void Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
),
    void Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
)>('NdrEncapsulatedUnionBufferSize');

void NdrEncapsulatedUnionFree(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
) =>
    _NdrEncapsulatedUnionFree(
      pStubMsg,
      pMemory,
      pFormat,
    );

late final _NdrEncapsulatedUnionFree = _rpcrt4.lookupFunction<
    Void Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
),
    void Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
)>('NdrEncapsulatedUnionFree');

Pointer<Uint8> NdrEncapsulatedUnionMarshall(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
) =>
    _NdrEncapsulatedUnionMarshall(
      pStubMsg,
      pMemory,
      pFormat,
    );

late final _NdrEncapsulatedUnionMarshall = _rpcrt4.lookupFunction<
    Pointer<Uint8> Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
),
    Pointer<Uint8> Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
)>('NdrEncapsulatedUnionMarshall');

int NdrEncapsulatedUnionMemorySize(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pFormat,
) =>
    _NdrEncapsulatedUnionMemorySize(
      pStubMsg,
      pFormat,
    );

late final _NdrEncapsulatedUnionMemorySize = _rpcrt4.lookupFunction<
    Uint32 Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pFormat,
),
    int Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pFormat,
)>('NdrEncapsulatedUnionMemorySize');

Pointer<Uint8> NdrEncapsulatedUnionUnmarshall(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Pointer<Uint8>> ppMemory,
  Pointer<Uint8> pFormat,
  int fMustAlloc,
) =>
    _NdrEncapsulatedUnionUnmarshall(
      pStubMsg,
      ppMemory,
      pFormat,
      fMustAlloc,
    );

late final _NdrEncapsulatedUnionUnmarshall = _rpcrt4.lookupFunction<
    Pointer<Uint8> Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Pointer<Uint8>> ppMemory,
  Pointer<Uint8> pFormat,
  Uint8 fMustAlloc,
),
    Pointer<Uint8> Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Pointer<Uint8>> ppMemory,
  Pointer<Uint8> pFormat,
  int fMustAlloc,
)>('NdrEncapsulatedUnionUnmarshall');

void NdrFixedArrayBufferSize(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
) =>
    _NdrFixedArrayBufferSize(
      pStubMsg,
      pMemory,
      pFormat,
    );

late final _NdrFixedArrayBufferSize = _rpcrt4.lookupFunction<
    Void Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
),
    void Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
)>('NdrFixedArrayBufferSize');

void NdrFixedArrayFree(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
) =>
    _NdrFixedArrayFree(
      pStubMsg,
      pMemory,
      pFormat,
    );

late final _NdrFixedArrayFree = _rpcrt4.lookupFunction<
    Void Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
),
    void Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
)>('NdrFixedArrayFree');

Pointer<Uint8> NdrFixedArrayMarshall(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
) =>
    _NdrFixedArrayMarshall(
      pStubMsg,
      pMemory,
      pFormat,
    );

late final _NdrFixedArrayMarshall = _rpcrt4.lookupFunction<
    Pointer<Uint8> Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
),
    Pointer<Uint8> Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
)>('NdrFixedArrayMarshall');

int NdrFixedArrayMemorySize(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pFormat,
) =>
    _NdrFixedArrayMemorySize(
      pStubMsg,
      pFormat,
    );

late final _NdrFixedArrayMemorySize = _rpcrt4.lookupFunction<
    Uint32 Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pFormat,
),
    int Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pFormat,
)>('NdrFixedArrayMemorySize');

Pointer<Uint8> NdrFixedArrayUnmarshall(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Pointer<Uint8>> ppMemory,
  Pointer<Uint8> pFormat,
  int fMustAlloc,
) =>
    _NdrFixedArrayUnmarshall(
      pStubMsg,
      ppMemory,
      pFormat,
      fMustAlloc,
    );

late final _NdrFixedArrayUnmarshall = _rpcrt4.lookupFunction<
    Pointer<Uint8> Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Pointer<Uint8>> ppMemory,
  Pointer<Uint8> pFormat,
  Uint8 fMustAlloc,
),
    Pointer<Uint8> Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Pointer<Uint8>> ppMemory,
  Pointer<Uint8> pFormat,
  int fMustAlloc,
)>('NdrFixedArrayUnmarshall');

void NdrFreeBuffer(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
) =>
    _NdrFreeBuffer(
      pStubMsg,
    );

late final _NdrFreeBuffer = _rpcrt4.lookupFunction<
    Void Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
),
    void Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
)>('NdrFreeBuffer');

void NdrFullPointerXlatFree(
  Pointer<FULL_PTR_XLAT_TABLES> pXlatTables,
) =>
    _NdrFullPointerXlatFree(
      pXlatTables,
    );

late final _NdrFullPointerXlatFree = _rpcrt4.lookupFunction<
    Void Function(
  Pointer<FULL_PTR_XLAT_TABLES> pXlatTables,
),
    void Function(
  Pointer<FULL_PTR_XLAT_TABLES> pXlatTables,
)>('NdrFullPointerXlatFree');

Pointer<FULL_PTR_XLAT_TABLES> NdrFullPointerXlatInit(
  int NumberOfPointers,
  int XlatSide,
) =>
    _NdrFullPointerXlatInit(
      NumberOfPointers,
      XlatSide,
    );

late final _NdrFullPointerXlatInit = _rpcrt4.lookupFunction<
    Pointer<FULL_PTR_XLAT_TABLES> Function(
  Uint32 NumberOfPointers,
  Int32 XlatSide,
),
    Pointer<FULL_PTR_XLAT_TABLES> Function(
  int NumberOfPointers,
  int XlatSide,
)>('NdrFullPointerXlatInit');

Pointer<Uint8> NdrGetBuffer(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  int BufferLength,
  Pointer $Handle,
) =>
    _NdrGetBuffer(
      pStubMsg,
      BufferLength,
      $Handle,
    );

late final _NdrGetBuffer = _rpcrt4.lookupFunction<
    Pointer<Uint8> Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Uint32 BufferLength,
  Pointer $Handle,
),
    Pointer<Uint8> Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  int BufferLength,
  Pointer $Handle,
)>('NdrGetBuffer');

int NdrGetDcomProtocolVersion(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<RPC_VERSION> pVersion,
) =>
    _NdrGetDcomProtocolVersion(
      pStubMsg,
      pVersion,
    );

late final _NdrGetDcomProtocolVersion = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<RPC_VERSION> pVersion,
),
    int Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<RPC_VERSION> pVersion,
)>('NdrGetDcomProtocolVersion');

int NdrGetUserMarshalInfo(
  Pointer<Uint32> pFlags,
  int InformationLevel,
  Pointer<NDR_USER_MARSHAL_INFO> pMarshalInfo,
) =>
    _NdrGetUserMarshalInfo(
      pFlags,
      InformationLevel,
      pMarshalInfo,
    );

late final _NdrGetUserMarshalInfo = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer<Uint32> pFlags,
  Uint32 InformationLevel,
  Pointer<NDR_USER_MARSHAL_INFO> pMarshalInfo,
),
    int Function(
  Pointer<Uint32> pFlags,
  int InformationLevel,
  Pointer<NDR_USER_MARSHAL_INFO> pMarshalInfo,
)>('NdrGetUserMarshalInfo');

void NdrInterfacePointerBufferSize(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
) =>
    _NdrInterfacePointerBufferSize(
      pStubMsg,
      pMemory,
      pFormat,
    );

late final _NdrInterfacePointerBufferSize = _rpcrt4.lookupFunction<
    Void Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
),
    void Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
)>('NdrInterfacePointerBufferSize');

void NdrInterfacePointerFree(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
) =>
    _NdrInterfacePointerFree(
      pStubMsg,
      pMemory,
      pFormat,
    );

late final _NdrInterfacePointerFree = _rpcrt4.lookupFunction<
    Void Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
),
    void Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
)>('NdrInterfacePointerFree');

Pointer<Uint8> NdrInterfacePointerMarshall(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
) =>
    _NdrInterfacePointerMarshall(
      pStubMsg,
      pMemory,
      pFormat,
    );

late final _NdrInterfacePointerMarshall = _rpcrt4.lookupFunction<
    Pointer<Uint8> Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
),
    Pointer<Uint8> Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
)>('NdrInterfacePointerMarshall');

int NdrInterfacePointerMemorySize(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pFormat,
) =>
    _NdrInterfacePointerMemorySize(
      pStubMsg,
      pFormat,
    );

late final _NdrInterfacePointerMemorySize = _rpcrt4.lookupFunction<
    Uint32 Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pFormat,
),
    int Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pFormat,
)>('NdrInterfacePointerMemorySize');

Pointer<Uint8> NdrInterfacePointerUnmarshall(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Pointer<Uint8>> ppMemory,
  Pointer<Uint8> pFormat,
  int fMustAlloc,
) =>
    _NdrInterfacePointerUnmarshall(
      pStubMsg,
      ppMemory,
      pFormat,
      fMustAlloc,
    );

late final _NdrInterfacePointerUnmarshall = _rpcrt4.lookupFunction<
    Pointer<Uint8> Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Pointer<Uint8>> ppMemory,
  Pointer<Uint8> pFormat,
  Uint8 fMustAlloc,
),
    Pointer<Uint8> Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Pointer<Uint8>> ppMemory,
  Pointer<Uint8> pFormat,
  int fMustAlloc,
)>('NdrInterfacePointerUnmarshall');

int NdrMapCommAndFaultStatus(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint32> pCommStatus,
  Pointer<Uint32> pFaultStatus,
  int Status,
) =>
    _NdrMapCommAndFaultStatus(
      pStubMsg,
      pCommStatus,
      pFaultStatus,
      Status,
    );

late final _NdrMapCommAndFaultStatus = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint32> pCommStatus,
  Pointer<Uint32> pFaultStatus,
  Int32 Status,
),
    int Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint32> pCommStatus,
  Pointer<Uint32> pFaultStatus,
  int Status,
)>('NdrMapCommAndFaultStatus');

void NdrMesProcEncodeDecode(
  Pointer $Handle,
  Pointer<MIDL_STUB_DESC> pStubDesc,
  Pointer<Uint8> pFormatString,
) =>
    _NdrMesProcEncodeDecode(
      $Handle,
      pStubDesc,
      pFormatString,
    );

late final _NdrMesProcEncodeDecode = _rpcrt4.lookupFunction<
    Void Function(
  Pointer $Handle,
  Pointer<MIDL_STUB_DESC> pStubDesc,
  Pointer<Uint8> pFormatString,
),
    void Function(
  Pointer $Handle,
  Pointer<MIDL_STUB_DESC> pStubDesc,
  Pointer<Uint8> pFormatString,
)>('NdrMesProcEncodeDecode');

CLIENT_CALL_RETURN NdrMesProcEncodeDecode2(
  Pointer $Handle,
  Pointer<MIDL_STUB_DESC> pStubDesc,
  Pointer<Uint8> pFormatString,
) =>
    _NdrMesProcEncodeDecode2(
      $Handle,
      pStubDesc,
      pFormatString,
    );

late final _NdrMesProcEncodeDecode2 = _rpcrt4.lookupFunction<
    CLIENT_CALL_RETURN Function(
  Pointer $Handle,
  Pointer<MIDL_STUB_DESC> pStubDesc,
  Pointer<Uint8> pFormatString,
),
    CLIENT_CALL_RETURN Function(
  Pointer $Handle,
  Pointer<MIDL_STUB_DESC> pStubDesc,
  Pointer<Uint8> pFormatString,
)>('NdrMesProcEncodeDecode2');

CLIENT_CALL_RETURN NdrMesProcEncodeDecode3(
  Pointer $Handle,
  Pointer<MIDL_STUBLESS_PROXY_INFO> pProxyInfo,
  int nProcNum,
  Pointer pReturnValue,
) =>
    _NdrMesProcEncodeDecode3(
      $Handle,
      pProxyInfo,
      nProcNum,
      pReturnValue,
    );

late final _NdrMesProcEncodeDecode3 = _rpcrt4.lookupFunction<
    CLIENT_CALL_RETURN Function(
  Pointer $Handle,
  Pointer<MIDL_STUBLESS_PROXY_INFO> pProxyInfo,
  Uint32 nProcNum,
  Pointer pReturnValue,
),
    CLIENT_CALL_RETURN Function(
  Pointer $Handle,
  Pointer<MIDL_STUBLESS_PROXY_INFO> pProxyInfo,
  int nProcNum,
  Pointer pReturnValue,
)>('NdrMesProcEncodeDecode3');

int NdrMesSimpleTypeAlignSize(
  Pointer param0,
) =>
    _NdrMesSimpleTypeAlignSize(
      param0,
    );

late final _NdrMesSimpleTypeAlignSize = _rpcrt4.lookupFunction<
    IntPtr Function(
  Pointer param0,
),
    int Function(
  Pointer param0,
)>('NdrMesSimpleTypeAlignSize');

int NdrMesSimpleTypeAlignSizeAll(
  Pointer $Handle,
  Pointer<MIDL_STUBLESS_PROXY_INFO> pProxyInfo,
) =>
    _NdrMesSimpleTypeAlignSizeAll(
      $Handle,
      pProxyInfo,
    );

late final _NdrMesSimpleTypeAlignSizeAll = _rpcrt4.lookupFunction<
    IntPtr Function(
  Pointer $Handle,
  Pointer<MIDL_STUBLESS_PROXY_INFO> pProxyInfo,
),
    int Function(
  Pointer $Handle,
  Pointer<MIDL_STUBLESS_PROXY_INFO> pProxyInfo,
)>('NdrMesSimpleTypeAlignSizeAll');

void NdrMesSimpleTypeDecode(
  Pointer $Handle,
  Pointer pObject,
  int Size,
) =>
    _NdrMesSimpleTypeDecode(
      $Handle,
      pObject,
      Size,
    );

late final _NdrMesSimpleTypeDecode = _rpcrt4.lookupFunction<
    Void Function(
  Pointer $Handle,
  Pointer pObject,
  Int16 Size,
),
    void Function(
  Pointer $Handle,
  Pointer pObject,
  int Size,
)>('NdrMesSimpleTypeDecode');

void NdrMesSimpleTypeDecodeAll(
  Pointer $Handle,
  Pointer<MIDL_STUBLESS_PROXY_INFO> pProxyInfo,
  Pointer pObject,
  int Size,
) =>
    _NdrMesSimpleTypeDecodeAll(
      $Handle,
      pProxyInfo,
      pObject,
      Size,
    );

late final _NdrMesSimpleTypeDecodeAll = _rpcrt4.lookupFunction<
    Void Function(
  Pointer $Handle,
  Pointer<MIDL_STUBLESS_PROXY_INFO> pProxyInfo,
  Pointer pObject,
  Int16 Size,
),
    void Function(
  Pointer $Handle,
  Pointer<MIDL_STUBLESS_PROXY_INFO> pProxyInfo,
  Pointer pObject,
  int Size,
)>('NdrMesSimpleTypeDecodeAll');

void NdrMesSimpleTypeEncode(
  Pointer $Handle,
  Pointer<MIDL_STUB_DESC> pStubDesc,
  Pointer pObject,
  int Size,
) =>
    _NdrMesSimpleTypeEncode(
      $Handle,
      pStubDesc,
      pObject,
      Size,
    );

late final _NdrMesSimpleTypeEncode = _rpcrt4.lookupFunction<
    Void Function(
  Pointer $Handle,
  Pointer<MIDL_STUB_DESC> pStubDesc,
  Pointer pObject,
  Int16 Size,
),
    void Function(
  Pointer $Handle,
  Pointer<MIDL_STUB_DESC> pStubDesc,
  Pointer pObject,
  int Size,
)>('NdrMesSimpleTypeEncode');

void NdrMesSimpleTypeEncodeAll(
  Pointer $Handle,
  Pointer<MIDL_STUBLESS_PROXY_INFO> pProxyInfo,
  Pointer pObject,
  int Size,
) =>
    _NdrMesSimpleTypeEncodeAll(
      $Handle,
      pProxyInfo,
      pObject,
      Size,
    );

late final _NdrMesSimpleTypeEncodeAll = _rpcrt4.lookupFunction<
    Void Function(
  Pointer $Handle,
  Pointer<MIDL_STUBLESS_PROXY_INFO> pProxyInfo,
  Pointer pObject,
  Int16 Size,
),
    void Function(
  Pointer $Handle,
  Pointer<MIDL_STUBLESS_PROXY_INFO> pProxyInfo,
  Pointer pObject,
  int Size,
)>('NdrMesSimpleTypeEncodeAll');

int NdrMesTypeAlignSize(
  Pointer $Handle,
  Pointer<MIDL_STUB_DESC> pStubDesc,
  Pointer<Uint8> pFormatString,
  Pointer pObject,
) =>
    _NdrMesTypeAlignSize(
      $Handle,
      pStubDesc,
      pFormatString,
      pObject,
    );

late final _NdrMesTypeAlignSize = _rpcrt4.lookupFunction<
    IntPtr Function(
  Pointer $Handle,
  Pointer<MIDL_STUB_DESC> pStubDesc,
  Pointer<Uint8> pFormatString,
  Pointer pObject,
),
    int Function(
  Pointer $Handle,
  Pointer<MIDL_STUB_DESC> pStubDesc,
  Pointer<Uint8> pFormatString,
  Pointer pObject,
)>('NdrMesTypeAlignSize');

int NdrMesTypeAlignSize2(
  Pointer $Handle,
  Pointer<MIDL_TYPE_PICKLING_INFO> pPicklingInfo,
  Pointer<MIDL_STUB_DESC> pStubDesc,
  Pointer<Uint8> pFormatString,
  Pointer pObject,
) =>
    _NdrMesTypeAlignSize2(
      $Handle,
      pPicklingInfo,
      pStubDesc,
      pFormatString,
      pObject,
    );

late final _NdrMesTypeAlignSize2 = _rpcrt4.lookupFunction<
    IntPtr Function(
  Pointer $Handle,
  Pointer<MIDL_TYPE_PICKLING_INFO> pPicklingInfo,
  Pointer<MIDL_STUB_DESC> pStubDesc,
  Pointer<Uint8> pFormatString,
  Pointer pObject,
),
    int Function(
  Pointer $Handle,
  Pointer<MIDL_TYPE_PICKLING_INFO> pPicklingInfo,
  Pointer<MIDL_STUB_DESC> pStubDesc,
  Pointer<Uint8> pFormatString,
  Pointer pObject,
)>('NdrMesTypeAlignSize2');

int NdrMesTypeAlignSize3(
  Pointer $Handle,
  Pointer<MIDL_TYPE_PICKLING_INFO> pPicklingInfo,
  Pointer<MIDL_STUBLESS_PROXY_INFO> pProxyInfo,
  Pointer<Pointer<Uint32>> ArrTypeOffset,
  int nTypeIndex,
  Pointer pObject,
) =>
    _NdrMesTypeAlignSize3(
      $Handle,
      pPicklingInfo,
      pProxyInfo,
      ArrTypeOffset,
      nTypeIndex,
      pObject,
    );

late final _NdrMesTypeAlignSize3 = _rpcrt4.lookupFunction<
    IntPtr Function(
  Pointer $Handle,
  Pointer<MIDL_TYPE_PICKLING_INFO> pPicklingInfo,
  Pointer<MIDL_STUBLESS_PROXY_INFO> pProxyInfo,
  Pointer<Pointer<Uint32>> ArrTypeOffset,
  Uint32 nTypeIndex,
  Pointer pObject,
),
    int Function(
  Pointer $Handle,
  Pointer<MIDL_TYPE_PICKLING_INFO> pPicklingInfo,
  Pointer<MIDL_STUBLESS_PROXY_INFO> pProxyInfo,
  Pointer<Pointer<Uint32>> ArrTypeOffset,
  int nTypeIndex,
  Pointer pObject,
)>('NdrMesTypeAlignSize3');

void NdrMesTypeDecode(
  Pointer $Handle,
  Pointer<MIDL_STUB_DESC> pStubDesc,
  Pointer<Uint8> pFormatString,
  Pointer pObject,
) =>
    _NdrMesTypeDecode(
      $Handle,
      pStubDesc,
      pFormatString,
      pObject,
    );

late final _NdrMesTypeDecode = _rpcrt4.lookupFunction<
    Void Function(
  Pointer $Handle,
  Pointer<MIDL_STUB_DESC> pStubDesc,
  Pointer<Uint8> pFormatString,
  Pointer pObject,
),
    void Function(
  Pointer $Handle,
  Pointer<MIDL_STUB_DESC> pStubDesc,
  Pointer<Uint8> pFormatString,
  Pointer pObject,
)>('NdrMesTypeDecode');

void NdrMesTypeDecode2(
  Pointer $Handle,
  Pointer<MIDL_TYPE_PICKLING_INFO> pPicklingInfo,
  Pointer<MIDL_STUB_DESC> pStubDesc,
  Pointer<Uint8> pFormatString,
  Pointer pObject,
) =>
    _NdrMesTypeDecode2(
      $Handle,
      pPicklingInfo,
      pStubDesc,
      pFormatString,
      pObject,
    );

late final _NdrMesTypeDecode2 = _rpcrt4.lookupFunction<
    Void Function(
  Pointer $Handle,
  Pointer<MIDL_TYPE_PICKLING_INFO> pPicklingInfo,
  Pointer<MIDL_STUB_DESC> pStubDesc,
  Pointer<Uint8> pFormatString,
  Pointer pObject,
),
    void Function(
  Pointer $Handle,
  Pointer<MIDL_TYPE_PICKLING_INFO> pPicklingInfo,
  Pointer<MIDL_STUB_DESC> pStubDesc,
  Pointer<Uint8> pFormatString,
  Pointer pObject,
)>('NdrMesTypeDecode2');

void NdrMesTypeDecode3(
  Pointer $Handle,
  Pointer<MIDL_TYPE_PICKLING_INFO> pPicklingInfo,
  Pointer<MIDL_STUBLESS_PROXY_INFO> pProxyInfo,
  Pointer<Pointer<Uint32>> ArrTypeOffset,
  int nTypeIndex,
  Pointer pObject,
) =>
    _NdrMesTypeDecode3(
      $Handle,
      pPicklingInfo,
      pProxyInfo,
      ArrTypeOffset,
      nTypeIndex,
      pObject,
    );

late final _NdrMesTypeDecode3 = _rpcrt4.lookupFunction<
    Void Function(
  Pointer $Handle,
  Pointer<MIDL_TYPE_PICKLING_INFO> pPicklingInfo,
  Pointer<MIDL_STUBLESS_PROXY_INFO> pProxyInfo,
  Pointer<Pointer<Uint32>> ArrTypeOffset,
  Uint32 nTypeIndex,
  Pointer pObject,
),
    void Function(
  Pointer $Handle,
  Pointer<MIDL_TYPE_PICKLING_INFO> pPicklingInfo,
  Pointer<MIDL_STUBLESS_PROXY_INFO> pProxyInfo,
  Pointer<Pointer<Uint32>> ArrTypeOffset,
  int nTypeIndex,
  Pointer pObject,
)>('NdrMesTypeDecode3');

void NdrMesTypeEncode(
  Pointer $Handle,
  Pointer<MIDL_STUB_DESC> pStubDesc,
  Pointer<Uint8> pFormatString,
  Pointer pObject,
) =>
    _NdrMesTypeEncode(
      $Handle,
      pStubDesc,
      pFormatString,
      pObject,
    );

late final _NdrMesTypeEncode = _rpcrt4.lookupFunction<
    Void Function(
  Pointer $Handle,
  Pointer<MIDL_STUB_DESC> pStubDesc,
  Pointer<Uint8> pFormatString,
  Pointer pObject,
),
    void Function(
  Pointer $Handle,
  Pointer<MIDL_STUB_DESC> pStubDesc,
  Pointer<Uint8> pFormatString,
  Pointer pObject,
)>('NdrMesTypeEncode');

void NdrMesTypeEncode2(
  Pointer $Handle,
  Pointer<MIDL_TYPE_PICKLING_INFO> pPicklingInfo,
  Pointer<MIDL_STUB_DESC> pStubDesc,
  Pointer<Uint8> pFormatString,
  Pointer pObject,
) =>
    _NdrMesTypeEncode2(
      $Handle,
      pPicklingInfo,
      pStubDesc,
      pFormatString,
      pObject,
    );

late final _NdrMesTypeEncode2 = _rpcrt4.lookupFunction<
    Void Function(
  Pointer $Handle,
  Pointer<MIDL_TYPE_PICKLING_INFO> pPicklingInfo,
  Pointer<MIDL_STUB_DESC> pStubDesc,
  Pointer<Uint8> pFormatString,
  Pointer pObject,
),
    void Function(
  Pointer $Handle,
  Pointer<MIDL_TYPE_PICKLING_INFO> pPicklingInfo,
  Pointer<MIDL_STUB_DESC> pStubDesc,
  Pointer<Uint8> pFormatString,
  Pointer pObject,
)>('NdrMesTypeEncode2');

void NdrMesTypeEncode3(
  Pointer $Handle,
  Pointer<MIDL_TYPE_PICKLING_INFO> pPicklingInfo,
  Pointer<MIDL_STUBLESS_PROXY_INFO> pProxyInfo,
  Pointer<Pointer<Uint32>> ArrTypeOffset,
  int nTypeIndex,
  Pointer pObject,
) =>
    _NdrMesTypeEncode3(
      $Handle,
      pPicklingInfo,
      pProxyInfo,
      ArrTypeOffset,
      nTypeIndex,
      pObject,
    );

late final _NdrMesTypeEncode3 = _rpcrt4.lookupFunction<
    Void Function(
  Pointer $Handle,
  Pointer<MIDL_TYPE_PICKLING_INFO> pPicklingInfo,
  Pointer<MIDL_STUBLESS_PROXY_INFO> pProxyInfo,
  Pointer<Pointer<Uint32>> ArrTypeOffset,
  Uint32 nTypeIndex,
  Pointer pObject,
),
    void Function(
  Pointer $Handle,
  Pointer<MIDL_TYPE_PICKLING_INFO> pPicklingInfo,
  Pointer<MIDL_STUBLESS_PROXY_INFO> pProxyInfo,
  Pointer<Pointer<Uint32>> ArrTypeOffset,
  int nTypeIndex,
  Pointer pObject,
)>('NdrMesTypeEncode3');

void NdrMesTypeFree2(
  Pointer $Handle,
  Pointer<MIDL_TYPE_PICKLING_INFO> pPicklingInfo,
  Pointer<MIDL_STUB_DESC> pStubDesc,
  Pointer<Uint8> pFormatString,
  Pointer pObject,
) =>
    _NdrMesTypeFree2(
      $Handle,
      pPicklingInfo,
      pStubDesc,
      pFormatString,
      pObject,
    );

late final _NdrMesTypeFree2 = _rpcrt4.lookupFunction<
    Void Function(
  Pointer $Handle,
  Pointer<MIDL_TYPE_PICKLING_INFO> pPicklingInfo,
  Pointer<MIDL_STUB_DESC> pStubDesc,
  Pointer<Uint8> pFormatString,
  Pointer pObject,
),
    void Function(
  Pointer $Handle,
  Pointer<MIDL_TYPE_PICKLING_INFO> pPicklingInfo,
  Pointer<MIDL_STUB_DESC> pStubDesc,
  Pointer<Uint8> pFormatString,
  Pointer pObject,
)>('NdrMesTypeFree2');

void NdrMesTypeFree3(
  Pointer $Handle,
  Pointer<MIDL_TYPE_PICKLING_INFO> pPicklingInfo,
  Pointer<MIDL_STUBLESS_PROXY_INFO> pProxyInfo,
  Pointer<Pointer<Uint32>> ArrTypeOffset,
  int nTypeIndex,
  Pointer pObject,
) =>
    _NdrMesTypeFree3(
      $Handle,
      pPicklingInfo,
      pProxyInfo,
      ArrTypeOffset,
      nTypeIndex,
      pObject,
    );

late final _NdrMesTypeFree3 = _rpcrt4.lookupFunction<
    Void Function(
  Pointer $Handle,
  Pointer<MIDL_TYPE_PICKLING_INFO> pPicklingInfo,
  Pointer<MIDL_STUBLESS_PROXY_INFO> pProxyInfo,
  Pointer<Pointer<Uint32>> ArrTypeOffset,
  Uint32 nTypeIndex,
  Pointer pObject,
),
    void Function(
  Pointer $Handle,
  Pointer<MIDL_TYPE_PICKLING_INFO> pPicklingInfo,
  Pointer<MIDL_STUBLESS_PROXY_INFO> pProxyInfo,
  Pointer<Pointer<Uint32>> ArrTypeOffset,
  int nTypeIndex,
  Pointer pObject,
)>('NdrMesTypeFree3');

void NdrNonConformantStringBufferSize(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
) =>
    _NdrNonConformantStringBufferSize(
      pStubMsg,
      pMemory,
      pFormat,
    );

late final _NdrNonConformantStringBufferSize = _rpcrt4.lookupFunction<
    Void Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
),
    void Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
)>('NdrNonConformantStringBufferSize');

Pointer<Uint8> NdrNonConformantStringMarshall(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
) =>
    _NdrNonConformantStringMarshall(
      pStubMsg,
      pMemory,
      pFormat,
    );

late final _NdrNonConformantStringMarshall = _rpcrt4.lookupFunction<
    Pointer<Uint8> Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
),
    Pointer<Uint8> Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
)>('NdrNonConformantStringMarshall');

int NdrNonConformantStringMemorySize(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pFormat,
) =>
    _NdrNonConformantStringMemorySize(
      pStubMsg,
      pFormat,
    );

late final _NdrNonConformantStringMemorySize = _rpcrt4.lookupFunction<
    Uint32 Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pFormat,
),
    int Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pFormat,
)>('NdrNonConformantStringMemorySize');

Pointer<Uint8> NdrNonConformantStringUnmarshall(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Pointer<Uint8>> ppMemory,
  Pointer<Uint8> pFormat,
  int fMustAlloc,
) =>
    _NdrNonConformantStringUnmarshall(
      pStubMsg,
      ppMemory,
      pFormat,
      fMustAlloc,
    );

late final _NdrNonConformantStringUnmarshall = _rpcrt4.lookupFunction<
    Pointer<Uint8> Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Pointer<Uint8>> ppMemory,
  Pointer<Uint8> pFormat,
  Uint8 fMustAlloc,
),
    Pointer<Uint8> Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Pointer<Uint8>> ppMemory,
  Pointer<Uint8> pFormat,
  int fMustAlloc,
)>('NdrNonConformantStringUnmarshall');

void NdrNonEncapsulatedUnionBufferSize(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
) =>
    _NdrNonEncapsulatedUnionBufferSize(
      pStubMsg,
      pMemory,
      pFormat,
    );

late final _NdrNonEncapsulatedUnionBufferSize = _rpcrt4.lookupFunction<
    Void Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
),
    void Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
)>('NdrNonEncapsulatedUnionBufferSize');

void NdrNonEncapsulatedUnionFree(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
) =>
    _NdrNonEncapsulatedUnionFree(
      pStubMsg,
      pMemory,
      pFormat,
    );

late final _NdrNonEncapsulatedUnionFree = _rpcrt4.lookupFunction<
    Void Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
),
    void Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
)>('NdrNonEncapsulatedUnionFree');

Pointer<Uint8> NdrNonEncapsulatedUnionMarshall(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
) =>
    _NdrNonEncapsulatedUnionMarshall(
      pStubMsg,
      pMemory,
      pFormat,
    );

late final _NdrNonEncapsulatedUnionMarshall = _rpcrt4.lookupFunction<
    Pointer<Uint8> Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
),
    Pointer<Uint8> Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
)>('NdrNonEncapsulatedUnionMarshall');

int NdrNonEncapsulatedUnionMemorySize(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pFormat,
) =>
    _NdrNonEncapsulatedUnionMemorySize(
      pStubMsg,
      pFormat,
    );

late final _NdrNonEncapsulatedUnionMemorySize = _rpcrt4.lookupFunction<
    Uint32 Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pFormat,
),
    int Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pFormat,
)>('NdrNonEncapsulatedUnionMemorySize');

Pointer<Uint8> NdrNonEncapsulatedUnionUnmarshall(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Pointer<Uint8>> ppMemory,
  Pointer<Uint8> pFormat,
  int fMustAlloc,
) =>
    _NdrNonEncapsulatedUnionUnmarshall(
      pStubMsg,
      ppMemory,
      pFormat,
      fMustAlloc,
    );

late final _NdrNonEncapsulatedUnionUnmarshall = _rpcrt4.lookupFunction<
    Pointer<Uint8> Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Pointer<Uint8>> ppMemory,
  Pointer<Uint8> pFormat,
  Uint8 fMustAlloc,
),
    Pointer<Uint8> Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Pointer<Uint8>> ppMemory,
  Pointer<Uint8> pFormat,
  int fMustAlloc,
)>('NdrNonEncapsulatedUnionUnmarshall');

Pointer<Uint8> NdrNsGetBuffer(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  int BufferLength,
  Pointer $Handle,
) =>
    _NdrNsGetBuffer(
      pStubMsg,
      BufferLength,
      $Handle,
    );

late final _NdrNsGetBuffer = _rpcrt4.lookupFunction<
    Pointer<Uint8> Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Uint32 BufferLength,
  Pointer $Handle,
),
    Pointer<Uint8> Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  int BufferLength,
  Pointer $Handle,
)>('NdrNsGetBuffer');

Pointer<Uint8> NdrNsSendReceive(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pBufferEnd,
  Pointer<Pointer> pAutoHandle,
) =>
    _NdrNsSendReceive(
      pStubMsg,
      pBufferEnd,
      pAutoHandle,
    );

late final _NdrNsSendReceive = _rpcrt4.lookupFunction<
    Pointer<Uint8> Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pBufferEnd,
  Pointer<Pointer> pAutoHandle,
),
    Pointer<Uint8> Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pBufferEnd,
  Pointer<Pointer> pAutoHandle,
)>('NdrNsSendReceive');

Pointer NdrOleAllocate(
  int Size,
) =>
    _NdrOleAllocate(
      Size,
    );

late final _NdrOleAllocate = _rpcrt4.lookupFunction<
    Pointer Function(
  IntPtr Size,
),
    Pointer Function(
  int Size,
)>('NdrOleAllocate');

void NdrOleFree(
  Pointer NodeToFree,
) =>
    _NdrOleFree(
      NodeToFree,
    );

late final _NdrOleFree = _rpcrt4.lookupFunction<
    Void Function(
  Pointer NodeToFree,
),
    void Function(
  Pointer NodeToFree,
)>('NdrOleFree');

void NdrPartialIgnoreClientBufferSize(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer pMemory,
) =>
    _NdrPartialIgnoreClientBufferSize(
      pStubMsg,
      pMemory,
    );

late final _NdrPartialIgnoreClientBufferSize = _rpcrt4.lookupFunction<
    Void Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer pMemory,
),
    void Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer pMemory,
)>('NdrPartialIgnoreClientBufferSize');

void NdrPartialIgnoreClientMarshall(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer pMemory,
) =>
    _NdrPartialIgnoreClientMarshall(
      pStubMsg,
      pMemory,
    );

late final _NdrPartialIgnoreClientMarshall = _rpcrt4.lookupFunction<
    Void Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer pMemory,
),
    void Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer pMemory,
)>('NdrPartialIgnoreClientMarshall');

void NdrPartialIgnoreServerInitialize(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Pointer> ppMemory,
  Pointer<Uint8> pFormat,
) =>
    _NdrPartialIgnoreServerInitialize(
      pStubMsg,
      ppMemory,
      pFormat,
    );

late final _NdrPartialIgnoreServerInitialize = _rpcrt4.lookupFunction<
    Void Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Pointer> ppMemory,
  Pointer<Uint8> pFormat,
),
    void Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Pointer> ppMemory,
  Pointer<Uint8> pFormat,
)>('NdrPartialIgnoreServerInitialize');

void NdrPartialIgnoreServerUnmarshall(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Pointer> ppMemory,
) =>
    _NdrPartialIgnoreServerUnmarshall(
      pStubMsg,
      ppMemory,
    );

late final _NdrPartialIgnoreServerUnmarshall = _rpcrt4.lookupFunction<
    Void Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Pointer> ppMemory,
),
    void Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Pointer> ppMemory,
)>('NdrPartialIgnoreServerUnmarshall');

void NdrPointerBufferSize(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
) =>
    _NdrPointerBufferSize(
      pStubMsg,
      pMemory,
      pFormat,
    );

late final _NdrPointerBufferSize = _rpcrt4.lookupFunction<
    Void Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
),
    void Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
)>('NdrPointerBufferSize');

void NdrPointerFree(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
) =>
    _NdrPointerFree(
      pStubMsg,
      pMemory,
      pFormat,
    );

late final _NdrPointerFree = _rpcrt4.lookupFunction<
    Void Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
),
    void Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
)>('NdrPointerFree');

Pointer<Uint8> NdrPointerMarshall(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
) =>
    _NdrPointerMarshall(
      pStubMsg,
      pMemory,
      pFormat,
    );

late final _NdrPointerMarshall = _rpcrt4.lookupFunction<
    Pointer<Uint8> Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
),
    Pointer<Uint8> Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
)>('NdrPointerMarshall');

int NdrPointerMemorySize(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pFormat,
) =>
    _NdrPointerMemorySize(
      pStubMsg,
      pFormat,
    );

late final _NdrPointerMemorySize = _rpcrt4.lookupFunction<
    Uint32 Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pFormat,
),
    int Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pFormat,
)>('NdrPointerMemorySize');

Pointer<Uint8> NdrPointerUnmarshall(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Pointer<Uint8>> ppMemory,
  Pointer<Uint8> pFormat,
  int fMustAlloc,
) =>
    _NdrPointerUnmarshall(
      pStubMsg,
      ppMemory,
      pFormat,
      fMustAlloc,
    );

late final _NdrPointerUnmarshall = _rpcrt4.lookupFunction<
    Pointer<Uint8> Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Pointer<Uint8>> ppMemory,
  Pointer<Uint8> pFormat,
  Uint8 fMustAlloc,
),
    Pointer<Uint8> Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Pointer<Uint8>> ppMemory,
  Pointer<Uint8> pFormat,
  int fMustAlloc,
)>('NdrPointerUnmarshall');

Pointer<Uint8> NdrRangeUnmarshall(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Pointer<Uint8>> ppMemory,
  Pointer<Uint8> pFormat,
  int fMustAlloc,
) =>
    _NdrRangeUnmarshall(
      pStubMsg,
      ppMemory,
      pFormat,
      fMustAlloc,
    );

late final _NdrRangeUnmarshall = _rpcrt4.lookupFunction<
    Pointer<Uint8> Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Pointer<Uint8>> ppMemory,
  Pointer<Uint8> pFormat,
  Uint8 fMustAlloc,
),
    Pointer<Uint8> Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Pointer<Uint8>> ppMemory,
  Pointer<Uint8> pFormat,
  int fMustAlloc,
)>('NdrRangeUnmarshall');

Pointer NdrRpcSmClientAllocate(
  int Size,
) =>
    _NdrRpcSmClientAllocate(
      Size,
    );

late final _NdrRpcSmClientAllocate = _rpcrt4.lookupFunction<
    Pointer Function(
  IntPtr Size,
),
    Pointer Function(
  int Size,
)>('NdrRpcSmClientAllocate');

void NdrRpcSmClientFree(
  Pointer NodeToFree,
) =>
    _NdrRpcSmClientFree(
      NodeToFree,
    );

late final _NdrRpcSmClientFree = _rpcrt4.lookupFunction<
    Void Function(
  Pointer NodeToFree,
),
    void Function(
  Pointer NodeToFree,
)>('NdrRpcSmClientFree');

void NdrRpcSmSetClientToOsf(
  Pointer<MIDL_STUB_MESSAGE> pMessage,
) =>
    _NdrRpcSmSetClientToOsf(
      pMessage,
    );

late final _NdrRpcSmSetClientToOsf = _rpcrt4.lookupFunction<
    Void Function(
  Pointer<MIDL_STUB_MESSAGE> pMessage,
),
    void Function(
  Pointer<MIDL_STUB_MESSAGE> pMessage,
)>('NdrRpcSmSetClientToOsf');

Pointer NdrRpcSsDefaultAllocate(
  int Size,
) =>
    _NdrRpcSsDefaultAllocate(
      Size,
    );

late final _NdrRpcSsDefaultAllocate = _rpcrt4.lookupFunction<
    Pointer Function(
  IntPtr Size,
),
    Pointer Function(
  int Size,
)>('NdrRpcSsDefaultAllocate');

void NdrRpcSsDefaultFree(
  Pointer NodeToFree,
) =>
    _NdrRpcSsDefaultFree(
      NodeToFree,
    );

late final _NdrRpcSsDefaultFree = _rpcrt4.lookupFunction<
    Void Function(
  Pointer NodeToFree,
),
    void Function(
  Pointer NodeToFree,
)>('NdrRpcSsDefaultFree');

void NdrRpcSsDisableAllocate(
  Pointer<MIDL_STUB_MESSAGE> pMessage,
) =>
    _NdrRpcSsDisableAllocate(
      pMessage,
    );

late final _NdrRpcSsDisableAllocate = _rpcrt4.lookupFunction<
    Void Function(
  Pointer<MIDL_STUB_MESSAGE> pMessage,
),
    void Function(
  Pointer<MIDL_STUB_MESSAGE> pMessage,
)>('NdrRpcSsDisableAllocate');

void NdrRpcSsEnableAllocate(
  Pointer<MIDL_STUB_MESSAGE> pMessage,
) =>
    _NdrRpcSsEnableAllocate(
      pMessage,
    );

late final _NdrRpcSsEnableAllocate = _rpcrt4.lookupFunction<
    Void Function(
  Pointer<MIDL_STUB_MESSAGE> pMessage,
),
    void Function(
  Pointer<MIDL_STUB_MESSAGE> pMessage,
)>('NdrRpcSsEnableAllocate');

Pointer<Uint8> NdrSendReceive(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pBufferEnd,
) =>
    _NdrSendReceive(
      pStubMsg,
      pBufferEnd,
    );

late final _NdrSendReceive = _rpcrt4.lookupFunction<
    Pointer<Uint8> Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pBufferEnd,
),
    Pointer<Uint8> Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pBufferEnd,
)>('NdrSendReceive');

void NdrServerCall2(
  Pointer<RPC_MESSAGE> pRpcMsg,
) =>
    _NdrServerCall2(
      pRpcMsg,
    );

late final _NdrServerCall2 = _rpcrt4.lookupFunction<
    Void Function(
  Pointer<RPC_MESSAGE> pRpcMsg,
),
    void Function(
  Pointer<RPC_MESSAGE> pRpcMsg,
)>('NdrServerCall2');

void NdrServerCallAll(
  Pointer<RPC_MESSAGE> pRpcMsg,
) =>
    _NdrServerCallAll(
      pRpcMsg,
    );

late final _NdrServerCallAll = _rpcrt4.lookupFunction<
    Void Function(
  Pointer<RPC_MESSAGE> pRpcMsg,
),
    void Function(
  Pointer<RPC_MESSAGE> pRpcMsg,
)>('NdrServerCallAll');

void NdrServerCallNdr64(
  Pointer<RPC_MESSAGE> pRpcMsg,
) =>
    _NdrServerCallNdr64(
      pRpcMsg,
    );

late final _NdrServerCallNdr64 = _rpcrt4.lookupFunction<
    Void Function(
  Pointer<RPC_MESSAGE> pRpcMsg,
),
    void Function(
  Pointer<RPC_MESSAGE> pRpcMsg,
)>('NdrServerCallNdr64');

void NdrServerContextMarshall(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<NDR_SCONTEXT_1> ContextHandle,
  Pointer<NativeFunction<NDR_RUNDOWN>> RundownRoutine,
) =>
    _NdrServerContextMarshall(
      pStubMsg,
      ContextHandle,
      RundownRoutine,
    );

late final _NdrServerContextMarshall = _rpcrt4.lookupFunction<
    Void Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<NDR_SCONTEXT_1> ContextHandle,
  Pointer<NativeFunction<NDR_RUNDOWN>> RundownRoutine,
),
    void Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<NDR_SCONTEXT_1> ContextHandle,
  Pointer<NativeFunction<NDR_RUNDOWN>> RundownRoutine,
)>('NdrServerContextMarshall');

void NdrServerContextNewMarshall(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<NDR_SCONTEXT_1> ContextHandle,
  Pointer<NativeFunction<NDR_RUNDOWN>> RundownRoutine,
  Pointer<Uint8> pFormat,
) =>
    _NdrServerContextNewMarshall(
      pStubMsg,
      ContextHandle,
      RundownRoutine,
      pFormat,
    );

late final _NdrServerContextNewMarshall = _rpcrt4.lookupFunction<
    Void Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<NDR_SCONTEXT_1> ContextHandle,
  Pointer<NativeFunction<NDR_RUNDOWN>> RundownRoutine,
  Pointer<Uint8> pFormat,
),
    void Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<NDR_SCONTEXT_1> ContextHandle,
  Pointer<NativeFunction<NDR_RUNDOWN>> RundownRoutine,
  Pointer<Uint8> pFormat,
)>('NdrServerContextNewMarshall');

Pointer<NDR_SCONTEXT_1> NdrServerContextNewUnmarshall(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pFormat,
) =>
    _NdrServerContextNewUnmarshall(
      pStubMsg,
      pFormat,
    );

late final _NdrServerContextNewUnmarshall = _rpcrt4.lookupFunction<
    Pointer<NDR_SCONTEXT_1> Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pFormat,
),
    Pointer<NDR_SCONTEXT_1> Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pFormat,
)>('NdrServerContextNewUnmarshall');

Pointer<NDR_SCONTEXT_1> NdrServerContextUnmarshall(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
) =>
    _NdrServerContextUnmarshall(
      pStubMsg,
    );

late final _NdrServerContextUnmarshall = _rpcrt4.lookupFunction<
    Pointer<NDR_SCONTEXT_1> Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
),
    Pointer<NDR_SCONTEXT_1> Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
)>('NdrServerContextUnmarshall');

Pointer<Uint8> NdrServerInitialize(
  Pointer<RPC_MESSAGE> pRpcMsg,
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<MIDL_STUB_DESC> pStubDescriptor,
) =>
    _NdrServerInitialize(
      pRpcMsg,
      pStubMsg,
      pStubDescriptor,
    );

late final _NdrServerInitialize = _rpcrt4.lookupFunction<
    Pointer<Uint8> Function(
  Pointer<RPC_MESSAGE> pRpcMsg,
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<MIDL_STUB_DESC> pStubDescriptor,
),
    Pointer<Uint8> Function(
  Pointer<RPC_MESSAGE> pRpcMsg,
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<MIDL_STUB_DESC> pStubDescriptor,
)>('NdrServerInitialize');

void NdrServerInitializeMarshall(
  Pointer<RPC_MESSAGE> pRpcMsg,
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
) =>
    _NdrServerInitializeMarshall(
      pRpcMsg,
      pStubMsg,
    );

late final _NdrServerInitializeMarshall = _rpcrt4.lookupFunction<
    Void Function(
  Pointer<RPC_MESSAGE> pRpcMsg,
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
),
    void Function(
  Pointer<RPC_MESSAGE> pRpcMsg,
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
)>('NdrServerInitializeMarshall');

Pointer<Uint8> NdrServerInitializeNew(
  Pointer<RPC_MESSAGE> pRpcMsg,
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<MIDL_STUB_DESC> pStubDescriptor,
) =>
    _NdrServerInitializeNew(
      pRpcMsg,
      pStubMsg,
      pStubDescriptor,
    );

late final _NdrServerInitializeNew = _rpcrt4.lookupFunction<
    Pointer<Uint8> Function(
  Pointer<RPC_MESSAGE> pRpcMsg,
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<MIDL_STUB_DESC> pStubDescriptor,
),
    Pointer<Uint8> Function(
  Pointer<RPC_MESSAGE> pRpcMsg,
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<MIDL_STUB_DESC> pStubDescriptor,
)>('NdrServerInitializeNew');

void NdrServerInitializePartial(
  Pointer<RPC_MESSAGE> pRpcMsg,
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<MIDL_STUB_DESC> pStubDescriptor,
  int RequestedBufferSize,
) =>
    _NdrServerInitializePartial(
      pRpcMsg,
      pStubMsg,
      pStubDescriptor,
      RequestedBufferSize,
    );

late final _NdrServerInitializePartial = _rpcrt4.lookupFunction<
    Void Function(
  Pointer<RPC_MESSAGE> pRpcMsg,
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<MIDL_STUB_DESC> pStubDescriptor,
  Uint32 RequestedBufferSize,
),
    void Function(
  Pointer<RPC_MESSAGE> pRpcMsg,
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<MIDL_STUB_DESC> pStubDescriptor,
  int RequestedBufferSize,
)>('NdrServerInitializePartial');

Pointer<Uint8> NdrServerInitializeUnmarshall(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<MIDL_STUB_DESC> pStubDescriptor,
  Pointer<RPC_MESSAGE> pRpcMsg,
) =>
    _NdrServerInitializeUnmarshall(
      pStubMsg,
      pStubDescriptor,
      pRpcMsg,
    );

late final _NdrServerInitializeUnmarshall = _rpcrt4.lookupFunction<
    Pointer<Uint8> Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<MIDL_STUB_DESC> pStubDescriptor,
  Pointer<RPC_MESSAGE> pRpcMsg,
),
    Pointer<Uint8> Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<MIDL_STUB_DESC> pStubDescriptor,
  Pointer<RPC_MESSAGE> pRpcMsg,
)>('NdrServerInitializeUnmarshall');

void NdrSimpleStructBufferSize(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
) =>
    _NdrSimpleStructBufferSize(
      pStubMsg,
      pMemory,
      pFormat,
    );

late final _NdrSimpleStructBufferSize = _rpcrt4.lookupFunction<
    Void Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
),
    void Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
)>('NdrSimpleStructBufferSize');

void NdrSimpleStructFree(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
) =>
    _NdrSimpleStructFree(
      pStubMsg,
      pMemory,
      pFormat,
    );

late final _NdrSimpleStructFree = _rpcrt4.lookupFunction<
    Void Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
),
    void Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
)>('NdrSimpleStructFree');

Pointer<Uint8> NdrSimpleStructMarshall(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
) =>
    _NdrSimpleStructMarshall(
      pStubMsg,
      pMemory,
      pFormat,
    );

late final _NdrSimpleStructMarshall = _rpcrt4.lookupFunction<
    Pointer<Uint8> Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
),
    Pointer<Uint8> Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
)>('NdrSimpleStructMarshall');

int NdrSimpleStructMemorySize(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pFormat,
) =>
    _NdrSimpleStructMemorySize(
      pStubMsg,
      pFormat,
    );

late final _NdrSimpleStructMemorySize = _rpcrt4.lookupFunction<
    Uint32 Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pFormat,
),
    int Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pFormat,
)>('NdrSimpleStructMemorySize');

Pointer<Uint8> NdrSimpleStructUnmarshall(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Pointer<Uint8>> ppMemory,
  Pointer<Uint8> pFormat,
  int fMustAlloc,
) =>
    _NdrSimpleStructUnmarshall(
      pStubMsg,
      ppMemory,
      pFormat,
      fMustAlloc,
    );

late final _NdrSimpleStructUnmarshall = _rpcrt4.lookupFunction<
    Pointer<Uint8> Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Pointer<Uint8>> ppMemory,
  Pointer<Uint8> pFormat,
  Uint8 fMustAlloc,
),
    Pointer<Uint8> Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Pointer<Uint8>> ppMemory,
  Pointer<Uint8> pFormat,
  int fMustAlloc,
)>('NdrSimpleStructUnmarshall');

void NdrSimpleTypeMarshall(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  int FormatChar,
) =>
    _NdrSimpleTypeMarshall(
      pStubMsg,
      pMemory,
      FormatChar,
    );

late final _NdrSimpleTypeMarshall = _rpcrt4.lookupFunction<
    Void Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Uint8 FormatChar,
),
    void Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  int FormatChar,
)>('NdrSimpleTypeMarshall');

void NdrSimpleTypeUnmarshall(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  int FormatChar,
) =>
    _NdrSimpleTypeUnmarshall(
      pStubMsg,
      pMemory,
      FormatChar,
    );

late final _NdrSimpleTypeUnmarshall = _rpcrt4.lookupFunction<
    Void Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Uint8 FormatChar,
),
    void Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  int FormatChar,
)>('NdrSimpleTypeUnmarshall');

int NdrStubCall2(
  Pointer pThis,
  Pointer pChannel,
  Pointer<RPC_MESSAGE> pRpcMsg,
  Pointer<Uint32> pdwStubPhase,
) =>
    _NdrStubCall2(
      pThis,
      pChannel,
      pRpcMsg,
      pdwStubPhase,
    );

late final _NdrStubCall2 = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer pThis,
  Pointer pChannel,
  Pointer<RPC_MESSAGE> pRpcMsg,
  Pointer<Uint32> pdwStubPhase,
),
    int Function(
  Pointer pThis,
  Pointer pChannel,
  Pointer<RPC_MESSAGE> pRpcMsg,
  Pointer<Uint32> pdwStubPhase,
)>('NdrStubCall2');

int NdrStubCall3(
  Pointer pThis,
  Pointer pChannel,
  Pointer<RPC_MESSAGE> pRpcMsg,
  Pointer<Uint32> pdwStubPhase,
) =>
    _NdrStubCall3(
      pThis,
      pChannel,
      pRpcMsg,
      pdwStubPhase,
    );

late final _NdrStubCall3 = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer pThis,
  Pointer pChannel,
  Pointer<RPC_MESSAGE> pRpcMsg,
  Pointer<Uint32> pdwStubPhase,
),
    int Function(
  Pointer pThis,
  Pointer pChannel,
  Pointer<RPC_MESSAGE> pRpcMsg,
  Pointer<Uint32> pdwStubPhase,
)>('NdrStubCall3');

void NdrUserMarshalBufferSize(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
) =>
    _NdrUserMarshalBufferSize(
      pStubMsg,
      pMemory,
      pFormat,
    );

late final _NdrUserMarshalBufferSize = _rpcrt4.lookupFunction<
    Void Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
),
    void Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
)>('NdrUserMarshalBufferSize');

void NdrUserMarshalFree(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
) =>
    _NdrUserMarshalFree(
      pStubMsg,
      pMemory,
      pFormat,
    );

late final _NdrUserMarshalFree = _rpcrt4.lookupFunction<
    Void Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
),
    void Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
)>('NdrUserMarshalFree');

Pointer<Uint8> NdrUserMarshalMarshall(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
) =>
    _NdrUserMarshalMarshall(
      pStubMsg,
      pMemory,
      pFormat,
    );

late final _NdrUserMarshalMarshall = _rpcrt4.lookupFunction<
    Pointer<Uint8> Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
),
    Pointer<Uint8> Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
)>('NdrUserMarshalMarshall');

int NdrUserMarshalMemorySize(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pFormat,
) =>
    _NdrUserMarshalMemorySize(
      pStubMsg,
      pFormat,
    );

late final _NdrUserMarshalMemorySize = _rpcrt4.lookupFunction<
    Uint32 Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pFormat,
),
    int Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pFormat,
)>('NdrUserMarshalMemorySize');

Pointer<Uint8> NdrUserMarshalSimpleTypeConvert(
  Pointer<Uint32> pFlags,
  Pointer<Uint8> pBuffer,
  int FormatChar,
) =>
    _NdrUserMarshalSimpleTypeConvert(
      pFlags,
      pBuffer,
      FormatChar,
    );

late final _NdrUserMarshalSimpleTypeConvert = _rpcrt4.lookupFunction<
    Pointer<Uint8> Function(
  Pointer<Uint32> pFlags,
  Pointer<Uint8> pBuffer,
  Uint8 FormatChar,
),
    Pointer<Uint8> Function(
  Pointer<Uint32> pFlags,
  Pointer<Uint8> pBuffer,
  int FormatChar,
)>('NdrUserMarshalSimpleTypeConvert');

Pointer<Uint8> NdrUserMarshalUnmarshall(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Pointer<Uint8>> ppMemory,
  Pointer<Uint8> pFormat,
  int fMustAlloc,
) =>
    _NdrUserMarshalUnmarshall(
      pStubMsg,
      ppMemory,
      pFormat,
      fMustAlloc,
    );

late final _NdrUserMarshalUnmarshall = _rpcrt4.lookupFunction<
    Pointer<Uint8> Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Pointer<Uint8>> ppMemory,
  Pointer<Uint8> pFormat,
  Uint8 fMustAlloc,
),
    Pointer<Uint8> Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Pointer<Uint8>> ppMemory,
  Pointer<Uint8> pFormat,
  int fMustAlloc,
)>('NdrUserMarshalUnmarshall');

void NdrVaryingArrayBufferSize(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
) =>
    _NdrVaryingArrayBufferSize(
      pStubMsg,
      pMemory,
      pFormat,
    );

late final _NdrVaryingArrayBufferSize = _rpcrt4.lookupFunction<
    Void Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
),
    void Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
)>('NdrVaryingArrayBufferSize');

void NdrVaryingArrayFree(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
) =>
    _NdrVaryingArrayFree(
      pStubMsg,
      pMemory,
      pFormat,
    );

late final _NdrVaryingArrayFree = _rpcrt4.lookupFunction<
    Void Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
),
    void Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
)>('NdrVaryingArrayFree');

Pointer<Uint8> NdrVaryingArrayMarshall(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
) =>
    _NdrVaryingArrayMarshall(
      pStubMsg,
      pMemory,
      pFormat,
    );

late final _NdrVaryingArrayMarshall = _rpcrt4.lookupFunction<
    Pointer<Uint8> Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
),
    Pointer<Uint8> Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
)>('NdrVaryingArrayMarshall');

int NdrVaryingArrayMemorySize(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pFormat,
) =>
    _NdrVaryingArrayMemorySize(
      pStubMsg,
      pFormat,
    );

late final _NdrVaryingArrayMemorySize = _rpcrt4.lookupFunction<
    Uint32 Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pFormat,
),
    int Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pFormat,
)>('NdrVaryingArrayMemorySize');

Pointer<Uint8> NdrVaryingArrayUnmarshall(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Pointer<Uint8>> ppMemory,
  Pointer<Uint8> pFormat,
  int fMustAlloc,
) =>
    _NdrVaryingArrayUnmarshall(
      pStubMsg,
      ppMemory,
      pFormat,
      fMustAlloc,
    );

late final _NdrVaryingArrayUnmarshall = _rpcrt4.lookupFunction<
    Pointer<Uint8> Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Pointer<Uint8>> ppMemory,
  Pointer<Uint8> pFormat,
  Uint8 fMustAlloc,
),
    Pointer<Uint8> Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Pointer<Uint8>> ppMemory,
  Pointer<Uint8> pFormat,
  int fMustAlloc,
)>('NdrVaryingArrayUnmarshall');

void NdrXmitOrRepAsBufferSize(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
) =>
    _NdrXmitOrRepAsBufferSize(
      pStubMsg,
      pMemory,
      pFormat,
    );

late final _NdrXmitOrRepAsBufferSize = _rpcrt4.lookupFunction<
    Void Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
),
    void Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
)>('NdrXmitOrRepAsBufferSize');

void NdrXmitOrRepAsFree(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
) =>
    _NdrXmitOrRepAsFree(
      pStubMsg,
      pMemory,
      pFormat,
    );

late final _NdrXmitOrRepAsFree = _rpcrt4.lookupFunction<
    Void Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
),
    void Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
)>('NdrXmitOrRepAsFree');

Pointer<Uint8> NdrXmitOrRepAsMarshall(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
) =>
    _NdrXmitOrRepAsMarshall(
      pStubMsg,
      pMemory,
      pFormat,
    );

late final _NdrXmitOrRepAsMarshall = _rpcrt4.lookupFunction<
    Pointer<Uint8> Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
),
    Pointer<Uint8> Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pMemory,
  Pointer<Uint8> pFormat,
)>('NdrXmitOrRepAsMarshall');

int NdrXmitOrRepAsMemorySize(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pFormat,
) =>
    _NdrXmitOrRepAsMemorySize(
      pStubMsg,
      pFormat,
    );

late final _NdrXmitOrRepAsMemorySize = _rpcrt4.lookupFunction<
    Uint32 Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pFormat,
),
    int Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Uint8> pFormat,
)>('NdrXmitOrRepAsMemorySize');

Pointer<Uint8> NdrXmitOrRepAsUnmarshall(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Pointer<Uint8>> ppMemory,
  Pointer<Uint8> pFormat,
  int fMustAlloc,
) =>
    _NdrXmitOrRepAsUnmarshall(
      pStubMsg,
      ppMemory,
      pFormat,
      fMustAlloc,
    );

late final _NdrXmitOrRepAsUnmarshall = _rpcrt4.lookupFunction<
    Pointer<Uint8> Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Pointer<Uint8>> ppMemory,
  Pointer<Uint8> pFormat,
  Uint8 fMustAlloc,
),
    Pointer<Uint8> Function(
  Pointer<MIDL_STUB_MESSAGE> pStubMsg,
  Pointer<Pointer<Uint8>> ppMemory,
  Pointer<Uint8> pFormat,
  int fMustAlloc,
)>('NdrXmitOrRepAsUnmarshall');

int RpcAsyncAbortCall(
  Pointer<RPC_ASYNC_STATE> pAsync,
  int ExceptionCode,
) =>
    _RpcAsyncAbortCall(
      pAsync,
      ExceptionCode,
    );

late final _RpcAsyncAbortCall = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer<RPC_ASYNC_STATE> pAsync,
  Uint32 ExceptionCode,
),
    int Function(
  Pointer<RPC_ASYNC_STATE> pAsync,
  int ExceptionCode,
)>('RpcAsyncAbortCall');

int RpcAsyncCancelCall(
  Pointer<RPC_ASYNC_STATE> pAsync,
  int fAbort,
) =>
    _RpcAsyncCancelCall(
      pAsync,
      fAbort,
    );

late final _RpcAsyncCancelCall = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer<RPC_ASYNC_STATE> pAsync,
  Int32 fAbort,
),
    int Function(
  Pointer<RPC_ASYNC_STATE> pAsync,
  int fAbort,
)>('RpcAsyncCancelCall');

int RpcAsyncCompleteCall(
  Pointer<RPC_ASYNC_STATE> pAsync,
  Pointer Reply,
) =>
    _RpcAsyncCompleteCall(
      pAsync,
      Reply,
    );

late final _RpcAsyncCompleteCall = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer<RPC_ASYNC_STATE> pAsync,
  Pointer Reply,
),
    int Function(
  Pointer<RPC_ASYNC_STATE> pAsync,
  Pointer Reply,
)>('RpcAsyncCompleteCall');

int RpcAsyncGetCallStatus(
  Pointer<RPC_ASYNC_STATE> pAsync,
) =>
    _RpcAsyncGetCallStatus(
      pAsync,
    );

late final _RpcAsyncGetCallStatus = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer<RPC_ASYNC_STATE> pAsync,
),
    int Function(
  Pointer<RPC_ASYNC_STATE> pAsync,
)>('RpcAsyncGetCallStatus');

int RpcAsyncInitializeHandle(
  Pointer<RPC_ASYNC_STATE> pAsync,
  int Size,
) =>
    _RpcAsyncInitializeHandle(
      pAsync,
      Size,
    );

late final _RpcAsyncInitializeHandle = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer<RPC_ASYNC_STATE> pAsync,
  Uint32 Size,
),
    int Function(
  Pointer<RPC_ASYNC_STATE> pAsync,
  int Size,
)>('RpcAsyncInitializeHandle');

int RpcAsyncRegisterInfo(
  Pointer<RPC_ASYNC_STATE> pAsync,
) =>
    _RpcAsyncRegisterInfo(
      pAsync,
    );

late final _RpcAsyncRegisterInfo = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer<RPC_ASYNC_STATE> pAsync,
),
    int Function(
  Pointer<RPC_ASYNC_STATE> pAsync,
)>('RpcAsyncRegisterInfo');

int RpcBindingBind(
  Pointer<RPC_ASYNC_STATE> pAsync,
  Pointer Binding,
  Pointer IfSpec,
) =>
    _RpcBindingBind(
      pAsync,
      Binding,
      IfSpec,
    );

late final _RpcBindingBind = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer<RPC_ASYNC_STATE> pAsync,
  Pointer Binding,
  Pointer IfSpec,
),
    int Function(
  Pointer<RPC_ASYNC_STATE> pAsync,
  Pointer Binding,
  Pointer IfSpec,
)>('RpcBindingBind');

int RpcBindingCopy(
  Pointer SourceBinding,
  Pointer<Pointer> DestinationBinding,
) =>
    _RpcBindingCopy(
      SourceBinding,
      DestinationBinding,
    );

late final _RpcBindingCopy = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer SourceBinding,
  Pointer<Pointer> DestinationBinding,
),
    int Function(
  Pointer SourceBinding,
  Pointer<Pointer> DestinationBinding,
)>('RpcBindingCopy');

int RpcBindingCreate(
  Pointer<RPC_BINDING_HANDLE_TEMPLATE_V1_> Template,
  Pointer<RPC_BINDING_HANDLE_SECURITY_V1_> Security,
  Pointer<RPC_BINDING_HANDLE_OPTIONS_V1> Options,
  Pointer<Pointer> Binding,
) =>
    _RpcBindingCreate(
      Template,
      Security,
      Options,
      Binding,
    );

late final _RpcBindingCreate = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer<RPC_BINDING_HANDLE_TEMPLATE_V1_> Template,
  Pointer<RPC_BINDING_HANDLE_SECURITY_V1_> Security,
  Pointer<RPC_BINDING_HANDLE_OPTIONS_V1> Options,
  Pointer<Pointer> Binding,
),
    int Function(
  Pointer<RPC_BINDING_HANDLE_TEMPLATE_V1_> Template,
  Pointer<RPC_BINDING_HANDLE_SECURITY_V1_> Security,
  Pointer<RPC_BINDING_HANDLE_OPTIONS_V1> Options,
  Pointer<Pointer> Binding,
)>('RpcBindingCreateW');

int RpcBindingFree(
  Pointer<Pointer> Binding,
) =>
    _RpcBindingFree(
      Binding,
    );

late final _RpcBindingFree = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer<Pointer> Binding,
),
    int Function(
  Pointer<Pointer> Binding,
)>('RpcBindingFree');

int RpcBindingFromStringBinding(
  Pointer<Uint16> StringBinding,
  Pointer<Pointer> Binding,
) =>
    _RpcBindingFromStringBinding(
      StringBinding,
      Binding,
    );

late final _RpcBindingFromStringBinding = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer<Uint16> StringBinding,
  Pointer<Pointer> Binding,
),
    int Function(
  Pointer<Uint16> StringBinding,
  Pointer<Pointer> Binding,
)>('RpcBindingFromStringBindingW');

int RpcBindingInqAuthClientEx(
  Pointer ClientBinding,
  Pointer<Pointer> Privs,
  Pointer<Pointer<Uint16>> ServerPrincName,
  Pointer<Uint32> AuthnLevel,
  Pointer<Uint32> AuthnSvc,
  Pointer<Uint32> AuthzSvc,
  int Flags,
) =>
    _RpcBindingInqAuthClientEx(
      ClientBinding,
      Privs,
      ServerPrincName,
      AuthnLevel,
      AuthnSvc,
      AuthzSvc,
      Flags,
    );

late final _RpcBindingInqAuthClientEx = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer ClientBinding,
  Pointer<Pointer> Privs,
  Pointer<Pointer<Uint16>> ServerPrincName,
  Pointer<Uint32> AuthnLevel,
  Pointer<Uint32> AuthnSvc,
  Pointer<Uint32> AuthzSvc,
  Uint32 Flags,
),
    int Function(
  Pointer ClientBinding,
  Pointer<Pointer> Privs,
  Pointer<Pointer<Uint16>> ServerPrincName,
  Pointer<Uint32> AuthnLevel,
  Pointer<Uint32> AuthnSvc,
  Pointer<Uint32> AuthzSvc,
  int Flags,
)>('RpcBindingInqAuthClientExW');

int RpcBindingInqAuthClient(
  Pointer ClientBinding,
  Pointer<Pointer> Privs,
  Pointer<Pointer<Uint16>> ServerPrincName,
  Pointer<Uint32> AuthnLevel,
  Pointer<Uint32> AuthnSvc,
  Pointer<Uint32> AuthzSvc,
) =>
    _RpcBindingInqAuthClient(
      ClientBinding,
      Privs,
      ServerPrincName,
      AuthnLevel,
      AuthnSvc,
      AuthzSvc,
    );

late final _RpcBindingInqAuthClient = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer ClientBinding,
  Pointer<Pointer> Privs,
  Pointer<Pointer<Uint16>> ServerPrincName,
  Pointer<Uint32> AuthnLevel,
  Pointer<Uint32> AuthnSvc,
  Pointer<Uint32> AuthzSvc,
),
    int Function(
  Pointer ClientBinding,
  Pointer<Pointer> Privs,
  Pointer<Pointer<Uint16>> ServerPrincName,
  Pointer<Uint32> AuthnLevel,
  Pointer<Uint32> AuthnSvc,
  Pointer<Uint32> AuthzSvc,
)>('RpcBindingInqAuthClientW');

int RpcBindingInqAuthInfoEx(
  Pointer Binding,
  Pointer<Pointer<Uint16>> ServerPrincName,
  Pointer<Uint32> AuthnLevel,
  Pointer<Uint32> AuthnSvc,
  Pointer<Pointer> AuthIdentity,
  Pointer<Uint32> AuthzSvc,
  int RpcQosVersion,
  Pointer<RPC_SECURITY_QOS> SecurityQOS,
) =>
    _RpcBindingInqAuthInfoEx(
      Binding,
      ServerPrincName,
      AuthnLevel,
      AuthnSvc,
      AuthIdentity,
      AuthzSvc,
      RpcQosVersion,
      SecurityQOS,
    );

late final _RpcBindingInqAuthInfoEx = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer Binding,
  Pointer<Pointer<Uint16>> ServerPrincName,
  Pointer<Uint32> AuthnLevel,
  Pointer<Uint32> AuthnSvc,
  Pointer<Pointer> AuthIdentity,
  Pointer<Uint32> AuthzSvc,
  Uint32 RpcQosVersion,
  Pointer<RPC_SECURITY_QOS> SecurityQOS,
),
    int Function(
  Pointer Binding,
  Pointer<Pointer<Uint16>> ServerPrincName,
  Pointer<Uint32> AuthnLevel,
  Pointer<Uint32> AuthnSvc,
  Pointer<Pointer> AuthIdentity,
  Pointer<Uint32> AuthzSvc,
  int RpcQosVersion,
  Pointer<RPC_SECURITY_QOS> SecurityQOS,
)>('RpcBindingInqAuthInfoExW');

int RpcBindingInqAuthInfo(
  Pointer Binding,
  Pointer<Pointer<Uint16>> ServerPrincName,
  Pointer<Uint32> AuthnLevel,
  Pointer<Uint32> AuthnSvc,
  Pointer<Pointer> AuthIdentity,
  Pointer<Uint32> AuthzSvc,
) =>
    _RpcBindingInqAuthInfo(
      Binding,
      ServerPrincName,
      AuthnLevel,
      AuthnSvc,
      AuthIdentity,
      AuthzSvc,
    );

late final _RpcBindingInqAuthInfo = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer Binding,
  Pointer<Pointer<Uint16>> ServerPrincName,
  Pointer<Uint32> AuthnLevel,
  Pointer<Uint32> AuthnSvc,
  Pointer<Pointer> AuthIdentity,
  Pointer<Uint32> AuthzSvc,
),
    int Function(
  Pointer Binding,
  Pointer<Pointer<Uint16>> ServerPrincName,
  Pointer<Uint32> AuthnLevel,
  Pointer<Uint32> AuthnSvc,
  Pointer<Pointer> AuthIdentity,
  Pointer<Uint32> AuthzSvc,
)>('RpcBindingInqAuthInfoW');

int RpcBindingInqMaxCalls(
  Pointer Binding,
  Pointer<Uint32> MaxCalls,
) =>
    _RpcBindingInqMaxCalls(
      Binding,
      MaxCalls,
    );

late final _RpcBindingInqMaxCalls = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer Binding,
  Pointer<Uint32> MaxCalls,
),
    int Function(
  Pointer Binding,
  Pointer<Uint32> MaxCalls,
)>('RpcBindingInqMaxCalls');

int RpcBindingInqObject(
  Pointer Binding,
  Pointer<GUID> ObjectUuid,
) =>
    _RpcBindingInqObject(
      Binding,
      ObjectUuid,
    );

late final _RpcBindingInqObject = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer Binding,
  Pointer<GUID> ObjectUuid,
),
    int Function(
  Pointer Binding,
  Pointer<GUID> ObjectUuid,
)>('RpcBindingInqObject');

int RpcBindingInqOption(
  Pointer hBinding,
  int option,
  Pointer<IntPtr> pOptionValue,
) =>
    _RpcBindingInqOption(
      hBinding,
      option,
      pOptionValue,
    );

late final _RpcBindingInqOption = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer hBinding,
  Uint32 option,
  Pointer<IntPtr> pOptionValue,
),
    int Function(
  Pointer hBinding,
  int option,
  Pointer<IntPtr> pOptionValue,
)>('RpcBindingInqOption');

int RpcBindingReset(
  Pointer Binding,
) =>
    _RpcBindingReset(
      Binding,
    );

late final _RpcBindingReset = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer Binding,
),
    int Function(
  Pointer Binding,
)>('RpcBindingReset');

int RpcBindingServerFromClient(
  Pointer ClientBinding,
  Pointer<Pointer> ServerBinding,
) =>
    _RpcBindingServerFromClient(
      ClientBinding,
      ServerBinding,
    );

late final _RpcBindingServerFromClient = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer ClientBinding,
  Pointer<Pointer> ServerBinding,
),
    int Function(
  Pointer ClientBinding,
  Pointer<Pointer> ServerBinding,
)>('RpcBindingServerFromClient');

int RpcBindingSetAuthInfoEx(
  Pointer Binding,
  Pointer<Uint16> ServerPrincName,
  int AuthnLevel,
  int AuthnSvc,
  Pointer AuthIdentity,
  int AuthzSvc,
  Pointer<RPC_SECURITY_QOS> SecurityQOS,
) =>
    _RpcBindingSetAuthInfoEx(
      Binding,
      ServerPrincName,
      AuthnLevel,
      AuthnSvc,
      AuthIdentity,
      AuthzSvc,
      SecurityQOS,
    );

late final _RpcBindingSetAuthInfoEx = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer Binding,
  Pointer<Uint16> ServerPrincName,
  Uint32 AuthnLevel,
  Uint32 AuthnSvc,
  Pointer AuthIdentity,
  Uint32 AuthzSvc,
  Pointer<RPC_SECURITY_QOS> SecurityQOS,
),
    int Function(
  Pointer Binding,
  Pointer<Uint16> ServerPrincName,
  int AuthnLevel,
  int AuthnSvc,
  Pointer AuthIdentity,
  int AuthzSvc,
  Pointer<RPC_SECURITY_QOS> SecurityQOS,
)>('RpcBindingSetAuthInfoExW');

int RpcBindingSetAuthInfo(
  Pointer Binding,
  Pointer<Uint16> ServerPrincName,
  int AuthnLevel,
  int AuthnSvc,
  Pointer AuthIdentity,
  int AuthzSvc,
) =>
    _RpcBindingSetAuthInfo(
      Binding,
      ServerPrincName,
      AuthnLevel,
      AuthnSvc,
      AuthIdentity,
      AuthzSvc,
    );

late final _RpcBindingSetAuthInfo = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer Binding,
  Pointer<Uint16> ServerPrincName,
  Uint32 AuthnLevel,
  Uint32 AuthnSvc,
  Pointer AuthIdentity,
  Uint32 AuthzSvc,
),
    int Function(
  Pointer Binding,
  Pointer<Uint16> ServerPrincName,
  int AuthnLevel,
  int AuthnSvc,
  Pointer AuthIdentity,
  int AuthzSvc,
)>('RpcBindingSetAuthInfoW');

int RpcBindingSetObject(
  Pointer Binding,
  Pointer<GUID> ObjectUuid,
) =>
    _RpcBindingSetObject(
      Binding,
      ObjectUuid,
    );

late final _RpcBindingSetObject = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer Binding,
  Pointer<GUID> ObjectUuid,
),
    int Function(
  Pointer Binding,
  Pointer<GUID> ObjectUuid,
)>('RpcBindingSetObject');

int RpcBindingSetOption(
  Pointer hBinding,
  int option,
  int optionValue,
) =>
    _RpcBindingSetOption(
      hBinding,
      option,
      optionValue,
    );

late final _RpcBindingSetOption = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer hBinding,
  Uint32 option,
  IntPtr optionValue,
),
    int Function(
  Pointer hBinding,
  int option,
  int optionValue,
)>('RpcBindingSetOption');

int RpcBindingToStringBinding(
  Pointer Binding,
  Pointer<Pointer<Uint16>> StringBinding,
) =>
    _RpcBindingToStringBinding(
      Binding,
      StringBinding,
    );

late final _RpcBindingToStringBinding = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer Binding,
  Pointer<Pointer<Uint16>> StringBinding,
),
    int Function(
  Pointer Binding,
  Pointer<Pointer<Uint16>> StringBinding,
)>('RpcBindingToStringBindingW');

int RpcBindingUnbind(
  Pointer Binding,
) =>
    _RpcBindingUnbind(
      Binding,
    );

late final _RpcBindingUnbind = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer Binding,
),
    int Function(
  Pointer Binding,
)>('RpcBindingUnbind');

int RpcBindingVectorFree(
  Pointer<Pointer<RPC_BINDING_VECTOR>> BindingVector,
) =>
    _RpcBindingVectorFree(
      BindingVector,
    );

late final _RpcBindingVectorFree = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer<Pointer<RPC_BINDING_VECTOR>> BindingVector,
),
    int Function(
  Pointer<Pointer<RPC_BINDING_VECTOR>> BindingVector,
)>('RpcBindingVectorFree');

int RpcCancelThread(
  Pointer Thread,
) =>
    _RpcCancelThread(
      Thread,
    );

late final _RpcCancelThread = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer Thread,
),
    int Function(
  Pointer Thread,
)>('RpcCancelThread');

int RpcCancelThreadEx(
  Pointer Thread,
  int Timeout,
) =>
    _RpcCancelThreadEx(
      Thread,
      Timeout,
    );

late final _RpcCancelThreadEx = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer Thread,
  Int32 Timeout,
),
    int Function(
  Pointer Thread,
  int Timeout,
)>('RpcCancelThreadEx');

int RpcCertGeneratePrincipalName(
  Pointer<CERT_CONTEXT> Context,
  int Flags,
  Pointer<Pointer<Uint16>> pBuffer,
) =>
    _RpcCertGeneratePrincipalName(
      Context,
      Flags,
      pBuffer,
    );

late final _RpcCertGeneratePrincipalName = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer<CERT_CONTEXT> Context,
  Uint32 Flags,
  Pointer<Pointer<Uint16>> pBuffer,
),
    int Function(
  Pointer<CERT_CONTEXT> Context,
  int Flags,
  Pointer<Pointer<Uint16>> pBuffer,
)>('RpcCertGeneratePrincipalNameW');

int RpcEpRegisterNoReplace(
  Pointer IfSpec,
  Pointer<RPC_BINDING_VECTOR> BindingVector,
  Pointer<UUID_VECTOR> UuidVector,
  Pointer<Uint16> Annotation,
) =>
    _RpcEpRegisterNoReplace(
      IfSpec,
      BindingVector,
      UuidVector,
      Annotation,
    );

late final _RpcEpRegisterNoReplace = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer IfSpec,
  Pointer<RPC_BINDING_VECTOR> BindingVector,
  Pointer<UUID_VECTOR> UuidVector,
  Pointer<Uint16> Annotation,
),
    int Function(
  Pointer IfSpec,
  Pointer<RPC_BINDING_VECTOR> BindingVector,
  Pointer<UUID_VECTOR> UuidVector,
  Pointer<Uint16> Annotation,
)>('RpcEpRegisterNoReplaceW');

int RpcEpRegister(
  Pointer IfSpec,
  Pointer<RPC_BINDING_VECTOR> BindingVector,
  Pointer<UUID_VECTOR> UuidVector,
  Pointer<Uint16> Annotation,
) =>
    _RpcEpRegister(
      IfSpec,
      BindingVector,
      UuidVector,
      Annotation,
    );

late final _RpcEpRegister = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer IfSpec,
  Pointer<RPC_BINDING_VECTOR> BindingVector,
  Pointer<UUID_VECTOR> UuidVector,
  Pointer<Uint16> Annotation,
),
    int Function(
  Pointer IfSpec,
  Pointer<RPC_BINDING_VECTOR> BindingVector,
  Pointer<UUID_VECTOR> UuidVector,
  Pointer<Uint16> Annotation,
)>('RpcEpRegisterW');

int RpcEpResolveBinding(
  Pointer Binding,
  Pointer IfSpec,
) =>
    _RpcEpResolveBinding(
      Binding,
      IfSpec,
    );

late final _RpcEpResolveBinding = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer Binding,
  Pointer IfSpec,
),
    int Function(
  Pointer Binding,
  Pointer IfSpec,
)>('RpcEpResolveBinding');

int RpcEpUnregister(
  Pointer IfSpec,
  Pointer<RPC_BINDING_VECTOR> BindingVector,
  Pointer<UUID_VECTOR> UuidVector,
) =>
    _RpcEpUnregister(
      IfSpec,
      BindingVector,
      UuidVector,
    );

late final _RpcEpUnregister = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer IfSpec,
  Pointer<RPC_BINDING_VECTOR> BindingVector,
  Pointer<UUID_VECTOR> UuidVector,
),
    int Function(
  Pointer IfSpec,
  Pointer<RPC_BINDING_VECTOR> BindingVector,
  Pointer<UUID_VECTOR> UuidVector,
)>('RpcEpUnregister');

int RpcErrorAddRecord(
  Pointer<RPC_EXTENDED_ERROR_INFO> ErrorInfo,
) =>
    _RpcErrorAddRecord(
      ErrorInfo,
    );

late final _RpcErrorAddRecord = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer<RPC_EXTENDED_ERROR_INFO> ErrorInfo,
),
    int Function(
  Pointer<RPC_EXTENDED_ERROR_INFO> ErrorInfo,
)>('RpcErrorAddRecord');

void RpcErrorClearInformation() => _RpcErrorClearInformation();

late final _RpcErrorClearInformation =
    _rpcrt4.lookupFunction<Void Function(), void Function()>(
        'RpcErrorClearInformation');

int RpcErrorEndEnumeration(
  Pointer<RPC_ERROR_ENUM_HANDLE> EnumHandle,
) =>
    _RpcErrorEndEnumeration(
      EnumHandle,
    );

late final _RpcErrorEndEnumeration = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer<RPC_ERROR_ENUM_HANDLE> EnumHandle,
),
    int Function(
  Pointer<RPC_ERROR_ENUM_HANDLE> EnumHandle,
)>('RpcErrorEndEnumeration');

int RpcErrorGetNextRecord(
  Pointer<RPC_ERROR_ENUM_HANDLE> EnumHandle,
  int CopyStrings,
  Pointer<RPC_EXTENDED_ERROR_INFO> ErrorInfo,
) =>
    _RpcErrorGetNextRecord(
      EnumHandle,
      CopyStrings,
      ErrorInfo,
    );

late final _RpcErrorGetNextRecord = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer<RPC_ERROR_ENUM_HANDLE> EnumHandle,
  Int32 CopyStrings,
  Pointer<RPC_EXTENDED_ERROR_INFO> ErrorInfo,
),
    int Function(
  Pointer<RPC_ERROR_ENUM_HANDLE> EnumHandle,
  int CopyStrings,
  Pointer<RPC_EXTENDED_ERROR_INFO> ErrorInfo,
)>('RpcErrorGetNextRecord');

int RpcErrorGetNumberOfRecords(
  Pointer<RPC_ERROR_ENUM_HANDLE> EnumHandle,
  Pointer<Int32> Records,
) =>
    _RpcErrorGetNumberOfRecords(
      EnumHandle,
      Records,
    );

late final _RpcErrorGetNumberOfRecords = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer<RPC_ERROR_ENUM_HANDLE> EnumHandle,
  Pointer<Int32> Records,
),
    int Function(
  Pointer<RPC_ERROR_ENUM_HANDLE> EnumHandle,
  Pointer<Int32> Records,
)>('RpcErrorGetNumberOfRecords');

int RpcErrorLoadErrorInfo(
  Pointer ErrorBlob,
  int BlobSize,
  Pointer<RPC_ERROR_ENUM_HANDLE> EnumHandle,
) =>
    _RpcErrorLoadErrorInfo(
      ErrorBlob,
      BlobSize,
      EnumHandle,
    );

late final _RpcErrorLoadErrorInfo = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer ErrorBlob,
  IntPtr BlobSize,
  Pointer<RPC_ERROR_ENUM_HANDLE> EnumHandle,
),
    int Function(
  Pointer ErrorBlob,
  int BlobSize,
  Pointer<RPC_ERROR_ENUM_HANDLE> EnumHandle,
)>('RpcErrorLoadErrorInfo');

int RpcErrorResetEnumeration(
  Pointer<RPC_ERROR_ENUM_HANDLE> EnumHandle,
) =>
    _RpcErrorResetEnumeration(
      EnumHandle,
    );

late final _RpcErrorResetEnumeration = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer<RPC_ERROR_ENUM_HANDLE> EnumHandle,
),
    int Function(
  Pointer<RPC_ERROR_ENUM_HANDLE> EnumHandle,
)>('RpcErrorResetEnumeration');

int RpcErrorSaveErrorInfo(
  Pointer<RPC_ERROR_ENUM_HANDLE> EnumHandle,
  Pointer<Pointer> ErrorBlob,
  Pointer<IntPtr> BlobSize,
) =>
    _RpcErrorSaveErrorInfo(
      EnumHandle,
      ErrorBlob,
      BlobSize,
    );

late final _RpcErrorSaveErrorInfo = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer<RPC_ERROR_ENUM_HANDLE> EnumHandle,
  Pointer<Pointer> ErrorBlob,
  Pointer<IntPtr> BlobSize,
),
    int Function(
  Pointer<RPC_ERROR_ENUM_HANDLE> EnumHandle,
  Pointer<Pointer> ErrorBlob,
  Pointer<IntPtr> BlobSize,
)>('RpcErrorSaveErrorInfo');

int RpcErrorStartEnumeration(
  Pointer<RPC_ERROR_ENUM_HANDLE> EnumHandle,
) =>
    _RpcErrorStartEnumeration(
      EnumHandle,
    );

late final _RpcErrorStartEnumeration = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer<RPC_ERROR_ENUM_HANDLE> EnumHandle,
),
    int Function(
  Pointer<RPC_ERROR_ENUM_HANDLE> EnumHandle,
)>('RpcErrorStartEnumeration');

int RpcExceptionFilter(
  int ExceptionCode,
) =>
    _RpcExceptionFilter(
      ExceptionCode,
    );

late final _RpcExceptionFilter = _rpcrt4.lookupFunction<
    Int32 Function(
  Uint32 ExceptionCode,
),
    int Function(
  int ExceptionCode,
)>('RpcExceptionFilter');

int RpcFreeAuthorizationContext(
  Pointer<Pointer> pAuthzClientContext,
) =>
    _RpcFreeAuthorizationContext(
      pAuthzClientContext,
    );

late final _RpcFreeAuthorizationContext = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer<Pointer> pAuthzClientContext,
),
    int Function(
  Pointer<Pointer> pAuthzClientContext,
)>('RpcFreeAuthorizationContext');

int RpcGetAuthorizationContextForClient(
  Pointer ClientBinding,
  int ImpersonateOnReturn,
  Pointer Reserved1,
  Pointer<Int64> pExpirationTime,
  LUID Reserved2,
  int Reserved3,
  Pointer Reserved4,
  Pointer<Pointer> pAuthzClientContext,
) =>
    _RpcGetAuthorizationContextForClient(
      ClientBinding,
      ImpersonateOnReturn,
      Reserved1,
      pExpirationTime,
      Reserved2,
      Reserved3,
      Reserved4,
      pAuthzClientContext,
    );

late final _RpcGetAuthorizationContextForClient = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer ClientBinding,
  Int32 ImpersonateOnReturn,
  Pointer Reserved1,
  Pointer<Int64> pExpirationTime,
  LUID Reserved2,
  Uint32 Reserved3,
  Pointer Reserved4,
  Pointer<Pointer> pAuthzClientContext,
),
    int Function(
  Pointer ClientBinding,
  int ImpersonateOnReturn,
  Pointer Reserved1,
  Pointer<Int64> pExpirationTime,
  LUID Reserved2,
  int Reserved3,
  Pointer Reserved4,
  Pointer<Pointer> pAuthzClientContext,
)>('RpcGetAuthorizationContextForClient');

int RpcIfInqId(
  Pointer RpcIfHandle,
  Pointer<RPC_IF_ID> RpcIfId,
) =>
    _RpcIfInqId(
      RpcIfHandle,
      RpcIfId,
    );

late final _RpcIfInqId = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer RpcIfHandle,
  Pointer<RPC_IF_ID> RpcIfId,
),
    int Function(
  Pointer RpcIfHandle,
  Pointer<RPC_IF_ID> RpcIfId,
)>('RpcIfInqId');

int RpcImpersonateClient(
  Pointer BindingHandle,
) =>
    _RpcImpersonateClient(
      BindingHandle,
    );

late final _RpcImpersonateClient = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer BindingHandle,
),
    int Function(
  Pointer BindingHandle,
)>('RpcImpersonateClient');

int RpcImpersonateClient2(
  Pointer BindingHandle,
) =>
    _RpcImpersonateClient2(
      BindingHandle,
    );

late final _RpcImpersonateClient2 = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer BindingHandle,
),
    int Function(
  Pointer BindingHandle,
)>('RpcImpersonateClient2');

int RpcImpersonateClientContainer(
  Pointer BindingHandle,
) =>
    _RpcImpersonateClientContainer(
      BindingHandle,
    );

late final _RpcImpersonateClientContainer = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer BindingHandle,
),
    int Function(
  Pointer BindingHandle,
)>('RpcImpersonateClientContainer');

int RpcMgmtEnableIdleCleanup() => _RpcMgmtEnableIdleCleanup();

late final _RpcMgmtEnableIdleCleanup =
    _rpcrt4.lookupFunction<Int32 Function(), int Function()>(
        'RpcMgmtEnableIdleCleanup');

int RpcMgmtEpEltInqBegin(
  Pointer EpBinding,
  int InquiryType,
  Pointer<RPC_IF_ID> IfId,
  int VersOption,
  Pointer<GUID> ObjectUuid,
  Pointer<Pointer<Pointer>> InquiryContext,
) =>
    _RpcMgmtEpEltInqBegin(
      EpBinding,
      InquiryType,
      IfId,
      VersOption,
      ObjectUuid,
      InquiryContext,
    );

late final _RpcMgmtEpEltInqBegin = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer EpBinding,
  Uint32 InquiryType,
  Pointer<RPC_IF_ID> IfId,
  Uint32 VersOption,
  Pointer<GUID> ObjectUuid,
  Pointer<Pointer<Pointer>> InquiryContext,
),
    int Function(
  Pointer EpBinding,
  int InquiryType,
  Pointer<RPC_IF_ID> IfId,
  int VersOption,
  Pointer<GUID> ObjectUuid,
  Pointer<Pointer<Pointer>> InquiryContext,
)>('RpcMgmtEpEltInqBegin');

int RpcMgmtEpEltInqDone(
  Pointer<Pointer<Pointer>> InquiryContext,
) =>
    _RpcMgmtEpEltInqDone(
      InquiryContext,
    );

late final _RpcMgmtEpEltInqDone = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer<Pointer<Pointer>> InquiryContext,
),
    int Function(
  Pointer<Pointer<Pointer>> InquiryContext,
)>('RpcMgmtEpEltInqDone');

int RpcMgmtEpEltInqNext(
  Pointer<Pointer> InquiryContext,
  Pointer<RPC_IF_ID> IfId,
  Pointer<Pointer> Binding,
  Pointer<GUID> ObjectUuid,
  Pointer<Pointer<Uint16>> Annotation,
) =>
    _RpcMgmtEpEltInqNext(
      InquiryContext,
      IfId,
      Binding,
      ObjectUuid,
      Annotation,
    );

late final _RpcMgmtEpEltInqNext = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer<Pointer> InquiryContext,
  Pointer<RPC_IF_ID> IfId,
  Pointer<Pointer> Binding,
  Pointer<GUID> ObjectUuid,
  Pointer<Pointer<Uint16>> Annotation,
),
    int Function(
  Pointer<Pointer> InquiryContext,
  Pointer<RPC_IF_ID> IfId,
  Pointer<Pointer> Binding,
  Pointer<GUID> ObjectUuid,
  Pointer<Pointer<Uint16>> Annotation,
)>('RpcMgmtEpEltInqNextW');

int RpcMgmtEpUnregister(
  Pointer EpBinding,
  Pointer<RPC_IF_ID> IfId,
  Pointer Binding,
  Pointer<GUID> ObjectUuid,
) =>
    _RpcMgmtEpUnregister(
      EpBinding,
      IfId,
      Binding,
      ObjectUuid,
    );

late final _RpcMgmtEpUnregister = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer EpBinding,
  Pointer<RPC_IF_ID> IfId,
  Pointer Binding,
  Pointer<GUID> ObjectUuid,
),
    int Function(
  Pointer EpBinding,
  Pointer<RPC_IF_ID> IfId,
  Pointer Binding,
  Pointer<GUID> ObjectUuid,
)>('RpcMgmtEpUnregister');

int RpcMgmtInqComTimeout(
  Pointer Binding,
  Pointer<Uint32> Timeout,
) =>
    _RpcMgmtInqComTimeout(
      Binding,
      Timeout,
    );

late final _RpcMgmtInqComTimeout = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer Binding,
  Pointer<Uint32> Timeout,
),
    int Function(
  Pointer Binding,
  Pointer<Uint32> Timeout,
)>('RpcMgmtInqComTimeout');

int RpcMgmtInqDefaultProtectLevel(
  int AuthnSvc,
  Pointer<Uint32> AuthnLevel,
) =>
    _RpcMgmtInqDefaultProtectLevel(
      AuthnSvc,
      AuthnLevel,
    );

late final _RpcMgmtInqDefaultProtectLevel = _rpcrt4.lookupFunction<
    Int32 Function(
  Uint32 AuthnSvc,
  Pointer<Uint32> AuthnLevel,
),
    int Function(
  int AuthnSvc,
  Pointer<Uint32> AuthnLevel,
)>('RpcMgmtInqDefaultProtectLevel');

int RpcMgmtInqIfIds(
  Pointer Binding,
  Pointer<Pointer<RPC_IF_ID_VECTOR>> IfIdVector,
) =>
    _RpcMgmtInqIfIds(
      Binding,
      IfIdVector,
    );

late final _RpcMgmtInqIfIds = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer Binding,
  Pointer<Pointer<RPC_IF_ID_VECTOR>> IfIdVector,
),
    int Function(
  Pointer Binding,
  Pointer<Pointer<RPC_IF_ID_VECTOR>> IfIdVector,
)>('RpcMgmtInqIfIds');

int RpcMgmtInqServerPrincName(
  Pointer Binding,
  int AuthnSvc,
  Pointer<Pointer<Uint16>> ServerPrincName,
) =>
    _RpcMgmtInqServerPrincName(
      Binding,
      AuthnSvc,
      ServerPrincName,
    );

late final _RpcMgmtInqServerPrincName = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer Binding,
  Uint32 AuthnSvc,
  Pointer<Pointer<Uint16>> ServerPrincName,
),
    int Function(
  Pointer Binding,
  int AuthnSvc,
  Pointer<Pointer<Uint16>> ServerPrincName,
)>('RpcMgmtInqServerPrincNameW');

int RpcMgmtInqStats(
  Pointer Binding,
  Pointer<Pointer<RPC_STATS_VECTOR>> Statistics,
) =>
    _RpcMgmtInqStats(
      Binding,
      Statistics,
    );

late final _RpcMgmtInqStats = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer Binding,
  Pointer<Pointer<RPC_STATS_VECTOR>> Statistics,
),
    int Function(
  Pointer Binding,
  Pointer<Pointer<RPC_STATS_VECTOR>> Statistics,
)>('RpcMgmtInqStats');

int RpcMgmtIsServerListening(
  Pointer Binding,
) =>
    _RpcMgmtIsServerListening(
      Binding,
    );

late final _RpcMgmtIsServerListening = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer Binding,
),
    int Function(
  Pointer Binding,
)>('RpcMgmtIsServerListening');

int RpcMgmtSetAuthorizationFn(
  Pointer<NativeFunction<RPC_MGMT_AUTHORIZATION_FN>> AuthorizationFn,
) =>
    _RpcMgmtSetAuthorizationFn(
      AuthorizationFn,
    );

late final _RpcMgmtSetAuthorizationFn = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer<NativeFunction<RPC_MGMT_AUTHORIZATION_FN>> AuthorizationFn,
),
    int Function(
  Pointer<NativeFunction<RPC_MGMT_AUTHORIZATION_FN>> AuthorizationFn,
)>('RpcMgmtSetAuthorizationFn');

int RpcMgmtSetCancelTimeout(
  int Timeout,
) =>
    _RpcMgmtSetCancelTimeout(
      Timeout,
    );

late final _RpcMgmtSetCancelTimeout = _rpcrt4.lookupFunction<
    Int32 Function(
  Int32 Timeout,
),
    int Function(
  int Timeout,
)>('RpcMgmtSetCancelTimeout');

int RpcMgmtSetComTimeout(
  Pointer Binding,
  int Timeout,
) =>
    _RpcMgmtSetComTimeout(
      Binding,
      Timeout,
    );

late final _RpcMgmtSetComTimeout = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer Binding,
  Uint32 Timeout,
),
    int Function(
  Pointer Binding,
  int Timeout,
)>('RpcMgmtSetComTimeout');

int RpcMgmtSetServerStackSize(
  int ThreadStackSize,
) =>
    _RpcMgmtSetServerStackSize(
      ThreadStackSize,
    );

late final _RpcMgmtSetServerStackSize = _rpcrt4.lookupFunction<
    Int32 Function(
  Uint32 ThreadStackSize,
),
    int Function(
  int ThreadStackSize,
)>('RpcMgmtSetServerStackSize');

int RpcMgmtStatsVectorFree(
  Pointer<Pointer<RPC_STATS_VECTOR>> StatsVector,
) =>
    _RpcMgmtStatsVectorFree(
      StatsVector,
    );

late final _RpcMgmtStatsVectorFree = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer<Pointer<RPC_STATS_VECTOR>> StatsVector,
),
    int Function(
  Pointer<Pointer<RPC_STATS_VECTOR>> StatsVector,
)>('RpcMgmtStatsVectorFree');

int RpcMgmtStopServerListening(
  Pointer Binding,
) =>
    _RpcMgmtStopServerListening(
      Binding,
    );

late final _RpcMgmtStopServerListening = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer Binding,
),
    int Function(
  Pointer Binding,
)>('RpcMgmtStopServerListening');

int RpcMgmtWaitServerListen() => _RpcMgmtWaitServerListen();

late final _RpcMgmtWaitServerListen =
    _rpcrt4.lookupFunction<Int32 Function(), int Function()>(
        'RpcMgmtWaitServerListen');

int RpcNetworkInqProtseqs(
  Pointer<Pointer<RPC_PROTSEQ_VECTOR>> ProtseqVector,
) =>
    _RpcNetworkInqProtseqs(
      ProtseqVector,
    );

late final _RpcNetworkInqProtseqs = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer<Pointer<RPC_PROTSEQ_VECTOR>> ProtseqVector,
),
    int Function(
  Pointer<Pointer<RPC_PROTSEQ_VECTOR>> ProtseqVector,
)>('RpcNetworkInqProtseqsW');

int RpcNetworkIsProtseqValid(
  Pointer<Uint16> Protseq,
) =>
    _RpcNetworkIsProtseqValid(
      Protseq,
    );

late final _RpcNetworkIsProtseqValid = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer<Uint16> Protseq,
),
    int Function(
  Pointer<Uint16> Protseq,
)>('RpcNetworkIsProtseqValidW');

int RpcNsBindingInqEntryName(
  Pointer Binding,
  int EntryNameSyntax,
  Pointer<Pointer<Uint16>> EntryName,
) =>
    _RpcNsBindingInqEntryName(
      Binding,
      EntryNameSyntax,
      EntryName,
    );

late final _RpcNsBindingInqEntryName = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer Binding,
  Uint32 EntryNameSyntax,
  Pointer<Pointer<Uint16>> EntryName,
),
    int Function(
  Pointer Binding,
  int EntryNameSyntax,
  Pointer<Pointer<Uint16>> EntryName,
)>('RpcNsBindingInqEntryNameW');

int RpcObjectInqType(
  Pointer<GUID> ObjUuid,
  Pointer<GUID> TypeUuid,
) =>
    _RpcObjectInqType(
      ObjUuid,
      TypeUuid,
    );

late final _RpcObjectInqType = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer<GUID> ObjUuid,
  Pointer<GUID> TypeUuid,
),
    int Function(
  Pointer<GUID> ObjUuid,
  Pointer<GUID> TypeUuid,
)>('RpcObjectInqType');

int RpcObjectSetInqFn(
  Pointer<NativeFunction<RPC_OBJECT_INQ_FN>> InquiryFn,
) =>
    _RpcObjectSetInqFn(
      InquiryFn,
    );

late final _RpcObjectSetInqFn = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer<NativeFunction<RPC_OBJECT_INQ_FN>> InquiryFn,
),
    int Function(
  Pointer<NativeFunction<RPC_OBJECT_INQ_FN>> InquiryFn,
)>('RpcObjectSetInqFn');

int RpcObjectSetType(
  Pointer<GUID> ObjUuid,
  Pointer<GUID> TypeUuid,
) =>
    _RpcObjectSetType(
      ObjUuid,
      TypeUuid,
    );

late final _RpcObjectSetType = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer<GUID> ObjUuid,
  Pointer<GUID> TypeUuid,
),
    int Function(
  Pointer<GUID> ObjUuid,
  Pointer<GUID> TypeUuid,
)>('RpcObjectSetType');

int RpcProtseqVectorFree(
  Pointer<Pointer<RPC_PROTSEQ_VECTOR>> ProtseqVector,
) =>
    _RpcProtseqVectorFree(
      ProtseqVector,
    );

late final _RpcProtseqVectorFree = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer<Pointer<RPC_PROTSEQ_VECTOR>> ProtseqVector,
),
    int Function(
  Pointer<Pointer<RPC_PROTSEQ_VECTOR>> ProtseqVector,
)>('RpcProtseqVectorFreeW');

void RpcRaiseException(
  int exception,
) =>
    _RpcRaiseException(
      exception,
    );

late final _RpcRaiseException = _rpcrt4.lookupFunction<
    Void Function(
  Int32 exception,
),
    void Function(
  int exception,
)>('RpcRaiseException');

int RpcRevertContainerImpersonation() => _RpcRevertContainerImpersonation();

late final _RpcRevertContainerImpersonation =
    _rpcrt4.lookupFunction<Int32 Function(), int Function()>(
        'RpcRevertContainerImpersonation');

int RpcRevertToSelf() => _RpcRevertToSelf();

late final _RpcRevertToSelf =
    _rpcrt4.lookupFunction<Int32 Function(), int Function()>('RpcRevertToSelf');

int RpcRevertToSelfEx(
  Pointer BindingHandle,
) =>
    _RpcRevertToSelfEx(
      BindingHandle,
    );

late final _RpcRevertToSelfEx = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer BindingHandle,
),
    int Function(
  Pointer BindingHandle,
)>('RpcRevertToSelfEx');

int RpcServerCompleteSecurityCallback(
  Pointer BindingHandle,
  int Status,
) =>
    _RpcServerCompleteSecurityCallback(
      BindingHandle,
      Status,
    );

late final _RpcServerCompleteSecurityCallback = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer BindingHandle,
  Int32 Status,
),
    int Function(
  Pointer BindingHandle,
  int Status,
)>('RpcServerCompleteSecurityCallback');

int RpcServerInqBindingHandle(
  Pointer<Pointer> Binding,
) =>
    _RpcServerInqBindingHandle(
      Binding,
    );

late final _RpcServerInqBindingHandle = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer<Pointer> Binding,
),
    int Function(
  Pointer<Pointer> Binding,
)>('RpcServerInqBindingHandle');

int RpcServerInqBindings(
  Pointer<Pointer<RPC_BINDING_VECTOR>> BindingVector,
) =>
    _RpcServerInqBindings(
      BindingVector,
    );

late final _RpcServerInqBindings = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer<Pointer<RPC_BINDING_VECTOR>> BindingVector,
),
    int Function(
  Pointer<Pointer<RPC_BINDING_VECTOR>> BindingVector,
)>('RpcServerInqBindings');

int RpcServerInqBindingsEx(
  Pointer SecurityDescriptor,
  Pointer<Pointer<RPC_BINDING_VECTOR>> BindingVector,
) =>
    _RpcServerInqBindingsEx(
      SecurityDescriptor,
      BindingVector,
    );

late final _RpcServerInqBindingsEx = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer SecurityDescriptor,
  Pointer<Pointer<RPC_BINDING_VECTOR>> BindingVector,
),
    int Function(
  Pointer SecurityDescriptor,
  Pointer<Pointer<RPC_BINDING_VECTOR>> BindingVector,
)>('RpcServerInqBindingsEx');

int RpcServerInqCallAttributes(
  Pointer ClientBinding,
  Pointer RpcCallAttributes,
) =>
    _RpcServerInqCallAttributes(
      ClientBinding,
      RpcCallAttributes,
    );

late final _RpcServerInqCallAttributes = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer ClientBinding,
  Pointer RpcCallAttributes,
),
    int Function(
  Pointer ClientBinding,
  Pointer RpcCallAttributes,
)>('RpcServerInqCallAttributesW');

int RpcServerInqDefaultPrincName(
  int AuthnSvc,
  Pointer<Pointer<Uint16>> PrincName,
) =>
    _RpcServerInqDefaultPrincName(
      AuthnSvc,
      PrincName,
    );

late final _RpcServerInqDefaultPrincName = _rpcrt4.lookupFunction<
    Int32 Function(
  Uint32 AuthnSvc,
  Pointer<Pointer<Uint16>> PrincName,
),
    int Function(
  int AuthnSvc,
  Pointer<Pointer<Uint16>> PrincName,
)>('RpcServerInqDefaultPrincNameW');

int RpcServerInqIf(
  Pointer IfSpec,
  Pointer<GUID> MgrTypeUuid,
  Pointer<Pointer> MgrEpv,
) =>
    _RpcServerInqIf(
      IfSpec,
      MgrTypeUuid,
      MgrEpv,
    );

late final _RpcServerInqIf = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer IfSpec,
  Pointer<GUID> MgrTypeUuid,
  Pointer<Pointer> MgrEpv,
),
    int Function(
  Pointer IfSpec,
  Pointer<GUID> MgrTypeUuid,
  Pointer<Pointer> MgrEpv,
)>('RpcServerInqIf');

int RpcServerInterfaceGroupActivate(
  Pointer IfGroup,
) =>
    _RpcServerInterfaceGroupActivate(
      IfGroup,
    );

late final _RpcServerInterfaceGroupActivate = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer IfGroup,
),
    int Function(
  Pointer IfGroup,
)>('RpcServerInterfaceGroupActivate');

int RpcServerInterfaceGroupClose(
  Pointer IfGroup,
) =>
    _RpcServerInterfaceGroupClose(
      IfGroup,
    );

late final _RpcServerInterfaceGroupClose = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer IfGroup,
),
    int Function(
  Pointer IfGroup,
)>('RpcServerInterfaceGroupClose');

int RpcServerInterfaceGroupCreate(
  Pointer<RPC_INTERFACE_TEMPLATE> Interfaces,
  int NumIfs,
  Pointer<RPC_ENDPOINT_TEMPLATE> Endpoints,
  int NumEndpoints,
  int IdlePeriod,
  Pointer<NativeFunction<RPC_INTERFACE_GROUP_IDLE_CALLBACK_FN>> IdleCallbackFn,
  Pointer IdleCallbackContext,
  Pointer<Pointer> IfGroup,
) =>
    _RpcServerInterfaceGroupCreate(
      Interfaces,
      NumIfs,
      Endpoints,
      NumEndpoints,
      IdlePeriod,
      IdleCallbackFn,
      IdleCallbackContext,
      IfGroup,
    );

late final _RpcServerInterfaceGroupCreate = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer<RPC_INTERFACE_TEMPLATE> Interfaces,
  Uint32 NumIfs,
  Pointer<RPC_ENDPOINT_TEMPLATE> Endpoints,
  Uint32 NumEndpoints,
  Uint32 IdlePeriod,
  Pointer<NativeFunction<RPC_INTERFACE_GROUP_IDLE_CALLBACK_FN>> IdleCallbackFn,
  Pointer IdleCallbackContext,
  Pointer<Pointer> IfGroup,
),
    int Function(
  Pointer<RPC_INTERFACE_TEMPLATE> Interfaces,
  int NumIfs,
  Pointer<RPC_ENDPOINT_TEMPLATE> Endpoints,
  int NumEndpoints,
  int IdlePeriod,
  Pointer<NativeFunction<RPC_INTERFACE_GROUP_IDLE_CALLBACK_FN>> IdleCallbackFn,
  Pointer IdleCallbackContext,
  Pointer<Pointer> IfGroup,
)>('RpcServerInterfaceGroupCreateW');

int RpcServerInterfaceGroupDeactivate(
  Pointer IfGroup,
  int ForceDeactivation,
) =>
    _RpcServerInterfaceGroupDeactivate(
      IfGroup,
      ForceDeactivation,
    );

late final _RpcServerInterfaceGroupDeactivate = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer IfGroup,
  Uint32 ForceDeactivation,
),
    int Function(
  Pointer IfGroup,
  int ForceDeactivation,
)>('RpcServerInterfaceGroupDeactivate');

int RpcServerInterfaceGroupInqBindings(
  Pointer IfGroup,
  Pointer<Pointer<RPC_BINDING_VECTOR>> BindingVector,
) =>
    _RpcServerInterfaceGroupInqBindings(
      IfGroup,
      BindingVector,
    );

late final _RpcServerInterfaceGroupInqBindings = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer IfGroup,
  Pointer<Pointer<RPC_BINDING_VECTOR>> BindingVector,
),
    int Function(
  Pointer IfGroup,
  Pointer<Pointer<RPC_BINDING_VECTOR>> BindingVector,
)>('RpcServerInterfaceGroupInqBindings');

int RpcServerListen(
  int MinimumCallThreads,
  int MaxCalls,
  int DontWait,
) =>
    _RpcServerListen(
      MinimumCallThreads,
      MaxCalls,
      DontWait,
    );

late final _RpcServerListen = _rpcrt4.lookupFunction<
    Int32 Function(
  Uint32 MinimumCallThreads,
  Uint32 MaxCalls,
  Uint32 DontWait,
),
    int Function(
  int MinimumCallThreads,
  int MaxCalls,
  int DontWait,
)>('RpcServerListen');

int RpcServerRegisterAuthInfo(
  Pointer<Uint16> ServerPrincName,
  int AuthnSvc,
  Pointer<NativeFunction<RPC_AUTH_KEY_RETRIEVAL_FN>> GetKeyFn,
  Pointer Arg,
) =>
    _RpcServerRegisterAuthInfo(
      ServerPrincName,
      AuthnSvc,
      GetKeyFn,
      Arg,
    );

late final _RpcServerRegisterAuthInfo = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer<Uint16> ServerPrincName,
  Uint32 AuthnSvc,
  Pointer<NativeFunction<RPC_AUTH_KEY_RETRIEVAL_FN>> GetKeyFn,
  Pointer Arg,
),
    int Function(
  Pointer<Uint16> ServerPrincName,
  int AuthnSvc,
  Pointer<NativeFunction<RPC_AUTH_KEY_RETRIEVAL_FN>> GetKeyFn,
  Pointer Arg,
)>('RpcServerRegisterAuthInfoW');

int RpcServerRegisterIf(
  Pointer IfSpec,
  Pointer<GUID> MgrTypeUuid,
  Pointer MgrEpv,
) =>
    _RpcServerRegisterIf(
      IfSpec,
      MgrTypeUuid,
      MgrEpv,
    );

late final _RpcServerRegisterIf = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer IfSpec,
  Pointer<GUID> MgrTypeUuid,
  Pointer MgrEpv,
),
    int Function(
  Pointer IfSpec,
  Pointer<GUID> MgrTypeUuid,
  Pointer MgrEpv,
)>('RpcServerRegisterIf');

int RpcServerRegisterIf2(
  Pointer IfSpec,
  Pointer<GUID> MgrTypeUuid,
  Pointer MgrEpv,
  int Flags,
  int MaxCalls,
  int MaxRpcSize,
  Pointer<NativeFunction<RPC_IF_CALLBACK_FN>> IfCallbackFn,
) =>
    _RpcServerRegisterIf2(
      IfSpec,
      MgrTypeUuid,
      MgrEpv,
      Flags,
      MaxCalls,
      MaxRpcSize,
      IfCallbackFn,
    );

late final _RpcServerRegisterIf2 = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer IfSpec,
  Pointer<GUID> MgrTypeUuid,
  Pointer MgrEpv,
  Uint32 Flags,
  Uint32 MaxCalls,
  Uint32 MaxRpcSize,
  Pointer<NativeFunction<RPC_IF_CALLBACK_FN>> IfCallbackFn,
),
    int Function(
  Pointer IfSpec,
  Pointer<GUID> MgrTypeUuid,
  Pointer MgrEpv,
  int Flags,
  int MaxCalls,
  int MaxRpcSize,
  Pointer<NativeFunction<RPC_IF_CALLBACK_FN>> IfCallbackFn,
)>('RpcServerRegisterIf2');

int RpcServerRegisterIf3(
  Pointer IfSpec,
  Pointer<GUID> MgrTypeUuid,
  Pointer MgrEpv,
  int Flags,
  int MaxCalls,
  int MaxRpcSize,
  Pointer<NativeFunction<RPC_IF_CALLBACK_FN>> IfCallback,
  Pointer SecurityDescriptor,
) =>
    _RpcServerRegisterIf3(
      IfSpec,
      MgrTypeUuid,
      MgrEpv,
      Flags,
      MaxCalls,
      MaxRpcSize,
      IfCallback,
      SecurityDescriptor,
    );

late final _RpcServerRegisterIf3 = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer IfSpec,
  Pointer<GUID> MgrTypeUuid,
  Pointer MgrEpv,
  Uint32 Flags,
  Uint32 MaxCalls,
  Uint32 MaxRpcSize,
  Pointer<NativeFunction<RPC_IF_CALLBACK_FN>> IfCallback,
  Pointer SecurityDescriptor,
),
    int Function(
  Pointer IfSpec,
  Pointer<GUID> MgrTypeUuid,
  Pointer MgrEpv,
  int Flags,
  int MaxCalls,
  int MaxRpcSize,
  Pointer<NativeFunction<RPC_IF_CALLBACK_FN>> IfCallback,
  Pointer SecurityDescriptor,
)>('RpcServerRegisterIf3');

int RpcServerRegisterIfEx(
  Pointer IfSpec,
  Pointer<GUID> MgrTypeUuid,
  Pointer MgrEpv,
  int Flags,
  int MaxCalls,
  Pointer<NativeFunction<RPC_IF_CALLBACK_FN>> IfCallback,
) =>
    _RpcServerRegisterIfEx(
      IfSpec,
      MgrTypeUuid,
      MgrEpv,
      Flags,
      MaxCalls,
      IfCallback,
    );

late final _RpcServerRegisterIfEx = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer IfSpec,
  Pointer<GUID> MgrTypeUuid,
  Pointer MgrEpv,
  Uint32 Flags,
  Uint32 MaxCalls,
  Pointer<NativeFunction<RPC_IF_CALLBACK_FN>> IfCallback,
),
    int Function(
  Pointer IfSpec,
  Pointer<GUID> MgrTypeUuid,
  Pointer MgrEpv,
  int Flags,
  int MaxCalls,
  Pointer<NativeFunction<RPC_IF_CALLBACK_FN>> IfCallback,
)>('RpcServerRegisterIfEx');

int RpcServerSubscribeForNotification(
  Pointer Binding,
  int Notification,
  int NotificationType,
  Pointer<RPC_ASYNC_NOTIFICATION_INFO> NotificationInfo,
) =>
    _RpcServerSubscribeForNotification(
      Binding,
      Notification,
      NotificationType,
      NotificationInfo,
    );

late final _RpcServerSubscribeForNotification = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer Binding,
  Int32 Notification,
  Int32 NotificationType,
  Pointer<RPC_ASYNC_NOTIFICATION_INFO> NotificationInfo,
),
    int Function(
  Pointer Binding,
  int Notification,
  int NotificationType,
  Pointer<RPC_ASYNC_NOTIFICATION_INFO> NotificationInfo,
)>('RpcServerSubscribeForNotification');

int RpcServerTestCancel(
  Pointer BindingHandle,
) =>
    _RpcServerTestCancel(
      BindingHandle,
    );

late final _RpcServerTestCancel = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer BindingHandle,
),
    int Function(
  Pointer BindingHandle,
)>('RpcServerTestCancel');

int RpcServerUnregisterIf(
  Pointer IfSpec,
  Pointer<GUID> MgrTypeUuid,
  int WaitForCallsToComplete,
) =>
    _RpcServerUnregisterIf(
      IfSpec,
      MgrTypeUuid,
      WaitForCallsToComplete,
    );

late final _RpcServerUnregisterIf = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer IfSpec,
  Pointer<GUID> MgrTypeUuid,
  Uint32 WaitForCallsToComplete,
),
    int Function(
  Pointer IfSpec,
  Pointer<GUID> MgrTypeUuid,
  int WaitForCallsToComplete,
)>('RpcServerUnregisterIf');

int RpcServerUnregisterIfEx(
  Pointer IfSpec,
  Pointer<GUID> MgrTypeUuid,
  int RundownContextHandles,
) =>
    _RpcServerUnregisterIfEx(
      IfSpec,
      MgrTypeUuid,
      RundownContextHandles,
    );

late final _RpcServerUnregisterIfEx = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer IfSpec,
  Pointer<GUID> MgrTypeUuid,
  Int32 RundownContextHandles,
),
    int Function(
  Pointer IfSpec,
  Pointer<GUID> MgrTypeUuid,
  int RundownContextHandles,
)>('RpcServerUnregisterIfEx');

int RpcServerUnsubscribeForNotification(
  Pointer Binding,
  int Notification,
  Pointer<Uint32> NotificationsQueued,
) =>
    _RpcServerUnsubscribeForNotification(
      Binding,
      Notification,
      NotificationsQueued,
    );

late final _RpcServerUnsubscribeForNotification = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer Binding,
  Int32 Notification,
  Pointer<Uint32> NotificationsQueued,
),
    int Function(
  Pointer Binding,
  int Notification,
  Pointer<Uint32> NotificationsQueued,
)>('RpcServerUnsubscribeForNotification');

int RpcServerUseAllProtseqs(
  int MaxCalls,
  Pointer SecurityDescriptor,
) =>
    _RpcServerUseAllProtseqs(
      MaxCalls,
      SecurityDescriptor,
    );

late final _RpcServerUseAllProtseqs = _rpcrt4.lookupFunction<
    Int32 Function(
  Uint32 MaxCalls,
  Pointer SecurityDescriptor,
),
    int Function(
  int MaxCalls,
  Pointer SecurityDescriptor,
)>('RpcServerUseAllProtseqs');

int RpcServerUseAllProtseqsEx(
  int MaxCalls,
  Pointer SecurityDescriptor,
  Pointer<RPC_POLICY> Policy,
) =>
    _RpcServerUseAllProtseqsEx(
      MaxCalls,
      SecurityDescriptor,
      Policy,
    );

late final _RpcServerUseAllProtseqsEx = _rpcrt4.lookupFunction<
    Int32 Function(
  Uint32 MaxCalls,
  Pointer SecurityDescriptor,
  Pointer<RPC_POLICY> Policy,
),
    int Function(
  int MaxCalls,
  Pointer SecurityDescriptor,
  Pointer<RPC_POLICY> Policy,
)>('RpcServerUseAllProtseqsEx');

int RpcServerUseAllProtseqsIf(
  int MaxCalls,
  Pointer IfSpec,
  Pointer SecurityDescriptor,
) =>
    _RpcServerUseAllProtseqsIf(
      MaxCalls,
      IfSpec,
      SecurityDescriptor,
    );

late final _RpcServerUseAllProtseqsIf = _rpcrt4.lookupFunction<
    Int32 Function(
  Uint32 MaxCalls,
  Pointer IfSpec,
  Pointer SecurityDescriptor,
),
    int Function(
  int MaxCalls,
  Pointer IfSpec,
  Pointer SecurityDescriptor,
)>('RpcServerUseAllProtseqsIf');

int RpcServerUseAllProtseqsIfEx(
  int MaxCalls,
  Pointer IfSpec,
  Pointer SecurityDescriptor,
  Pointer<RPC_POLICY> Policy,
) =>
    _RpcServerUseAllProtseqsIfEx(
      MaxCalls,
      IfSpec,
      SecurityDescriptor,
      Policy,
    );

late final _RpcServerUseAllProtseqsIfEx = _rpcrt4.lookupFunction<
    Int32 Function(
  Uint32 MaxCalls,
  Pointer IfSpec,
  Pointer SecurityDescriptor,
  Pointer<RPC_POLICY> Policy,
),
    int Function(
  int MaxCalls,
  Pointer IfSpec,
  Pointer SecurityDescriptor,
  Pointer<RPC_POLICY> Policy,
)>('RpcServerUseAllProtseqsIfEx');

int RpcServerUseProtseqEpEx(
  Pointer<Uint16> Protseq,
  int MaxCalls,
  Pointer<Uint16> Endpoint,
  Pointer SecurityDescriptor,
  Pointer<RPC_POLICY> Policy,
) =>
    _RpcServerUseProtseqEpEx(
      Protseq,
      MaxCalls,
      Endpoint,
      SecurityDescriptor,
      Policy,
    );

late final _RpcServerUseProtseqEpEx = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer<Uint16> Protseq,
  Uint32 MaxCalls,
  Pointer<Uint16> Endpoint,
  Pointer SecurityDescriptor,
  Pointer<RPC_POLICY> Policy,
),
    int Function(
  Pointer<Uint16> Protseq,
  int MaxCalls,
  Pointer<Uint16> Endpoint,
  Pointer SecurityDescriptor,
  Pointer<RPC_POLICY> Policy,
)>('RpcServerUseProtseqEpExW');

int RpcServerUseProtseqEp(
  Pointer<Uint16> Protseq,
  int MaxCalls,
  Pointer<Uint16> Endpoint,
  Pointer SecurityDescriptor,
) =>
    _RpcServerUseProtseqEp(
      Protseq,
      MaxCalls,
      Endpoint,
      SecurityDescriptor,
    );

late final _RpcServerUseProtseqEp = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer<Uint16> Protseq,
  Uint32 MaxCalls,
  Pointer<Uint16> Endpoint,
  Pointer SecurityDescriptor,
),
    int Function(
  Pointer<Uint16> Protseq,
  int MaxCalls,
  Pointer<Uint16> Endpoint,
  Pointer SecurityDescriptor,
)>('RpcServerUseProtseqEpW');

int RpcServerUseProtseqEx(
  Pointer<Uint16> Protseq,
  int MaxCalls,
  Pointer SecurityDescriptor,
  Pointer<RPC_POLICY> Policy,
) =>
    _RpcServerUseProtseqEx(
      Protseq,
      MaxCalls,
      SecurityDescriptor,
      Policy,
    );

late final _RpcServerUseProtseqEx = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer<Uint16> Protseq,
  Uint32 MaxCalls,
  Pointer SecurityDescriptor,
  Pointer<RPC_POLICY> Policy,
),
    int Function(
  Pointer<Uint16> Protseq,
  int MaxCalls,
  Pointer SecurityDescriptor,
  Pointer<RPC_POLICY> Policy,
)>('RpcServerUseProtseqExW');

int RpcServerUseProtseqIfEx(
  Pointer<Uint16> Protseq,
  int MaxCalls,
  Pointer IfSpec,
  Pointer SecurityDescriptor,
  Pointer<RPC_POLICY> Policy,
) =>
    _RpcServerUseProtseqIfEx(
      Protseq,
      MaxCalls,
      IfSpec,
      SecurityDescriptor,
      Policy,
    );

late final _RpcServerUseProtseqIfEx = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer<Uint16> Protseq,
  Uint32 MaxCalls,
  Pointer IfSpec,
  Pointer SecurityDescriptor,
  Pointer<RPC_POLICY> Policy,
),
    int Function(
  Pointer<Uint16> Protseq,
  int MaxCalls,
  Pointer IfSpec,
  Pointer SecurityDescriptor,
  Pointer<RPC_POLICY> Policy,
)>('RpcServerUseProtseqIfExW');

int RpcServerUseProtseqIf(
  Pointer<Uint16> Protseq,
  int MaxCalls,
  Pointer IfSpec,
  Pointer SecurityDescriptor,
) =>
    _RpcServerUseProtseqIf(
      Protseq,
      MaxCalls,
      IfSpec,
      SecurityDescriptor,
    );

late final _RpcServerUseProtseqIf = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer<Uint16> Protseq,
  Uint32 MaxCalls,
  Pointer IfSpec,
  Pointer SecurityDescriptor,
),
    int Function(
  Pointer<Uint16> Protseq,
  int MaxCalls,
  Pointer IfSpec,
  Pointer SecurityDescriptor,
)>('RpcServerUseProtseqIfW');

int RpcServerUseProtseq(
  Pointer<Uint16> Protseq,
  int MaxCalls,
  Pointer SecurityDescriptor,
) =>
    _RpcServerUseProtseq(
      Protseq,
      MaxCalls,
      SecurityDescriptor,
    );

late final _RpcServerUseProtseq = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer<Uint16> Protseq,
  Uint32 MaxCalls,
  Pointer SecurityDescriptor,
),
    int Function(
  Pointer<Uint16> Protseq,
  int MaxCalls,
  Pointer SecurityDescriptor,
)>('RpcServerUseProtseqW');

void RpcServerYield() => _RpcServerYield();

late final _RpcServerYield =
    _rpcrt4.lookupFunction<Void Function(), void Function()>('RpcServerYield');

Pointer RpcSmAllocate(
  int Size,
  Pointer<Int32> pStatus,
) =>
    _RpcSmAllocate(
      Size,
      pStatus,
    );

late final _RpcSmAllocate = _rpcrt4.lookupFunction<
    Pointer Function(
  IntPtr Size,
  Pointer<Int32> pStatus,
),
    Pointer Function(
  int Size,
  Pointer<Int32> pStatus,
)>('RpcSmAllocate');

int RpcSmClientFree(
  Pointer pNodeToFree,
) =>
    _RpcSmClientFree(
      pNodeToFree,
    );

late final _RpcSmClientFree = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer pNodeToFree,
),
    int Function(
  Pointer pNodeToFree,
)>('RpcSmClientFree');

int RpcSmDestroyClientContext(
  Pointer<Pointer> ContextHandle,
) =>
    _RpcSmDestroyClientContext(
      ContextHandle,
    );

late final _RpcSmDestroyClientContext = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer<Pointer> ContextHandle,
),
    int Function(
  Pointer<Pointer> ContextHandle,
)>('RpcSmDestroyClientContext');

int RpcSmDisableAllocate() => _RpcSmDisableAllocate();

late final _RpcSmDisableAllocate = _rpcrt4
    .lookupFunction<Int32 Function(), int Function()>('RpcSmDisableAllocate');

int RpcSmEnableAllocate() => _RpcSmEnableAllocate();

late final _RpcSmEnableAllocate = _rpcrt4
    .lookupFunction<Int32 Function(), int Function()>('RpcSmEnableAllocate');

int RpcSmFree(
  Pointer NodeToFree,
) =>
    _RpcSmFree(
      NodeToFree,
    );

late final _RpcSmFree = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer NodeToFree,
),
    int Function(
  Pointer NodeToFree,
)>('RpcSmFree');

Pointer RpcSmGetThreadHandle(
  Pointer<Int32> pStatus,
) =>
    _RpcSmGetThreadHandle(
      pStatus,
    );

late final _RpcSmGetThreadHandle = _rpcrt4.lookupFunction<
    Pointer Function(
  Pointer<Int32> pStatus,
),
    Pointer Function(
  Pointer<Int32> pStatus,
)>('RpcSmGetThreadHandle');

int RpcSmSetClientAllocFree(
  Pointer<NativeFunction<RPC_CLIENT_ALLOC>> ClientAlloc,
  Pointer<NativeFunction<RPC_CLIENT_FREE>> ClientFree,
) =>
    _RpcSmSetClientAllocFree(
      ClientAlloc,
      ClientFree,
    );

late final _RpcSmSetClientAllocFree = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer<NativeFunction<RPC_CLIENT_ALLOC>> ClientAlloc,
  Pointer<NativeFunction<RPC_CLIENT_FREE>> ClientFree,
),
    int Function(
  Pointer<NativeFunction<RPC_CLIENT_ALLOC>> ClientAlloc,
  Pointer<NativeFunction<RPC_CLIENT_FREE>> ClientFree,
)>('RpcSmSetClientAllocFree');

int RpcSmSetThreadHandle(
  Pointer Id,
) =>
    _RpcSmSetThreadHandle(
      Id,
    );

late final _RpcSmSetThreadHandle = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer Id,
),
    int Function(
  Pointer Id,
)>('RpcSmSetThreadHandle');

int RpcSmSwapClientAllocFree(
  Pointer<NativeFunction<RPC_CLIENT_ALLOC>> ClientAlloc,
  Pointer<NativeFunction<RPC_CLIENT_FREE>> ClientFree,
  Pointer<Pointer<NativeFunction<RPC_CLIENT_ALLOC>>> OldClientAlloc,
  Pointer<Pointer<NativeFunction<RPC_CLIENT_FREE>>> OldClientFree,
) =>
    _RpcSmSwapClientAllocFree(
      ClientAlloc,
      ClientFree,
      OldClientAlloc,
      OldClientFree,
    );

late final _RpcSmSwapClientAllocFree = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer<NativeFunction<RPC_CLIENT_ALLOC>> ClientAlloc,
  Pointer<NativeFunction<RPC_CLIENT_FREE>> ClientFree,
  Pointer<Pointer<NativeFunction<RPC_CLIENT_ALLOC>>> OldClientAlloc,
  Pointer<Pointer<NativeFunction<RPC_CLIENT_FREE>>> OldClientFree,
),
    int Function(
  Pointer<NativeFunction<RPC_CLIENT_ALLOC>> ClientAlloc,
  Pointer<NativeFunction<RPC_CLIENT_FREE>> ClientFree,
  Pointer<Pointer<NativeFunction<RPC_CLIENT_ALLOC>>> OldClientAlloc,
  Pointer<Pointer<NativeFunction<RPC_CLIENT_FREE>>> OldClientFree,
)>('RpcSmSwapClientAllocFree');

Pointer RpcSsAllocate(
  int Size,
) =>
    _RpcSsAllocate(
      Size,
    );

late final _RpcSsAllocate = _rpcrt4.lookupFunction<
    Pointer Function(
  IntPtr Size,
),
    Pointer Function(
  int Size,
)>('RpcSsAllocate');

int RpcSsContextLockExclusive(
  Pointer ServerBindingHandle,
  Pointer UserContext,
) =>
    _RpcSsContextLockExclusive(
      ServerBindingHandle,
      UserContext,
    );

late final _RpcSsContextLockExclusive = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer ServerBindingHandle,
  Pointer UserContext,
),
    int Function(
  Pointer ServerBindingHandle,
  Pointer UserContext,
)>('RpcSsContextLockExclusive');

int RpcSsContextLockShared(
  Pointer ServerBindingHandle,
  Pointer UserContext,
) =>
    _RpcSsContextLockShared(
      ServerBindingHandle,
      UserContext,
    );

late final _RpcSsContextLockShared = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer ServerBindingHandle,
  Pointer UserContext,
),
    int Function(
  Pointer ServerBindingHandle,
  Pointer UserContext,
)>('RpcSsContextLockShared');

void RpcSsDestroyClientContext(
  Pointer<Pointer> ContextHandle,
) =>
    _RpcSsDestroyClientContext(
      ContextHandle,
    );

late final _RpcSsDestroyClientContext = _rpcrt4.lookupFunction<
    Void Function(
  Pointer<Pointer> ContextHandle,
),
    void Function(
  Pointer<Pointer> ContextHandle,
)>('RpcSsDestroyClientContext');

void RpcSsDisableAllocate() => _RpcSsDisableAllocate();

late final _RpcSsDisableAllocate = _rpcrt4
    .lookupFunction<Void Function(), void Function()>('RpcSsDisableAllocate');

void RpcSsDontSerializeContext() => _RpcSsDontSerializeContext();

late final _RpcSsDontSerializeContext =
    _rpcrt4.lookupFunction<Void Function(), void Function()>(
        'RpcSsDontSerializeContext');

void RpcSsEnableAllocate() => _RpcSsEnableAllocate();

late final _RpcSsEnableAllocate = _rpcrt4
    .lookupFunction<Void Function(), void Function()>('RpcSsEnableAllocate');

void RpcSsFree(
  Pointer NodeToFree,
) =>
    _RpcSsFree(
      NodeToFree,
    );

late final _RpcSsFree = _rpcrt4.lookupFunction<
    Void Function(
  Pointer NodeToFree,
),
    void Function(
  Pointer NodeToFree,
)>('RpcSsFree');

int RpcSsGetContextBinding(
  Pointer ContextHandle,
  Pointer<Pointer> Binding,
) =>
    _RpcSsGetContextBinding(
      ContextHandle,
      Binding,
    );

late final _RpcSsGetContextBinding = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer ContextHandle,
  Pointer<Pointer> Binding,
),
    int Function(
  Pointer ContextHandle,
  Pointer<Pointer> Binding,
)>('RpcSsGetContextBinding');

Pointer RpcSsGetThreadHandle() => _RpcSsGetThreadHandle();

late final _RpcSsGetThreadHandle =
    _rpcrt4.lookupFunction<Pointer Function(), Pointer Function()>(
        'RpcSsGetThreadHandle');

void RpcSsSetClientAllocFree(
  Pointer<NativeFunction<RPC_CLIENT_ALLOC>> ClientAlloc,
  Pointer<NativeFunction<RPC_CLIENT_FREE>> ClientFree,
) =>
    _RpcSsSetClientAllocFree(
      ClientAlloc,
      ClientFree,
    );

late final _RpcSsSetClientAllocFree = _rpcrt4.lookupFunction<
    Void Function(
  Pointer<NativeFunction<RPC_CLIENT_ALLOC>> ClientAlloc,
  Pointer<NativeFunction<RPC_CLIENT_FREE>> ClientFree,
),
    void Function(
  Pointer<NativeFunction<RPC_CLIENT_ALLOC>> ClientAlloc,
  Pointer<NativeFunction<RPC_CLIENT_FREE>> ClientFree,
)>('RpcSsSetClientAllocFree');

void RpcSsSetThreadHandle(
  Pointer Id,
) =>
    _RpcSsSetThreadHandle(
      Id,
    );

late final _RpcSsSetThreadHandle = _rpcrt4.lookupFunction<
    Void Function(
  Pointer Id,
),
    void Function(
  Pointer Id,
)>('RpcSsSetThreadHandle');

void RpcSsSwapClientAllocFree(
  Pointer<NativeFunction<RPC_CLIENT_ALLOC>> ClientAlloc,
  Pointer<NativeFunction<RPC_CLIENT_FREE>> ClientFree,
  Pointer<Pointer<NativeFunction<RPC_CLIENT_ALLOC>>> OldClientAlloc,
  Pointer<Pointer<NativeFunction<RPC_CLIENT_FREE>>> OldClientFree,
) =>
    _RpcSsSwapClientAllocFree(
      ClientAlloc,
      ClientFree,
      OldClientAlloc,
      OldClientFree,
    );

late final _RpcSsSwapClientAllocFree = _rpcrt4.lookupFunction<
    Void Function(
  Pointer<NativeFunction<RPC_CLIENT_ALLOC>> ClientAlloc,
  Pointer<NativeFunction<RPC_CLIENT_FREE>> ClientFree,
  Pointer<Pointer<NativeFunction<RPC_CLIENT_ALLOC>>> OldClientAlloc,
  Pointer<Pointer<NativeFunction<RPC_CLIENT_FREE>>> OldClientFree,
),
    void Function(
  Pointer<NativeFunction<RPC_CLIENT_ALLOC>> ClientAlloc,
  Pointer<NativeFunction<RPC_CLIENT_FREE>> ClientFree,
  Pointer<Pointer<NativeFunction<RPC_CLIENT_ALLOC>>> OldClientAlloc,
  Pointer<Pointer<NativeFunction<RPC_CLIENT_FREE>>> OldClientFree,
)>('RpcSsSwapClientAllocFree');

int RpcStringBindingCompose(
  Pointer<Uint16> ObjUuid,
  Pointer<Uint16> ProtSeq,
  Pointer<Uint16> NetworkAddr,
  Pointer<Uint16> Endpoint,
  Pointer<Uint16> Options,
  Pointer<Pointer<Uint16>> StringBinding,
) =>
    _RpcStringBindingCompose(
      ObjUuid,
      ProtSeq,
      NetworkAddr,
      Endpoint,
      Options,
      StringBinding,
    );

late final _RpcStringBindingCompose = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer<Uint16> ObjUuid,
  Pointer<Uint16> ProtSeq,
  Pointer<Uint16> NetworkAddr,
  Pointer<Uint16> Endpoint,
  Pointer<Uint16> Options,
  Pointer<Pointer<Uint16>> StringBinding,
),
    int Function(
  Pointer<Uint16> ObjUuid,
  Pointer<Uint16> ProtSeq,
  Pointer<Uint16> NetworkAddr,
  Pointer<Uint16> Endpoint,
  Pointer<Uint16> Options,
  Pointer<Pointer<Uint16>> StringBinding,
)>('RpcStringBindingComposeW');

int RpcStringBindingParse(
  Pointer<Uint16> StringBinding,
  Pointer<Pointer<Uint16>> ObjUuid,
  Pointer<Pointer<Uint16>> Protseq,
  Pointer<Pointer<Uint16>> NetworkAddr,
  Pointer<Pointer<Uint16>> Endpoint,
  Pointer<Pointer<Uint16>> NetworkOptions,
) =>
    _RpcStringBindingParse(
      StringBinding,
      ObjUuid,
      Protseq,
      NetworkAddr,
      Endpoint,
      NetworkOptions,
    );

late final _RpcStringBindingParse = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer<Uint16> StringBinding,
  Pointer<Pointer<Uint16>> ObjUuid,
  Pointer<Pointer<Uint16>> Protseq,
  Pointer<Pointer<Uint16>> NetworkAddr,
  Pointer<Pointer<Uint16>> Endpoint,
  Pointer<Pointer<Uint16>> NetworkOptions,
),
    int Function(
  Pointer<Uint16> StringBinding,
  Pointer<Pointer<Uint16>> ObjUuid,
  Pointer<Pointer<Uint16>> Protseq,
  Pointer<Pointer<Uint16>> NetworkAddr,
  Pointer<Pointer<Uint16>> Endpoint,
  Pointer<Pointer<Uint16>> NetworkOptions,
)>('RpcStringBindingParseW');

int RpcStringFree(
  Pointer<Pointer<Uint16>> $String,
) =>
    _RpcStringFree(
      $String,
    );

late final _RpcStringFree = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer<Pointer<Uint16>> $String,
),
    int Function(
  Pointer<Pointer<Uint16>> $String,
)>('RpcStringFreeW');

int RpcTestCancel() => _RpcTestCancel();

late final _RpcTestCancel =
    _rpcrt4.lookupFunction<Int32 Function(), int Function()>('RpcTestCancel');

void RpcUserFree(
  Pointer AsyncHandle,
  Pointer pBuffer,
) =>
    _RpcUserFree(
      AsyncHandle,
      pBuffer,
    );

late final _RpcUserFree = _rpcrt4.lookupFunction<
    Void Function(
  Pointer AsyncHandle,
  Pointer pBuffer,
),
    void Function(
  Pointer AsyncHandle,
  Pointer pBuffer,
)>('RpcUserFree');

int UuidCompare(
  Pointer<GUID> Uuid1,
  Pointer<GUID> Uuid2,
  Pointer<Int32> Status,
) =>
    _UuidCompare(
      Uuid1,
      Uuid2,
      Status,
    );

late final _UuidCompare = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer<GUID> Uuid1,
  Pointer<GUID> Uuid2,
  Pointer<Int32> Status,
),
    int Function(
  Pointer<GUID> Uuid1,
  Pointer<GUID> Uuid2,
  Pointer<Int32> Status,
)>('UuidCompare');

int UuidCreate(
  Pointer<GUID> Uuid,
) =>
    _UuidCreate(
      Uuid,
    );

late final _UuidCreate = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer<GUID> Uuid,
),
    int Function(
  Pointer<GUID> Uuid,
)>('UuidCreate');

int UuidCreateNil(
  Pointer<GUID> NilUuid,
) =>
    _UuidCreateNil(
      NilUuid,
    );

late final _UuidCreateNil = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer<GUID> NilUuid,
),
    int Function(
  Pointer<GUID> NilUuid,
)>('UuidCreateNil');

int UuidCreateSequential(
  Pointer<GUID> Uuid,
) =>
    _UuidCreateSequential(
      Uuid,
    );

late final _UuidCreateSequential = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer<GUID> Uuid,
),
    int Function(
  Pointer<GUID> Uuid,
)>('UuidCreateSequential');

int UuidEqual(
  Pointer<GUID> Uuid1,
  Pointer<GUID> Uuid2,
  Pointer<Int32> Status,
) =>
    _UuidEqual(
      Uuid1,
      Uuid2,
      Status,
    );

late final _UuidEqual = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer<GUID> Uuid1,
  Pointer<GUID> Uuid2,
  Pointer<Int32> Status,
),
    int Function(
  Pointer<GUID> Uuid1,
  Pointer<GUID> Uuid2,
  Pointer<Int32> Status,
)>('UuidEqual');

int UuidFromString(
  Pointer<Uint16> StringUuid,
  Pointer<GUID> Uuid,
) =>
    _UuidFromString(
      StringUuid,
      Uuid,
    );

late final _UuidFromString = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer<Uint16> StringUuid,
  Pointer<GUID> Uuid,
),
    int Function(
  Pointer<Uint16> StringUuid,
  Pointer<GUID> Uuid,
)>('UuidFromStringW');

int UuidHash(
  Pointer<GUID> Uuid,
  Pointer<Int32> Status,
) =>
    _UuidHash(
      Uuid,
      Status,
    );

late final _UuidHash = _rpcrt4.lookupFunction<
    Uint16 Function(
  Pointer<GUID> Uuid,
  Pointer<Int32> Status,
),
    int Function(
  Pointer<GUID> Uuid,
  Pointer<Int32> Status,
)>('UuidHash');

int UuidIsNil(
  Pointer<GUID> Uuid,
  Pointer<Int32> Status,
) =>
    _UuidIsNil(
      Uuid,
      Status,
    );

late final _UuidIsNil = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer<GUID> Uuid,
  Pointer<Int32> Status,
),
    int Function(
  Pointer<GUID> Uuid,
  Pointer<Int32> Status,
)>('UuidIsNil');

int UuidToString(
  Pointer<GUID> Uuid,
  Pointer<Pointer<Uint16>> StringUuid,
) =>
    _UuidToString(
      Uuid,
      StringUuid,
    );

late final _UuidToString = _rpcrt4.lookupFunction<
    Int32 Function(
  Pointer<GUID> Uuid,
  Pointer<Pointer<Uint16>> StringUuid,
),
    int Function(
  Pointer<GUID> Uuid,
  Pointer<Pointer<Uint16>> StringUuid,
)>('UuidToStringW');

// -----------------------------------------------------------------------
// rpcns4.dll
// -----------------------------------------------------------------------
final _rpcns4 = DynamicLibrary.open('rpcns4.dll');

int I_RpcNsGetBuffer(
  Pointer<RPC_MESSAGE> Message,
) =>
    _I_RpcNsGetBuffer(
      Message,
    );

late final _I_RpcNsGetBuffer = _rpcns4.lookupFunction<
    Int32 Function(
  Pointer<RPC_MESSAGE> Message,
),
    int Function(
  Pointer<RPC_MESSAGE> Message,
)>('I_RpcNsGetBuffer');

void I_RpcNsRaiseException(
  Pointer<RPC_MESSAGE> Message,
  int Status,
) =>
    _I_RpcNsRaiseException(
      Message,
      Status,
    );

late final _I_RpcNsRaiseException = _rpcns4.lookupFunction<
    Void Function(
  Pointer<RPC_MESSAGE> Message,
  Int32 Status,
),
    void Function(
  Pointer<RPC_MESSAGE> Message,
  int Status,
)>('I_RpcNsRaiseException');

int I_RpcNsSendReceive(
  Pointer<RPC_MESSAGE> Message,
  Pointer<Pointer> $Handle,
) =>
    _I_RpcNsSendReceive(
      Message,
      $Handle,
    );

late final _I_RpcNsSendReceive = _rpcns4.lookupFunction<
    Int32 Function(
  Pointer<RPC_MESSAGE> Message,
  Pointer<Pointer> $Handle,
),
    int Function(
  Pointer<RPC_MESSAGE> Message,
  Pointer<Pointer> $Handle,
)>('I_RpcNsSendReceive');

int I_RpcReBindBuffer(
  Pointer<RPC_MESSAGE> Message,
) =>
    _I_RpcReBindBuffer(
      Message,
    );

late final _I_RpcReBindBuffer = _rpcns4.lookupFunction<
    Int32 Function(
  Pointer<RPC_MESSAGE> Message,
),
    int Function(
  Pointer<RPC_MESSAGE> Message,
)>('I_RpcReBindBuffer');

int RpcIfIdVectorFree(
  Pointer<Pointer<RPC_IF_ID_VECTOR>> IfIdVector,
) =>
    _RpcIfIdVectorFree(
      IfIdVector,
    );

late final _RpcIfIdVectorFree = _rpcns4.lookupFunction<
    Int32 Function(
  Pointer<Pointer<RPC_IF_ID_VECTOR>> IfIdVector,
),
    int Function(
  Pointer<Pointer<RPC_IF_ID_VECTOR>> IfIdVector,
)>('RpcIfIdVectorFree');

int RpcNsBindingExportPnP(
  int EntryNameSyntax,
  Pointer<Uint16> EntryName,
  Pointer IfSpec,
  Pointer<UUID_VECTOR> ObjectVector,
) =>
    _RpcNsBindingExportPnP(
      EntryNameSyntax,
      EntryName,
      IfSpec,
      ObjectVector,
    );

late final _RpcNsBindingExportPnP = _rpcns4.lookupFunction<
    Int32 Function(
  Uint32 EntryNameSyntax,
  Pointer<Uint16> EntryName,
  Pointer IfSpec,
  Pointer<UUID_VECTOR> ObjectVector,
),
    int Function(
  int EntryNameSyntax,
  Pointer<Uint16> EntryName,
  Pointer IfSpec,
  Pointer<UUID_VECTOR> ObjectVector,
)>('RpcNsBindingExportPnPW');

int RpcNsBindingExport(
  int EntryNameSyntax,
  Pointer<Uint16> EntryName,
  Pointer IfSpec,
  Pointer<RPC_BINDING_VECTOR> BindingVec,
  Pointer<UUID_VECTOR> ObjectUuidVec,
) =>
    _RpcNsBindingExport(
      EntryNameSyntax,
      EntryName,
      IfSpec,
      BindingVec,
      ObjectUuidVec,
    );

late final _RpcNsBindingExport = _rpcns4.lookupFunction<
    Int32 Function(
  Uint32 EntryNameSyntax,
  Pointer<Uint16> EntryName,
  Pointer IfSpec,
  Pointer<RPC_BINDING_VECTOR> BindingVec,
  Pointer<UUID_VECTOR> ObjectUuidVec,
),
    int Function(
  int EntryNameSyntax,
  Pointer<Uint16> EntryName,
  Pointer IfSpec,
  Pointer<RPC_BINDING_VECTOR> BindingVec,
  Pointer<UUID_VECTOR> ObjectUuidVec,
)>('RpcNsBindingExportW');

int RpcNsBindingImportBegin(
  int EntryNameSyntax,
  Pointer<Uint16> EntryName,
  Pointer IfSpec,
  Pointer<GUID> ObjUuid,
  Pointer<Pointer> ImportContext,
) =>
    _RpcNsBindingImportBegin(
      EntryNameSyntax,
      EntryName,
      IfSpec,
      ObjUuid,
      ImportContext,
    );

late final _RpcNsBindingImportBegin = _rpcns4.lookupFunction<
    Int32 Function(
  Uint32 EntryNameSyntax,
  Pointer<Uint16> EntryName,
  Pointer IfSpec,
  Pointer<GUID> ObjUuid,
  Pointer<Pointer> ImportContext,
),
    int Function(
  int EntryNameSyntax,
  Pointer<Uint16> EntryName,
  Pointer IfSpec,
  Pointer<GUID> ObjUuid,
  Pointer<Pointer> ImportContext,
)>('RpcNsBindingImportBeginW');

int RpcNsBindingImportDone(
  Pointer<Pointer> ImportContext,
) =>
    _RpcNsBindingImportDone(
      ImportContext,
    );

late final _RpcNsBindingImportDone = _rpcns4.lookupFunction<
    Int32 Function(
  Pointer<Pointer> ImportContext,
),
    int Function(
  Pointer<Pointer> ImportContext,
)>('RpcNsBindingImportDone');

int RpcNsBindingImportNext(
  Pointer ImportContext,
  Pointer<Pointer> Binding,
) =>
    _RpcNsBindingImportNext(
      ImportContext,
      Binding,
    );

late final _RpcNsBindingImportNext = _rpcns4.lookupFunction<
    Int32 Function(
  Pointer ImportContext,
  Pointer<Pointer> Binding,
),
    int Function(
  Pointer ImportContext,
  Pointer<Pointer> Binding,
)>('RpcNsBindingImportNext');

int RpcNsBindingLookupBegin(
  int EntryNameSyntax,
  Pointer<Uint16> EntryName,
  Pointer IfSpec,
  Pointer<GUID> ObjUuid,
  int BindingMaxCount,
  Pointer<Pointer> LookupContext,
) =>
    _RpcNsBindingLookupBegin(
      EntryNameSyntax,
      EntryName,
      IfSpec,
      ObjUuid,
      BindingMaxCount,
      LookupContext,
    );

late final _RpcNsBindingLookupBegin = _rpcns4.lookupFunction<
    Int32 Function(
  Uint32 EntryNameSyntax,
  Pointer<Uint16> EntryName,
  Pointer IfSpec,
  Pointer<GUID> ObjUuid,
  Uint32 BindingMaxCount,
  Pointer<Pointer> LookupContext,
),
    int Function(
  int EntryNameSyntax,
  Pointer<Uint16> EntryName,
  Pointer IfSpec,
  Pointer<GUID> ObjUuid,
  int BindingMaxCount,
  Pointer<Pointer> LookupContext,
)>('RpcNsBindingLookupBeginW');

int RpcNsBindingLookupDone(
  Pointer<Pointer> LookupContext,
) =>
    _RpcNsBindingLookupDone(
      LookupContext,
    );

late final _RpcNsBindingLookupDone = _rpcns4.lookupFunction<
    Int32 Function(
  Pointer<Pointer> LookupContext,
),
    int Function(
  Pointer<Pointer> LookupContext,
)>('RpcNsBindingLookupDone');

int RpcNsBindingLookupNext(
  Pointer LookupContext,
  Pointer<Pointer<RPC_BINDING_VECTOR>> BindingVec,
) =>
    _RpcNsBindingLookupNext(
      LookupContext,
      BindingVec,
    );

late final _RpcNsBindingLookupNext = _rpcns4.lookupFunction<
    Int32 Function(
  Pointer LookupContext,
  Pointer<Pointer<RPC_BINDING_VECTOR>> BindingVec,
),
    int Function(
  Pointer LookupContext,
  Pointer<Pointer<RPC_BINDING_VECTOR>> BindingVec,
)>('RpcNsBindingLookupNext');

int RpcNsBindingSelect(
  Pointer<RPC_BINDING_VECTOR> BindingVec,
  Pointer<Pointer> Binding,
) =>
    _RpcNsBindingSelect(
      BindingVec,
      Binding,
    );

late final _RpcNsBindingSelect = _rpcns4.lookupFunction<
    Int32 Function(
  Pointer<RPC_BINDING_VECTOR> BindingVec,
  Pointer<Pointer> Binding,
),
    int Function(
  Pointer<RPC_BINDING_VECTOR> BindingVec,
  Pointer<Pointer> Binding,
)>('RpcNsBindingSelect');

int RpcNsBindingUnexportPnP(
  int EntryNameSyntax,
  Pointer<Uint16> EntryName,
  Pointer IfSpec,
  Pointer<UUID_VECTOR> ObjectVector,
) =>
    _RpcNsBindingUnexportPnP(
      EntryNameSyntax,
      EntryName,
      IfSpec,
      ObjectVector,
    );

late final _RpcNsBindingUnexportPnP = _rpcns4.lookupFunction<
    Int32 Function(
  Uint32 EntryNameSyntax,
  Pointer<Uint16> EntryName,
  Pointer IfSpec,
  Pointer<UUID_VECTOR> ObjectVector,
),
    int Function(
  int EntryNameSyntax,
  Pointer<Uint16> EntryName,
  Pointer IfSpec,
  Pointer<UUID_VECTOR> ObjectVector,
)>('RpcNsBindingUnexportPnPW');

int RpcNsBindingUnexport(
  int EntryNameSyntax,
  Pointer<Uint16> EntryName,
  Pointer IfSpec,
  Pointer<UUID_VECTOR> ObjectUuidVec,
) =>
    _RpcNsBindingUnexport(
      EntryNameSyntax,
      EntryName,
      IfSpec,
      ObjectUuidVec,
    );

late final _RpcNsBindingUnexport = _rpcns4.lookupFunction<
    Int32 Function(
  Uint32 EntryNameSyntax,
  Pointer<Uint16> EntryName,
  Pointer IfSpec,
  Pointer<UUID_VECTOR> ObjectUuidVec,
),
    int Function(
  int EntryNameSyntax,
  Pointer<Uint16> EntryName,
  Pointer IfSpec,
  Pointer<UUID_VECTOR> ObjectUuidVec,
)>('RpcNsBindingUnexportW');

int RpcNsEntryExpandName(
  int EntryNameSyntax,
  Pointer<Uint16> EntryName,
  Pointer<Pointer<Uint16>> ExpandedName,
) =>
    _RpcNsEntryExpandName(
      EntryNameSyntax,
      EntryName,
      ExpandedName,
    );

late final _RpcNsEntryExpandName = _rpcns4.lookupFunction<
    Int32 Function(
  Uint32 EntryNameSyntax,
  Pointer<Uint16> EntryName,
  Pointer<Pointer<Uint16>> ExpandedName,
),
    int Function(
  int EntryNameSyntax,
  Pointer<Uint16> EntryName,
  Pointer<Pointer<Uint16>> ExpandedName,
)>('RpcNsEntryExpandNameW');

int RpcNsEntryObjectInqBegin(
  int EntryNameSyntax,
  Pointer<Uint16> EntryName,
  Pointer<Pointer> InquiryContext,
) =>
    _RpcNsEntryObjectInqBegin(
      EntryNameSyntax,
      EntryName,
      InquiryContext,
    );

late final _RpcNsEntryObjectInqBegin = _rpcns4.lookupFunction<
    Int32 Function(
  Uint32 EntryNameSyntax,
  Pointer<Uint16> EntryName,
  Pointer<Pointer> InquiryContext,
),
    int Function(
  int EntryNameSyntax,
  Pointer<Uint16> EntryName,
  Pointer<Pointer> InquiryContext,
)>('RpcNsEntryObjectInqBeginW');

int RpcNsEntryObjectInqDone(
  Pointer<Pointer> InquiryContext,
) =>
    _RpcNsEntryObjectInqDone(
      InquiryContext,
    );

late final _RpcNsEntryObjectInqDone = _rpcns4.lookupFunction<
    Int32 Function(
  Pointer<Pointer> InquiryContext,
),
    int Function(
  Pointer<Pointer> InquiryContext,
)>('RpcNsEntryObjectInqDone');

int RpcNsEntryObjectInqNext(
  Pointer InquiryContext,
  Pointer<GUID> ObjUuid,
) =>
    _RpcNsEntryObjectInqNext(
      InquiryContext,
      ObjUuid,
    );

late final _RpcNsEntryObjectInqNext = _rpcns4.lookupFunction<
    Int32 Function(
  Pointer InquiryContext,
  Pointer<GUID> ObjUuid,
),
    int Function(
  Pointer InquiryContext,
  Pointer<GUID> ObjUuid,
)>('RpcNsEntryObjectInqNext');

int RpcNsGroupDelete(
  int GroupNameSyntax,
  Pointer<Uint16> GroupName,
) =>
    _RpcNsGroupDelete(
      GroupNameSyntax,
      GroupName,
    );

late final _RpcNsGroupDelete = _rpcns4.lookupFunction<
    Int32 Function(
  Uint32 GroupNameSyntax,
  Pointer<Uint16> GroupName,
),
    int Function(
  int GroupNameSyntax,
  Pointer<Uint16> GroupName,
)>('RpcNsGroupDeleteW');

int RpcNsGroupMbrAdd(
  int GroupNameSyntax,
  Pointer<Uint16> GroupName,
  int MemberNameSyntax,
  Pointer<Uint16> MemberName,
) =>
    _RpcNsGroupMbrAdd(
      GroupNameSyntax,
      GroupName,
      MemberNameSyntax,
      MemberName,
    );

late final _RpcNsGroupMbrAdd = _rpcns4.lookupFunction<
    Int32 Function(
  Uint32 GroupNameSyntax,
  Pointer<Uint16> GroupName,
  Uint32 MemberNameSyntax,
  Pointer<Uint16> MemberName,
),
    int Function(
  int GroupNameSyntax,
  Pointer<Uint16> GroupName,
  int MemberNameSyntax,
  Pointer<Uint16> MemberName,
)>('RpcNsGroupMbrAddW');

int RpcNsGroupMbrInqBegin(
  int GroupNameSyntax,
  Pointer<Uint16> GroupName,
  int MemberNameSyntax,
  Pointer<Pointer> InquiryContext,
) =>
    _RpcNsGroupMbrInqBegin(
      GroupNameSyntax,
      GroupName,
      MemberNameSyntax,
      InquiryContext,
    );

late final _RpcNsGroupMbrInqBegin = _rpcns4.lookupFunction<
    Int32 Function(
  Uint32 GroupNameSyntax,
  Pointer<Uint16> GroupName,
  Uint32 MemberNameSyntax,
  Pointer<Pointer> InquiryContext,
),
    int Function(
  int GroupNameSyntax,
  Pointer<Uint16> GroupName,
  int MemberNameSyntax,
  Pointer<Pointer> InquiryContext,
)>('RpcNsGroupMbrInqBeginW');

int RpcNsGroupMbrInqDone(
  Pointer<Pointer> InquiryContext,
) =>
    _RpcNsGroupMbrInqDone(
      InquiryContext,
    );

late final _RpcNsGroupMbrInqDone = _rpcns4.lookupFunction<
    Int32 Function(
  Pointer<Pointer> InquiryContext,
),
    int Function(
  Pointer<Pointer> InquiryContext,
)>('RpcNsGroupMbrInqDone');

int RpcNsGroupMbrInqNext(
  Pointer InquiryContext,
  Pointer<Pointer<Uint16>> MemberName,
) =>
    _RpcNsGroupMbrInqNext(
      InquiryContext,
      MemberName,
    );

late final _RpcNsGroupMbrInqNext = _rpcns4.lookupFunction<
    Int32 Function(
  Pointer InquiryContext,
  Pointer<Pointer<Uint16>> MemberName,
),
    int Function(
  Pointer InquiryContext,
  Pointer<Pointer<Uint16>> MemberName,
)>('RpcNsGroupMbrInqNextW');

int RpcNsGroupMbrRemove(
  int GroupNameSyntax,
  Pointer<Uint16> GroupName,
  int MemberNameSyntax,
  Pointer<Uint16> MemberName,
) =>
    _RpcNsGroupMbrRemove(
      GroupNameSyntax,
      GroupName,
      MemberNameSyntax,
      MemberName,
    );

late final _RpcNsGroupMbrRemove = _rpcns4.lookupFunction<
    Int32 Function(
  Uint32 GroupNameSyntax,
  Pointer<Uint16> GroupName,
  Uint32 MemberNameSyntax,
  Pointer<Uint16> MemberName,
),
    int Function(
  int GroupNameSyntax,
  Pointer<Uint16> GroupName,
  int MemberNameSyntax,
  Pointer<Uint16> MemberName,
)>('RpcNsGroupMbrRemoveW');

int RpcNsMgmtBindingUnexport(
  int EntryNameSyntax,
  Pointer<Uint16> EntryName,
  Pointer<RPC_IF_ID> IfId,
  int VersOption,
  Pointer<UUID_VECTOR> ObjectUuidVec,
) =>
    _RpcNsMgmtBindingUnexport(
      EntryNameSyntax,
      EntryName,
      IfId,
      VersOption,
      ObjectUuidVec,
    );

late final _RpcNsMgmtBindingUnexport = _rpcns4.lookupFunction<
    Int32 Function(
  Uint32 EntryNameSyntax,
  Pointer<Uint16> EntryName,
  Pointer<RPC_IF_ID> IfId,
  Uint32 VersOption,
  Pointer<UUID_VECTOR> ObjectUuidVec,
),
    int Function(
  int EntryNameSyntax,
  Pointer<Uint16> EntryName,
  Pointer<RPC_IF_ID> IfId,
  int VersOption,
  Pointer<UUID_VECTOR> ObjectUuidVec,
)>('RpcNsMgmtBindingUnexportW');

int RpcNsMgmtEntryCreate(
  int EntryNameSyntax,
  Pointer<Uint16> EntryName,
) =>
    _RpcNsMgmtEntryCreate(
      EntryNameSyntax,
      EntryName,
    );

late final _RpcNsMgmtEntryCreate = _rpcns4.lookupFunction<
    Int32 Function(
  Uint32 EntryNameSyntax,
  Pointer<Uint16> EntryName,
),
    int Function(
  int EntryNameSyntax,
  Pointer<Uint16> EntryName,
)>('RpcNsMgmtEntryCreateW');

int RpcNsMgmtEntryDelete(
  int EntryNameSyntax,
  Pointer<Uint16> EntryName,
) =>
    _RpcNsMgmtEntryDelete(
      EntryNameSyntax,
      EntryName,
    );

late final _RpcNsMgmtEntryDelete = _rpcns4.lookupFunction<
    Int32 Function(
  Uint32 EntryNameSyntax,
  Pointer<Uint16> EntryName,
),
    int Function(
  int EntryNameSyntax,
  Pointer<Uint16> EntryName,
)>('RpcNsMgmtEntryDeleteW');

int RpcNsMgmtEntryInqIfIds(
  int EntryNameSyntax,
  Pointer<Uint16> EntryName,
  Pointer<Pointer<RPC_IF_ID_VECTOR>> IfIdVec,
) =>
    _RpcNsMgmtEntryInqIfIds(
      EntryNameSyntax,
      EntryName,
      IfIdVec,
    );

late final _RpcNsMgmtEntryInqIfIds = _rpcns4.lookupFunction<
    Int32 Function(
  Uint32 EntryNameSyntax,
  Pointer<Uint16> EntryName,
  Pointer<Pointer<RPC_IF_ID_VECTOR>> IfIdVec,
),
    int Function(
  int EntryNameSyntax,
  Pointer<Uint16> EntryName,
  Pointer<Pointer<RPC_IF_ID_VECTOR>> IfIdVec,
)>('RpcNsMgmtEntryInqIfIdsW');

int RpcNsMgmtHandleSetExpAge(
  Pointer NsHandle,
  int ExpirationAge,
) =>
    _RpcNsMgmtHandleSetExpAge(
      NsHandle,
      ExpirationAge,
    );

late final _RpcNsMgmtHandleSetExpAge = _rpcns4.lookupFunction<
    Int32 Function(
  Pointer NsHandle,
  Uint32 ExpirationAge,
),
    int Function(
  Pointer NsHandle,
  int ExpirationAge,
)>('RpcNsMgmtHandleSetExpAge');

int RpcNsMgmtInqExpAge(
  Pointer<Uint32> ExpirationAge,
) =>
    _RpcNsMgmtInqExpAge(
      ExpirationAge,
    );

late final _RpcNsMgmtInqExpAge = _rpcns4.lookupFunction<
    Int32 Function(
  Pointer<Uint32> ExpirationAge,
),
    int Function(
  Pointer<Uint32> ExpirationAge,
)>('RpcNsMgmtInqExpAge');

int RpcNsMgmtSetExpAge(
  int ExpirationAge,
) =>
    _RpcNsMgmtSetExpAge(
      ExpirationAge,
    );

late final _RpcNsMgmtSetExpAge = _rpcns4.lookupFunction<
    Int32 Function(
  Uint32 ExpirationAge,
),
    int Function(
  int ExpirationAge,
)>('RpcNsMgmtSetExpAge');

int RpcNsProfileDelete(
  int ProfileNameSyntax,
  Pointer<Uint16> ProfileName,
) =>
    _RpcNsProfileDelete(
      ProfileNameSyntax,
      ProfileName,
    );

late final _RpcNsProfileDelete = _rpcns4.lookupFunction<
    Int32 Function(
  Uint32 ProfileNameSyntax,
  Pointer<Uint16> ProfileName,
),
    int Function(
  int ProfileNameSyntax,
  Pointer<Uint16> ProfileName,
)>('RpcNsProfileDeleteW');

int RpcNsProfileEltAdd(
  int ProfileNameSyntax,
  Pointer<Uint16> ProfileName,
  Pointer<RPC_IF_ID> IfId,
  int MemberNameSyntax,
  Pointer<Uint16> MemberName,
  int Priority,
  Pointer<Uint16> Annotation,
) =>
    _RpcNsProfileEltAdd(
      ProfileNameSyntax,
      ProfileName,
      IfId,
      MemberNameSyntax,
      MemberName,
      Priority,
      Annotation,
    );

late final _RpcNsProfileEltAdd = _rpcns4.lookupFunction<
    Int32 Function(
  Uint32 ProfileNameSyntax,
  Pointer<Uint16> ProfileName,
  Pointer<RPC_IF_ID> IfId,
  Uint32 MemberNameSyntax,
  Pointer<Uint16> MemberName,
  Uint32 Priority,
  Pointer<Uint16> Annotation,
),
    int Function(
  int ProfileNameSyntax,
  Pointer<Uint16> ProfileName,
  Pointer<RPC_IF_ID> IfId,
  int MemberNameSyntax,
  Pointer<Uint16> MemberName,
  int Priority,
  Pointer<Uint16> Annotation,
)>('RpcNsProfileEltAddW');

int RpcNsProfileEltInqBegin(
  int ProfileNameSyntax,
  Pointer<Uint16> ProfileName,
  int InquiryType,
  Pointer<RPC_IF_ID> IfId,
  int VersOption,
  int MemberNameSyntax,
  Pointer<Uint16> MemberName,
  Pointer<Pointer> InquiryContext,
) =>
    _RpcNsProfileEltInqBegin(
      ProfileNameSyntax,
      ProfileName,
      InquiryType,
      IfId,
      VersOption,
      MemberNameSyntax,
      MemberName,
      InquiryContext,
    );

late final _RpcNsProfileEltInqBegin = _rpcns4.lookupFunction<
    Int32 Function(
  Uint32 ProfileNameSyntax,
  Pointer<Uint16> ProfileName,
  Uint32 InquiryType,
  Pointer<RPC_IF_ID> IfId,
  Uint32 VersOption,
  Uint32 MemberNameSyntax,
  Pointer<Uint16> MemberName,
  Pointer<Pointer> InquiryContext,
),
    int Function(
  int ProfileNameSyntax,
  Pointer<Uint16> ProfileName,
  int InquiryType,
  Pointer<RPC_IF_ID> IfId,
  int VersOption,
  int MemberNameSyntax,
  Pointer<Uint16> MemberName,
  Pointer<Pointer> InquiryContext,
)>('RpcNsProfileEltInqBeginW');

int RpcNsProfileEltInqDone(
  Pointer<Pointer> InquiryContext,
) =>
    _RpcNsProfileEltInqDone(
      InquiryContext,
    );

late final _RpcNsProfileEltInqDone = _rpcns4.lookupFunction<
    Int32 Function(
  Pointer<Pointer> InquiryContext,
),
    int Function(
  Pointer<Pointer> InquiryContext,
)>('RpcNsProfileEltInqDone');

int RpcNsProfileEltInqNext(
  Pointer InquiryContext,
  Pointer<RPC_IF_ID> IfId,
  Pointer<Pointer<Uint16>> MemberName,
  Pointer<Uint32> Priority,
  Pointer<Pointer<Uint16>> Annotation,
) =>
    _RpcNsProfileEltInqNext(
      InquiryContext,
      IfId,
      MemberName,
      Priority,
      Annotation,
    );

late final _RpcNsProfileEltInqNext = _rpcns4.lookupFunction<
    Int32 Function(
  Pointer InquiryContext,
  Pointer<RPC_IF_ID> IfId,
  Pointer<Pointer<Uint16>> MemberName,
  Pointer<Uint32> Priority,
  Pointer<Pointer<Uint16>> Annotation,
),
    int Function(
  Pointer InquiryContext,
  Pointer<RPC_IF_ID> IfId,
  Pointer<Pointer<Uint16>> MemberName,
  Pointer<Uint32> Priority,
  Pointer<Pointer<Uint16>> Annotation,
)>('RpcNsProfileEltInqNextW');

int RpcNsProfileEltRemove(
  int ProfileNameSyntax,
  Pointer<Uint16> ProfileName,
  Pointer<RPC_IF_ID> IfId,
  int MemberNameSyntax,
  Pointer<Uint16> MemberName,
) =>
    _RpcNsProfileEltRemove(
      ProfileNameSyntax,
      ProfileName,
      IfId,
      MemberNameSyntax,
      MemberName,
    );

late final _RpcNsProfileEltRemove = _rpcns4.lookupFunction<
    Int32 Function(
  Uint32 ProfileNameSyntax,
  Pointer<Uint16> ProfileName,
  Pointer<RPC_IF_ID> IfId,
  Uint32 MemberNameSyntax,
  Pointer<Uint16> MemberName,
),
    int Function(
  int ProfileNameSyntax,
  Pointer<Uint16> ProfileName,
  Pointer<RPC_IF_ID> IfId,
  int MemberNameSyntax,
  Pointer<Uint16> MemberName,
)>('RpcNsProfileEltRemoveW');
