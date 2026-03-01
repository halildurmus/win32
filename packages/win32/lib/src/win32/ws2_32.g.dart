// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// Maps FFI prototypes onto the corresponding Win32 API function calls.
//
// ignore_for_file: avoid_positional_boolean_parameters
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:ffi_leak_tracker/ffi_leak_tracker.dart';

import '../_internal/win32.dart';
import '../_internal/ws2_32.g.dart';
import '../bstr.dart';
import '../com/interface.g.dart';
import '../com/iunknown.g.dart';
import '../constants.dart';
import '../constants.g.dart';
import '../enums.g.dart';
import '../exception.dart';
import '../extensions/pointer.dart';
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
  final result_ = accept_Wrapper(s, addr ?? nullptr, addrlen ?? nullptr);
  return .new(value: .new(result_.value.i64), error: result_.error);
}

/// Associates a local address with a socket.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsock/nf-winsock-bind>.
///
/// {@category winsock}
Win32Result<int> bind(SOCKET s, Pointer<SOCKADDR> name, int namelen) {
  final result_ = bind_Wrapper(s, name, namelen);
  return .new(value: result_.value.i32, error: result_.error);
}

/// Closes an existing socket.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsock/nf-winsock-closesocket>.
///
/// {@category winsock}
Win32Result<int> closesocket(SOCKET s) {
  final result_ = closesocket_Wrapper(s);
  return .new(value: result_.value.i32, error: result_.error);
}

/// Establishes a connection to a specified socket.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsock2/nf-winsock2-connect>.
///
/// {@category winsock}
Win32Result<int> connect(SOCKET s, Pointer<SOCKADDR> name, int namelen) {
  final result_ = connect_Wrapper(s, name, namelen);
  return .new(value: result_.value.i32, error: result_.error);
}

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

@Native<
  Int32 Function(
    Pointer<Utf16>,
    Pointer<Utf16>,
    Pointer<ADDRINFO>,
    Pointer<Pointer<ADDRINFO>>,
  )
>(symbol: 'GetAddrInfoW')
external int _GetAddrInfo(
  Pointer<Utf16> pNodeName,
  Pointer<Utf16> pServiceName,
  Pointer<ADDRINFO> pHints,
  Pointer<Pointer<ADDRINFO>> ppResult,
);

/// Retrieves the standard host name for the local computer.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsock/nf-winsock-gethostname>.
///
/// {@category winsock}
Win32Result<int> gethostname(PSTR name, int namelen) {
  final result_ = gethostname_Wrapper(name, namelen);
  return .new(value: result_.value.i32, error: result_.error);
}

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
  final result_ = getnameinfo_Wrapper(
    pSockaddr,
    sockaddrLength,
    pNodeBuffer ?? nullptr,
    nodeBufferSize,
    pServiceBuffer ?? nullptr,
    serviceBufferSize,
    flags,
  );
  return .new(value: result_.value.i32, error: result_.error);
}

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
  final result_ = getpeername_Wrapper(s, name, namelen);
  return .new(value: result_.value.i32, error: result_.error);
}

/// Retrieves the protocol information corresponding to a protocol name.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsock/nf-winsock-getprotobyname>.
///
/// {@category winsock}
Win32Result<Pointer<PROTOENT>> getprotobyname(PCSTR name) {
  final result_ = getprotobyname_Wrapper(name);
  return .new(value: result_.value.ptr.cast(), error: result_.error);
}

/// Retrieves protocol information corresponding to a protocol number.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsock/nf-winsock-getprotobynumber>.
///
/// {@category winsock}
Win32Result<Pointer<PROTOENT>> getprotobynumber(int number) {
  final result_ = getprotobynumber_Wrapper(number);
  return .new(value: result_.value.ptr.cast(), error: result_.error);
}

/// Retrieves service information corresponding to a service name and protocol.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsock/nf-winsock-getservbyname>.
///
/// {@category winsock}
Win32Result<Pointer<SERVENT>> getservbyname(PCSTR name, PCSTR? proto) {
  final result_ = getservbyname_Wrapper(name, proto ?? nullptr);
  return .new(value: result_.value.ptr.cast(), error: result_.error);
}

/// Retrieves service information corresponding to a port and protocol.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsock/nf-winsock-getservbyport>.
///
/// {@category winsock}
Win32Result<Pointer<SERVENT>> getservbyport(int port, PCSTR? proto) {
  final result_ = getservbyport_Wrapper(port, proto ?? nullptr);
  return .new(value: result_.value.ptr.cast(), error: result_.error);
}

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
  final result_ = getsockname_Wrapper(s, name, namelen);
  return .new(value: result_.value.i32, error: result_.error);
}

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
  final result_ = getsockopt_Wrapper(s, level, optname, optval, optlen);
  return .new(value: result_.value.i32, error: result_.error);
}

/// Converts a u_long from host to TCP/IP network byte order (which is
/// big-endian).
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsock/nf-winsock-htonl>.
///
/// {@category winsock}
Win32Result<int> htonl(int hostlong) {
  final result_ = htonl_Wrapper(hostlong);
  return .new(value: result_.value.u32, error: result_.error);
}

/// Converts a u_short from host to TCP/IP network byte order (which is
/// big-endian).
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsock/nf-winsock-htons>.
///
/// {@category winsock}
Win32Result<int> htons(int hostshort) {
  final result_ = htons_Wrapper(hostshort);
  return .new(value: result_.value.u16, error: result_.error);
}

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
  final result_ = inet_ntop_Wrapper(family, pAddr, pStringBuf, stringBufSize);
  return .new(value: .new(result_.value.ptr.cast()), error: result_.error);
}

/// Controls the I/O mode of a socket.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsock/nf-winsock-ioctlsocket>.
///
/// {@category winsock}
Win32Result<int> ioctlsocket(SOCKET s, int cmd, Pointer<Uint32> argp) {
  final result_ = ioctlsocket_Wrapper(s, cmd, argp);
  return .new(value: result_.value.i32, error: result_.error);
}

/// Places a socket in a state in which it is listening for an incoming
/// connection.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsock2/nf-winsock2-listen>.
///
/// {@category winsock}
Win32Result<int> listen(SOCKET s, int backlog) {
  final result_ = listen_Wrapper(s, backlog);
  return .new(value: result_.value.i32, error: result_.error);
}

/// Converts a u_long from TCP/IP network order to host byte order, which is
/// little-endian on Intel processors.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsock/nf-winsock-ntohl>.
///
/// {@category winsock}
Win32Result<int> ntohl(int netlong) {
  final result_ = ntohl_Wrapper(netlong);
  return .new(value: result_.value.u32, error: result_.error);
}

/// Converts a u_short from TCP/IP network byte order to host byte order, which
/// is little-endian on Intel processors.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsock/nf-winsock-ntohs>.
///
/// {@category winsock}
Win32Result<int> ntohs(int netshort) {
  final result_ = ntohs_Wrapper(netshort);
  return .new(value: result_.value.u16, error: result_.error);
}

/// Receives data from a connected socket or a bound connectionless socket.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsock/nf-winsock-recv>.
///
/// {@category winsock}
Win32Result<int> recv(SOCKET s, PSTR buf, int len, SEND_RECV_FLAGS flags) {
  final result_ = recv_Wrapper(s, buf, len, flags);
  return .new(value: result_.value.i32, error: result_.error);
}

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
  final result_ = recvfrom_Wrapper(
    s,
    buf,
    len,
    flags,
    from ?? nullptr,
    fromlen ?? nullptr,
  );
  return .new(value: result_.value.i32, error: result_.error);
}

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
  final result_ = select_Wrapper(
    nfds,
    readfds ?? nullptr,
    writefds ?? nullptr,
    exceptfds ?? nullptr,
    timeout ?? nullptr,
  );
  return .new(value: result_.value.i32, error: result_.error);
}

/// Sends data on a connected socket.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsock2/nf-winsock2-send>.
///
/// {@category winsock}
Win32Result<int> send(SOCKET s, PCSTR buf, int len, SEND_RECV_FLAGS flags) {
  final result_ = send_Wrapper(s, buf, len, flags);
  return .new(value: result_.value.i32, error: result_.error);
}

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
  final result_ = sendto_Wrapper(s, buf, len, flags, to, tolen);
  return .new(value: result_.value.i32, error: result_.error);
}

/// Disables sends or receives on a socket.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsock/nf-winsock-shutdown>.
///
/// {@category winsock}
Win32Result<int> shutdown(SOCKET s, WINSOCK_SHUTDOWN_HOW how) {
  final result_ = shutdown_Wrapper(s, how);
  return .new(value: result_.value.i32, error: result_.error);
}

/// Creates a socket that is bound to a specific transport service provider.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsock2/nf-winsock2-socket>.
///
/// {@category winsock}
Win32Result<SOCKET> socket(int af, WINSOCK_SOCKET_TYPE type, int protocol) {
  final result_ = socket_Wrapper(af, type, protocol);
  return .new(value: .new(result_.value.i64), error: result_.error);
}
