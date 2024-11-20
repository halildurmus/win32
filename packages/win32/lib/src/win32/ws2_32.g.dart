// Maps FFI prototypes onto the corresponding Win32 API function calls.
//
// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// ignore_for_file: avoid_positional_boolean_parameters
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../_internal/ws2_32.g.dart';
import '../allocator.dart';
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
import '../structs.g.dart';
import '../types.dart';
import '../utils.dart';

/// Permits an incoming connection attempt on a socket.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsock2/nf-winsock2-accept>.
///
/// {@category winsock}
@pragma('vm:prefer-inline')
int accept(int s, Pointer<SOCKADDR>? addr, Pointer<Int32>? addrlen) =>
    accept_Wrapper(s, addr ?? nullptr, addrlen ?? nullptr);

/// Associates a local address with a socket.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsock/nf-winsock-bind>.
///
/// {@category winsock}
@pragma('vm:prefer-inline')
int bind(int s, Pointer<SOCKADDR> name, int namelen) =>
    bind_Wrapper(s, name, namelen);

/// Closes an existing socket.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsock/nf-winsock-closesocket>.
///
/// {@category winsock}
@pragma('vm:prefer-inline')
int closesocket(int s) => closesocket_Wrapper(s);

/// Establishes a connection to a specified socket.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsock2/nf-winsock2-connect>.
///
/// {@category winsock}
@pragma('vm:prefer-inline')
int connect(int s, Pointer<SOCKADDR> name, int namelen) =>
    connect_Wrapper(s, name, namelen);

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
  Int32 Function(PCWSTR, PCWSTR, Pointer<ADDRINFO>, Pointer<Pointer<ADDRINFO>>)
>(symbol: 'GetAddrInfoW')
external int _GetAddrInfo(
  PCWSTR pNodeName,
  PCWSTR pServiceName,
  Pointer<ADDRINFO> pHints,
  Pointer<Pointer<ADDRINFO>> ppResult,
);

/// Retrieves the standard host name for the local computer.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsock/nf-winsock-gethostname>.
///
/// {@category winsock}
@pragma('vm:prefer-inline')
int gethostname(PSTR name, int namelen) => gethostname_Wrapper(name, namelen);

/// Provides protocol-independent name resolution from an address to an ANSI
/// host name and from a port number to the ANSI service name.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/ws2tcpip/nf-ws2tcpip-getnameinfo>.
///
/// {@category winsock}
@pragma('vm:prefer-inline')
int getnameinfo(
  Pointer<SOCKADDR> pSockaddr,
  int sockaddrLength,
  PSTR? pNodeBuffer,
  int nodeBufferSize,
  PSTR? pServiceBuffer,
  int serviceBufferSize,
  int flags,
) => getnameinfo_Wrapper(
  pSockaddr,
  sockaddrLength,
  pNodeBuffer ?? nullptr,
  nodeBufferSize,
  pServiceBuffer ?? nullptr,
  serviceBufferSize,
  flags,
);

/// Retrieves the address of the peer to which a socket is connected.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsock/nf-winsock-getpeername>.
///
/// {@category winsock}
@pragma('vm:prefer-inline')
int getpeername(int s, Pointer<SOCKADDR> name, Pointer<Int32> namelen) =>
    getpeername_Wrapper(s, name, namelen);

/// Retrieves the protocol information corresponding to a protocol name.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsock/nf-winsock-getprotobyname>.
///
/// {@category winsock}
@pragma('vm:prefer-inline')
Pointer<PROTOENT> getprotobyname(PCSTR name) => getprotobyname_Wrapper(name);

/// Retrieves protocol information corresponding to a protocol number.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsock/nf-winsock-getprotobynumber>.
///
/// {@category winsock}
@pragma('vm:prefer-inline')
Pointer<PROTOENT> getprotobynumber(int number) =>
    getprotobynumber_Wrapper(number);

/// Retrieves service information corresponding to a service name and protocol.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsock/nf-winsock-getservbyname>.
///
/// {@category winsock}
@pragma('vm:prefer-inline')
Pointer<SERVENT> getservbyname(PCSTR name, PCSTR? proto) =>
    getservbyname_Wrapper(name, proto ?? nullptr);

/// Retrieves service information corresponding to a port and protocol.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsock/nf-winsock-getservbyport>.
///
/// {@category winsock}
@pragma('vm:prefer-inline')
Pointer<SERVENT> getservbyport(int port, PCSTR? proto) =>
    getservbyport_Wrapper(port, proto ?? nullptr);

/// Retrieves the local name for a socket.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsock/nf-winsock-getsockname>.
///
/// {@category winsock}
@pragma('vm:prefer-inline')
int getsockname(int s, Pointer<SOCKADDR> name, Pointer<Int32> namelen) =>
    getsockname_Wrapper(s, name, namelen);

/// Retrieves a socket option.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsock/nf-winsock-getsockopt>.
///
/// {@category winsock}
@pragma('vm:prefer-inline')
int getsockopt(
  int s,
  int level,
  int optname,
  PSTR optval,
  Pointer<Int32> optlen,
) => getsockopt_Wrapper(s, level, optname, optval, optlen);

/// Converts a u_long from host to TCP/IP network byte order (which is
/// big-endian).
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsock/nf-winsock-htonl>.
///
/// {@category winsock}
@pragma('vm:prefer-inline')
int htonl(int hostlong) => htonl_Wrapper(hostlong);

/// Converts a u_short from host to TCP/IP network byte order (which is
/// big-endian).
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsock/nf-winsock-htons>.
///
/// {@category winsock}
@pragma('vm:prefer-inline')
int htons(int hostshort) => htons_Wrapper(hostshort);

/// Converts an IPv4 or IPv6 Internet network address into a string in Internet
/// standard format.
///
/// The ANSI version of this function is inet_ntop.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/ws2tcpip/nf-ws2tcpip-inet_ntop>.
///
/// {@category winsock}
@pragma('vm:prefer-inline')
PCSTR inet_ntop(
  int family,
  Pointer pAddr,
  PSTR pStringBuf,
  int stringBufSize,
) => inet_ntop_Wrapper(family, pAddr, pStringBuf, stringBufSize);

/// Controls the I/O mode of a socket.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsock/nf-winsock-ioctlsocket>.
///
/// {@category winsock}
@pragma('vm:prefer-inline')
int ioctlsocket(int s, int cmd, Pointer<Uint32> argp) =>
    ioctlsocket_Wrapper(s, cmd, argp);

/// Places a socket in a state in which it is listening for an incoming
/// connection.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsock2/nf-winsock2-listen>.
///
/// {@category winsock}
@pragma('vm:prefer-inline')
int listen(int s, int backlog) => listen_Wrapper(s, backlog);

/// Converts a u_long from TCP/IP network order to host byte order, which is
/// little-endian on Intel processors.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsock/nf-winsock-ntohl>.
///
/// {@category winsock}
@pragma('vm:prefer-inline')
int ntohl(int netlong) => ntohl_Wrapper(netlong);

/// Converts a u_short from TCP/IP network byte order to host byte order, which
/// is little-endian on Intel processors.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsock/nf-winsock-ntohs>.
///
/// {@category winsock}
@pragma('vm:prefer-inline')
int ntohs(int netshort) => ntohs_Wrapper(netshort);

/// Receives data from a connected socket or a bound connectionless socket.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsock/nf-winsock-recv>.
///
/// {@category winsock}
@pragma('vm:prefer-inline')
int recv(int s, PSTR buf, int len, SEND_RECV_FLAGS flags) =>
    recv_Wrapper(s, buf, len, flags);

/// Receives a datagram and stores the source address.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsock/nf-winsock-recvfrom>.
///
/// {@category winsock}
@pragma('vm:prefer-inline')
int recvfrom(
  int s,
  PSTR buf,
  int len,
  int flags,
  Pointer<SOCKADDR>? from,
  Pointer<Int32>? fromlen,
) => recvfrom_Wrapper(s, buf, len, flags, from ?? nullptr, fromlen ?? nullptr);

/// Determines the status of one or more sockets, waiting if necessary, to
/// perform synchronous I/O.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsock2/nf-winsock2-select>.
///
/// {@category winsock}
@pragma('vm:prefer-inline')
int select(
  int nfds,
  Pointer<FD_SET>? readfds,
  Pointer<FD_SET>? writefds,
  Pointer<FD_SET>? exceptfds,
  Pointer<TIMEVAL>? timeout,
) => select_Wrapper(
  nfds,
  readfds ?? nullptr,
  writefds ?? nullptr,
  exceptfds ?? nullptr,
  timeout ?? nullptr,
);

/// Sends data on a connected socket.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsock2/nf-winsock2-send>.
///
/// {@category winsock}
@pragma('vm:prefer-inline')
int send(int s, PCSTR buf, int len, SEND_RECV_FLAGS flags) =>
    send_Wrapper(s, buf, len, flags);

/// Sends data to a specific destination.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsock/nf-winsock-sendto>.
///
/// {@category winsock}
@pragma('vm:prefer-inline')
int sendto(
  int s,
  PCSTR buf,
  int len,
  int flags,
  Pointer<SOCKADDR> to,
  int tolen,
) => sendto_Wrapper(s, buf, len, flags, to, tolen);

/// Disables sends or receives on a socket.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsock/nf-winsock-shutdown>.
///
/// {@category winsock}
@pragma('vm:prefer-inline')
int shutdown(int s, WINSOCK_SHUTDOWN_HOW how) => shutdown_Wrapper(s, how);

/// Creates a socket that is bound to a specific transport service provider.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsock2/nf-winsock2-socket>.
///
/// {@category winsock}
@pragma('vm:prefer-inline')
int socket(int af, WINSOCK_SOCKET_TYPE type, int protocol) =>
    socket_Wrapper(af, type, protocol);
