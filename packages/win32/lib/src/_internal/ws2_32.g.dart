// Wrappers for Win32 API functions.
//
// These functions wrap the native APIs and preserve the result of
// GetLastError(), making it easier to debug issues and handle errors reliably.
//
// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// ignore_for_file: non_constant_identifier_names, unused_import

@DefaultAsset('package:win32/win32.dart')
library;

import 'dart:ffi';

import 'package:meta/meta.dart';

import '../callbacks.g.dart';
import '../functions.dart';
import '../guid.dart';
import '../pcstr.dart';
import '../pcwstr.dart';
import '../structs.g.dart';
import '../types.dart';

@internal
@Native<SOCKET Function(SOCKET, Pointer<SOCKADDR>, Pointer<Int32>)>()
external int accept_Wrapper(
  int s,
  Pointer<SOCKADDR> addr,
  Pointer<Int32> addrlen,
);

@internal
@Native<Int32 Function(SOCKET, Pointer<SOCKADDR>, Int32)>()
external int bind_Wrapper(int s, Pointer<SOCKADDR> name, int namelen);

@internal
@Native<Int32 Function(SOCKET)>()
external int closesocket_Wrapper(int s);

@internal
@Native<Int32 Function(SOCKET, Pointer<SOCKADDR>, Int32)>()
external int connect_Wrapper(int s, Pointer<SOCKADDR> name, int namelen);

@internal
@Native<Int32 Function(PSTR, Int32)>()
external int gethostname_Wrapper(PSTR name, int namelen);

@internal
@Native<
  Int32 Function(
    Pointer<SOCKADDR>,
    socklen_t,
    PSTR,
    Uint32,
    PSTR,
    Uint32,
    Int32,
  )
>()
external int getnameinfo_Wrapper(
  Pointer<SOCKADDR> pSockaddr,
  int sockaddrLength,
  PSTR pNodeBuffer,
  int nodeBufferSize,
  PSTR pServiceBuffer,
  int serviceBufferSize,
  int flags,
);

@internal
@Native<Int32 Function(SOCKET, Pointer<SOCKADDR>, Pointer<Int32>)>()
external int getpeername_Wrapper(
  int s,
  Pointer<SOCKADDR> name,
  Pointer<Int32> namelen,
);

@internal
@Native<Pointer<PROTOENT> Function(PCSTR)>()
external Pointer<PROTOENT> getprotobyname_Wrapper(PCSTR name);

@internal
@Native<Pointer<PROTOENT> Function(Int32)>()
external Pointer<PROTOENT> getprotobynumber_Wrapper(int number);

@internal
@Native<Pointer<SERVENT> Function(PCSTR, PCSTR)>()
external Pointer<SERVENT> getservbyname_Wrapper(PCSTR name, PCSTR proto);

@internal
@Native<Pointer<SERVENT> Function(Int32, PCSTR)>()
external Pointer<SERVENT> getservbyport_Wrapper(int port, PCSTR proto);

@internal
@Native<Int32 Function(SOCKET, Pointer<SOCKADDR>, Pointer<Int32>)>()
external int getsockname_Wrapper(
  int s,
  Pointer<SOCKADDR> name,
  Pointer<Int32> namelen,
);

@internal
@Native<Int32 Function(SOCKET, Int32, Int32, PSTR, Pointer<Int32>)>()
external int getsockopt_Wrapper(
  int s,
  int level,
  int optname,
  PSTR optval,
  Pointer<Int32> optlen,
);

@internal
@Native<Uint32 Function(Uint32)>()
external int htonl_Wrapper(int hostlong);

@internal
@Native<Uint16 Function(Uint16)>()
external int htons_Wrapper(int hostshort);

@internal
@Native<PCSTR Function(Int32, Pointer, PSTR, IntPtr)>()
external PCSTR inet_ntop_Wrapper(
  int family,
  Pointer pAddr,
  PSTR pStringBuf,
  int stringBufSize,
);

@internal
@Native<Int32 Function(SOCKET, Int32, Pointer<Uint32>)>()
external int ioctlsocket_Wrapper(int s, int cmd, Pointer<Uint32> argp);

@internal
@Native<Int32 Function(SOCKET, Int32)>()
external int listen_Wrapper(int s, int backlog);

@internal
@Native<Uint32 Function(Uint32)>()
external int ntohl_Wrapper(int netlong);

@internal
@Native<Uint16 Function(Uint16)>()
external int ntohs_Wrapper(int netshort);

@internal
@Native<Int32 Function(SOCKET, PSTR, Int32, Int32)>()
external int recv_Wrapper(int s, PSTR buf, int len, int flags);

@internal
@Native<
  Int32 Function(SOCKET, PSTR, Int32, Int32, Pointer<SOCKADDR>, Pointer<Int32>)
>()
external int recvfrom_Wrapper(
  int s,
  PSTR buf,
  int len,
  int flags,
  Pointer<SOCKADDR> from,
  Pointer<Int32> fromlen,
);

@internal
@Native<
  Int32 Function(
    Int32,
    Pointer<FD_SET>,
    Pointer<FD_SET>,
    Pointer<FD_SET>,
    Pointer<TIMEVAL>,
  )
>()
external int select_Wrapper(
  int nfds,
  Pointer<FD_SET> readfds,
  Pointer<FD_SET> writefds,
  Pointer<FD_SET> exceptfds,
  Pointer<TIMEVAL> timeout,
);

@internal
@Native<Int32 Function(SOCKET, PCSTR, Int32, Int32)>()
external int send_Wrapper(int s, PCSTR buf, int len, int flags);

@internal
@Native<Int32 Function(SOCKET, PCSTR, Int32, Int32, Pointer<SOCKADDR>, Int32)>()
external int sendto_Wrapper(
  int s,
  PCSTR buf,
  int len,
  int flags,
  Pointer<SOCKADDR> to,
  int tolen,
);

@internal
@Native<Int32 Function(SOCKET, Int32)>()
external int shutdown_Wrapper(int s, int how);

@internal
@Native<SOCKET Function(Int32, Int32, Int32)>()
external int socket_Wrapper(int af, int type, int protocol);
