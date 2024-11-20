// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// Wrappers for Win32 API functions that wrap the native APIs and preserve the
// result of GetLastError(), making it easier to debug issues and handle errors
// reliably.
//
// ignore_for_file: non_constant_identifier_names, unused_import

@DefaultAsset('package:win32/win32.dart')
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:meta/meta.dart';

import '../callbacks.g.dart';
import '../functions.dart';
import '../guid.dart';
import '../pcstr.dart';
import '../pcwstr.dart';
import '../structs.g.dart';
import '../types.dart';
import 'win32.dart' show NativeWin32Result;

@internal
@Native<NativeWin32Result Function(IntPtr, Pointer<SOCKADDR>, Pointer<Int32>)>()
external NativeWin32Result accept_Wrapper(
  int s,
  Pointer<SOCKADDR> addr,
  Pointer<Int32> addrlen,
);

@internal
@Native<NativeWin32Result Function(IntPtr, Pointer<SOCKADDR>, Int32)>()
external NativeWin32Result bind_Wrapper(
  int s,
  Pointer<SOCKADDR> name,
  int namelen,
);

@internal
@Native<NativeWin32Result Function(IntPtr)>()
external NativeWin32Result closesocket_Wrapper(int s);

@internal
@Native<NativeWin32Result Function(IntPtr, Pointer<SOCKADDR>, Int32)>()
external NativeWin32Result connect_Wrapper(
  int s,
  Pointer<SOCKADDR> name,
  int namelen,
);

@internal
@Native<NativeWin32Result Function(Pointer<Utf8>, Int32)>()
external NativeWin32Result gethostname_Wrapper(Pointer<Utf8> name, int namelen);

@internal
@Native<
  NativeWin32Result Function(
    Pointer<SOCKADDR>,
    Int32,
    Pointer<Utf8>,
    Uint32,
    Pointer<Utf8>,
    Uint32,
    Int32,
  )
>()
external NativeWin32Result getnameinfo_Wrapper(
  Pointer<SOCKADDR> pSockaddr,
  int sockaddrLength,
  Pointer<Utf8> pNodeBuffer,
  int nodeBufferSize,
  Pointer<Utf8> pServiceBuffer,
  int serviceBufferSize,
  int flags,
);

@internal
@Native<NativeWin32Result Function(IntPtr, Pointer<SOCKADDR>, Pointer<Int32>)>()
external NativeWin32Result getpeername_Wrapper(
  int s,
  Pointer<SOCKADDR> name,
  Pointer<Int32> namelen,
);

@internal
@Native<NativeWin32Result Function(Pointer<Utf8>)>()
external NativeWin32Result getprotobyname_Wrapper(Pointer<Utf8> name);

@internal
@Native<NativeWin32Result Function(Int32)>()
external NativeWin32Result getprotobynumber_Wrapper(int number);

@internal
@Native<NativeWin32Result Function(Pointer<Utf8>, Pointer<Utf8>)>()
external NativeWin32Result getservbyname_Wrapper(
  Pointer<Utf8> name,
  Pointer<Utf8> proto,
);

@internal
@Native<NativeWin32Result Function(Int32, Pointer<Utf8>)>()
external NativeWin32Result getservbyport_Wrapper(int port, Pointer<Utf8> proto);

@internal
@Native<NativeWin32Result Function(IntPtr, Pointer<SOCKADDR>, Pointer<Int32>)>()
external NativeWin32Result getsockname_Wrapper(
  int s,
  Pointer<SOCKADDR> name,
  Pointer<Int32> namelen,
);

@internal
@Native<
  NativeWin32Result Function(
    IntPtr,
    Int32,
    Int32,
    Pointer<Utf8>,
    Pointer<Int32>,
  )
>()
external NativeWin32Result getsockopt_Wrapper(
  int s,
  int level,
  int optname,
  Pointer<Utf8> optval,
  Pointer<Int32> optlen,
);

@internal
@Native<NativeWin32Result Function(Uint32)>()
external NativeWin32Result htonl_Wrapper(int hostlong);

@internal
@Native<NativeWin32Result Function(Uint16)>()
external NativeWin32Result htons_Wrapper(int hostshort);

@internal
@Native<NativeWin32Result Function(Int32, Pointer, Pointer<Utf8>, IntPtr)>()
external NativeWin32Result inet_ntop_Wrapper(
  int family,
  Pointer pAddr,
  Pointer<Utf8> pStringBuf,
  int stringBufSize,
);

@internal
@Native<NativeWin32Result Function(IntPtr, Int32, Pointer<Uint32>)>()
external NativeWin32Result ioctlsocket_Wrapper(
  int s,
  int cmd,
  Pointer<Uint32> argp,
);

@internal
@Native<NativeWin32Result Function(IntPtr, Int32)>()
external NativeWin32Result listen_Wrapper(int s, int backlog);

@internal
@Native<NativeWin32Result Function(Uint32)>()
external NativeWin32Result ntohl_Wrapper(int netlong);

@internal
@Native<NativeWin32Result Function(Uint16)>()
external NativeWin32Result ntohs_Wrapper(int netshort);

@internal
@Native<NativeWin32Result Function(IntPtr, Pointer<Utf8>, Int32, Int32)>()
external NativeWin32Result recv_Wrapper(
  int s,
  Pointer<Utf8> buf,
  int len,
  int flags,
);

@internal
@Native<
  NativeWin32Result Function(
    IntPtr,
    Pointer<Utf8>,
    Int32,
    Int32,
    Pointer<SOCKADDR>,
    Pointer<Int32>,
  )
>()
external NativeWin32Result recvfrom_Wrapper(
  int s,
  Pointer<Utf8> buf,
  int len,
  int flags,
  Pointer<SOCKADDR> from,
  Pointer<Int32> fromlen,
);

@internal
@Native<
  NativeWin32Result Function(
    Int32,
    Pointer<FD_SET>,
    Pointer<FD_SET>,
    Pointer<FD_SET>,
    Pointer<TIMEVAL>,
  )
>()
external NativeWin32Result select_Wrapper(
  int nfds,
  Pointer<FD_SET> readfds,
  Pointer<FD_SET> writefds,
  Pointer<FD_SET> exceptfds,
  Pointer<TIMEVAL> timeout,
);

@internal
@Native<NativeWin32Result Function(IntPtr, Pointer<Utf8>, Int32, Int32)>()
external NativeWin32Result send_Wrapper(
  int s,
  Pointer<Utf8> buf,
  int len,
  int flags,
);

@internal
@Native<
  NativeWin32Result Function(
    IntPtr,
    Pointer<Utf8>,
    Int32,
    Int32,
    Pointer<SOCKADDR>,
    Int32,
  )
>()
external NativeWin32Result sendto_Wrapper(
  int s,
  Pointer<Utf8> buf,
  int len,
  int flags,
  Pointer<SOCKADDR> to,
  int tolen,
);

@internal
@Native<NativeWin32Result Function(IntPtr, Int32)>()
external NativeWin32Result shutdown_Wrapper(int s, int how);

@internal
@Native<NativeWin32Result Function(Int32, Int32, Int32)>()
external NativeWin32Result socket_Wrapper(int af, int type, int protocol);
