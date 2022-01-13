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
import '../../networking/winsock/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../specialTypes.dart';
import '../../networking/winsock/callbacks.g.dart';
import '../../system/io/structs.g.dart';
import '../../system/com/structs.g.dart';
import '../../networkmanagement/qos/structs.g.dart';
import '../../foundation/callbacks.g.dart';
import '../../networkmanagement/windowsfilteringplatform/structs.g.dart'; // -----------------------------------------------------------------------

// ws2_32.dll
// -----------------------------------------------------------------------
final _ws2_32 = DynamicLibrary.open('ws2_32.dll');

void FreeAddrInfoEx(
  Pointer<addrinfoex> pAddrInfoEx,
) =>
    _FreeAddrInfoEx(
      pAddrInfoEx,
    );

late final _FreeAddrInfoEx = _ws2_32.lookupFunction<
    Void Function(
  Pointer<addrinfoex> pAddrInfoEx,
),
    void Function(
  Pointer<addrinfoex> pAddrInfoEx,
)>('FreeAddrInfoExW');

void FreeAddrInfo(
  Pointer<addrinfo> pAddrInfo,
) =>
    _FreeAddrInfo(
      pAddrInfo,
    );

late final _FreeAddrInfo = _ws2_32.lookupFunction<
    Void Function(
  Pointer<addrinfo> pAddrInfo,
),
    void Function(
  Pointer<addrinfo> pAddrInfo,
)>('FreeAddrInfoW');

int GetAddrInfoExCancel(
  Pointer<IntPtr> lpHandle,
) =>
    _GetAddrInfoExCancel(
      lpHandle,
    );

late final _GetAddrInfoExCancel = _ws2_32.lookupFunction<
    Int32 Function(
  Pointer<IntPtr> lpHandle,
),
    int Function(
  Pointer<IntPtr> lpHandle,
)>('GetAddrInfoExCancel');

int GetAddrInfoExOverlappedResult(
  Pointer<OVERLAPPED> lpOverlapped,
) =>
    _GetAddrInfoExOverlappedResult(
      lpOverlapped,
    );

late final _GetAddrInfoExOverlappedResult = _ws2_32.lookupFunction<
    Int32 Function(
  Pointer<OVERLAPPED> lpOverlapped,
),
    int Function(
  Pointer<OVERLAPPED> lpOverlapped,
)>('GetAddrInfoExOverlappedResult');

int GetAddrInfoEx(
  Pointer<Utf16> pName,
  Pointer<Utf16> pServiceName,
  int dwNameSpace,
  Pointer<GUID> lpNspId,
  Pointer<addrinfoex> hints,
  Pointer<Pointer<addrinfoex>> ppResult,
  Pointer<timeval> timeout,
  Pointer<OVERLAPPED> lpOverlapped,
  Pointer<NativeFunction<LPLOOKUPSERVICE_COMPLETION_ROUTINE>>
      lpCompletionRoutine,
  Pointer<IntPtr> lpHandle,
) =>
    _GetAddrInfoEx(
      pName,
      pServiceName,
      dwNameSpace,
      lpNspId,
      hints,
      ppResult,
      timeout,
      lpOverlapped,
      lpCompletionRoutine,
      lpHandle,
    );

late final _GetAddrInfoEx = _ws2_32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pName,
  Pointer<Utf16> pServiceName,
  Uint32 dwNameSpace,
  Pointer<GUID> lpNspId,
  Pointer<addrinfoex> hints,
  Pointer<Pointer<addrinfoex>> ppResult,
  Pointer<timeval> timeout,
  Pointer<OVERLAPPED> lpOverlapped,
  Pointer<NativeFunction<LPLOOKUPSERVICE_COMPLETION_ROUTINE>>
      lpCompletionRoutine,
  Pointer<IntPtr> lpHandle,
),
    int Function(
  Pointer<Utf16> pName,
  Pointer<Utf16> pServiceName,
  int dwNameSpace,
  Pointer<GUID> lpNspId,
  Pointer<addrinfoex> hints,
  Pointer<Pointer<addrinfoex>> ppResult,
  Pointer<timeval> timeout,
  Pointer<OVERLAPPED> lpOverlapped,
  Pointer<NativeFunction<LPLOOKUPSERVICE_COMPLETION_ROUTINE>>
      lpCompletionRoutine,
  Pointer<IntPtr> lpHandle,
)>('GetAddrInfoExW');

int GetAddrInfo(
  Pointer<Utf16> pNodeName,
  Pointer<Utf16> pServiceName,
  Pointer<addrinfo> pHints,
  Pointer<Pointer<addrinfo>> ppResult,
) =>
    _GetAddrInfo(
      pNodeName,
      pServiceName,
      pHints,
      ppResult,
    );

late final _GetAddrInfo = _ws2_32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pNodeName,
  Pointer<Utf16> pServiceName,
  Pointer<addrinfo> pHints,
  Pointer<Pointer<addrinfo>> ppResult,
),
    int Function(
  Pointer<Utf16> pNodeName,
  Pointer<Utf16> pServiceName,
  Pointer<addrinfo> pHints,
  Pointer<Pointer<addrinfo>> ppResult,
)>('GetAddrInfoW');

int GetHostName(
  Pointer<Utf16> name,
  int namelen,
) =>
    _GetHostName(
      name,
      namelen,
    );

late final _GetHostName = _ws2_32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> name,
  Int32 namelen,
),
    int Function(
  Pointer<Utf16> name,
  int namelen,
)>('GetHostNameW');

int GetNameInfo(
  Pointer<SOCKADDR> pSockaddr,
  int SockaddrLength,
  Pointer<Utf16> pNodeBuffer,
  int NodeBufferSize,
  Pointer<Utf16> pServiceBuffer,
  int ServiceBufferSize,
  int Flags,
) =>
    _GetNameInfo(
      pSockaddr,
      SockaddrLength,
      pNodeBuffer,
      NodeBufferSize,
      pServiceBuffer,
      ServiceBufferSize,
      Flags,
    );

late final _GetNameInfo = _ws2_32.lookupFunction<
    Int32 Function(
  Pointer<SOCKADDR> pSockaddr,
  Int32 SockaddrLength,
  Pointer<Utf16> pNodeBuffer,
  Uint32 NodeBufferSize,
  Pointer<Utf16> pServiceBuffer,
  Uint32 ServiceBufferSize,
  Int32 Flags,
),
    int Function(
  Pointer<SOCKADDR> pSockaddr,
  int SockaddrLength,
  Pointer<Utf16> pNodeBuffer,
  int NodeBufferSize,
  Pointer<Utf16> pServiceBuffer,
  int ServiceBufferSize,
  int Flags,
)>('GetNameInfoW');

Pointer<Utf16> InetNtop(
  int Family,
  Pointer pAddr,
  Pointer<Utf16> pStringBuf,
  int StringBufSize,
) =>
    _InetNtop(
      Family,
      pAddr,
      pStringBuf,
      StringBufSize,
    );

late final _InetNtop = _ws2_32.lookupFunction<
    Pointer<Utf16> Function(
  Int32 Family,
  Pointer pAddr,
  Pointer<Utf16> pStringBuf,
  IntPtr StringBufSize,
),
    Pointer<Utf16> Function(
  int Family,
  Pointer pAddr,
  Pointer<Utf16> pStringBuf,
  int StringBufSize,
)>('InetNtopW');

int InetPton(
  int Family,
  Pointer<Utf16> pszAddrString,
  Pointer pAddrBuf,
) =>
    _InetPton(
      Family,
      pszAddrString,
      pAddrBuf,
    );

late final _InetPton = _ws2_32.lookupFunction<
    Int32 Function(
  Int32 Family,
  Pointer<Utf16> pszAddrString,
  Pointer pAddrBuf,
),
    int Function(
  int Family,
  Pointer<Utf16> pszAddrString,
  Pointer pAddrBuf,
)>('InetPtonW');

int ProcessSocketNotifications(
  int completionPort,
  int registrationCount,
  Pointer<SOCK_NOTIFY_REGISTRATION> registrationInfos,
  int timeoutMs,
  int completionCount,
  Pointer<OVERLAPPED_ENTRY> completionPortEntries,
  Pointer<Uint32> receivedEntryCount,
) =>
    _ProcessSocketNotifications(
      completionPort,
      registrationCount,
      registrationInfos,
      timeoutMs,
      completionCount,
      completionPortEntries,
      receivedEntryCount,
    );

late final _ProcessSocketNotifications = _ws2_32.lookupFunction<
    Uint32 Function(
  IntPtr completionPort,
  Uint32 registrationCount,
  Pointer<SOCK_NOTIFY_REGISTRATION> registrationInfos,
  Uint32 timeoutMs,
  Uint32 completionCount,
  Pointer<OVERLAPPED_ENTRY> completionPortEntries,
  Pointer<Uint32> receivedEntryCount,
),
    int Function(
  int completionPort,
  int registrationCount,
  Pointer<SOCK_NOTIFY_REGISTRATION> registrationInfos,
  int timeoutMs,
  int completionCount,
  Pointer<OVERLAPPED_ENTRY> completionPortEntries,
  Pointer<Uint32> receivedEntryCount,
)>('ProcessSocketNotifications');

int SetAddrInfoEx(
  Pointer<Utf16> pName,
  Pointer<Utf16> pServiceName,
  Pointer<SOCKET_ADDRESS> pAddresses,
  int dwAddressCount,
  Pointer<BLOB> lpBlob,
  int dwFlags,
  int dwNameSpace,
  Pointer<GUID> lpNspId,
  Pointer<timeval> timeout,
  Pointer<OVERLAPPED> lpOverlapped,
  Pointer<NativeFunction<LPLOOKUPSERVICE_COMPLETION_ROUTINE>>
      lpCompletionRoutine,
  Pointer<IntPtr> lpNameHandle,
) =>
    _SetAddrInfoEx(
      pName,
      pServiceName,
      pAddresses,
      dwAddressCount,
      lpBlob,
      dwFlags,
      dwNameSpace,
      lpNspId,
      timeout,
      lpOverlapped,
      lpCompletionRoutine,
      lpNameHandle,
    );

late final _SetAddrInfoEx = _ws2_32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pName,
  Pointer<Utf16> pServiceName,
  Pointer<SOCKET_ADDRESS> pAddresses,
  Uint32 dwAddressCount,
  Pointer<BLOB> lpBlob,
  Uint32 dwFlags,
  Uint32 dwNameSpace,
  Pointer<GUID> lpNspId,
  Pointer<timeval> timeout,
  Pointer<OVERLAPPED> lpOverlapped,
  Pointer<NativeFunction<LPLOOKUPSERVICE_COMPLETION_ROUTINE>>
      lpCompletionRoutine,
  Pointer<IntPtr> lpNameHandle,
),
    int Function(
  Pointer<Utf16> pName,
  Pointer<Utf16> pServiceName,
  Pointer<SOCKET_ADDRESS> pAddresses,
  int dwAddressCount,
  Pointer<BLOB> lpBlob,
  int dwFlags,
  int dwNameSpace,
  Pointer<GUID> lpNspId,
  Pointer<timeval> timeout,
  Pointer<OVERLAPPED> lpOverlapped,
  Pointer<NativeFunction<LPLOOKUPSERVICE_COMPLETION_ROUTINE>>
      lpCompletionRoutine,
  Pointer<IntPtr> lpNameHandle,
)>('SetAddrInfoExW');

int WPUCompleteOverlappedRequest(
  int s,
  Pointer<OVERLAPPED> lpOverlapped,
  int dwError,
  int cbTransferred,
  Pointer<Int32> lpErrno,
) =>
    _WPUCompleteOverlappedRequest(
      s,
      lpOverlapped,
      dwError,
      cbTransferred,
      lpErrno,
    );

late final _WPUCompleteOverlappedRequest = _ws2_32.lookupFunction<
    Int32 Function(
  IntPtr s,
  Pointer<OVERLAPPED> lpOverlapped,
  Uint32 dwError,
  Uint32 cbTransferred,
  Pointer<Int32> lpErrno,
),
    int Function(
  int s,
  Pointer<OVERLAPPED> lpOverlapped,
  int dwError,
  int cbTransferred,
  Pointer<Int32> lpErrno,
)>('WPUCompleteOverlappedRequest');

int WSAAccept(
  int s,
  Pointer<SOCKADDR> addr,
  Pointer<Int32> addrlen,
  Pointer<NativeFunction<LPCONDITIONPROC>> lpfnCondition,
  int dwCallbackData,
) =>
    _WSAAccept(
      s,
      addr,
      addrlen,
      lpfnCondition,
      dwCallbackData,
    );

late final _WSAAccept = _ws2_32.lookupFunction<
    IntPtr Function(
  IntPtr s,
  Pointer<SOCKADDR> addr,
  Pointer<Int32> addrlen,
  Pointer<NativeFunction<LPCONDITIONPROC>> lpfnCondition,
  IntPtr dwCallbackData,
),
    int Function(
  int s,
  Pointer<SOCKADDR> addr,
  Pointer<Int32> addrlen,
  Pointer<NativeFunction<LPCONDITIONPROC>> lpfnCondition,
  int dwCallbackData,
)>('WSAAccept');

int WSAAddressToString(
  Pointer<SOCKADDR> lpsaAddress,
  int dwAddressLength,
  Pointer<WSAPROTOCOL_INFO> lpProtocolInfo,
  Pointer<Utf16> lpszAddressString,
  Pointer<Uint32> lpdwAddressStringLength,
) =>
    _WSAAddressToString(
      lpsaAddress,
      dwAddressLength,
      lpProtocolInfo,
      lpszAddressString,
      lpdwAddressStringLength,
    );

late final _WSAAddressToString = _ws2_32.lookupFunction<
    Int32 Function(
  Pointer<SOCKADDR> lpsaAddress,
  Uint32 dwAddressLength,
  Pointer<WSAPROTOCOL_INFO> lpProtocolInfo,
  Pointer<Utf16> lpszAddressString,
  Pointer<Uint32> lpdwAddressStringLength,
),
    int Function(
  Pointer<SOCKADDR> lpsaAddress,
  int dwAddressLength,
  Pointer<WSAPROTOCOL_INFO> lpProtocolInfo,
  Pointer<Utf16> lpszAddressString,
  Pointer<Uint32> lpdwAddressStringLength,
)>('WSAAddressToStringW');

int WSAAdvertiseProvider(
  Pointer<GUID> puuidProviderId,
  Pointer<NSPV2_ROUTINE> pNSPv2Routine,
) =>
    _WSAAdvertiseProvider(
      puuidProviderId,
      pNSPv2Routine,
    );

late final _WSAAdvertiseProvider = _ws2_32.lookupFunction<
    Int32 Function(
  Pointer<GUID> puuidProviderId,
  Pointer<NSPV2_ROUTINE> pNSPv2Routine,
),
    int Function(
  Pointer<GUID> puuidProviderId,
  Pointer<NSPV2_ROUTINE> pNSPv2Routine,
)>('WSAAdvertiseProvider');

int WSAAsyncGetHostByAddr(
  int hWnd,
  int wMsg,
  Pointer<Utf8> addr,
  int len,
  int type,
  Pointer<Utf8> buf,
  int buflen,
) =>
    _WSAAsyncGetHostByAddr(
      hWnd,
      wMsg,
      addr,
      len,
      type,
      buf,
      buflen,
    );

late final _WSAAsyncGetHostByAddr = _ws2_32.lookupFunction<
    IntPtr Function(
  IntPtr hWnd,
  Uint32 wMsg,
  Pointer<Utf8> addr,
  Int32 len,
  Int32 type,
  Pointer<Utf8> buf,
  Int32 buflen,
),
    int Function(
  int hWnd,
  int wMsg,
  Pointer<Utf8> addr,
  int len,
  int type,
  Pointer<Utf8> buf,
  int buflen,
)>('WSAAsyncGetHostByAddr');

int WSAAsyncGetHostByName(
  int hWnd,
  int wMsg,
  Pointer<Utf8> name,
  Pointer<Utf8> buf,
  int buflen,
) =>
    _WSAAsyncGetHostByName(
      hWnd,
      wMsg,
      name,
      buf,
      buflen,
    );

late final _WSAAsyncGetHostByName = _ws2_32.lookupFunction<
    IntPtr Function(
  IntPtr hWnd,
  Uint32 wMsg,
  Pointer<Utf8> name,
  Pointer<Utf8> buf,
  Int32 buflen,
),
    int Function(
  int hWnd,
  int wMsg,
  Pointer<Utf8> name,
  Pointer<Utf8> buf,
  int buflen,
)>('WSAAsyncGetHostByName');

int WSAAsyncGetProtoByName(
  int hWnd,
  int wMsg,
  Pointer<Utf8> name,
  Pointer<Utf8> buf,
  int buflen,
) =>
    _WSAAsyncGetProtoByName(
      hWnd,
      wMsg,
      name,
      buf,
      buflen,
    );

late final _WSAAsyncGetProtoByName = _ws2_32.lookupFunction<
    IntPtr Function(
  IntPtr hWnd,
  Uint32 wMsg,
  Pointer<Utf8> name,
  Pointer<Utf8> buf,
  Int32 buflen,
),
    int Function(
  int hWnd,
  int wMsg,
  Pointer<Utf8> name,
  Pointer<Utf8> buf,
  int buflen,
)>('WSAAsyncGetProtoByName');

int WSAAsyncGetProtoByNumber(
  int hWnd,
  int wMsg,
  int number,
  Pointer<Utf8> buf,
  int buflen,
) =>
    _WSAAsyncGetProtoByNumber(
      hWnd,
      wMsg,
      number,
      buf,
      buflen,
    );

late final _WSAAsyncGetProtoByNumber = _ws2_32.lookupFunction<
    IntPtr Function(
  IntPtr hWnd,
  Uint32 wMsg,
  Int32 number,
  Pointer<Utf8> buf,
  Int32 buflen,
),
    int Function(
  int hWnd,
  int wMsg,
  int number,
  Pointer<Utf8> buf,
  int buflen,
)>('WSAAsyncGetProtoByNumber');

int WSAAsyncGetServByName(
  int hWnd,
  int wMsg,
  Pointer<Utf8> name,
  Pointer<Utf8> proto,
  Pointer<Utf8> buf,
  int buflen,
) =>
    _WSAAsyncGetServByName(
      hWnd,
      wMsg,
      name,
      proto,
      buf,
      buflen,
    );

late final _WSAAsyncGetServByName = _ws2_32.lookupFunction<
    IntPtr Function(
  IntPtr hWnd,
  Uint32 wMsg,
  Pointer<Utf8> name,
  Pointer<Utf8> proto,
  Pointer<Utf8> buf,
  Int32 buflen,
),
    int Function(
  int hWnd,
  int wMsg,
  Pointer<Utf8> name,
  Pointer<Utf8> proto,
  Pointer<Utf8> buf,
  int buflen,
)>('WSAAsyncGetServByName');

int WSAAsyncGetServByPort(
  int hWnd,
  int wMsg,
  int port,
  Pointer<Utf8> proto,
  Pointer<Utf8> buf,
  int buflen,
) =>
    _WSAAsyncGetServByPort(
      hWnd,
      wMsg,
      port,
      proto,
      buf,
      buflen,
    );

late final _WSAAsyncGetServByPort = _ws2_32.lookupFunction<
    IntPtr Function(
  IntPtr hWnd,
  Uint32 wMsg,
  Int32 port,
  Pointer<Utf8> proto,
  Pointer<Utf8> buf,
  Int32 buflen,
),
    int Function(
  int hWnd,
  int wMsg,
  int port,
  Pointer<Utf8> proto,
  Pointer<Utf8> buf,
  int buflen,
)>('WSAAsyncGetServByPort');

int WSAAsyncSelect(
  int s,
  int hWnd,
  int wMsg,
  int lEvent,
) =>
    _WSAAsyncSelect(
      s,
      hWnd,
      wMsg,
      lEvent,
    );

late final _WSAAsyncSelect = _ws2_32.lookupFunction<
    Int32 Function(
  IntPtr s,
  IntPtr hWnd,
  Uint32 wMsg,
  Int32 lEvent,
),
    int Function(
  int s,
  int hWnd,
  int wMsg,
  int lEvent,
)>('WSAAsyncSelect');

int WSACancelAsyncRequest(
  int hAsyncTaskHandle,
) =>
    _WSACancelAsyncRequest(
      hAsyncTaskHandle,
    );

late final _WSACancelAsyncRequest = _ws2_32.lookupFunction<
    Int32 Function(
  IntPtr hAsyncTaskHandle,
),
    int Function(
  int hAsyncTaskHandle,
)>('WSACancelAsyncRequest');

int WSACancelBlockingCall() => _WSACancelBlockingCall();

late final _WSACancelBlockingCall = _ws2_32
    .lookupFunction<Int32 Function(), int Function()>('WSACancelBlockingCall');

int WSACleanup() => _WSACleanup();

late final _WSACleanup =
    _ws2_32.lookupFunction<Int32 Function(), int Function()>('WSACleanup');

int WSACloseEvent(
  int hEvent,
) =>
    _WSACloseEvent(
      hEvent,
    );

late final _WSACloseEvent = _ws2_32.lookupFunction<
    Int32 Function(
  IntPtr hEvent,
),
    int Function(
  int hEvent,
)>('WSACloseEvent');

int WSAConnect(
  int s,
  Pointer<SOCKADDR> name,
  int namelen,
  Pointer<WSABUF> lpCallerData,
  Pointer<WSABUF> lpCalleeData,
  Pointer<QOS> lpSQOS,
  Pointer<QOS> lpGQOS,
) =>
    _WSAConnect(
      s,
      name,
      namelen,
      lpCallerData,
      lpCalleeData,
      lpSQOS,
      lpGQOS,
    );

late final _WSAConnect = _ws2_32.lookupFunction<
    Int32 Function(
  IntPtr s,
  Pointer<SOCKADDR> name,
  Int32 namelen,
  Pointer<WSABUF> lpCallerData,
  Pointer<WSABUF> lpCalleeData,
  Pointer<QOS> lpSQOS,
  Pointer<QOS> lpGQOS,
),
    int Function(
  int s,
  Pointer<SOCKADDR> name,
  int namelen,
  Pointer<WSABUF> lpCallerData,
  Pointer<WSABUF> lpCalleeData,
  Pointer<QOS> lpSQOS,
  Pointer<QOS> lpGQOS,
)>('WSAConnect');

int WSAConnectByList(
  int s,
  Pointer<SOCKET_ADDRESS_LIST> SocketAddress,
  Pointer<Uint32> LocalAddressLength,
  Pointer<SOCKADDR> LocalAddress,
  Pointer<Uint32> RemoteAddressLength,
  Pointer<SOCKADDR> RemoteAddress,
  Pointer<timeval> timeout,
  Pointer<OVERLAPPED> Reserved,
) =>
    _WSAConnectByList(
      s,
      SocketAddress,
      LocalAddressLength,
      LocalAddress,
      RemoteAddressLength,
      RemoteAddress,
      timeout,
      Reserved,
    );

late final _WSAConnectByList = _ws2_32.lookupFunction<
    Int32 Function(
  IntPtr s,
  Pointer<SOCKET_ADDRESS_LIST> SocketAddress,
  Pointer<Uint32> LocalAddressLength,
  Pointer<SOCKADDR> LocalAddress,
  Pointer<Uint32> RemoteAddressLength,
  Pointer<SOCKADDR> RemoteAddress,
  Pointer<timeval> timeout,
  Pointer<OVERLAPPED> Reserved,
),
    int Function(
  int s,
  Pointer<SOCKET_ADDRESS_LIST> SocketAddress,
  Pointer<Uint32> LocalAddressLength,
  Pointer<SOCKADDR> LocalAddress,
  Pointer<Uint32> RemoteAddressLength,
  Pointer<SOCKADDR> RemoteAddress,
  Pointer<timeval> timeout,
  Pointer<OVERLAPPED> Reserved,
)>('WSAConnectByList');

int WSAConnectByName(
  int s,
  Pointer<Utf16> nodename,
  Pointer<Utf16> servicename,
  Pointer<Uint32> LocalAddressLength,
  Pointer<SOCKADDR> LocalAddress,
  Pointer<Uint32> RemoteAddressLength,
  Pointer<SOCKADDR> RemoteAddress,
  Pointer<timeval> timeout,
  Pointer<OVERLAPPED> Reserved,
) =>
    _WSAConnectByName(
      s,
      nodename,
      servicename,
      LocalAddressLength,
      LocalAddress,
      RemoteAddressLength,
      RemoteAddress,
      timeout,
      Reserved,
    );

late final _WSAConnectByName = _ws2_32.lookupFunction<
    Int32 Function(
  IntPtr s,
  Pointer<Utf16> nodename,
  Pointer<Utf16> servicename,
  Pointer<Uint32> LocalAddressLength,
  Pointer<SOCKADDR> LocalAddress,
  Pointer<Uint32> RemoteAddressLength,
  Pointer<SOCKADDR> RemoteAddress,
  Pointer<timeval> timeout,
  Pointer<OVERLAPPED> Reserved,
),
    int Function(
  int s,
  Pointer<Utf16> nodename,
  Pointer<Utf16> servicename,
  Pointer<Uint32> LocalAddressLength,
  Pointer<SOCKADDR> LocalAddress,
  Pointer<Uint32> RemoteAddressLength,
  Pointer<SOCKADDR> RemoteAddress,
  Pointer<timeval> timeout,
  Pointer<OVERLAPPED> Reserved,
)>('WSAConnectByNameW');

int WSACreateEvent() => _WSACreateEvent();

late final _WSACreateEvent =
    _ws2_32.lookupFunction<IntPtr Function(), int Function()>('WSACreateEvent');

int WSADuplicateSocket(
  int s,
  int dwProcessId,
  Pointer<WSAPROTOCOL_INFO> lpProtocolInfo,
) =>
    _WSADuplicateSocket(
      s,
      dwProcessId,
      lpProtocolInfo,
    );

late final _WSADuplicateSocket = _ws2_32.lookupFunction<
    Int32 Function(
  IntPtr s,
  Uint32 dwProcessId,
  Pointer<WSAPROTOCOL_INFO> lpProtocolInfo,
),
    int Function(
  int s,
  int dwProcessId,
  Pointer<WSAPROTOCOL_INFO> lpProtocolInfo,
)>('WSADuplicateSocketW');

int WSAEnumNameSpaceProvidersEx(
  Pointer<Uint32> lpdwBufferLength,
  Pointer<WSANAMESPACE_INFOEX> lpnspBuffer,
) =>
    _WSAEnumNameSpaceProvidersEx(
      lpdwBufferLength,
      lpnspBuffer,
    );

late final _WSAEnumNameSpaceProvidersEx = _ws2_32.lookupFunction<
    Int32 Function(
  Pointer<Uint32> lpdwBufferLength,
  Pointer<WSANAMESPACE_INFOEX> lpnspBuffer,
),
    int Function(
  Pointer<Uint32> lpdwBufferLength,
  Pointer<WSANAMESPACE_INFOEX> lpnspBuffer,
)>('WSAEnumNameSpaceProvidersExW');

int WSAEnumNameSpaceProviders(
  Pointer<Uint32> lpdwBufferLength,
  Pointer<WSANAMESPACE_INFO> lpnspBuffer,
) =>
    _WSAEnumNameSpaceProviders(
      lpdwBufferLength,
      lpnspBuffer,
    );

late final _WSAEnumNameSpaceProviders = _ws2_32.lookupFunction<
    Int32 Function(
  Pointer<Uint32> lpdwBufferLength,
  Pointer<WSANAMESPACE_INFO> lpnspBuffer,
),
    int Function(
  Pointer<Uint32> lpdwBufferLength,
  Pointer<WSANAMESPACE_INFO> lpnspBuffer,
)>('WSAEnumNameSpaceProvidersW');

int WSAEnumNetworkEvents(
  int s,
  int hEventObject,
  Pointer<WSANETWORKEVENTS> lpNetworkEvents,
) =>
    _WSAEnumNetworkEvents(
      s,
      hEventObject,
      lpNetworkEvents,
    );

late final _WSAEnumNetworkEvents = _ws2_32.lookupFunction<
    Int32 Function(
  IntPtr s,
  IntPtr hEventObject,
  Pointer<WSANETWORKEVENTS> lpNetworkEvents,
),
    int Function(
  int s,
  int hEventObject,
  Pointer<WSANETWORKEVENTS> lpNetworkEvents,
)>('WSAEnumNetworkEvents');

int WSAEnumProtocols(
  Pointer<Int32> lpiProtocols,
  Pointer<WSAPROTOCOL_INFO> lpProtocolBuffer,
  Pointer<Uint32> lpdwBufferLength,
) =>
    _WSAEnumProtocols(
      lpiProtocols,
      lpProtocolBuffer,
      lpdwBufferLength,
    );

late final _WSAEnumProtocols = _ws2_32.lookupFunction<
    Int32 Function(
  Pointer<Int32> lpiProtocols,
  Pointer<WSAPROTOCOL_INFO> lpProtocolBuffer,
  Pointer<Uint32> lpdwBufferLength,
),
    int Function(
  Pointer<Int32> lpiProtocols,
  Pointer<WSAPROTOCOL_INFO> lpProtocolBuffer,
  Pointer<Uint32> lpdwBufferLength,
)>('WSAEnumProtocolsW');

int WSAEventSelect(
  int s,
  int hEventObject,
  int lNetworkEvents,
) =>
    _WSAEventSelect(
      s,
      hEventObject,
      lNetworkEvents,
    );

late final _WSAEventSelect = _ws2_32.lookupFunction<
    Int32 Function(
  IntPtr s,
  IntPtr hEventObject,
  Int32 lNetworkEvents,
),
    int Function(
  int s,
  int hEventObject,
  int lNetworkEvents,
)>('WSAEventSelect');

int WSAGetLastError() => _WSAGetLastError();

late final _WSAGetLastError =
    _ws2_32.lookupFunction<Int32 Function(), int Function()>('WSAGetLastError');

int WSAGetOverlappedResult(
  int s,
  Pointer<OVERLAPPED> lpOverlapped,
  Pointer<Uint32> lpcbTransfer,
  int fWait,
  Pointer<Uint32> lpdwFlags,
) =>
    _WSAGetOverlappedResult(
      s,
      lpOverlapped,
      lpcbTransfer,
      fWait,
      lpdwFlags,
    );

late final _WSAGetOverlappedResult = _ws2_32.lookupFunction<
    Int32 Function(
  IntPtr s,
  Pointer<OVERLAPPED> lpOverlapped,
  Pointer<Uint32> lpcbTransfer,
  Int32 fWait,
  Pointer<Uint32> lpdwFlags,
),
    int Function(
  int s,
  Pointer<OVERLAPPED> lpOverlapped,
  Pointer<Uint32> lpcbTransfer,
  int fWait,
  Pointer<Uint32> lpdwFlags,
)>('WSAGetOverlappedResult');

int WSAGetQOSByName(
  int s,
  Pointer<WSABUF> lpQOSName,
  Pointer<QOS> lpQOS,
) =>
    _WSAGetQOSByName(
      s,
      lpQOSName,
      lpQOS,
    );

late final _WSAGetQOSByName = _ws2_32.lookupFunction<
    Int32 Function(
  IntPtr s,
  Pointer<WSABUF> lpQOSName,
  Pointer<QOS> lpQOS,
),
    int Function(
  int s,
  Pointer<WSABUF> lpQOSName,
  Pointer<QOS> lpQOS,
)>('WSAGetQOSByName');

int WSAGetServiceClassInfo(
  Pointer<GUID> lpProviderId,
  Pointer<GUID> lpServiceClassId,
  Pointer<Uint32> lpdwBufSize,
  Pointer<WSASERVICECLASSINFO> lpServiceClassInfo,
) =>
    _WSAGetServiceClassInfo(
      lpProviderId,
      lpServiceClassId,
      lpdwBufSize,
      lpServiceClassInfo,
    );

late final _WSAGetServiceClassInfo = _ws2_32.lookupFunction<
    Int32 Function(
  Pointer<GUID> lpProviderId,
  Pointer<GUID> lpServiceClassId,
  Pointer<Uint32> lpdwBufSize,
  Pointer<WSASERVICECLASSINFO> lpServiceClassInfo,
),
    int Function(
  Pointer<GUID> lpProviderId,
  Pointer<GUID> lpServiceClassId,
  Pointer<Uint32> lpdwBufSize,
  Pointer<WSASERVICECLASSINFO> lpServiceClassInfo,
)>('WSAGetServiceClassInfoW');

int WSAGetServiceClassNameByClassId(
  Pointer<GUID> lpServiceClassId,
  Pointer<Utf16> lpszServiceClassName,
  Pointer<Uint32> lpdwBufferLength,
) =>
    _WSAGetServiceClassNameByClassId(
      lpServiceClassId,
      lpszServiceClassName,
      lpdwBufferLength,
    );

late final _WSAGetServiceClassNameByClassId = _ws2_32.lookupFunction<
    Int32 Function(
  Pointer<GUID> lpServiceClassId,
  Pointer<Utf16> lpszServiceClassName,
  Pointer<Uint32> lpdwBufferLength,
),
    int Function(
  Pointer<GUID> lpServiceClassId,
  Pointer<Utf16> lpszServiceClassName,
  Pointer<Uint32> lpdwBufferLength,
)>('WSAGetServiceClassNameByClassIdW');

int WSAHtonl(
  int s,
  int hostlong,
  Pointer<Uint32> lpnetlong,
) =>
    _WSAHtonl(
      s,
      hostlong,
      lpnetlong,
    );

late final _WSAHtonl = _ws2_32.lookupFunction<
    Int32 Function(
  IntPtr s,
  Uint32 hostlong,
  Pointer<Uint32> lpnetlong,
),
    int Function(
  int s,
  int hostlong,
  Pointer<Uint32> lpnetlong,
)>('WSAHtonl');

int WSAHtons(
  int s,
  int hostshort,
  Pointer<Uint16> lpnetshort,
) =>
    _WSAHtons(
      s,
      hostshort,
      lpnetshort,
    );

late final _WSAHtons = _ws2_32.lookupFunction<
    Int32 Function(
  IntPtr s,
  Uint16 hostshort,
  Pointer<Uint16> lpnetshort,
),
    int Function(
  int s,
  int hostshort,
  Pointer<Uint16> lpnetshort,
)>('WSAHtons');

int WSAInstallServiceClass(
  Pointer<WSASERVICECLASSINFO> lpServiceClassInfo,
) =>
    _WSAInstallServiceClass(
      lpServiceClassInfo,
    );

late final _WSAInstallServiceClass = _ws2_32.lookupFunction<
    Int32 Function(
  Pointer<WSASERVICECLASSINFO> lpServiceClassInfo,
),
    int Function(
  Pointer<WSASERVICECLASSINFO> lpServiceClassInfo,
)>('WSAInstallServiceClassW');

int WSAIoctl(
  int s,
  int dwIoControlCode,
  Pointer lpvInBuffer,
  int cbInBuffer,
  Pointer lpvOutBuffer,
  int cbOutBuffer,
  Pointer<Uint32> lpcbBytesReturned,
  Pointer<OVERLAPPED> lpOverlapped,
  Pointer<NativeFunction<LPWSAOVERLAPPED_COMPLETION_ROUTINE>>
      lpCompletionRoutine,
) =>
    _WSAIoctl(
      s,
      dwIoControlCode,
      lpvInBuffer,
      cbInBuffer,
      lpvOutBuffer,
      cbOutBuffer,
      lpcbBytesReturned,
      lpOverlapped,
      lpCompletionRoutine,
    );

late final _WSAIoctl = _ws2_32.lookupFunction<
    Int32 Function(
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
),
    int Function(
  int s,
  int dwIoControlCode,
  Pointer lpvInBuffer,
  int cbInBuffer,
  Pointer lpvOutBuffer,
  int cbOutBuffer,
  Pointer<Uint32> lpcbBytesReturned,
  Pointer<OVERLAPPED> lpOverlapped,
  Pointer<NativeFunction<LPWSAOVERLAPPED_COMPLETION_ROUTINE>>
      lpCompletionRoutine,
)>('WSAIoctl');

int WSAIsBlocking() => _WSAIsBlocking();

late final _WSAIsBlocking =
    _ws2_32.lookupFunction<Int32 Function(), int Function()>('WSAIsBlocking');

int WSAJoinLeaf(
  int s,
  Pointer<SOCKADDR> name,
  int namelen,
  Pointer<WSABUF> lpCallerData,
  Pointer<WSABUF> lpCalleeData,
  Pointer<QOS> lpSQOS,
  Pointer<QOS> lpGQOS,
  int dwFlags,
) =>
    _WSAJoinLeaf(
      s,
      name,
      namelen,
      lpCallerData,
      lpCalleeData,
      lpSQOS,
      lpGQOS,
      dwFlags,
    );

late final _WSAJoinLeaf = _ws2_32.lookupFunction<
    IntPtr Function(
  IntPtr s,
  Pointer<SOCKADDR> name,
  Int32 namelen,
  Pointer<WSABUF> lpCallerData,
  Pointer<WSABUF> lpCalleeData,
  Pointer<QOS> lpSQOS,
  Pointer<QOS> lpGQOS,
  Uint32 dwFlags,
),
    int Function(
  int s,
  Pointer<SOCKADDR> name,
  int namelen,
  Pointer<WSABUF> lpCallerData,
  Pointer<WSABUF> lpCalleeData,
  Pointer<QOS> lpSQOS,
  Pointer<QOS> lpGQOS,
  int dwFlags,
)>('WSAJoinLeaf');

int WSALookupServiceBegin(
  Pointer<WSAQUERYSET> lpqsRestrictions,
  int dwControlFlags,
  Pointer<IntPtr> lphLookup,
) =>
    _WSALookupServiceBegin(
      lpqsRestrictions,
      dwControlFlags,
      lphLookup,
    );

late final _WSALookupServiceBegin = _ws2_32.lookupFunction<
    Int32 Function(
  Pointer<WSAQUERYSET> lpqsRestrictions,
  Uint32 dwControlFlags,
  Pointer<IntPtr> lphLookup,
),
    int Function(
  Pointer<WSAQUERYSET> lpqsRestrictions,
  int dwControlFlags,
  Pointer<IntPtr> lphLookup,
)>('WSALookupServiceBeginW');

int WSALookupServiceEnd(
  int hLookup,
) =>
    _WSALookupServiceEnd(
      hLookup,
    );

late final _WSALookupServiceEnd = _ws2_32.lookupFunction<
    Int32 Function(
  IntPtr hLookup,
),
    int Function(
  int hLookup,
)>('WSALookupServiceEnd');

int WSALookupServiceNext(
  int hLookup,
  int dwControlFlags,
  Pointer<Uint32> lpdwBufferLength,
  Pointer<WSAQUERYSET> lpqsResults,
) =>
    _WSALookupServiceNext(
      hLookup,
      dwControlFlags,
      lpdwBufferLength,
      lpqsResults,
    );

late final _WSALookupServiceNext = _ws2_32.lookupFunction<
    Int32 Function(
  IntPtr hLookup,
  Uint32 dwControlFlags,
  Pointer<Uint32> lpdwBufferLength,
  Pointer<WSAQUERYSET> lpqsResults,
),
    int Function(
  int hLookup,
  int dwControlFlags,
  Pointer<Uint32> lpdwBufferLength,
  Pointer<WSAQUERYSET> lpqsResults,
)>('WSALookupServiceNextW');

int WSANSPIoctl(
  int hLookup,
  int dwControlCode,
  Pointer lpvInBuffer,
  int cbInBuffer,
  Pointer lpvOutBuffer,
  int cbOutBuffer,
  Pointer<Uint32> lpcbBytesReturned,
  Pointer<WSACOMPLETION> lpCompletion,
) =>
    _WSANSPIoctl(
      hLookup,
      dwControlCode,
      lpvInBuffer,
      cbInBuffer,
      lpvOutBuffer,
      cbOutBuffer,
      lpcbBytesReturned,
      lpCompletion,
    );

late final _WSANSPIoctl = _ws2_32.lookupFunction<
    Int32 Function(
  IntPtr hLookup,
  Uint32 dwControlCode,
  Pointer lpvInBuffer,
  Uint32 cbInBuffer,
  Pointer lpvOutBuffer,
  Uint32 cbOutBuffer,
  Pointer<Uint32> lpcbBytesReturned,
  Pointer<WSACOMPLETION> lpCompletion,
),
    int Function(
  int hLookup,
  int dwControlCode,
  Pointer lpvInBuffer,
  int cbInBuffer,
  Pointer lpvOutBuffer,
  int cbOutBuffer,
  Pointer<Uint32> lpcbBytesReturned,
  Pointer<WSACOMPLETION> lpCompletion,
)>('WSANSPIoctl');

int WSANtohl(
  int s,
  int netlong,
  Pointer<Uint32> lphostlong,
) =>
    _WSANtohl(
      s,
      netlong,
      lphostlong,
    );

late final _WSANtohl = _ws2_32.lookupFunction<
    Int32 Function(
  IntPtr s,
  Uint32 netlong,
  Pointer<Uint32> lphostlong,
),
    int Function(
  int s,
  int netlong,
  Pointer<Uint32> lphostlong,
)>('WSANtohl');

int WSANtohs(
  int s,
  int netshort,
  Pointer<Uint16> lphostshort,
) =>
    _WSANtohs(
      s,
      netshort,
      lphostshort,
    );

late final _WSANtohs = _ws2_32.lookupFunction<
    Int32 Function(
  IntPtr s,
  Uint16 netshort,
  Pointer<Uint16> lphostshort,
),
    int Function(
  int s,
  int netshort,
  Pointer<Uint16> lphostshort,
)>('WSANtohs');

int WSAPoll(
  Pointer<WSAPOLLFD> fdArray,
  int fds,
  int timeout,
) =>
    _WSAPoll(
      fdArray,
      fds,
      timeout,
    );

late final _WSAPoll = _ws2_32.lookupFunction<
    Int32 Function(
  Pointer<WSAPOLLFD> fdArray,
  Uint32 fds,
  Int32 timeout,
),
    int Function(
  Pointer<WSAPOLLFD> fdArray,
  int fds,
  int timeout,
)>('WSAPoll');

int WSAProviderCompleteAsyncCall(
  int hAsyncCall,
  int iRetCode,
) =>
    _WSAProviderCompleteAsyncCall(
      hAsyncCall,
      iRetCode,
    );

late final _WSAProviderCompleteAsyncCall = _ws2_32.lookupFunction<
    Int32 Function(
  IntPtr hAsyncCall,
  Int32 iRetCode,
),
    int Function(
  int hAsyncCall,
  int iRetCode,
)>('WSAProviderCompleteAsyncCall');

int WSAProviderConfigChange(
  Pointer<IntPtr> lpNotificationHandle,
  Pointer<OVERLAPPED> lpOverlapped,
  Pointer<NativeFunction<LPWSAOVERLAPPED_COMPLETION_ROUTINE>>
      lpCompletionRoutine,
) =>
    _WSAProviderConfigChange(
      lpNotificationHandle,
      lpOverlapped,
      lpCompletionRoutine,
    );

late final _WSAProviderConfigChange = _ws2_32.lookupFunction<
    Int32 Function(
  Pointer<IntPtr> lpNotificationHandle,
  Pointer<OVERLAPPED> lpOverlapped,
  Pointer<NativeFunction<LPWSAOVERLAPPED_COMPLETION_ROUTINE>>
      lpCompletionRoutine,
),
    int Function(
  Pointer<IntPtr> lpNotificationHandle,
  Pointer<OVERLAPPED> lpOverlapped,
  Pointer<NativeFunction<LPWSAOVERLAPPED_COMPLETION_ROUTINE>>
      lpCompletionRoutine,
)>('WSAProviderConfigChange');

int WSARecv(
  int s,
  Pointer<WSABUF> lpBuffers,
  int dwBufferCount,
  Pointer<Uint32> lpNumberOfBytesRecvd,
  Pointer<Uint32> lpFlags,
  Pointer<OVERLAPPED> lpOverlapped,
  Pointer<NativeFunction<LPWSAOVERLAPPED_COMPLETION_ROUTINE>>
      lpCompletionRoutine,
) =>
    _WSARecv(
      s,
      lpBuffers,
      dwBufferCount,
      lpNumberOfBytesRecvd,
      lpFlags,
      lpOverlapped,
      lpCompletionRoutine,
    );

late final _WSARecv = _ws2_32.lookupFunction<
    Int32 Function(
  IntPtr s,
  Pointer<WSABUF> lpBuffers,
  Uint32 dwBufferCount,
  Pointer<Uint32> lpNumberOfBytesRecvd,
  Pointer<Uint32> lpFlags,
  Pointer<OVERLAPPED> lpOverlapped,
  Pointer<NativeFunction<LPWSAOVERLAPPED_COMPLETION_ROUTINE>>
      lpCompletionRoutine,
),
    int Function(
  int s,
  Pointer<WSABUF> lpBuffers,
  int dwBufferCount,
  Pointer<Uint32> lpNumberOfBytesRecvd,
  Pointer<Uint32> lpFlags,
  Pointer<OVERLAPPED> lpOverlapped,
  Pointer<NativeFunction<LPWSAOVERLAPPED_COMPLETION_ROUTINE>>
      lpCompletionRoutine,
)>('WSARecv');

int WSARecvDisconnect(
  int s,
  Pointer<WSABUF> lpInboundDisconnectData,
) =>
    _WSARecvDisconnect(
      s,
      lpInboundDisconnectData,
    );

late final _WSARecvDisconnect = _ws2_32.lookupFunction<
    Int32 Function(
  IntPtr s,
  Pointer<WSABUF> lpInboundDisconnectData,
),
    int Function(
  int s,
  Pointer<WSABUF> lpInboundDisconnectData,
)>('WSARecvDisconnect');

int WSARecvFrom(
  int s,
  Pointer<WSABUF> lpBuffers,
  int dwBufferCount,
  Pointer<Uint32> lpNumberOfBytesRecvd,
  Pointer<Uint32> lpFlags,
  Pointer<SOCKADDR> lpFrom,
  Pointer<Int32> lpFromlen,
  Pointer<OVERLAPPED> lpOverlapped,
  Pointer<NativeFunction<LPWSAOVERLAPPED_COMPLETION_ROUTINE>>
      lpCompletionRoutine,
) =>
    _WSARecvFrom(
      s,
      lpBuffers,
      dwBufferCount,
      lpNumberOfBytesRecvd,
      lpFlags,
      lpFrom,
      lpFromlen,
      lpOverlapped,
      lpCompletionRoutine,
    );

late final _WSARecvFrom = _ws2_32.lookupFunction<
    Int32 Function(
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
),
    int Function(
  int s,
  Pointer<WSABUF> lpBuffers,
  int dwBufferCount,
  Pointer<Uint32> lpNumberOfBytesRecvd,
  Pointer<Uint32> lpFlags,
  Pointer<SOCKADDR> lpFrom,
  Pointer<Int32> lpFromlen,
  Pointer<OVERLAPPED> lpOverlapped,
  Pointer<NativeFunction<LPWSAOVERLAPPED_COMPLETION_ROUTINE>>
      lpCompletionRoutine,
)>('WSARecvFrom');

int WSARemoveServiceClass(
  Pointer<GUID> lpServiceClassId,
) =>
    _WSARemoveServiceClass(
      lpServiceClassId,
    );

late final _WSARemoveServiceClass = _ws2_32.lookupFunction<
    Int32 Function(
  Pointer<GUID> lpServiceClassId,
),
    int Function(
  Pointer<GUID> lpServiceClassId,
)>('WSARemoveServiceClass');

int WSAResetEvent(
  int hEvent,
) =>
    _WSAResetEvent(
      hEvent,
    );

late final _WSAResetEvent = _ws2_32.lookupFunction<
    Int32 Function(
  IntPtr hEvent,
),
    int Function(
  int hEvent,
)>('WSAResetEvent');

int WSASend(
  int s,
  Pointer<WSABUF> lpBuffers,
  int dwBufferCount,
  Pointer<Uint32> lpNumberOfBytesSent,
  int dwFlags,
  Pointer<OVERLAPPED> lpOverlapped,
  Pointer<NativeFunction<LPWSAOVERLAPPED_COMPLETION_ROUTINE>>
      lpCompletionRoutine,
) =>
    _WSASend(
      s,
      lpBuffers,
      dwBufferCount,
      lpNumberOfBytesSent,
      dwFlags,
      lpOverlapped,
      lpCompletionRoutine,
    );

late final _WSASend = _ws2_32.lookupFunction<
    Int32 Function(
  IntPtr s,
  Pointer<WSABUF> lpBuffers,
  Uint32 dwBufferCount,
  Pointer<Uint32> lpNumberOfBytesSent,
  Uint32 dwFlags,
  Pointer<OVERLAPPED> lpOverlapped,
  Pointer<NativeFunction<LPWSAOVERLAPPED_COMPLETION_ROUTINE>>
      lpCompletionRoutine,
),
    int Function(
  int s,
  Pointer<WSABUF> lpBuffers,
  int dwBufferCount,
  Pointer<Uint32> lpNumberOfBytesSent,
  int dwFlags,
  Pointer<OVERLAPPED> lpOverlapped,
  Pointer<NativeFunction<LPWSAOVERLAPPED_COMPLETION_ROUTINE>>
      lpCompletionRoutine,
)>('WSASend');

int WSASendDisconnect(
  int s,
  Pointer<WSABUF> lpOutboundDisconnectData,
) =>
    _WSASendDisconnect(
      s,
      lpOutboundDisconnectData,
    );

late final _WSASendDisconnect = _ws2_32.lookupFunction<
    Int32 Function(
  IntPtr s,
  Pointer<WSABUF> lpOutboundDisconnectData,
),
    int Function(
  int s,
  Pointer<WSABUF> lpOutboundDisconnectData,
)>('WSASendDisconnect');

int WSASendMsg(
  int $Handle,
  Pointer<WSAMSG> lpMsg,
  int dwFlags,
  Pointer<Uint32> lpNumberOfBytesSent,
  Pointer<OVERLAPPED> lpOverlapped,
  Pointer<NativeFunction<LPWSAOVERLAPPED_COMPLETION_ROUTINE>>
      lpCompletionRoutine,
) =>
    _WSASendMsg(
      $Handle,
      lpMsg,
      dwFlags,
      lpNumberOfBytesSent,
      lpOverlapped,
      lpCompletionRoutine,
    );

late final _WSASendMsg = _ws2_32.lookupFunction<
    Int32 Function(
  IntPtr $Handle,
  Pointer<WSAMSG> lpMsg,
  Uint32 dwFlags,
  Pointer<Uint32> lpNumberOfBytesSent,
  Pointer<OVERLAPPED> lpOverlapped,
  Pointer<NativeFunction<LPWSAOVERLAPPED_COMPLETION_ROUTINE>>
      lpCompletionRoutine,
),
    int Function(
  int $Handle,
  Pointer<WSAMSG> lpMsg,
  int dwFlags,
  Pointer<Uint32> lpNumberOfBytesSent,
  Pointer<OVERLAPPED> lpOverlapped,
  Pointer<NativeFunction<LPWSAOVERLAPPED_COMPLETION_ROUTINE>>
      lpCompletionRoutine,
)>('WSASendMsg');

int WSASendTo(
  int s,
  Pointer<WSABUF> lpBuffers,
  int dwBufferCount,
  Pointer<Uint32> lpNumberOfBytesSent,
  int dwFlags,
  Pointer<SOCKADDR> lpTo,
  int iTolen,
  Pointer<OVERLAPPED> lpOverlapped,
  Pointer<NativeFunction<LPWSAOVERLAPPED_COMPLETION_ROUTINE>>
      lpCompletionRoutine,
) =>
    _WSASendTo(
      s,
      lpBuffers,
      dwBufferCount,
      lpNumberOfBytesSent,
      dwFlags,
      lpTo,
      iTolen,
      lpOverlapped,
      lpCompletionRoutine,
    );

late final _WSASendTo = _ws2_32.lookupFunction<
    Int32 Function(
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
),
    int Function(
  int s,
  Pointer<WSABUF> lpBuffers,
  int dwBufferCount,
  Pointer<Uint32> lpNumberOfBytesSent,
  int dwFlags,
  Pointer<SOCKADDR> lpTo,
  int iTolen,
  Pointer<OVERLAPPED> lpOverlapped,
  Pointer<NativeFunction<LPWSAOVERLAPPED_COMPLETION_ROUTINE>>
      lpCompletionRoutine,
)>('WSASendTo');

Pointer WSASetBlockingHook(
  Pointer lpBlockFunc,
) =>
    _WSASetBlockingHook(
      lpBlockFunc,
    );

late final _WSASetBlockingHook = _ws2_32.lookupFunction<
    Pointer Function(
  Pointer lpBlockFunc,
),
    Pointer Function(
  Pointer lpBlockFunc,
)>('WSASetBlockingHook');

int WSASetEvent(
  int hEvent,
) =>
    _WSASetEvent(
      hEvent,
    );

late final _WSASetEvent = _ws2_32.lookupFunction<
    Int32 Function(
  IntPtr hEvent,
),
    int Function(
  int hEvent,
)>('WSASetEvent');

void WSASetLastError(
  int iError,
) =>
    _WSASetLastError(
      iError,
    );

late final _WSASetLastError = _ws2_32.lookupFunction<
    Void Function(
  Int32 iError,
),
    void Function(
  int iError,
)>('WSASetLastError');

int WSASetService(
  Pointer<WSAQUERYSET> lpqsRegInfo,
  int essoperation,
  int dwControlFlags,
) =>
    _WSASetService(
      lpqsRegInfo,
      essoperation,
      dwControlFlags,
    );

late final _WSASetService = _ws2_32.lookupFunction<
    Int32 Function(
  Pointer<WSAQUERYSET> lpqsRegInfo,
  Int32 essoperation,
  Uint32 dwControlFlags,
),
    int Function(
  Pointer<WSAQUERYSET> lpqsRegInfo,
  int essoperation,
  int dwControlFlags,
)>('WSASetServiceW');

int WSASocket(
  int af,
  int type,
  int protocol,
  Pointer<WSAPROTOCOL_INFO> lpProtocolInfo,
  int g,
  int dwFlags,
) =>
    _WSASocket(
      af,
      type,
      protocol,
      lpProtocolInfo,
      g,
      dwFlags,
    );

late final _WSASocket = _ws2_32.lookupFunction<
    IntPtr Function(
  Int32 af,
  Int32 type,
  Int32 protocol,
  Pointer<WSAPROTOCOL_INFO> lpProtocolInfo,
  Uint32 g,
  Uint32 dwFlags,
),
    int Function(
  int af,
  int type,
  int protocol,
  Pointer<WSAPROTOCOL_INFO> lpProtocolInfo,
  int g,
  int dwFlags,
)>('WSASocketW');

int WSAStartup(
  int wVersionRequested,
  Pointer<WSAData> lpWSAData,
) =>
    _WSAStartup(
      wVersionRequested,
      lpWSAData,
    );

late final _WSAStartup = _ws2_32.lookupFunction<
    Int32 Function(
  Uint16 wVersionRequested,
  Pointer<WSAData> lpWSAData,
),
    int Function(
  int wVersionRequested,
  Pointer<WSAData> lpWSAData,
)>('WSAStartup');

int WSAStringToAddress(
  Pointer<Utf16> AddressString,
  int AddressFamily,
  Pointer<WSAPROTOCOL_INFO> lpProtocolInfo,
  Pointer<SOCKADDR> lpAddress,
  Pointer<Int32> lpAddressLength,
) =>
    _WSAStringToAddress(
      AddressString,
      AddressFamily,
      lpProtocolInfo,
      lpAddress,
      lpAddressLength,
    );

late final _WSAStringToAddress = _ws2_32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> AddressString,
  Int32 AddressFamily,
  Pointer<WSAPROTOCOL_INFO> lpProtocolInfo,
  Pointer<SOCKADDR> lpAddress,
  Pointer<Int32> lpAddressLength,
),
    int Function(
  Pointer<Utf16> AddressString,
  int AddressFamily,
  Pointer<WSAPROTOCOL_INFO> lpProtocolInfo,
  Pointer<SOCKADDR> lpAddress,
  Pointer<Int32> lpAddressLength,
)>('WSAStringToAddressW');

int WSAUnadvertiseProvider(
  Pointer<GUID> puuidProviderId,
) =>
    _WSAUnadvertiseProvider(
      puuidProviderId,
    );

late final _WSAUnadvertiseProvider = _ws2_32.lookupFunction<
    Int32 Function(
  Pointer<GUID> puuidProviderId,
),
    int Function(
  Pointer<GUID> puuidProviderId,
)>('WSAUnadvertiseProvider');

int WSAUnhookBlockingHook() => _WSAUnhookBlockingHook();

late final _WSAUnhookBlockingHook = _ws2_32
    .lookupFunction<Int32 Function(), int Function()>('WSAUnhookBlockingHook');

int WSAWaitForMultipleEvents(
  int cEvents,
  Pointer<IntPtr> lphEvents,
  int fWaitAll,
  int dwTimeout,
  int fAlertable,
) =>
    _WSAWaitForMultipleEvents(
      cEvents,
      lphEvents,
      fWaitAll,
      dwTimeout,
      fAlertable,
    );

late final _WSAWaitForMultipleEvents = _ws2_32.lookupFunction<
    Uint32 Function(
  Uint32 cEvents,
  Pointer<IntPtr> lphEvents,
  Int32 fWaitAll,
  Uint32 dwTimeout,
  Int32 fAlertable,
),
    int Function(
  int cEvents,
  Pointer<IntPtr> lphEvents,
  int fWaitAll,
  int dwTimeout,
  int fAlertable,
)>('WSAWaitForMultipleEvents');

int WSCDeinstallProvider(
  Pointer<GUID> lpProviderId,
  Pointer<Int32> lpErrno,
) =>
    _WSCDeinstallProvider(
      lpProviderId,
      lpErrno,
    );

late final _WSCDeinstallProvider = _ws2_32.lookupFunction<
    Int32 Function(
  Pointer<GUID> lpProviderId,
  Pointer<Int32> lpErrno,
),
    int Function(
  Pointer<GUID> lpProviderId,
  Pointer<Int32> lpErrno,
)>('WSCDeinstallProvider');

int WSCDeinstallProvider32(
  Pointer<GUID> lpProviderId,
  Pointer<Int32> lpErrno,
) =>
    _WSCDeinstallProvider32(
      lpProviderId,
      lpErrno,
    );

late final _WSCDeinstallProvider32 = _ws2_32.lookupFunction<
    Int32 Function(
  Pointer<GUID> lpProviderId,
  Pointer<Int32> lpErrno,
),
    int Function(
  Pointer<GUID> lpProviderId,
  Pointer<Int32> lpErrno,
)>('WSCDeinstallProvider32');

int WSCEnableNSProvider(
  Pointer<GUID> lpProviderId,
  int fEnable,
) =>
    _WSCEnableNSProvider(
      lpProviderId,
      fEnable,
    );

late final _WSCEnableNSProvider = _ws2_32.lookupFunction<
    Int32 Function(
  Pointer<GUID> lpProviderId,
  Int32 fEnable,
),
    int Function(
  Pointer<GUID> lpProviderId,
  int fEnable,
)>('WSCEnableNSProvider');

int WSCEnableNSProvider32(
  Pointer<GUID> lpProviderId,
  int fEnable,
) =>
    _WSCEnableNSProvider32(
      lpProviderId,
      fEnable,
    );

late final _WSCEnableNSProvider32 = _ws2_32.lookupFunction<
    Int32 Function(
  Pointer<GUID> lpProviderId,
  Int32 fEnable,
),
    int Function(
  Pointer<GUID> lpProviderId,
  int fEnable,
)>('WSCEnableNSProvider32');

int WSCEnumNameSpaceProviders32(
  Pointer<Uint32> lpdwBufferLength,
  Pointer<WSANAMESPACE_INFO> lpnspBuffer,
) =>
    _WSCEnumNameSpaceProviders32(
      lpdwBufferLength,
      lpnspBuffer,
    );

late final _WSCEnumNameSpaceProviders32 = _ws2_32.lookupFunction<
    Int32 Function(
  Pointer<Uint32> lpdwBufferLength,
  Pointer<WSANAMESPACE_INFO> lpnspBuffer,
),
    int Function(
  Pointer<Uint32> lpdwBufferLength,
  Pointer<WSANAMESPACE_INFO> lpnspBuffer,
)>('WSCEnumNameSpaceProviders32');

int WSCEnumNameSpaceProvidersEx32(
  Pointer<Uint32> lpdwBufferLength,
  Pointer<WSANAMESPACE_INFOEX> lpnspBuffer,
) =>
    _WSCEnumNameSpaceProvidersEx32(
      lpdwBufferLength,
      lpnspBuffer,
    );

late final _WSCEnumNameSpaceProvidersEx32 = _ws2_32.lookupFunction<
    Int32 Function(
  Pointer<Uint32> lpdwBufferLength,
  Pointer<WSANAMESPACE_INFOEX> lpnspBuffer,
),
    int Function(
  Pointer<Uint32> lpdwBufferLength,
  Pointer<WSANAMESPACE_INFOEX> lpnspBuffer,
)>('WSCEnumNameSpaceProvidersEx32');

int WSCEnumProtocols(
  Pointer<Int32> lpiProtocols,
  Pointer<WSAPROTOCOL_INFO> lpProtocolBuffer,
  Pointer<Uint32> lpdwBufferLength,
  Pointer<Int32> lpErrno,
) =>
    _WSCEnumProtocols(
      lpiProtocols,
      lpProtocolBuffer,
      lpdwBufferLength,
      lpErrno,
    );

late final _WSCEnumProtocols = _ws2_32.lookupFunction<
    Int32 Function(
  Pointer<Int32> lpiProtocols,
  Pointer<WSAPROTOCOL_INFO> lpProtocolBuffer,
  Pointer<Uint32> lpdwBufferLength,
  Pointer<Int32> lpErrno,
),
    int Function(
  Pointer<Int32> lpiProtocols,
  Pointer<WSAPROTOCOL_INFO> lpProtocolBuffer,
  Pointer<Uint32> lpdwBufferLength,
  Pointer<Int32> lpErrno,
)>('WSCEnumProtocols');

int WSCEnumProtocols32(
  Pointer<Int32> lpiProtocols,
  Pointer<WSAPROTOCOL_INFO> lpProtocolBuffer,
  Pointer<Uint32> lpdwBufferLength,
  Pointer<Int32> lpErrno,
) =>
    _WSCEnumProtocols32(
      lpiProtocols,
      lpProtocolBuffer,
      lpdwBufferLength,
      lpErrno,
    );

late final _WSCEnumProtocols32 = _ws2_32.lookupFunction<
    Int32 Function(
  Pointer<Int32> lpiProtocols,
  Pointer<WSAPROTOCOL_INFO> lpProtocolBuffer,
  Pointer<Uint32> lpdwBufferLength,
  Pointer<Int32> lpErrno,
),
    int Function(
  Pointer<Int32> lpiProtocols,
  Pointer<WSAPROTOCOL_INFO> lpProtocolBuffer,
  Pointer<Uint32> lpdwBufferLength,
  Pointer<Int32> lpErrno,
)>('WSCEnumProtocols32');

int WSCGetApplicationCategory(
  Pointer<Utf16> Path,
  int PathLength,
  Pointer<Utf16> Extra,
  int ExtraLength,
  Pointer<Uint32> pPermittedLspCategories,
  Pointer<Int32> lpErrno,
) =>
    _WSCGetApplicationCategory(
      Path,
      PathLength,
      Extra,
      ExtraLength,
      pPermittedLspCategories,
      lpErrno,
    );

late final _WSCGetApplicationCategory = _ws2_32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> Path,
  Uint32 PathLength,
  Pointer<Utf16> Extra,
  Uint32 ExtraLength,
  Pointer<Uint32> pPermittedLspCategories,
  Pointer<Int32> lpErrno,
),
    int Function(
  Pointer<Utf16> Path,
  int PathLength,
  Pointer<Utf16> Extra,
  int ExtraLength,
  Pointer<Uint32> pPermittedLspCategories,
  Pointer<Int32> lpErrno,
)>('WSCGetApplicationCategory');

int WSCGetProviderInfo(
  Pointer<GUID> lpProviderId,
  int InfoType,
  Pointer<Uint8> Info,
  Pointer<IntPtr> InfoSize,
  int Flags,
  Pointer<Int32> lpErrno,
) =>
    _WSCGetProviderInfo(
      lpProviderId,
      InfoType,
      Info,
      InfoSize,
      Flags,
      lpErrno,
    );

late final _WSCGetProviderInfo = _ws2_32.lookupFunction<
    Int32 Function(
  Pointer<GUID> lpProviderId,
  Int32 InfoType,
  Pointer<Uint8> Info,
  Pointer<IntPtr> InfoSize,
  Uint32 Flags,
  Pointer<Int32> lpErrno,
),
    int Function(
  Pointer<GUID> lpProviderId,
  int InfoType,
  Pointer<Uint8> Info,
  Pointer<IntPtr> InfoSize,
  int Flags,
  Pointer<Int32> lpErrno,
)>('WSCGetProviderInfo');

int WSCGetProviderInfo32(
  Pointer<GUID> lpProviderId,
  int InfoType,
  Pointer<Uint8> Info,
  Pointer<IntPtr> InfoSize,
  int Flags,
  Pointer<Int32> lpErrno,
) =>
    _WSCGetProviderInfo32(
      lpProviderId,
      InfoType,
      Info,
      InfoSize,
      Flags,
      lpErrno,
    );

late final _WSCGetProviderInfo32 = _ws2_32.lookupFunction<
    Int32 Function(
  Pointer<GUID> lpProviderId,
  Int32 InfoType,
  Pointer<Uint8> Info,
  Pointer<IntPtr> InfoSize,
  Uint32 Flags,
  Pointer<Int32> lpErrno,
),
    int Function(
  Pointer<GUID> lpProviderId,
  int InfoType,
  Pointer<Uint8> Info,
  Pointer<IntPtr> InfoSize,
  int Flags,
  Pointer<Int32> lpErrno,
)>('WSCGetProviderInfo32');

int WSCGetProviderPath(
  Pointer<GUID> lpProviderId,
  Pointer<Utf16> lpszProviderDllPath,
  Pointer<Int32> lpProviderDllPathLen,
  Pointer<Int32> lpErrno,
) =>
    _WSCGetProviderPath(
      lpProviderId,
      lpszProviderDllPath,
      lpProviderDllPathLen,
      lpErrno,
    );

late final _WSCGetProviderPath = _ws2_32.lookupFunction<
    Int32 Function(
  Pointer<GUID> lpProviderId,
  Pointer<Utf16> lpszProviderDllPath,
  Pointer<Int32> lpProviderDllPathLen,
  Pointer<Int32> lpErrno,
),
    int Function(
  Pointer<GUID> lpProviderId,
  Pointer<Utf16> lpszProviderDllPath,
  Pointer<Int32> lpProviderDllPathLen,
  Pointer<Int32> lpErrno,
)>('WSCGetProviderPath');

int WSCGetProviderPath32(
  Pointer<GUID> lpProviderId,
  Pointer<Utf16> lpszProviderDllPath,
  Pointer<Int32> lpProviderDllPathLen,
  Pointer<Int32> lpErrno,
) =>
    _WSCGetProviderPath32(
      lpProviderId,
      lpszProviderDllPath,
      lpProviderDllPathLen,
      lpErrno,
    );

late final _WSCGetProviderPath32 = _ws2_32.lookupFunction<
    Int32 Function(
  Pointer<GUID> lpProviderId,
  Pointer<Utf16> lpszProviderDllPath,
  Pointer<Int32> lpProviderDllPathLen,
  Pointer<Int32> lpErrno,
),
    int Function(
  Pointer<GUID> lpProviderId,
  Pointer<Utf16> lpszProviderDllPath,
  Pointer<Int32> lpProviderDllPathLen,
  Pointer<Int32> lpErrno,
)>('WSCGetProviderPath32');

int WSCInstallNameSpace(
  Pointer<Utf16> lpszIdentifier,
  Pointer<Utf16> lpszPathName,
  int dwNameSpace,
  int dwVersion,
  Pointer<GUID> lpProviderId,
) =>
    _WSCInstallNameSpace(
      lpszIdentifier,
      lpszPathName,
      dwNameSpace,
      dwVersion,
      lpProviderId,
    );

late final _WSCInstallNameSpace = _ws2_32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpszIdentifier,
  Pointer<Utf16> lpszPathName,
  Uint32 dwNameSpace,
  Uint32 dwVersion,
  Pointer<GUID> lpProviderId,
),
    int Function(
  Pointer<Utf16> lpszIdentifier,
  Pointer<Utf16> lpszPathName,
  int dwNameSpace,
  int dwVersion,
  Pointer<GUID> lpProviderId,
)>('WSCInstallNameSpace');

int WSCInstallNameSpace32(
  Pointer<Utf16> lpszIdentifier,
  Pointer<Utf16> lpszPathName,
  int dwNameSpace,
  int dwVersion,
  Pointer<GUID> lpProviderId,
) =>
    _WSCInstallNameSpace32(
      lpszIdentifier,
      lpszPathName,
      dwNameSpace,
      dwVersion,
      lpProviderId,
    );

late final _WSCInstallNameSpace32 = _ws2_32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpszIdentifier,
  Pointer<Utf16> lpszPathName,
  Uint32 dwNameSpace,
  Uint32 dwVersion,
  Pointer<GUID> lpProviderId,
),
    int Function(
  Pointer<Utf16> lpszIdentifier,
  Pointer<Utf16> lpszPathName,
  int dwNameSpace,
  int dwVersion,
  Pointer<GUID> lpProviderId,
)>('WSCInstallNameSpace32');

int WSCInstallNameSpaceEx(
  Pointer<Utf16> lpszIdentifier,
  Pointer<Utf16> lpszPathName,
  int dwNameSpace,
  int dwVersion,
  Pointer<GUID> lpProviderId,
  Pointer<BLOB> lpProviderSpecific,
) =>
    _WSCInstallNameSpaceEx(
      lpszIdentifier,
      lpszPathName,
      dwNameSpace,
      dwVersion,
      lpProviderId,
      lpProviderSpecific,
    );

late final _WSCInstallNameSpaceEx = _ws2_32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpszIdentifier,
  Pointer<Utf16> lpszPathName,
  Uint32 dwNameSpace,
  Uint32 dwVersion,
  Pointer<GUID> lpProviderId,
  Pointer<BLOB> lpProviderSpecific,
),
    int Function(
  Pointer<Utf16> lpszIdentifier,
  Pointer<Utf16> lpszPathName,
  int dwNameSpace,
  int dwVersion,
  Pointer<GUID> lpProviderId,
  Pointer<BLOB> lpProviderSpecific,
)>('WSCInstallNameSpaceEx');

int WSCInstallNameSpaceEx32(
  Pointer<Utf16> lpszIdentifier,
  Pointer<Utf16> lpszPathName,
  int dwNameSpace,
  int dwVersion,
  Pointer<GUID> lpProviderId,
  Pointer<BLOB> lpProviderSpecific,
) =>
    _WSCInstallNameSpaceEx32(
      lpszIdentifier,
      lpszPathName,
      dwNameSpace,
      dwVersion,
      lpProviderId,
      lpProviderSpecific,
    );

late final _WSCInstallNameSpaceEx32 = _ws2_32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpszIdentifier,
  Pointer<Utf16> lpszPathName,
  Uint32 dwNameSpace,
  Uint32 dwVersion,
  Pointer<GUID> lpProviderId,
  Pointer<BLOB> lpProviderSpecific,
),
    int Function(
  Pointer<Utf16> lpszIdentifier,
  Pointer<Utf16> lpszPathName,
  int dwNameSpace,
  int dwVersion,
  Pointer<GUID> lpProviderId,
  Pointer<BLOB> lpProviderSpecific,
)>('WSCInstallNameSpaceEx32');

int WSCInstallProvider(
  Pointer<GUID> lpProviderId,
  Pointer<Utf16> lpszProviderDllPath,
  Pointer<WSAPROTOCOL_INFO> lpProtocolInfoList,
  int dwNumberOfEntries,
  Pointer<Int32> lpErrno,
) =>
    _WSCInstallProvider(
      lpProviderId,
      lpszProviderDllPath,
      lpProtocolInfoList,
      dwNumberOfEntries,
      lpErrno,
    );

late final _WSCInstallProvider = _ws2_32.lookupFunction<
    Int32 Function(
  Pointer<GUID> lpProviderId,
  Pointer<Utf16> lpszProviderDllPath,
  Pointer<WSAPROTOCOL_INFO> lpProtocolInfoList,
  Uint32 dwNumberOfEntries,
  Pointer<Int32> lpErrno,
),
    int Function(
  Pointer<GUID> lpProviderId,
  Pointer<Utf16> lpszProviderDllPath,
  Pointer<WSAPROTOCOL_INFO> lpProtocolInfoList,
  int dwNumberOfEntries,
  Pointer<Int32> lpErrno,
)>('WSCInstallProvider');

int WSCInstallProvider64_32(
  Pointer<GUID> lpProviderId,
  Pointer<Utf16> lpszProviderDllPath,
  Pointer<WSAPROTOCOL_INFO> lpProtocolInfoList,
  int dwNumberOfEntries,
  Pointer<Int32> lpErrno,
) =>
    _WSCInstallProvider64_32(
      lpProviderId,
      lpszProviderDllPath,
      lpProtocolInfoList,
      dwNumberOfEntries,
      lpErrno,
    );

late final _WSCInstallProvider64_32 = _ws2_32.lookupFunction<
    Int32 Function(
  Pointer<GUID> lpProviderId,
  Pointer<Utf16> lpszProviderDllPath,
  Pointer<WSAPROTOCOL_INFO> lpProtocolInfoList,
  Uint32 dwNumberOfEntries,
  Pointer<Int32> lpErrno,
),
    int Function(
  Pointer<GUID> lpProviderId,
  Pointer<Utf16> lpszProviderDllPath,
  Pointer<WSAPROTOCOL_INFO> lpProtocolInfoList,
  int dwNumberOfEntries,
  Pointer<Int32> lpErrno,
)>('WSCInstallProvider64_32');

int WSCInstallProviderAndChains64_32(
  Pointer<GUID> lpProviderId,
  Pointer<Utf16> lpszProviderDllPath,
  Pointer<Utf16> lpszProviderDllPath32,
  Pointer<Utf16> lpszLspName,
  int dwServiceFlags,
  Pointer<WSAPROTOCOL_INFO> lpProtocolInfoList,
  int dwNumberOfEntries,
  Pointer<Uint32> lpdwCatalogEntryId,
  Pointer<Int32> lpErrno,
) =>
    _WSCInstallProviderAndChains64_32(
      lpProviderId,
      lpszProviderDllPath,
      lpszProviderDllPath32,
      lpszLspName,
      dwServiceFlags,
      lpProtocolInfoList,
      dwNumberOfEntries,
      lpdwCatalogEntryId,
      lpErrno,
    );

late final _WSCInstallProviderAndChains64_32 = _ws2_32.lookupFunction<
    Int32 Function(
  Pointer<GUID> lpProviderId,
  Pointer<Utf16> lpszProviderDllPath,
  Pointer<Utf16> lpszProviderDllPath32,
  Pointer<Utf16> lpszLspName,
  Uint32 dwServiceFlags,
  Pointer<WSAPROTOCOL_INFO> lpProtocolInfoList,
  Uint32 dwNumberOfEntries,
  Pointer<Uint32> lpdwCatalogEntryId,
  Pointer<Int32> lpErrno,
),
    int Function(
  Pointer<GUID> lpProviderId,
  Pointer<Utf16> lpszProviderDllPath,
  Pointer<Utf16> lpszProviderDllPath32,
  Pointer<Utf16> lpszLspName,
  int dwServiceFlags,
  Pointer<WSAPROTOCOL_INFO> lpProtocolInfoList,
  int dwNumberOfEntries,
  Pointer<Uint32> lpdwCatalogEntryId,
  Pointer<Int32> lpErrno,
)>('WSCInstallProviderAndChains64_32');

int WSCSetApplicationCategory(
  Pointer<Utf16> Path,
  int PathLength,
  Pointer<Utf16> Extra,
  int ExtraLength,
  int PermittedLspCategories,
  Pointer<Uint32> pPrevPermLspCat,
  Pointer<Int32> lpErrno,
) =>
    _WSCSetApplicationCategory(
      Path,
      PathLength,
      Extra,
      ExtraLength,
      PermittedLspCategories,
      pPrevPermLspCat,
      lpErrno,
    );

late final _WSCSetApplicationCategory = _ws2_32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> Path,
  Uint32 PathLength,
  Pointer<Utf16> Extra,
  Uint32 ExtraLength,
  Uint32 PermittedLspCategories,
  Pointer<Uint32> pPrevPermLspCat,
  Pointer<Int32> lpErrno,
),
    int Function(
  Pointer<Utf16> Path,
  int PathLength,
  Pointer<Utf16> Extra,
  int ExtraLength,
  int PermittedLspCategories,
  Pointer<Uint32> pPrevPermLspCat,
  Pointer<Int32> lpErrno,
)>('WSCSetApplicationCategory');

int WSCSetProviderInfo(
  Pointer<GUID> lpProviderId,
  int InfoType,
  Pointer<Uint8> Info,
  int InfoSize,
  int Flags,
  Pointer<Int32> lpErrno,
) =>
    _WSCSetProviderInfo(
      lpProviderId,
      InfoType,
      Info,
      InfoSize,
      Flags,
      lpErrno,
    );

late final _WSCSetProviderInfo = _ws2_32.lookupFunction<
    Int32 Function(
  Pointer<GUID> lpProviderId,
  Int32 InfoType,
  Pointer<Uint8> Info,
  IntPtr InfoSize,
  Uint32 Flags,
  Pointer<Int32> lpErrno,
),
    int Function(
  Pointer<GUID> lpProviderId,
  int InfoType,
  Pointer<Uint8> Info,
  int InfoSize,
  int Flags,
  Pointer<Int32> lpErrno,
)>('WSCSetProviderInfo');

int WSCSetProviderInfo32(
  Pointer<GUID> lpProviderId,
  int InfoType,
  Pointer<Uint8> Info,
  int InfoSize,
  int Flags,
  Pointer<Int32> lpErrno,
) =>
    _WSCSetProviderInfo32(
      lpProviderId,
      InfoType,
      Info,
      InfoSize,
      Flags,
      lpErrno,
    );

late final _WSCSetProviderInfo32 = _ws2_32.lookupFunction<
    Int32 Function(
  Pointer<GUID> lpProviderId,
  Int32 InfoType,
  Pointer<Uint8> Info,
  IntPtr InfoSize,
  Uint32 Flags,
  Pointer<Int32> lpErrno,
),
    int Function(
  Pointer<GUID> lpProviderId,
  int InfoType,
  Pointer<Uint8> Info,
  int InfoSize,
  int Flags,
  Pointer<Int32> lpErrno,
)>('WSCSetProviderInfo32');

int WSCUnInstallNameSpace(
  Pointer<GUID> lpProviderId,
) =>
    _WSCUnInstallNameSpace(
      lpProviderId,
    );

late final _WSCUnInstallNameSpace = _ws2_32.lookupFunction<
    Int32 Function(
  Pointer<GUID> lpProviderId,
),
    int Function(
  Pointer<GUID> lpProviderId,
)>('WSCUnInstallNameSpace');

int WSCUnInstallNameSpace32(
  Pointer<GUID> lpProviderId,
) =>
    _WSCUnInstallNameSpace32(
      lpProviderId,
    );

late final _WSCUnInstallNameSpace32 = _ws2_32.lookupFunction<
    Int32 Function(
  Pointer<GUID> lpProviderId,
),
    int Function(
  Pointer<GUID> lpProviderId,
)>('WSCUnInstallNameSpace32');

int WSCUpdateProvider(
  Pointer<GUID> lpProviderId,
  Pointer<Utf16> lpszProviderDllPath,
  Pointer<WSAPROTOCOL_INFO> lpProtocolInfoList,
  int dwNumberOfEntries,
  Pointer<Int32> lpErrno,
) =>
    _WSCUpdateProvider(
      lpProviderId,
      lpszProviderDllPath,
      lpProtocolInfoList,
      dwNumberOfEntries,
      lpErrno,
    );

late final _WSCUpdateProvider = _ws2_32.lookupFunction<
    Int32 Function(
  Pointer<GUID> lpProviderId,
  Pointer<Utf16> lpszProviderDllPath,
  Pointer<WSAPROTOCOL_INFO> lpProtocolInfoList,
  Uint32 dwNumberOfEntries,
  Pointer<Int32> lpErrno,
),
    int Function(
  Pointer<GUID> lpProviderId,
  Pointer<Utf16> lpszProviderDllPath,
  Pointer<WSAPROTOCOL_INFO> lpProtocolInfoList,
  int dwNumberOfEntries,
  Pointer<Int32> lpErrno,
)>('WSCUpdateProvider');

int WSCUpdateProvider32(
  Pointer<GUID> lpProviderId,
  Pointer<Utf16> lpszProviderDllPath,
  Pointer<WSAPROTOCOL_INFO> lpProtocolInfoList,
  int dwNumberOfEntries,
  Pointer<Int32> lpErrno,
) =>
    _WSCUpdateProvider32(
      lpProviderId,
      lpszProviderDllPath,
      lpProtocolInfoList,
      dwNumberOfEntries,
      lpErrno,
    );

late final _WSCUpdateProvider32 = _ws2_32.lookupFunction<
    Int32 Function(
  Pointer<GUID> lpProviderId,
  Pointer<Utf16> lpszProviderDllPath,
  Pointer<WSAPROTOCOL_INFO> lpProtocolInfoList,
  Uint32 dwNumberOfEntries,
  Pointer<Int32> lpErrno,
),
    int Function(
  Pointer<GUID> lpProviderId,
  Pointer<Utf16> lpszProviderDllPath,
  Pointer<WSAPROTOCOL_INFO> lpProtocolInfoList,
  int dwNumberOfEntries,
  Pointer<Int32> lpErrno,
)>('WSCUpdateProvider32');

int WSCWriteNameSpaceOrder(
  Pointer<GUID> lpProviderId,
  int dwNumberOfEntries,
) =>
    _WSCWriteNameSpaceOrder(
      lpProviderId,
      dwNumberOfEntries,
    );

late final _WSCWriteNameSpaceOrder = _ws2_32.lookupFunction<
    Int32 Function(
  Pointer<GUID> lpProviderId,
  Uint32 dwNumberOfEntries,
),
    int Function(
  Pointer<GUID> lpProviderId,
  int dwNumberOfEntries,
)>('WSCWriteNameSpaceOrder');

int WSCWriteNameSpaceOrder32(
  Pointer<GUID> lpProviderId,
  int dwNumberOfEntries,
) =>
    _WSCWriteNameSpaceOrder32(
      lpProviderId,
      dwNumberOfEntries,
    );

late final _WSCWriteNameSpaceOrder32 = _ws2_32.lookupFunction<
    Int32 Function(
  Pointer<GUID> lpProviderId,
  Uint32 dwNumberOfEntries,
),
    int Function(
  Pointer<GUID> lpProviderId,
  int dwNumberOfEntries,
)>('WSCWriteNameSpaceOrder32');

int WSCWriteProviderOrder(
  Pointer<Uint32> lpwdCatalogEntryId,
  int dwNumberOfEntries,
) =>
    _WSCWriteProviderOrder(
      lpwdCatalogEntryId,
      dwNumberOfEntries,
    );

late final _WSCWriteProviderOrder = _ws2_32.lookupFunction<
    Int32 Function(
  Pointer<Uint32> lpwdCatalogEntryId,
  Uint32 dwNumberOfEntries,
),
    int Function(
  Pointer<Uint32> lpwdCatalogEntryId,
  int dwNumberOfEntries,
)>('WSCWriteProviderOrder');

int WSCWriteProviderOrder32(
  Pointer<Uint32> lpwdCatalogEntryId,
  int dwNumberOfEntries,
) =>
    _WSCWriteProviderOrder32(
      lpwdCatalogEntryId,
      dwNumberOfEntries,
    );

late final _WSCWriteProviderOrder32 = _ws2_32.lookupFunction<
    Int32 Function(
  Pointer<Uint32> lpwdCatalogEntryId,
  Uint32 dwNumberOfEntries,
),
    int Function(
  Pointer<Uint32> lpwdCatalogEntryId,
  int dwNumberOfEntries,
)>('WSCWriteProviderOrder32');

int __WSAFDIsSet(
  int fd,
  Pointer<fd_set> param1,
) =>
    ___WSAFDIsSet(
      fd,
      param1,
    );

late final ___WSAFDIsSet = _ws2_32.lookupFunction<
    Int32 Function(
  IntPtr fd,
  Pointer<fd_set> param1,
),
    int Function(
  int fd,
  Pointer<fd_set> param1,
)>('__WSAFDIsSet');

int accept(
  int s,
  Pointer<SOCKADDR> addr,
  Pointer<Int32> addrlen,
) =>
    _accept(
      s,
      addr,
      addrlen,
    );

late final _accept = _ws2_32.lookupFunction<
    IntPtr Function(
  IntPtr s,
  Pointer<SOCKADDR> addr,
  Pointer<Int32> addrlen,
),
    int Function(
  int s,
  Pointer<SOCKADDR> addr,
  Pointer<Int32> addrlen,
)>('accept');

int bind(
  int s,
  Pointer<SOCKADDR> name,
  int namelen,
) =>
    _bind(
      s,
      name,
      namelen,
    );

late final _bind = _ws2_32.lookupFunction<
    Int32 Function(
  IntPtr s,
  Pointer<SOCKADDR> name,
  Int32 namelen,
),
    int Function(
  int s,
  Pointer<SOCKADDR> name,
  int namelen,
)>('bind');

int closesocket(
  int s,
) =>
    _closesocket(
      s,
    );

late final _closesocket = _ws2_32.lookupFunction<
    Int32 Function(
  IntPtr s,
),
    int Function(
  int s,
)>('closesocket');

int connect(
  int s,
  Pointer<SOCKADDR> name,
  int namelen,
) =>
    _connect(
      s,
      name,
      namelen,
    );

late final _connect = _ws2_32.lookupFunction<
    Int32 Function(
  IntPtr s,
  Pointer<SOCKADDR> name,
  Int32 namelen,
),
    int Function(
  int s,
  Pointer<SOCKADDR> name,
  int namelen,
)>('connect');

void freeaddrinfo(
  Pointer<ADDRINFO> pAddrInfo,
) =>
    _freeaddrinfo(
      pAddrInfo,
    );

late final _freeaddrinfo = _ws2_32.lookupFunction<
    Void Function(
  Pointer<ADDRINFO> pAddrInfo,
),
    void Function(
  Pointer<ADDRINFO> pAddrInfo,
)>('freeaddrinfo');

int getaddrinfo(
  Pointer<Utf8> pNodeName,
  Pointer<Utf8> pServiceName,
  Pointer<ADDRINFO> pHints,
  Pointer<Pointer<ADDRINFO>> ppResult,
) =>
    _getaddrinfo(
      pNodeName,
      pServiceName,
      pHints,
      ppResult,
    );

late final _getaddrinfo = _ws2_32.lookupFunction<
    Int32 Function(
  Pointer<Utf8> pNodeName,
  Pointer<Utf8> pServiceName,
  Pointer<ADDRINFO> pHints,
  Pointer<Pointer<ADDRINFO>> ppResult,
),
    int Function(
  Pointer<Utf8> pNodeName,
  Pointer<Utf8> pServiceName,
  Pointer<ADDRINFO> pHints,
  Pointer<Pointer<ADDRINFO>> ppResult,
)>('getaddrinfo');

Pointer<hostent> gethostbyaddr(
  Pointer<Utf8> addr,
  int len,
  int type,
) =>
    _gethostbyaddr(
      addr,
      len,
      type,
    );

late final _gethostbyaddr = _ws2_32.lookupFunction<
    Pointer<hostent> Function(
  Pointer<Utf8> addr,
  Int32 len,
  Int32 type,
),
    Pointer<hostent> Function(
  Pointer<Utf8> addr,
  int len,
  int type,
)>('gethostbyaddr');

Pointer<hostent> gethostbyname(
  Pointer<Utf8> name,
) =>
    _gethostbyname(
      name,
    );

late final _gethostbyname = _ws2_32.lookupFunction<
    Pointer<hostent> Function(
  Pointer<Utf8> name,
),
    Pointer<hostent> Function(
  Pointer<Utf8> name,
)>('gethostbyname');

int gethostname(
  Pointer<Utf8> name,
  int namelen,
) =>
    _gethostname(
      name,
      namelen,
    );

late final _gethostname = _ws2_32.lookupFunction<
    Int32 Function(
  Pointer<Utf8> name,
  Int32 namelen,
),
    int Function(
  Pointer<Utf8> name,
  int namelen,
)>('gethostname');

int getnameinfo(
  Pointer<SOCKADDR> pSockaddr,
  int SockaddrLength,
  Pointer<Utf8> pNodeBuffer,
  int NodeBufferSize,
  Pointer<Utf8> pServiceBuffer,
  int ServiceBufferSize,
  int Flags,
) =>
    _getnameinfo(
      pSockaddr,
      SockaddrLength,
      pNodeBuffer,
      NodeBufferSize,
      pServiceBuffer,
      ServiceBufferSize,
      Flags,
    );

late final _getnameinfo = _ws2_32.lookupFunction<
    Int32 Function(
  Pointer<SOCKADDR> pSockaddr,
  Int32 SockaddrLength,
  Pointer<Utf8> pNodeBuffer,
  Uint32 NodeBufferSize,
  Pointer<Utf8> pServiceBuffer,
  Uint32 ServiceBufferSize,
  Int32 Flags,
),
    int Function(
  Pointer<SOCKADDR> pSockaddr,
  int SockaddrLength,
  Pointer<Utf8> pNodeBuffer,
  int NodeBufferSize,
  Pointer<Utf8> pServiceBuffer,
  int ServiceBufferSize,
  int Flags,
)>('getnameinfo');

int getpeername(
  int s,
  Pointer<SOCKADDR> name,
  Pointer<Int32> namelen,
) =>
    _getpeername(
      s,
      name,
      namelen,
    );

late final _getpeername = _ws2_32.lookupFunction<
    Int32 Function(
  IntPtr s,
  Pointer<SOCKADDR> name,
  Pointer<Int32> namelen,
),
    int Function(
  int s,
  Pointer<SOCKADDR> name,
  Pointer<Int32> namelen,
)>('getpeername');

Pointer<protoent> getprotobyname(
  Pointer<Utf8> name,
) =>
    _getprotobyname(
      name,
    );

late final _getprotobyname = _ws2_32.lookupFunction<
    Pointer<protoent> Function(
  Pointer<Utf8> name,
),
    Pointer<protoent> Function(
  Pointer<Utf8> name,
)>('getprotobyname');

Pointer<protoent> getprotobynumber(
  int number,
) =>
    _getprotobynumber(
      number,
    );

late final _getprotobynumber = _ws2_32.lookupFunction<
    Pointer<protoent> Function(
  Int32 number,
),
    Pointer<protoent> Function(
  int number,
)>('getprotobynumber');

Pointer<servent> getservbyname(
  Pointer<Utf8> name,
  Pointer<Utf8> proto,
) =>
    _getservbyname(
      name,
      proto,
    );

late final _getservbyname = _ws2_32.lookupFunction<
    Pointer<servent> Function(
  Pointer<Utf8> name,
  Pointer<Utf8> proto,
),
    Pointer<servent> Function(
  Pointer<Utf8> name,
  Pointer<Utf8> proto,
)>('getservbyname');

Pointer<servent> getservbyport(
  int port,
  Pointer<Utf8> proto,
) =>
    _getservbyport(
      port,
      proto,
    );

late final _getservbyport = _ws2_32.lookupFunction<
    Pointer<servent> Function(
  Int32 port,
  Pointer<Utf8> proto,
),
    Pointer<servent> Function(
  int port,
  Pointer<Utf8> proto,
)>('getservbyport');

int getsockname(
  int s,
  Pointer<SOCKADDR> name,
  Pointer<Int32> namelen,
) =>
    _getsockname(
      s,
      name,
      namelen,
    );

late final _getsockname = _ws2_32.lookupFunction<
    Int32 Function(
  IntPtr s,
  Pointer<SOCKADDR> name,
  Pointer<Int32> namelen,
),
    int Function(
  int s,
  Pointer<SOCKADDR> name,
  Pointer<Int32> namelen,
)>('getsockname');

int getsockopt(
  int s,
  int level,
  int optname,
  Pointer<Utf8> optval,
  Pointer<Int32> optlen,
) =>
    _getsockopt(
      s,
      level,
      optname,
      optval,
      optlen,
    );

late final _getsockopt = _ws2_32.lookupFunction<
    Int32 Function(
  IntPtr s,
  Int32 level,
  Int32 optname,
  Pointer<Utf8> optval,
  Pointer<Int32> optlen,
),
    int Function(
  int s,
  int level,
  int optname,
  Pointer<Utf8> optval,
  Pointer<Int32> optlen,
)>('getsockopt');

int htonl(
  int hostlong,
) =>
    _htonl(
      hostlong,
    );

late final _htonl = _ws2_32.lookupFunction<
    Uint32 Function(
  Uint32 hostlong,
),
    int Function(
  int hostlong,
)>('htonl');

int htons(
  int hostshort,
) =>
    _htons(
      hostshort,
    );

late final _htons = _ws2_32.lookupFunction<
    Uint16 Function(
  Uint16 hostshort,
),
    int Function(
  int hostshort,
)>('htons');

int inet_addr(
  Pointer<Utf8> cp,
) =>
    _inet_addr(
      cp,
    );

late final _inet_addr = _ws2_32.lookupFunction<
    Uint32 Function(
  Pointer<Utf8> cp,
),
    int Function(
  Pointer<Utf8> cp,
)>('inet_addr');

Pointer<Utf8> inet_ntoa(
  IN_ADDR $in,
) =>
    _inet_ntoa(
      $in,
    );

late final _inet_ntoa = _ws2_32.lookupFunction<
    Pointer<Utf8> Function(
  IN_ADDR $in,
),
    Pointer<Utf8> Function(
  IN_ADDR $in,
)>('inet_ntoa');

Pointer<Utf8> inet_ntop(
  int Family,
  Pointer pAddr,
  Pointer<Utf8> pStringBuf,
  int StringBufSize,
) =>
    _inet_ntop(
      Family,
      pAddr,
      pStringBuf,
      StringBufSize,
    );

late final _inet_ntop = _ws2_32.lookupFunction<
    Pointer<Utf8> Function(
  Int32 Family,
  Pointer pAddr,
  Pointer<Utf8> pStringBuf,
  IntPtr StringBufSize,
),
    Pointer<Utf8> Function(
  int Family,
  Pointer pAddr,
  Pointer<Utf8> pStringBuf,
  int StringBufSize,
)>('inet_ntop');

int inet_pton(
  int Family,
  Pointer<Utf8> pszAddrString,
  Pointer pAddrBuf,
) =>
    _inet_pton(
      Family,
      pszAddrString,
      pAddrBuf,
    );

late final _inet_pton = _ws2_32.lookupFunction<
    Int32 Function(
  Int32 Family,
  Pointer<Utf8> pszAddrString,
  Pointer pAddrBuf,
),
    int Function(
  int Family,
  Pointer<Utf8> pszAddrString,
  Pointer pAddrBuf,
)>('inet_pton');

int ioctlsocket(
  int s,
  int cmd,
  Pointer<Uint32> argp,
) =>
    _ioctlsocket(
      s,
      cmd,
      argp,
    );

late final _ioctlsocket = _ws2_32.lookupFunction<
    Int32 Function(
  IntPtr s,
  Int32 cmd,
  Pointer<Uint32> argp,
),
    int Function(
  int s,
  int cmd,
  Pointer<Uint32> argp,
)>('ioctlsocket');

int listen(
  int s,
  int backlog,
) =>
    _listen(
      s,
      backlog,
    );

late final _listen = _ws2_32.lookupFunction<
    Int32 Function(
  IntPtr s,
  Int32 backlog,
),
    int Function(
  int s,
  int backlog,
)>('listen');

int ntohl(
  int netlong,
) =>
    _ntohl(
      netlong,
    );

late final _ntohl = _ws2_32.lookupFunction<
    Uint32 Function(
  Uint32 netlong,
),
    int Function(
  int netlong,
)>('ntohl');

int ntohs(
  int netshort,
) =>
    _ntohs(
      netshort,
    );

late final _ntohs = _ws2_32.lookupFunction<
    Uint16 Function(
  Uint16 netshort,
),
    int Function(
  int netshort,
)>('ntohs');

int recv(
  int s,
  Pointer<Utf8> buf,
  int len,
  int flags,
) =>
    _recv(
      s,
      buf,
      len,
      flags,
    );

late final _recv = _ws2_32.lookupFunction<
    Int32 Function(
  IntPtr s,
  Pointer<Utf8> buf,
  Int32 len,
  Int32 flags,
),
    int Function(
  int s,
  Pointer<Utf8> buf,
  int len,
  int flags,
)>('recv');

int recvfrom(
  int s,
  Pointer<Utf8> buf,
  int len,
  int flags,
  Pointer<SOCKADDR> from,
  Pointer<Int32> fromlen,
) =>
    _recvfrom(
      s,
      buf,
      len,
      flags,
      from,
      fromlen,
    );

late final _recvfrom = _ws2_32.lookupFunction<
    Int32 Function(
  IntPtr s,
  Pointer<Utf8> buf,
  Int32 len,
  Int32 flags,
  Pointer<SOCKADDR> from,
  Pointer<Int32> fromlen,
),
    int Function(
  int s,
  Pointer<Utf8> buf,
  int len,
  int flags,
  Pointer<SOCKADDR> from,
  Pointer<Int32> fromlen,
)>('recvfrom');

int select(
  int nfds,
  Pointer<fd_set> readfds,
  Pointer<fd_set> writefds,
  Pointer<fd_set> exceptfds,
  Pointer<timeval> timeout,
) =>
    _select(
      nfds,
      readfds,
      writefds,
      exceptfds,
      timeout,
    );

late final _select = _ws2_32.lookupFunction<
    Int32 Function(
  Int32 nfds,
  Pointer<fd_set> readfds,
  Pointer<fd_set> writefds,
  Pointer<fd_set> exceptfds,
  Pointer<timeval> timeout,
),
    int Function(
  int nfds,
  Pointer<fd_set> readfds,
  Pointer<fd_set> writefds,
  Pointer<fd_set> exceptfds,
  Pointer<timeval> timeout,
)>('select');

int send(
  int s,
  Pointer<Utf8> buf,
  int len,
  int flags,
) =>
    _send(
      s,
      buf,
      len,
      flags,
    );

late final _send = _ws2_32.lookupFunction<
    Int32 Function(
  IntPtr s,
  Pointer<Utf8> buf,
  Int32 len,
  Uint32 flags,
),
    int Function(
  int s,
  Pointer<Utf8> buf,
  int len,
  int flags,
)>('send');

int sendto(
  int s,
  Pointer<Utf8> buf,
  int len,
  int flags,
  Pointer<SOCKADDR> to,
  int tolen,
) =>
    _sendto(
      s,
      buf,
      len,
      flags,
      to,
      tolen,
    );

late final _sendto = _ws2_32.lookupFunction<
    Int32 Function(
  IntPtr s,
  Pointer<Utf8> buf,
  Int32 len,
  Int32 flags,
  Pointer<SOCKADDR> to,
  Int32 tolen,
),
    int Function(
  int s,
  Pointer<Utf8> buf,
  int len,
  int flags,
  Pointer<SOCKADDR> to,
  int tolen,
)>('sendto');

int setsockopt(
  int s,
  int level,
  int optname,
  Pointer<Utf8> optval,
  int optlen,
) =>
    _setsockopt(
      s,
      level,
      optname,
      optval,
      optlen,
    );

late final _setsockopt = _ws2_32.lookupFunction<
    Int32 Function(
  IntPtr s,
  Int32 level,
  Int32 optname,
  Pointer<Utf8> optval,
  Int32 optlen,
),
    int Function(
  int s,
  int level,
  int optname,
  Pointer<Utf8> optval,
  int optlen,
)>('setsockopt');

int shutdown(
  int s,
  int how,
) =>
    _shutdown(
      s,
      how,
    );

late final _shutdown = _ws2_32.lookupFunction<
    Int32 Function(
  IntPtr s,
  Int32 how,
),
    int Function(
  int s,
  int how,
)>('shutdown');

int socket(
  int af,
  int type,
  int protocol,
) =>
    _socket(
      af,
      type,
      protocol,
    );

late final _socket = _ws2_32.lookupFunction<
    IntPtr Function(
  Int32 af,
  Int32 type,
  Int32 protocol,
),
    int Function(
  int af,
  int type,
  int protocol,
)>('socket');

// -----------------------------------------------------------------------
// ntdll.dll
// -----------------------------------------------------------------------
final _ntdll = DynamicLibrary.open('ntdll.dll');

Pointer<Utf16> RtlEthernetAddressToString(
  Pointer<DL_EUI48> Addr,
  Pointer<Utf16> S,
) =>
    _RtlEthernetAddressToString(
      Addr,
      S,
    );

late final _RtlEthernetAddressToString = _ntdll.lookupFunction<
    Pointer<Utf16> Function(
  Pointer<DL_EUI48> Addr,
  Pointer<Utf16> S,
),
    Pointer<Utf16> Function(
  Pointer<DL_EUI48> Addr,
  Pointer<Utf16> S,
)>('RtlEthernetAddressToStringW');

int RtlEthernetStringToAddress(
  Pointer<Utf16> S,
  Pointer<Pointer<Utf16>> Terminator,
  Pointer<DL_EUI48> Addr,
) =>
    _RtlEthernetStringToAddress(
      S,
      Terminator,
      Addr,
    );

late final _RtlEthernetStringToAddress = _ntdll.lookupFunction<
    Int32 Function(
  Pointer<Utf16> S,
  Pointer<Pointer<Utf16>> Terminator,
  Pointer<DL_EUI48> Addr,
),
    int Function(
  Pointer<Utf16> S,
  Pointer<Pointer<Utf16>> Terminator,
  Pointer<DL_EUI48> Addr,
)>('RtlEthernetStringToAddressW');

int RtlIpv4AddressToStringEx(
  Pointer<IN_ADDR> Address,
  int Port,
  Pointer<Utf16> AddressString,
  Pointer<Uint32> AddressStringLength,
) =>
    _RtlIpv4AddressToStringEx(
      Address,
      Port,
      AddressString,
      AddressStringLength,
    );

late final _RtlIpv4AddressToStringEx = _ntdll.lookupFunction<
    Int32 Function(
  Pointer<IN_ADDR> Address,
  Uint16 Port,
  Pointer<Utf16> AddressString,
  Pointer<Uint32> AddressStringLength,
),
    int Function(
  Pointer<IN_ADDR> Address,
  int Port,
  Pointer<Utf16> AddressString,
  Pointer<Uint32> AddressStringLength,
)>('RtlIpv4AddressToStringExW');

Pointer<Utf16> RtlIpv4AddressToString(
  Pointer<IN_ADDR> Addr,
  Pointer<Utf16> S,
) =>
    _RtlIpv4AddressToString(
      Addr,
      S,
    );

late final _RtlIpv4AddressToString = _ntdll.lookupFunction<
    Pointer<Utf16> Function(
  Pointer<IN_ADDR> Addr,
  Pointer<Utf16> S,
),
    Pointer<Utf16> Function(
  Pointer<IN_ADDR> Addr,
  Pointer<Utf16> S,
)>('RtlIpv4AddressToStringW');

int RtlIpv4StringToAddressEx(
  Pointer<Utf16> AddressString,
  int Strict,
  Pointer<IN_ADDR> Address,
  Pointer<Uint16> Port,
) =>
    _RtlIpv4StringToAddressEx(
      AddressString,
      Strict,
      Address,
      Port,
    );

late final _RtlIpv4StringToAddressEx = _ntdll.lookupFunction<
    Int32 Function(
  Pointer<Utf16> AddressString,
  Uint8 Strict,
  Pointer<IN_ADDR> Address,
  Pointer<Uint16> Port,
),
    int Function(
  Pointer<Utf16> AddressString,
  int Strict,
  Pointer<IN_ADDR> Address,
  Pointer<Uint16> Port,
)>('RtlIpv4StringToAddressExW');

int RtlIpv4StringToAddress(
  Pointer<Utf16> S,
  int Strict,
  Pointer<Pointer<Utf16>> Terminator,
  Pointer<IN_ADDR> Addr,
) =>
    _RtlIpv4StringToAddress(
      S,
      Strict,
      Terminator,
      Addr,
    );

late final _RtlIpv4StringToAddress = _ntdll.lookupFunction<
    Int32 Function(
  Pointer<Utf16> S,
  Uint8 Strict,
  Pointer<Pointer<Utf16>> Terminator,
  Pointer<IN_ADDR> Addr,
),
    int Function(
  Pointer<Utf16> S,
  int Strict,
  Pointer<Pointer<Utf16>> Terminator,
  Pointer<IN_ADDR> Addr,
)>('RtlIpv4StringToAddressW');

int RtlIpv6AddressToStringEx(
  Pointer<IN6_ADDR> Address,
  int ScopeId,
  int Port,
  Pointer<Utf16> AddressString,
  Pointer<Uint32> AddressStringLength,
) =>
    _RtlIpv6AddressToStringEx(
      Address,
      ScopeId,
      Port,
      AddressString,
      AddressStringLength,
    );

late final _RtlIpv6AddressToStringEx = _ntdll.lookupFunction<
    Int32 Function(
  Pointer<IN6_ADDR> Address,
  Uint32 ScopeId,
  Uint16 Port,
  Pointer<Utf16> AddressString,
  Pointer<Uint32> AddressStringLength,
),
    int Function(
  Pointer<IN6_ADDR> Address,
  int ScopeId,
  int Port,
  Pointer<Utf16> AddressString,
  Pointer<Uint32> AddressStringLength,
)>('RtlIpv6AddressToStringExW');

Pointer<Utf16> RtlIpv6AddressToString(
  Pointer<IN6_ADDR> Addr,
  Pointer<Utf16> S,
) =>
    _RtlIpv6AddressToString(
      Addr,
      S,
    );

late final _RtlIpv6AddressToString = _ntdll.lookupFunction<
    Pointer<Utf16> Function(
  Pointer<IN6_ADDR> Addr,
  Pointer<Utf16> S,
),
    Pointer<Utf16> Function(
  Pointer<IN6_ADDR> Addr,
  Pointer<Utf16> S,
)>('RtlIpv6AddressToStringW');

int RtlIpv6StringToAddressEx(
  Pointer<Utf16> AddressString,
  Pointer<IN6_ADDR> Address,
  Pointer<Uint32> ScopeId,
  Pointer<Uint16> Port,
) =>
    _RtlIpv6StringToAddressEx(
      AddressString,
      Address,
      ScopeId,
      Port,
    );

late final _RtlIpv6StringToAddressEx = _ntdll.lookupFunction<
    Int32 Function(
  Pointer<Utf16> AddressString,
  Pointer<IN6_ADDR> Address,
  Pointer<Uint32> ScopeId,
  Pointer<Uint16> Port,
),
    int Function(
  Pointer<Utf16> AddressString,
  Pointer<IN6_ADDR> Address,
  Pointer<Uint32> ScopeId,
  Pointer<Uint16> Port,
)>('RtlIpv6StringToAddressExW');

int RtlIpv6StringToAddress(
  Pointer<Utf16> S,
  Pointer<Pointer<Utf16>> Terminator,
  Pointer<IN6_ADDR> Addr,
) =>
    _RtlIpv6StringToAddress(
      S,
      Terminator,
      Addr,
    );

late final _RtlIpv6StringToAddress = _ntdll.lookupFunction<
    Int32 Function(
  Pointer<Utf16> S,
  Pointer<Pointer<Utf16>> Terminator,
  Pointer<IN6_ADDR> Addr,
),
    int Function(
  Pointer<Utf16> S,
  Pointer<Pointer<Utf16>> Terminator,
  Pointer<IN6_ADDR> Addr,
)>('RtlIpv6StringToAddressW');

// -----------------------------------------------------------------------
// mswsock.dll
// -----------------------------------------------------------------------
final _mswsock = DynamicLibrary.open('mswsock.dll');

int AcceptEx(
  int sListenSocket,
  int sAcceptSocket,
  Pointer lpOutputBuffer,
  int dwReceiveDataLength,
  int dwLocalAddressLength,
  int dwRemoteAddressLength,
  Pointer<Uint32> lpdwBytesReceived,
  Pointer<OVERLAPPED> lpOverlapped,
) =>
    _AcceptEx(
      sListenSocket,
      sAcceptSocket,
      lpOutputBuffer,
      dwReceiveDataLength,
      dwLocalAddressLength,
      dwRemoteAddressLength,
      lpdwBytesReceived,
      lpOverlapped,
    );

late final _AcceptEx = _mswsock.lookupFunction<
    Int32 Function(
  IntPtr sListenSocket,
  IntPtr sAcceptSocket,
  Pointer lpOutputBuffer,
  Uint32 dwReceiveDataLength,
  Uint32 dwLocalAddressLength,
  Uint32 dwRemoteAddressLength,
  Pointer<Uint32> lpdwBytesReceived,
  Pointer<OVERLAPPED> lpOverlapped,
),
    int Function(
  int sListenSocket,
  int sAcceptSocket,
  Pointer lpOutputBuffer,
  int dwReceiveDataLength,
  int dwLocalAddressLength,
  int dwRemoteAddressLength,
  Pointer<Uint32> lpdwBytesReceived,
  Pointer<OVERLAPPED> lpOverlapped,
)>('AcceptEx');

int EnumProtocols(
  Pointer<Int32> lpiProtocols,
  Pointer lpProtocolBuffer,
  Pointer<Uint32> lpdwBufferLength,
) =>
    _EnumProtocols(
      lpiProtocols,
      lpProtocolBuffer,
      lpdwBufferLength,
    );

late final _EnumProtocols = _mswsock.lookupFunction<
    Int32 Function(
  Pointer<Int32> lpiProtocols,
  Pointer lpProtocolBuffer,
  Pointer<Uint32> lpdwBufferLength,
),
    int Function(
  Pointer<Int32> lpiProtocols,
  Pointer lpProtocolBuffer,
  Pointer<Uint32> lpdwBufferLength,
)>('EnumProtocolsW');

void GetAcceptExSockaddrs(
  Pointer lpOutputBuffer,
  int dwReceiveDataLength,
  int dwLocalAddressLength,
  int dwRemoteAddressLength,
  Pointer<Pointer<SOCKADDR>> LocalSockaddr,
  Pointer<Int32> LocalSockaddrLength,
  Pointer<Pointer<SOCKADDR>> RemoteSockaddr,
  Pointer<Int32> RemoteSockaddrLength,
) =>
    _GetAcceptExSockaddrs(
      lpOutputBuffer,
      dwReceiveDataLength,
      dwLocalAddressLength,
      dwRemoteAddressLength,
      LocalSockaddr,
      LocalSockaddrLength,
      RemoteSockaddr,
      RemoteSockaddrLength,
    );

late final _GetAcceptExSockaddrs = _mswsock.lookupFunction<
    Void Function(
  Pointer lpOutputBuffer,
  Uint32 dwReceiveDataLength,
  Uint32 dwLocalAddressLength,
  Uint32 dwRemoteAddressLength,
  Pointer<Pointer<SOCKADDR>> LocalSockaddr,
  Pointer<Int32> LocalSockaddrLength,
  Pointer<Pointer<SOCKADDR>> RemoteSockaddr,
  Pointer<Int32> RemoteSockaddrLength,
),
    void Function(
  Pointer lpOutputBuffer,
  int dwReceiveDataLength,
  int dwLocalAddressLength,
  int dwRemoteAddressLength,
  Pointer<Pointer<SOCKADDR>> LocalSockaddr,
  Pointer<Int32> LocalSockaddrLength,
  Pointer<Pointer<SOCKADDR>> RemoteSockaddr,
  Pointer<Int32> RemoteSockaddrLength,
)>('GetAcceptExSockaddrs');

int GetAddressByName(
  int dwNameSpace,
  Pointer<GUID> lpServiceType,
  Pointer<Utf16> lpServiceName,
  Pointer<Int32> lpiProtocols,
  int dwResolution,
  Pointer<SERVICE_ASYNC_INFO> lpServiceAsyncInfo,
  Pointer lpCsaddrBuffer,
  Pointer<Uint32> lpdwBufferLength,
  Pointer<Utf16> lpAliasBuffer,
  Pointer<Uint32> lpdwAliasBufferLength,
) =>
    _GetAddressByName(
      dwNameSpace,
      lpServiceType,
      lpServiceName,
      lpiProtocols,
      dwResolution,
      lpServiceAsyncInfo,
      lpCsaddrBuffer,
      lpdwBufferLength,
      lpAliasBuffer,
      lpdwAliasBufferLength,
    );

late final _GetAddressByName = _mswsock.lookupFunction<
    Int32 Function(
  Uint32 dwNameSpace,
  Pointer<GUID> lpServiceType,
  Pointer<Utf16> lpServiceName,
  Pointer<Int32> lpiProtocols,
  Uint32 dwResolution,
  Pointer<SERVICE_ASYNC_INFO> lpServiceAsyncInfo,
  Pointer lpCsaddrBuffer,
  Pointer<Uint32> lpdwBufferLength,
  Pointer<Utf16> lpAliasBuffer,
  Pointer<Uint32> lpdwAliasBufferLength,
),
    int Function(
  int dwNameSpace,
  Pointer<GUID> lpServiceType,
  Pointer<Utf16> lpServiceName,
  Pointer<Int32> lpiProtocols,
  int dwResolution,
  Pointer<SERVICE_ASYNC_INFO> lpServiceAsyncInfo,
  Pointer lpCsaddrBuffer,
  Pointer<Uint32> lpdwBufferLength,
  Pointer<Utf16> lpAliasBuffer,
  Pointer<Uint32> lpdwAliasBufferLength,
)>('GetAddressByNameW');

int GetNameByType(
  Pointer<GUID> lpServiceType,
  Pointer<Utf16> lpServiceName,
  int dwNameLength,
) =>
    _GetNameByType(
      lpServiceType,
      lpServiceName,
      dwNameLength,
    );

late final _GetNameByType = _mswsock.lookupFunction<
    Int32 Function(
  Pointer<GUID> lpServiceType,
  Pointer<Utf16> lpServiceName,
  Uint32 dwNameLength,
),
    int Function(
  Pointer<GUID> lpServiceType,
  Pointer<Utf16> lpServiceName,
  int dwNameLength,
)>('GetNameByTypeW');

int GetService(
  int dwNameSpace,
  Pointer<GUID> lpGuid,
  Pointer<Utf16> lpServiceName,
  int dwProperties,
  Pointer lpBuffer,
  Pointer<Uint32> lpdwBufferSize,
  Pointer<SERVICE_ASYNC_INFO> lpServiceAsyncInfo,
) =>
    _GetService(
      dwNameSpace,
      lpGuid,
      lpServiceName,
      dwProperties,
      lpBuffer,
      lpdwBufferSize,
      lpServiceAsyncInfo,
    );

late final _GetService = _mswsock.lookupFunction<
    Int32 Function(
  Uint32 dwNameSpace,
  Pointer<GUID> lpGuid,
  Pointer<Utf16> lpServiceName,
  Uint32 dwProperties,
  Pointer lpBuffer,
  Pointer<Uint32> lpdwBufferSize,
  Pointer<SERVICE_ASYNC_INFO> lpServiceAsyncInfo,
),
    int Function(
  int dwNameSpace,
  Pointer<GUID> lpGuid,
  Pointer<Utf16> lpServiceName,
  int dwProperties,
  Pointer lpBuffer,
  Pointer<Uint32> lpdwBufferSize,
  Pointer<SERVICE_ASYNC_INFO> lpServiceAsyncInfo,
)>('GetServiceW');

int GetTypeByName(
  Pointer<Utf16> lpServiceName,
  Pointer<GUID> lpServiceType,
) =>
    _GetTypeByName(
      lpServiceName,
      lpServiceType,
    );

late final _GetTypeByName = _mswsock.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpServiceName,
  Pointer<GUID> lpServiceType,
),
    int Function(
  Pointer<Utf16> lpServiceName,
  Pointer<GUID> lpServiceType,
)>('GetTypeByNameW');

int SetService(
  int dwNameSpace,
  int dwOperation,
  int dwFlags,
  Pointer<SERVICE_INFO> lpServiceInfo,
  Pointer<SERVICE_ASYNC_INFO> lpServiceAsyncInfo,
  Pointer<Uint32> lpdwStatusFlags,
) =>
    _SetService(
      dwNameSpace,
      dwOperation,
      dwFlags,
      lpServiceInfo,
      lpServiceAsyncInfo,
      lpdwStatusFlags,
    );

late final _SetService = _mswsock.lookupFunction<
    Int32 Function(
  Uint32 dwNameSpace,
  Uint32 dwOperation,
  Uint32 dwFlags,
  Pointer<SERVICE_INFO> lpServiceInfo,
  Pointer<SERVICE_ASYNC_INFO> lpServiceAsyncInfo,
  Pointer<Uint32> lpdwStatusFlags,
),
    int Function(
  int dwNameSpace,
  int dwOperation,
  int dwFlags,
  Pointer<SERVICE_INFO> lpServiceInfo,
  Pointer<SERVICE_ASYNC_INFO> lpServiceAsyncInfo,
  Pointer<Uint32> lpdwStatusFlags,
)>('SetServiceW');

int TransmitFile(
  int hSocket,
  int hFile,
  int nNumberOfBytesToWrite,
  int nNumberOfBytesPerSend,
  Pointer<OVERLAPPED> lpOverlapped,
  Pointer<TRANSMIT_FILE_BUFFERS> lpTransmitBuffers,
  int dwReserved,
) =>
    _TransmitFile(
      hSocket,
      hFile,
      nNumberOfBytesToWrite,
      nNumberOfBytesPerSend,
      lpOverlapped,
      lpTransmitBuffers,
      dwReserved,
    );

late final _TransmitFile = _mswsock.lookupFunction<
    Int32 Function(
  IntPtr hSocket,
  IntPtr hFile,
  Uint32 nNumberOfBytesToWrite,
  Uint32 nNumberOfBytesPerSend,
  Pointer<OVERLAPPED> lpOverlapped,
  Pointer<TRANSMIT_FILE_BUFFERS> lpTransmitBuffers,
  Uint32 dwReserved,
),
    int Function(
  int hSocket,
  int hFile,
  int nNumberOfBytesToWrite,
  int nNumberOfBytesPerSend,
  Pointer<OVERLAPPED> lpOverlapped,
  Pointer<TRANSMIT_FILE_BUFFERS> lpTransmitBuffers,
  int dwReserved,
)>('TransmitFile');

int WSARecvEx(
  int s,
  Pointer<Utf8> buf,
  int len,
  Pointer<Int32> flags,
) =>
    _WSARecvEx(
      s,
      buf,
      len,
      flags,
    );

late final _WSARecvEx = _mswsock.lookupFunction<
    Int32 Function(
  IntPtr s,
  Pointer<Utf8> buf,
  Int32 len,
  Pointer<Int32> flags,
),
    int Function(
  int s,
  Pointer<Utf8> buf,
  int len,
  Pointer<Int32> flags,
)>('WSARecvEx');

// -----------------------------------------------------------------------
// fwpuclnt.dll
// -----------------------------------------------------------------------
final _fwpuclnt = DynamicLibrary.open('fwpuclnt.dll');

int WSADeleteSocketPeerTargetName(
  int Socket,
  Pointer<SOCKADDR> PeerAddr,
  int PeerAddrLen,
  Pointer<OVERLAPPED> Overlapped,
  Pointer<NativeFunction<LPWSAOVERLAPPED_COMPLETION_ROUTINE>> CompletionRoutine,
) =>
    _WSADeleteSocketPeerTargetName(
      Socket,
      PeerAddr,
      PeerAddrLen,
      Overlapped,
      CompletionRoutine,
    );

late final _WSADeleteSocketPeerTargetName = _fwpuclnt.lookupFunction<
    Int32 Function(
  IntPtr Socket,
  Pointer<SOCKADDR> PeerAddr,
  Uint32 PeerAddrLen,
  Pointer<OVERLAPPED> Overlapped,
  Pointer<NativeFunction<LPWSAOVERLAPPED_COMPLETION_ROUTINE>> CompletionRoutine,
),
    int Function(
  int Socket,
  Pointer<SOCKADDR> PeerAddr,
  int PeerAddrLen,
  Pointer<OVERLAPPED> Overlapped,
  Pointer<NativeFunction<LPWSAOVERLAPPED_COMPLETION_ROUTINE>> CompletionRoutine,
)>('WSADeleteSocketPeerTargetName');

int WSAImpersonateSocketPeer(
  int Socket,
  Pointer<SOCKADDR> PeerAddr,
  int PeerAddrLen,
) =>
    _WSAImpersonateSocketPeer(
      Socket,
      PeerAddr,
      PeerAddrLen,
    );

late final _WSAImpersonateSocketPeer = _fwpuclnt.lookupFunction<
    Int32 Function(
  IntPtr Socket,
  Pointer<SOCKADDR> PeerAddr,
  Uint32 PeerAddrLen,
),
    int Function(
  int Socket,
  Pointer<SOCKADDR> PeerAddr,
  int PeerAddrLen,
)>('WSAImpersonateSocketPeer');

int WSAQuerySocketSecurity(
  int Socket,
  Pointer<SOCKET_SECURITY_QUERY_TEMPLATE> SecurityQueryTemplate,
  int SecurityQueryTemplateLen,
  Pointer<SOCKET_SECURITY_QUERY_INFO> SecurityQueryInfo,
  Pointer<Uint32> SecurityQueryInfoLen,
  Pointer<OVERLAPPED> Overlapped,
  Pointer<NativeFunction<LPWSAOVERLAPPED_COMPLETION_ROUTINE>> CompletionRoutine,
) =>
    _WSAQuerySocketSecurity(
      Socket,
      SecurityQueryTemplate,
      SecurityQueryTemplateLen,
      SecurityQueryInfo,
      SecurityQueryInfoLen,
      Overlapped,
      CompletionRoutine,
    );

late final _WSAQuerySocketSecurity = _fwpuclnt.lookupFunction<
    Int32 Function(
  IntPtr Socket,
  Pointer<SOCKET_SECURITY_QUERY_TEMPLATE> SecurityQueryTemplate,
  Uint32 SecurityQueryTemplateLen,
  Pointer<SOCKET_SECURITY_QUERY_INFO> SecurityQueryInfo,
  Pointer<Uint32> SecurityQueryInfoLen,
  Pointer<OVERLAPPED> Overlapped,
  Pointer<NativeFunction<LPWSAOVERLAPPED_COMPLETION_ROUTINE>> CompletionRoutine,
),
    int Function(
  int Socket,
  Pointer<SOCKET_SECURITY_QUERY_TEMPLATE> SecurityQueryTemplate,
  int SecurityQueryTemplateLen,
  Pointer<SOCKET_SECURITY_QUERY_INFO> SecurityQueryInfo,
  Pointer<Uint32> SecurityQueryInfoLen,
  Pointer<OVERLAPPED> Overlapped,
  Pointer<NativeFunction<LPWSAOVERLAPPED_COMPLETION_ROUTINE>> CompletionRoutine,
)>('WSAQuerySocketSecurity');

int WSARevertImpersonation() => _WSARevertImpersonation();

late final _WSARevertImpersonation = _fwpuclnt
    .lookupFunction<Int32 Function(), int Function()>('WSARevertImpersonation');

int WSASetSocketPeerTargetName(
  int Socket,
  Pointer<SOCKET_PEER_TARGET_NAME> PeerTargetName,
  int PeerTargetNameLen,
  Pointer<OVERLAPPED> Overlapped,
  Pointer<NativeFunction<LPWSAOVERLAPPED_COMPLETION_ROUTINE>> CompletionRoutine,
) =>
    _WSASetSocketPeerTargetName(
      Socket,
      PeerTargetName,
      PeerTargetNameLen,
      Overlapped,
      CompletionRoutine,
    );

late final _WSASetSocketPeerTargetName = _fwpuclnt.lookupFunction<
    Int32 Function(
  IntPtr Socket,
  Pointer<SOCKET_PEER_TARGET_NAME> PeerTargetName,
  Uint32 PeerTargetNameLen,
  Pointer<OVERLAPPED> Overlapped,
  Pointer<NativeFunction<LPWSAOVERLAPPED_COMPLETION_ROUTINE>> CompletionRoutine,
),
    int Function(
  int Socket,
  Pointer<SOCKET_PEER_TARGET_NAME> PeerTargetName,
  int PeerTargetNameLen,
  Pointer<OVERLAPPED> Overlapped,
  Pointer<NativeFunction<LPWSAOVERLAPPED_COMPLETION_ROUTINE>> CompletionRoutine,
)>('WSASetSocketPeerTargetName');

int WSASetSocketSecurity(
  int Socket,
  Pointer<SOCKET_SECURITY_SETTINGS> SecuritySettings,
  int SecuritySettingsLen,
  Pointer<OVERLAPPED> Overlapped,
  Pointer<NativeFunction<LPWSAOVERLAPPED_COMPLETION_ROUTINE>> CompletionRoutine,
) =>
    _WSASetSocketSecurity(
      Socket,
      SecuritySettings,
      SecuritySettingsLen,
      Overlapped,
      CompletionRoutine,
    );

late final _WSASetSocketSecurity = _fwpuclnt.lookupFunction<
    Int32 Function(
  IntPtr Socket,
  Pointer<SOCKET_SECURITY_SETTINGS> SecuritySettings,
  Uint32 SecuritySettingsLen,
  Pointer<OVERLAPPED> Overlapped,
  Pointer<NativeFunction<LPWSAOVERLAPPED_COMPLETION_ROUTINE>> CompletionRoutine,
),
    int Function(
  int Socket,
  Pointer<SOCKET_SECURITY_SETTINGS> SecuritySettings,
  int SecuritySettingsLen,
  Pointer<OVERLAPPED> Overlapped,
  Pointer<NativeFunction<LPWSAOVERLAPPED_COMPLETION_ROUTINE>> CompletionRoutine,
)>('WSASetSocketSecurity');

// -----------------------------------------------------------------------
// windows.networking.dll
// -----------------------------------------------------------------------
final _windows_networking = DynamicLibrary.open('windows.networking.dll');

int SetSocketMediaStreamingMode(
  int value,
) =>
    _SetSocketMediaStreamingMode(
      value,
    );

late final _SetSocketMediaStreamingMode = _windows_networking.lookupFunction<
    Int32 Function(
  Int32 value,
),
    int Function(
  int value,
)>('SetSocketMediaStreamingMode');
