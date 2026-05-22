// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// Maps FFI prototypes onto the corresponding Win32 API function calls.
//
// ignore_for_file: avoid_positional_boolean_parameters
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: specify_nonobvious_property_types, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:ffi_leak_tracker/ffi_leak_tracker.dart';

import '../bstr.dart';
import '../com/interface.g.dart';
import '../com/iunknown.g.dart';
import '../constants.dart';
import '../constants.g.dart';
import '../enums.g.dart';
import '../exception.dart';
import '../extensions/pointer.dart';
import '../functions.dart';
import '../hresult.dart';
import '../hstring.dart';
import '../macros.dart';
import '../ntstatus.dart';
import '../pcstr.dart';
import '../pcwstr.dart';
import '../pstr.dart';
import '../pwstr.dart';
import '../rpc_status.dart';
import '../structs.g.dart';
import '../types.dart';
import '../utils.dart';
import '../win32_error.dart';
import '../win32_result.dart';

final _ws2_32 = DynamicLibrary.open('ws2_32.dll');

/// Permits an incoming connection attempt on a socket.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsock2/nf-winsock2-accept>.
///
/// {@category winsock}
Win32Result<SOCKET> accept(
  SOCKET s,
  Pointer<SOCKADDR>? addr,
  Pointer<Int32>? addrlen,
) {
  resolveGetLastError();
  final result_ = _accept(s, addr ?? nullptr, addrlen ?? nullptr);
  return .new(value: .new(result_), error: GetLastError());
}

final _accept = _ws2_32
    .lookupFunction<
      IntPtr Function(IntPtr, Pointer<SOCKADDR>, Pointer<Int32>),
      int Function(int, Pointer<SOCKADDR>, Pointer<Int32>)
    >('accept');

/// Associates a local address with a socket.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsock/nf-winsock-bind>.
///
/// {@category winsock}
Win32Result<int> bind(SOCKET s, Pointer<SOCKADDR> name, int namelen) {
  resolveGetLastError();
  final result_ = _bind(s, name, namelen);
  return .new(value: result_, error: GetLastError());
}

final _bind = _ws2_32
    .lookupFunction<
      Int32 Function(IntPtr, Pointer<SOCKADDR>, Int32),
      int Function(int, Pointer<SOCKADDR>, int)
    >('bind');

/// Closes an existing socket.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsock/nf-winsock-closesocket>.
///
/// {@category winsock}
Win32Result<int> closesocket(SOCKET s) {
  resolveGetLastError();
  final result_ = _closesocket(s);
  return .new(value: result_, error: GetLastError());
}

final _closesocket = _ws2_32
    .lookupFunction<Int32 Function(IntPtr), int Function(int)>('closesocket');

/// Establishes a connection to a specified socket.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsock2/nf-winsock2-connect>.
///
/// {@category winsock}
Win32Result<int> connect(SOCKET s, Pointer<SOCKADDR> name, int namelen) {
  resolveGetLastError();
  final result_ = _connect(s, name, namelen);
  return .new(value: result_, error: GetLastError());
}

final _connect = _ws2_32
    .lookupFunction<
      Int32 Function(IntPtr, Pointer<SOCKADDR>, Int32),
      int Function(int, Pointer<SOCKADDR>, int)
    >('connect');

/// Provides protocol-independent translation from a Unicode host name to an
/// address.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/ws2tcpip/nf-ws2tcpip-getaddrinfow>.
///
/// {@category winsock}
@pragma('vm:prefer-inline')
int GetAddrInfo(
  PCWSTR? pNodeName,
  PCWSTR? pServiceName,
  Pointer<ADDRINFO>? pHints,
  Pointer<Pointer<ADDRINFO>> ppResult,
) => _GetAddrInfo(
  pNodeName ?? nullptr,
  pServiceName ?? nullptr,
  pHints ?? nullptr,
  ppResult,
);

final _GetAddrInfo = _ws2_32
    .lookupFunction<
      Int32 Function(
        Pointer<Utf16>,
        Pointer<Utf16>,
        Pointer<ADDRINFO>,
        Pointer<Pointer<ADDRINFO>>,
      ),
      int Function(
        Pointer<Utf16>,
        Pointer<Utf16>,
        Pointer<ADDRINFO>,
        Pointer<Pointer<ADDRINFO>>,
      )
    >('GetAddrInfoW');

/// Retrieves the standard host name for the local computer.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsock/nf-winsock-gethostname>.
///
/// {@category winsock}
Win32Result<int> gethostname(PSTR name, int namelen) {
  resolveGetLastError();
  final result_ = _gethostname(name, namelen);
  return .new(value: result_, error: GetLastError());
}

final _gethostname = _ws2_32
    .lookupFunction<
      Int32 Function(Pointer<Utf8>, Int32),
      int Function(Pointer<Utf8>, int)
    >('gethostname');

/// Provides protocol-independent name resolution from an address to an ANSI
/// host name and from a port number to the ANSI service name.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/ws2tcpip/nf-ws2tcpip-getnameinfo>.
///
/// {@category winsock}
Win32Result<int> getnameinfo(
  Pointer<SOCKADDR> pSockaddr,
  socklen_t sockaddrLength,
  PSTR? pNodeBuffer,
  int nodeBufferSize,
  PSTR? pServiceBuffer,
  int serviceBufferSize,
  int flags,
) {
  resolveGetLastError();
  final result_ = _getnameinfo(
    pSockaddr,
    sockaddrLength,
    pNodeBuffer ?? nullptr,
    nodeBufferSize,
    pServiceBuffer ?? nullptr,
    serviceBufferSize,
    flags,
  );
  return .new(value: result_, error: GetLastError());
}

final _getnameinfo = _ws2_32
    .lookupFunction<
      Int32 Function(
        Pointer<SOCKADDR>,
        Int32,
        Pointer<Utf8>,
        Uint32,
        Pointer<Utf8>,
        Uint32,
        Int32,
      ),
      int Function(
        Pointer<SOCKADDR>,
        int,
        Pointer<Utf8>,
        int,
        Pointer<Utf8>,
        int,
        int,
      )
    >('getnameinfo');

/// Retrieves the address of the peer to which a socket is connected.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsock/nf-winsock-getpeername>.
///
/// {@category winsock}
Win32Result<int> getpeername(
  SOCKET s,
  Pointer<SOCKADDR> name,
  Pointer<Int32> namelen,
) {
  resolveGetLastError();
  final result_ = _getpeername(s, name, namelen);
  return .new(value: result_, error: GetLastError());
}

final _getpeername = _ws2_32
    .lookupFunction<
      Int32 Function(IntPtr, Pointer<SOCKADDR>, Pointer<Int32>),
      int Function(int, Pointer<SOCKADDR>, Pointer<Int32>)
    >('getpeername');

/// Retrieves the protocol information corresponding to a protocol name.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsock/nf-winsock-getprotobyname>.
///
/// {@category winsock}
Win32Result<Pointer<PROTOENT>> getprotobyname(PCSTR name) {
  resolveGetLastError();
  final result_ = _getprotobyname(name);
  return .new(value: result_, error: GetLastError());
}

final _getprotobyname = _ws2_32
    .lookupFunction<
      Pointer<PROTOENT> Function(Pointer<Utf8>),
      Pointer<PROTOENT> Function(Pointer<Utf8>)
    >('getprotobyname');

/// Retrieves protocol information corresponding to a protocol number.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsock/nf-winsock-getprotobynumber>.
///
/// {@category winsock}
Win32Result<Pointer<PROTOENT>> getprotobynumber(int number) {
  resolveGetLastError();
  final result_ = _getprotobynumber(number);
  return .new(value: result_, error: GetLastError());
}

final _getprotobynumber = _ws2_32
    .lookupFunction<
      Pointer<PROTOENT> Function(Int32),
      Pointer<PROTOENT> Function(int)
    >('getprotobynumber');

/// Retrieves service information corresponding to a service name and protocol.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsock/nf-winsock-getservbyname>.
///
/// {@category winsock}
Win32Result<Pointer<SERVENT>> getservbyname(PCSTR name, PCSTR? proto) {
  resolveGetLastError();
  final result_ = _getservbyname(name, proto ?? nullptr);
  return .new(value: result_, error: GetLastError());
}

final _getservbyname = _ws2_32
    .lookupFunction<
      Pointer<SERVENT> Function(Pointer<Utf8>, Pointer<Utf8>),
      Pointer<SERVENT> Function(Pointer<Utf8>, Pointer<Utf8>)
    >('getservbyname');

/// Retrieves service information corresponding to a port and protocol.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsock/nf-winsock-getservbyport>.
///
/// {@category winsock}
Win32Result<Pointer<SERVENT>> getservbyport(int port, PCSTR? proto) {
  resolveGetLastError();
  final result_ = _getservbyport(port, proto ?? nullptr);
  return .new(value: result_, error: GetLastError());
}

final _getservbyport = _ws2_32
    .lookupFunction<
      Pointer<SERVENT> Function(Int32, Pointer<Utf8>),
      Pointer<SERVENT> Function(int, Pointer<Utf8>)
    >('getservbyport');

/// Retrieves the local name for a socket.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsock/nf-winsock-getsockname>.
///
/// {@category winsock}
Win32Result<int> getsockname(
  SOCKET s,
  Pointer<SOCKADDR> name,
  Pointer<Int32> namelen,
) {
  resolveGetLastError();
  final result_ = _getsockname(s, name, namelen);
  return .new(value: result_, error: GetLastError());
}

final _getsockname = _ws2_32
    .lookupFunction<
      Int32 Function(IntPtr, Pointer<SOCKADDR>, Pointer<Int32>),
      int Function(int, Pointer<SOCKADDR>, Pointer<Int32>)
    >('getsockname');

/// Retrieves a socket option.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsock/nf-winsock-getsockopt>.
///
/// {@category winsock}
Win32Result<int> getsockopt(
  SOCKET s,
  int level,
  int optname,
  PSTR optval,
  Pointer<Int32> optlen,
) {
  resolveGetLastError();
  final result_ = _getsockopt(s, level, optname, optval, optlen);
  return .new(value: result_, error: GetLastError());
}

final _getsockopt = _ws2_32
    .lookupFunction<
      Int32 Function(IntPtr, Int32, Int32, Pointer<Utf8>, Pointer<Int32>),
      int Function(int, int, int, Pointer<Utf8>, Pointer<Int32>)
    >('getsockopt');

/// Converts a u_long from host to TCP/IP network byte order (which is
/// big-endian).
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsock/nf-winsock-htonl>.
///
/// {@category winsock}
Win32Result<int> htonl(int hostlong) {
  resolveGetLastError();
  final result_ = _htonl(hostlong);
  return .new(value: result_, error: GetLastError());
}

final _htonl = _ws2_32
    .lookupFunction<Uint32 Function(Uint32), int Function(int)>('htonl');

/// Converts a u_short from host to TCP/IP network byte order (which is
/// big-endian).
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsock/nf-winsock-htons>.
///
/// {@category winsock}
Win32Result<int> htons(int hostshort) {
  resolveGetLastError();
  final result_ = _htons(hostshort);
  return .new(value: result_, error: GetLastError());
}

final _htons = _ws2_32
    .lookupFunction<Uint16 Function(Uint16), int Function(int)>('htons');

/// Converts an IPv4 or IPv6 Internet network address into a string in Internet
/// standard format.
///
/// The ANSI version of this function is inet_ntop.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/ws2tcpip/nf-ws2tcpip-inet_ntop>.
///
/// {@category winsock}
Win32Result<PCSTR> inet_ntop(
  int family,
  Pointer pAddr,
  PSTR pStringBuf,
  int stringBufSize,
) {
  resolveGetLastError();
  final result_ = _inet_ntop(family, pAddr, pStringBuf, stringBufSize);
  return .new(value: .new(result_), error: GetLastError());
}

final _inet_ntop = _ws2_32
    .lookupFunction<
      Pointer<Utf8> Function(Int32, Pointer, Pointer<Utf8>, IntPtr),
      Pointer<Utf8> Function(int, Pointer, Pointer<Utf8>, int)
    >('inet_ntop');

/// Controls the I/O mode of a socket.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsock/nf-winsock-ioctlsocket>.
///
/// {@category winsock}
Win32Result<int> ioctlsocket(SOCKET s, int cmd, Pointer<Uint32> argp) {
  resolveGetLastError();
  final result_ = _ioctlsocket(s, cmd, argp);
  return .new(value: result_, error: GetLastError());
}

final _ioctlsocket = _ws2_32
    .lookupFunction<
      Int32 Function(IntPtr, Int32, Pointer<Uint32>),
      int Function(int, int, Pointer<Uint32>)
    >('ioctlsocket');

/// Places a socket in a state in which it is listening for an incoming
/// connection.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsock2/nf-winsock2-listen>.
///
/// {@category winsock}
Win32Result<int> listen(SOCKET s, int backlog) {
  resolveGetLastError();
  final result_ = _listen(s, backlog);
  return .new(value: result_, error: GetLastError());
}

final _listen = _ws2_32
    .lookupFunction<Int32 Function(IntPtr, Int32), int Function(int, int)>(
      'listen',
    );

/// Converts a u_long from TCP/IP network order to host byte order, which is
/// little-endian on Intel processors.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsock/nf-winsock-ntohl>.
///
/// {@category winsock}
Win32Result<int> ntohl(int netlong) {
  resolveGetLastError();
  final result_ = _ntohl(netlong);
  return .new(value: result_, error: GetLastError());
}

final _ntohl = _ws2_32
    .lookupFunction<Uint32 Function(Uint32), int Function(int)>('ntohl');

/// Converts a u_short from TCP/IP network byte order to host byte order, which
/// is little-endian on Intel processors.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsock/nf-winsock-ntohs>.
///
/// {@category winsock}
Win32Result<int> ntohs(int netshort) {
  resolveGetLastError();
  final result_ = _ntohs(netshort);
  return .new(value: result_, error: GetLastError());
}

final _ntohs = _ws2_32
    .lookupFunction<Uint16 Function(Uint16), int Function(int)>('ntohs');

/// Receives data from a connected socket or a bound connectionless socket.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsock/nf-winsock-recv>.
///
/// {@category winsock}
Win32Result<int> recv(SOCKET s, PSTR buf, int len, SEND_RECV_FLAGS flags) {
  resolveGetLastError();
  final result_ = _recv(s, buf, len, flags);
  return .new(value: result_, error: GetLastError());
}

final _recv = _ws2_32
    .lookupFunction<
      Int32 Function(IntPtr, Pointer<Utf8>, Int32, Int32),
      int Function(int, Pointer<Utf8>, int, int)
    >('recv');

/// Receives a datagram and stores the source address.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsock/nf-winsock-recvfrom>.
///
/// {@category winsock}
Win32Result<int> recvfrom(
  SOCKET s,
  PSTR buf,
  int len,
  int flags,
  Pointer<SOCKADDR>? from,
  Pointer<Int32>? fromlen,
) {
  resolveGetLastError();
  final result_ = _recvfrom(
    s,
    buf,
    len,
    flags,
    from ?? nullptr,
    fromlen ?? nullptr,
  );
  return .new(value: result_, error: GetLastError());
}

final _recvfrom = _ws2_32
    .lookupFunction<
      Int32 Function(
        IntPtr,
        Pointer<Utf8>,
        Int32,
        Int32,
        Pointer<SOCKADDR>,
        Pointer<Int32>,
      ),
      int Function(
        int,
        Pointer<Utf8>,
        int,
        int,
        Pointer<SOCKADDR>,
        Pointer<Int32>,
      )
    >('recvfrom');

/// Determines the status of one or more sockets, waiting if necessary, to
/// perform synchronous I/O.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsock2/nf-winsock2-select>.
///
/// {@category winsock}
Win32Result<int> select(
  int nfds,
  Pointer<FD_SET>? readfds,
  Pointer<FD_SET>? writefds,
  Pointer<FD_SET>? exceptfds,
  Pointer<TIMEVAL>? timeout,
) {
  resolveGetLastError();
  final result_ = _select(
    nfds,
    readfds ?? nullptr,
    writefds ?? nullptr,
    exceptfds ?? nullptr,
    timeout ?? nullptr,
  );
  return .new(value: result_, error: GetLastError());
}

final _select = _ws2_32
    .lookupFunction<
      Int32 Function(
        Int32,
        Pointer<FD_SET>,
        Pointer<FD_SET>,
        Pointer<FD_SET>,
        Pointer<TIMEVAL>,
      ),
      int Function(
        int,
        Pointer<FD_SET>,
        Pointer<FD_SET>,
        Pointer<FD_SET>,
        Pointer<TIMEVAL>,
      )
    >('select');

/// Sends data on a connected socket.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsock2/nf-winsock2-send>.
///
/// {@category winsock}
Win32Result<int> send(SOCKET s, PCSTR buf, int len, SEND_RECV_FLAGS flags) {
  resolveGetLastError();
  final result_ = _send(s, buf, len, flags);
  return .new(value: result_, error: GetLastError());
}

final _send = _ws2_32
    .lookupFunction<
      Int32 Function(IntPtr, Pointer<Utf8>, Int32, Int32),
      int Function(int, Pointer<Utf8>, int, int)
    >('send');

/// Sends data to a specific destination.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsock/nf-winsock-sendto>.
///
/// {@category winsock}
Win32Result<int> sendto(
  SOCKET s,
  PCSTR buf,
  int len,
  int flags,
  Pointer<SOCKADDR> to,
  int tolen,
) {
  resolveGetLastError();
  final result_ = _sendto(s, buf, len, flags, to, tolen);
  return .new(value: result_, error: GetLastError());
}

final _sendto = _ws2_32
    .lookupFunction<
      Int32 Function(
        IntPtr,
        Pointer<Utf8>,
        Int32,
        Int32,
        Pointer<SOCKADDR>,
        Int32,
      ),
      int Function(int, Pointer<Utf8>, int, int, Pointer<SOCKADDR>, int)
    >('sendto');

/// Disables sends or receives on a socket.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsock/nf-winsock-shutdown>.
///
/// {@category winsock}
Win32Result<int> shutdown(SOCKET s, WINSOCK_SHUTDOWN_HOW how) {
  resolveGetLastError();
  final result_ = _shutdown(s, how);
  return .new(value: result_, error: GetLastError());
}

final _shutdown = _ws2_32
    .lookupFunction<Int32 Function(IntPtr, Int32), int Function(int, int)>(
      'shutdown',
    );

/// Creates a socket that is bound to a specific transport service provider.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsock2/nf-winsock2-socket>.
///
/// {@category winsock}
Win32Result<SOCKET> socket(int af, WINSOCK_SOCKET_TYPE type, int protocol) {
  resolveGetLastError();
  final result_ = _socket(af, type, protocol);
  return .new(value: .new(result_), error: GetLastError());
}

final _socket = _ws2_32
    .lookupFunction<
      IntPtr Function(Int32, Int32, Int32),
      int Function(int, int, int)
    >('socket');
