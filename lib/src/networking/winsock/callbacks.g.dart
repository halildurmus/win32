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
import '../../networking/winsock/structs.g.dart';
import '../../networkmanagement/qos/structs.g.dart';
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';
import '../../networking/winsock/callbacks.g.dart';

typedef LPBLOCKINGCALLBACK = Int32 Function(
  IntPtr dwContext,
);
typedef LPCONDITIONPROC = Int32 Function(
  Pointer<WSABUF> lpCallerId,
  Pointer<WSABUF> lpCallerData,
  Pointer<QOS> lpSQOS,
  Pointer<QOS> lpGQOS,
  Pointer<WSABUF> lpCalleeId,
  Pointer<WSABUF> lpCalleeData,
  Pointer<Uint32> g,
  IntPtr dwCallbackData,
);
typedef LPFN_ACCEPTEX = Int32 Function(
  IntPtr sListenSocket,
  IntPtr sAcceptSocket,
  Pointer lpOutputBuffer,
  Uint32 dwReceiveDataLength,
  Uint32 dwLocalAddressLength,
  Uint32 dwRemoteAddressLength,
  Pointer<Uint32> lpdwBytesReceived,
  Pointer<OVERLAPPED> lpOverlapped,
);
typedef LPFN_CONNECTEX = Int32 Function(
  IntPtr s,
  Pointer<SOCKADDR> name,
  Int32 namelen,
  Pointer lpSendBuffer,
  Uint32 dwSendDataLength,
  Pointer<Uint32> lpdwBytesSent,
  Pointer<OVERLAPPED> lpOverlapped,
);
typedef LPFN_DISCONNECTEX = Int32 Function(
  IntPtr s,
  Pointer<OVERLAPPED> lpOverlapped,
  Uint32 dwFlags,
  Uint32 dwReserved,
);
typedef LPFN_GETACCEPTEXSOCKADDRS = Void Function(
  Pointer lpOutputBuffer,
  Uint32 dwReceiveDataLength,
  Uint32 dwLocalAddressLength,
  Uint32 dwRemoteAddressLength,
  Pointer<Pointer<SOCKADDR>> LocalSockaddr,
  Pointer<Int32> LocalSockaddrLength,
  Pointer<Pointer<SOCKADDR>> RemoteSockaddr,
  Pointer<Int32> RemoteSockaddrLength,
);
typedef LPFN_NSPAPI = Uint32 Function();
typedef LPFN_RIOCLOSECOMPLETIONQUEUE = Void Function(
  Pointer<RIO_CQ_t> CQ,
);
typedef LPFN_RIOCREATECOMPLETIONQUEUE = Pointer<RIO_CQ_t> Function(
  Uint32 QueueSize,
  Pointer<RIO_NOTIFICATION_COMPLETION> NotificationCompletion,
);
typedef LPFN_RIOCREATEREQUESTQUEUE = Pointer<RIO_RQ_t> Function(
  IntPtr Socket,
  Uint32 MaxOutstandingReceive,
  Uint32 MaxReceiveDataBuffers,
  Uint32 MaxOutstandingSend,
  Uint32 MaxSendDataBuffers,
  Pointer<RIO_CQ_t> ReceiveCQ,
  Pointer<RIO_CQ_t> SendCQ,
  Pointer SocketContext,
);
typedef LPFN_RIODEQUEUECOMPLETION = Uint32 Function(
  Pointer<RIO_CQ_t> CQ,
  Pointer<RIORESULT> $Array,
  Uint32 ArraySize,
);
typedef LPFN_RIODEREGISTERBUFFER = Void Function(
  Pointer<RIO_BUFFERID_t> BufferId,
);
typedef LPFN_RIONOTIFY = Int32 Function(
  Pointer<RIO_CQ_t> CQ,
);
typedef LPFN_RIORECEIVE = Int32 Function(
  Pointer<RIO_RQ_t> SocketQueue,
  Pointer<RIO_BUF> pData,
  Uint32 DataBufferCount,
  Uint32 Flags,
  Pointer RequestContext,
);
typedef LPFN_RIORECEIVEEX = Int32 Function(
  Pointer<RIO_RQ_t> SocketQueue,
  Pointer<RIO_BUF> pData,
  Uint32 DataBufferCount,
  Pointer<RIO_BUF> pLocalAddress,
  Pointer<RIO_BUF> pRemoteAddress,
  Pointer<RIO_BUF> pControlContext,
  Pointer<RIO_BUF> pFlags,
  Uint32 Flags,
  Pointer RequestContext,
);
typedef LPFN_RIOREGISTERBUFFER = Pointer<RIO_BUFFERID_t> Function(
  Pointer<Utf8> DataBuffer,
  Uint32 DataLength,
);
typedef LPFN_RIORESIZECOMPLETIONQUEUE = Int32 Function(
  Pointer<RIO_CQ_t> CQ,
  Uint32 QueueSize,
);
typedef LPFN_RIORESIZEREQUESTQUEUE = Int32 Function(
  Pointer<RIO_RQ_t> RQ,
  Uint32 MaxOutstandingReceive,
  Uint32 MaxOutstandingSend,
);
typedef LPFN_RIOSEND = Int32 Function(
  Pointer<RIO_RQ_t> SocketQueue,
  Pointer<RIO_BUF> pData,
  Uint32 DataBufferCount,
  Uint32 Flags,
  Pointer RequestContext,
);
typedef LPFN_RIOSENDEX = Int32 Function(
  Pointer<RIO_RQ_t> SocketQueue,
  Pointer<RIO_BUF> pData,
  Uint32 DataBufferCount,
  Pointer<RIO_BUF> pLocalAddress,
  Pointer<RIO_BUF> pRemoteAddress,
  Pointer<RIO_BUF> pControlContext,
  Pointer<RIO_BUF> pFlags,
  Uint32 Flags,
  Pointer RequestContext,
);
typedef LPFN_TRANSMITFILE = Int32 Function(
  IntPtr hSocket,
  IntPtr hFile,
  Uint32 nNumberOfBytesToWrite,
  Uint32 nNumberOfBytesPerSend,
  Pointer<OVERLAPPED> lpOverlapped,
  Pointer<TRANSMIT_FILE_BUFFERS> lpTransmitBuffers,
  Uint32 dwReserved,
);
typedef LPFN_TRANSMITPACKETS = Int32 Function(
  IntPtr hSocket,
  Pointer<TRANSMIT_PACKETS_ELEMENT> lpPacketArray,
  Uint32 nElementCount,
  Uint32 nSendSize,
  Pointer<OVERLAPPED> lpOverlapped,
  Uint32 dwFlags,
);
typedef LPFN_WSAPOLL = Int32 Function(
  Pointer<WSAPOLLFD> fdarray,
  Uint32 nfds,
  Int32 timeout,
);
typedef LPFN_WSARECVMSG = Int32 Function(
  IntPtr s,
  Pointer<WSAMSG> lpMsg,
  Pointer<Uint32> lpdwNumberOfBytesRecvd,
  Pointer<OVERLAPPED> lpOverlapped,
  Pointer<NativeFunction<LPWSAOVERLAPPED_COMPLETION_ROUTINE>>
      lpCompletionRoutine,
);
typedef LPFN_WSASENDMSG = Int32 Function(
  IntPtr s,
  Pointer<WSAMSG> lpMsg,
  Uint32 dwFlags,
  Pointer<Uint32> lpNumberOfBytesSent,
  Pointer<OVERLAPPED> lpOverlapped,
  Pointer<NativeFunction<LPWSAOVERLAPPED_COMPLETION_ROUTINE>>
      lpCompletionRoutine,
);
typedef LPLOOKUPSERVICE_COMPLETION_ROUTINE = Void Function(
  Uint32 dwError,
  Uint32 dwBytes,
  Pointer<OVERLAPPED> lpOverlapped,
);
typedef LPNSPCLEANUP = Int32 Function(
  Pointer<GUID> lpProviderId,
);
typedef LPNSPGETSERVICECLASSINFO = Int32 Function(
  Pointer<GUID> lpProviderId,
  Pointer<Uint32> lpdwBufSize,
  Pointer<WSASERVICECLASSINFO> lpServiceClassInfo,
);
typedef LPNSPINSTALLSERVICECLASS = Int32 Function(
  Pointer<GUID> lpProviderId,
  Pointer<WSASERVICECLASSINFO> lpServiceClassInfo,
);
typedef LPNSPIOCTL = Int32 Function(
  IntPtr hLookup,
  Uint32 dwControlCode,
  Pointer lpvInBuffer,
  Uint32 cbInBuffer,
  Pointer lpvOutBuffer,
  Uint32 cbOutBuffer,
  Pointer<Uint32> lpcbBytesReturned,
  Pointer<WSACOMPLETION> lpCompletion,
  Pointer<WSATHREADID> lpThreadId,
);
typedef LPNSPLOOKUPSERVICEBEGIN = Int32 Function(
  Pointer<GUID> lpProviderId,
  Pointer<WSAQUERYSET> lpqsRestrictions,
  Pointer<WSASERVICECLASSINFO> lpServiceClassInfo,
  Uint32 dwControlFlags,
  Pointer<IntPtr> lphLookup,
);
typedef LPNSPLOOKUPSERVICEEND = Int32 Function(
  IntPtr hLookup,
);
typedef LPNSPLOOKUPSERVICENEXT = Int32 Function(
  IntPtr hLookup,
  Uint32 dwControlFlags,
  Pointer<Uint32> lpdwBufferLength,
  Pointer<WSAQUERYSET> lpqsResults,
);
typedef LPNSPREMOVESERVICECLASS = Int32 Function(
  Pointer<GUID> lpProviderId,
  Pointer<GUID> lpServiceClassId,
);
typedef LPNSPSETSERVICE = Int32 Function(
  Pointer<GUID> lpProviderId,
  Pointer<WSASERVICECLASSINFO> lpServiceClassInfo,
  Pointer<WSAQUERYSET> lpqsRegInfo,
  Int32 essOperation,
  Uint32 dwControlFlags,
);
typedef LPNSPSTARTUP = Int32 Function(
  Pointer<GUID> lpProviderId,
  Pointer<NSP_ROUTINE> lpnspRoutines,
);
typedef LPNSPV2CLEANUP = Int32 Function(
  Pointer<GUID> lpProviderId,
  Pointer pvClientSessionArg,
);
typedef LPNSPV2CLIENTSESSIONRUNDOWN = Void Function(
  Pointer<GUID> lpProviderId,
  Pointer pvClientSessionArg,
);
typedef LPNSPV2LOOKUPSERVICEBEGIN = Int32 Function(
  Pointer<GUID> lpProviderId,
  Pointer<WSAQUERYSET2> lpqsRestrictions,
  Uint32 dwControlFlags,
  Pointer lpvClientSessionArg,
  Pointer<IntPtr> lphLookup,
);
typedef LPNSPV2LOOKUPSERVICEEND = Int32 Function(
  IntPtr hLookup,
);
typedef LPNSPV2LOOKUPSERVICENEXTEX = Void Function(
  IntPtr hAsyncCall,
  IntPtr hLookup,
  Uint32 dwControlFlags,
  Pointer<Uint32> lpdwBufferLength,
  Pointer<WSAQUERYSET2> lpqsResults,
);
typedef LPNSPV2SETSERVICEEX = Void Function(
  IntPtr hAsyncCall,
  Pointer<GUID> lpProviderId,
  Pointer<WSAQUERYSET2> lpqsRegInfo,
  Int32 essOperation,
  Uint32 dwControlFlags,
  Pointer lpvClientSessionArg,
);
typedef LPNSPV2STARTUP = Int32 Function(
  Pointer<GUID> lpProviderId,
  Pointer<Pointer> ppvClientSessionArg,
);
typedef LPSERVICE_CALLBACK_PROC = Void Function(
  IntPtr lParam,
  IntPtr hAsyncTaskHandle,
);
typedef LPWPUCLOSEEVENT = Int32 Function(
  IntPtr hEvent,
  Pointer<Int32> lpErrno,
);
typedef LPWPUCLOSESOCKETHANDLE = Int32 Function(
  IntPtr s,
  Pointer<Int32> lpErrno,
);
typedef LPWPUCLOSETHREAD = Int32 Function(
  Pointer<WSATHREADID> lpThreadId,
  Pointer<Int32> lpErrno,
);
typedef LPWPUCOMPLETEOVERLAPPEDREQUEST = Int32 Function(
  IntPtr s,
  Pointer<OVERLAPPED> lpOverlapped,
  Uint32 dwError,
  Uint32 cbTransferred,
  Pointer<Int32> lpErrno,
);
typedef LPWPUCREATEEVENT = IntPtr Function(
  Pointer<Int32> lpErrno,
);
typedef LPWPUCREATESOCKETHANDLE = IntPtr Function(
  Uint32 dwCatalogEntryId,
  IntPtr dwContext,
  Pointer<Int32> lpErrno,
);
typedef LPWPUFDISSET = Int32 Function(
  IntPtr s,
  Pointer<fd_set> fdset,
);
typedef LPWPUGETPROVIDERPATH = Int32 Function(
  Pointer<GUID> lpProviderId,
  Pointer<Utf16> lpszProviderDllPath,
  Pointer<Int32> lpProviderDllPathLen,
  Pointer<Int32> lpErrno,
);
typedef LPWPUMODIFYIFSHANDLE = IntPtr Function(
  Uint32 dwCatalogEntryId,
  IntPtr ProposedHandle,
  Pointer<Int32> lpErrno,
);
typedef LPWPUOPENCURRENTTHREAD = Int32 Function(
  Pointer<WSATHREADID> lpThreadId,
  Pointer<Int32> lpErrno,
);
typedef LPWPUPOSTMESSAGE = Int32 Function(
  IntPtr hWnd,
  Uint32 Msg,
  IntPtr wParam,
  IntPtr lParam,
);
typedef LPWPUQUERYBLOCKINGCALLBACK = Int32 Function(
  Uint32 dwCatalogEntryId,
  Pointer<Pointer<NativeFunction<LPBLOCKINGCALLBACK>>> lplpfnCallback,
  Pointer<IntPtr> lpdwContext,
  Pointer<Int32> lpErrno,
);
typedef LPWPUQUERYSOCKETHANDLECONTEXT = Int32 Function(
  IntPtr s,
  Pointer<IntPtr> lpContext,
  Pointer<Int32> lpErrno,
);
typedef LPWPUQUEUEAPC = Int32 Function(
  Pointer<WSATHREADID> lpThreadId,
  Pointer<NativeFunction<LPWSAUSERAPC>> lpfnUserApc,
  IntPtr dwContext,
  Pointer<Int32> lpErrno,
);
typedef LPWPURESETEVENT = Int32 Function(
  IntPtr hEvent,
  Pointer<Int32> lpErrno,
);
typedef LPWPUSETEVENT = Int32 Function(
  IntPtr hEvent,
  Pointer<Int32> lpErrno,
);
typedef LPWSAOVERLAPPED_COMPLETION_ROUTINE = Void Function(
  Uint32 dwError,
  Uint32 cbTransferred,
  Pointer<OVERLAPPED> lpOverlapped,
  Uint32 dwFlags,
);
typedef LPWSAUSERAPC = Void Function(
  IntPtr dwContext,
);
typedef LPWSCDEINSTALLPROVIDER = Int32 Function(
  Pointer<GUID> lpProviderId,
  Pointer<Int32> lpErrno,
);
typedef LPWSCENABLENSPROVIDER = Int32 Function(
  Pointer<GUID> lpProviderId,
  Int32 fEnable,
);
typedef LPWSCENUMPROTOCOLS = Int32 Function(
  Pointer<Int32> lpiProtocols,
  Pointer<WSAPROTOCOL_INFO> lpProtocolBuffer,
  Pointer<Uint32> lpdwBufferLength,
  Pointer<Int32> lpErrno,
);
typedef LPWSCGETPROVIDERPATH = Int32 Function(
  Pointer<GUID> lpProviderId,
  Pointer<Utf16> lpszProviderDllPath,
  Pointer<Int32> lpProviderDllPathLen,
  Pointer<Int32> lpErrno,
);
typedef LPWSCINSTALLNAMESPACE = Int32 Function(
  Pointer<Utf16> lpszIdentifier,
  Pointer<Utf16> lpszPathName,
  Uint32 dwNameSpace,
  Uint32 dwVersion,
  Pointer<GUID> lpProviderId,
);
typedef LPWSCINSTALLPROVIDER = Int32 Function(
  Pointer<GUID> lpProviderId,
  Pointer<Utf16> lpszProviderDllPath,
  Pointer<WSAPROTOCOL_INFO> lpProtocolInfoList,
  Uint32 dwNumberOfEntries,
  Pointer<Int32> lpErrno,
);
typedef LPWSCUNINSTALLNAMESPACE = Int32 Function(
  Pointer<GUID> lpProviderId,
);
typedef LPWSCUPDATEPROVIDER = Int32 Function(
  Pointer<GUID> lpProviderId,
  Pointer<Utf16> lpszProviderDllPath,
  Pointer<WSAPROTOCOL_INFO> lpProtocolInfoList,
  Uint32 dwNumberOfEntries,
  Pointer<Int32> lpErrno,
);
typedef LPWSCWRITENAMESPACEORDER = Int32 Function(
  Pointer<GUID> lpProviderId,
  Uint32 dwNumberOfEntries,
);
typedef LPWSCWRITEPROVIDERORDER = Int32 Function(
  Pointer<Uint32> lpwdCatalogEntryId,
  Uint32 dwNumberOfEntries,
);
typedef LPWSPACCEPT = IntPtr Function(
  IntPtr s,
  Pointer<SOCKADDR> addr,
  Pointer<Int32> addrlen,
  Pointer<NativeFunction<LPCONDITIONPROC>> lpfnCondition,
  IntPtr dwCallbackData,
  Pointer<Int32> lpErrno,
);
typedef LPWSPADDRESSTOSTRING = Int32 Function(
  Pointer<SOCKADDR> lpsaAddress,
  Uint32 dwAddressLength,
  Pointer<WSAPROTOCOL_INFO> lpProtocolInfo,
  Pointer<Utf16> lpszAddressString,
  Pointer<Uint32> lpdwAddressStringLength,
  Pointer<Int32> lpErrno,
);
typedef LPWSPASYNCSELECT = Int32 Function(
  IntPtr s,
  IntPtr hWnd,
  Uint32 wMsg,
  Int32 lEvent,
  Pointer<Int32> lpErrno,
);
typedef LPWSPBIND = Int32 Function(
  IntPtr s,
  Pointer<SOCKADDR> name,
  Int32 namelen,
  Pointer<Int32> lpErrno,
);
typedef LPWSPCANCELBLOCKINGCALL = Int32 Function(
  Pointer<Int32> lpErrno,
);
typedef LPWSPCLEANUP = Int32 Function(
  Pointer<Int32> lpErrno,
);
typedef LPWSPCLOSESOCKET = Int32 Function(
  IntPtr s,
  Pointer<Int32> lpErrno,
);
typedef LPWSPCONNECT = Int32 Function(
  IntPtr s,
  Pointer<SOCKADDR> name,
  Int32 namelen,
  Pointer<WSABUF> lpCallerData,
  Pointer<WSABUF> lpCalleeData,
  Pointer<QOS> lpSQOS,
  Pointer<QOS> lpGQOS,
  Pointer<Int32> lpErrno,
);
typedef LPWSPDUPLICATESOCKET = Int32 Function(
  IntPtr s,
  Uint32 dwProcessId,
  Pointer<WSAPROTOCOL_INFO> lpProtocolInfo,
  Pointer<Int32> lpErrno,
);
typedef LPWSPENUMNETWORKEVENTS = Int32 Function(
  IntPtr s,
  IntPtr hEventObject,
  Pointer<WSANETWORKEVENTS> lpNetworkEvents,
  Pointer<Int32> lpErrno,
);
typedef LPWSPEVENTSELECT = Int32 Function(
  IntPtr s,
  IntPtr hEventObject,
  Int32 lNetworkEvents,
  Pointer<Int32> lpErrno,
);
typedef LPWSPGETOVERLAPPEDRESULT = Int32 Function(
  IntPtr s,
  Pointer<OVERLAPPED> lpOverlapped,
  Pointer<Uint32> lpcbTransfer,
  Int32 fWait,
  Pointer<Uint32> lpdwFlags,
  Pointer<Int32> lpErrno,
);
typedef LPWSPGETPEERNAME = Int32 Function(
  IntPtr s,
  Pointer<SOCKADDR> name,
  Pointer<Int32> namelen,
  Pointer<Int32> lpErrno,
);
typedef LPWSPGETQOSBYNAME = Int32 Function(
  IntPtr s,
  Pointer<WSABUF> lpQOSName,
  Pointer<QOS> lpQOS,
  Pointer<Int32> lpErrno,
);
typedef LPWSPGETSOCKNAME = Int32 Function(
  IntPtr s,
  Pointer<SOCKADDR> name,
  Pointer<Int32> namelen,
  Pointer<Int32> lpErrno,
);
typedef LPWSPGETSOCKOPT = Int32 Function(
  IntPtr s,
  Int32 level,
  Int32 optname,
  Pointer<Utf8> optval,
  Pointer<Int32> optlen,
  Pointer<Int32> lpErrno,
);
typedef LPWSPIOCTL = Int32 Function(
  IntPtr s,
  Uint32 dwIoControlCode,
  Pointer lpvInBuffer,
  Uint32 cbInBuffer,
  Pointer lpvOutBuffer,
  Uint32 cbOutBuffer,
  Pointer<Uint32> lpcbBytesReturned,
  Pointer<OVERLAPPED> lpOverlapped,
  Pointer<NativeFunction<LPWSAOVERLAPPED_COMPLETION_ROUTINE>>
      lpCompletionRoutine,
  Pointer<WSATHREADID> lpThreadId,
  Pointer<Int32> lpErrno,
);
typedef LPWSPJOINLEAF = IntPtr Function(
  IntPtr s,
  Pointer<SOCKADDR> name,
  Int32 namelen,
  Pointer<WSABUF> lpCallerData,
  Pointer<WSABUF> lpCalleeData,
  Pointer<QOS> lpSQOS,
  Pointer<QOS> lpGQOS,
  Uint32 dwFlags,
  Pointer<Int32> lpErrno,
);
typedef LPWSPLISTEN = Int32 Function(
  IntPtr s,
  Int32 backlog,
  Pointer<Int32> lpErrno,
);
typedef LPWSPRECV = Int32 Function(
  IntPtr s,
  Pointer<WSABUF> lpBuffers,
  Uint32 dwBufferCount,
  Pointer<Uint32> lpNumberOfBytesRecvd,
  Pointer<Uint32> lpFlags,
  Pointer<OVERLAPPED> lpOverlapped,
  Pointer<NativeFunction<LPWSAOVERLAPPED_COMPLETION_ROUTINE>>
      lpCompletionRoutine,
  Pointer<WSATHREADID> lpThreadId,
  Pointer<Int32> lpErrno,
);
typedef LPWSPRECVDISCONNECT = Int32 Function(
  IntPtr s,
  Pointer<WSABUF> lpInboundDisconnectData,
  Pointer<Int32> lpErrno,
);
typedef LPWSPRECVFROM = Int32 Function(
  IntPtr s,
  Pointer<WSABUF> lpBuffers,
  Uint32 dwBufferCount,
  Pointer<Uint32> lpNumberOfBytesRecvd,
  Pointer<Uint32> lpFlags,
  Pointer<SOCKADDR> lpFrom,
  Pointer<Int32> lpFromlen,
  Pointer<OVERLAPPED> lpOverlapped,
  Pointer<NativeFunction<LPWSAOVERLAPPED_COMPLETION_ROUTINE>>
      lpCompletionRoutine,
  Pointer<WSATHREADID> lpThreadId,
  Pointer<Int32> lpErrno,
);
typedef LPWSPSELECT = Int32 Function(
  Int32 nfds,
  Pointer<fd_set> readfds,
  Pointer<fd_set> writefds,
  Pointer<fd_set> exceptfds,
  Pointer<timeval> timeout,
  Pointer<Int32> lpErrno,
);
typedef LPWSPSEND = Int32 Function(
  IntPtr s,
  Pointer<WSABUF> lpBuffers,
  Uint32 dwBufferCount,
  Pointer<Uint32> lpNumberOfBytesSent,
  Uint32 dwFlags,
  Pointer<OVERLAPPED> lpOverlapped,
  Pointer<NativeFunction<LPWSAOVERLAPPED_COMPLETION_ROUTINE>>
      lpCompletionRoutine,
  Pointer<WSATHREADID> lpThreadId,
  Pointer<Int32> lpErrno,
);
typedef LPWSPSENDDISCONNECT = Int32 Function(
  IntPtr s,
  Pointer<WSABUF> lpOutboundDisconnectData,
  Pointer<Int32> lpErrno,
);
typedef LPWSPSENDTO = Int32 Function(
  IntPtr s,
  Pointer<WSABUF> lpBuffers,
  Uint32 dwBufferCount,
  Pointer<Uint32> lpNumberOfBytesSent,
  Uint32 dwFlags,
  Pointer<SOCKADDR> lpTo,
  Int32 iTolen,
  Pointer<OVERLAPPED> lpOverlapped,
  Pointer<NativeFunction<LPWSAOVERLAPPED_COMPLETION_ROUTINE>>
      lpCompletionRoutine,
  Pointer<WSATHREADID> lpThreadId,
  Pointer<Int32> lpErrno,
);
typedef LPWSPSETSOCKOPT = Int32 Function(
  IntPtr s,
  Int32 level,
  Int32 optname,
  Pointer<Utf8> optval,
  Int32 optlen,
  Pointer<Int32> lpErrno,
);
typedef LPWSPSHUTDOWN = Int32 Function(
  IntPtr s,
  Int32 how,
  Pointer<Int32> lpErrno,
);
typedef LPWSPSOCKET = IntPtr Function(
  Int32 af,
  Int32 type,
  Int32 protocol,
  Pointer<WSAPROTOCOL_INFO> lpProtocolInfo,
  Uint32 g,
  Uint32 dwFlags,
  Pointer<Int32> lpErrno,
);
typedef LPWSPSTARTUP = Int32 Function(
  Uint16 wVersionRequested,
  Pointer<WSPData> lpWSPData,
  Pointer<WSAPROTOCOL_INFO> lpProtocolInfo,
  WSPUPCALLTABLE UpcallTable,
  Pointer<WSPPROC_TABLE> lpProcTable,
);
typedef LPWSPSTRINGTOADDRESS = Int32 Function(
  Pointer<Utf16> AddressString,
  Int32 AddressFamily,
  Pointer<WSAPROTOCOL_INFO> lpProtocolInfo,
  Pointer<SOCKADDR> lpAddress,
  Pointer<Int32> lpAddressLength,
  Pointer<Int32> lpErrno,
);
