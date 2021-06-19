// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Maps FFI prototypes onto the corresponding Win32 API function calls

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'callbacks.dart';
import 'combase.dart';
import 'structs.dart';
import 'structs.g.dart';

final _ws2_32 = DynamicLibrary.open('ws2_32.dll');

/// The accept function permits an incoming connection attempt on a socket.
///
/// ```c
/// SOCKET WSAAPI accept(
///   SOCKET   s,
///   sockaddr *addr,
///   int      *addrlen
/// );
/// ```
/// {@category winsock}
int accept(int s, Pointer<SOCKADDR> addr, Pointer<Int32> addrlen) {
  final _accept = _ws2_32.lookupFunction<
      IntPtr Function(IntPtr s, Pointer<SOCKADDR> addr, Pointer<Int32> addrlen),
      int Function(
          int s, Pointer<SOCKADDR> addr, Pointer<Int32> addrlen)>('accept');
  return _accept(s, addr, addrlen);
}

/// The bind function associates a local address with a socket.
///
/// ```c
/// int WSAAPI bind(
///   SOCKET         s,
///   const sockaddr *name,
///   int            namelen
/// );
/// ```
/// {@category winsock}
int bind(int s, Pointer<SOCKADDR> name, int namelen) {
  final _bind = _ws2_32.lookupFunction<
      Int32 Function(IntPtr s, Pointer<SOCKADDR> name, Int32 namelen),
      int Function(int s, Pointer<SOCKADDR> name, int namelen)>('bind');
  return _bind(s, name, namelen);
}

/// The closesocket function closes an existing socket.
///
/// ```c
/// int WSAAPI closesocket(
///   SOCKET s
/// );
/// ```
/// {@category winsock}
int closesocket(int s) {
  final _closesocket =
      _ws2_32.lookupFunction<Int32 Function(IntPtr s), int Function(int s)>(
          'closesocket');
  return _closesocket(s);
}

/// The connect function establishes a connection to a specified socket.
///
/// ```c
/// int WSAAPI connect(
///   SOCKET         s,
///   const sockaddr *name,
///   int            namelen
/// );
/// ```
/// {@category winsock}
int connection(int s, Pointer<SOCKADDR> name, int namelen) {
  final _connection = _ws2_32.lookupFunction<
      Int32 Function(IntPtr s, Pointer<SOCKADDR> name, Int32 namelen),
      int Function(int s, Pointer<SOCKADDR> name, int namelen)>('connect');
  return _connection(s, name, namelen);
}

/// The GetAddrInfoW function provides protocol-independent translation
/// from a Unicode host name to an address.
///
/// ```c
/// INT WSAAPI GetAddrInfoW(
///   PCWSTR          pNodeName,
///   PCWSTR          pServiceName,
///   const ADDRINFOW *pHints,
///   PADDRINFOW      *ppResult
/// );
/// ```
/// {@category winsock}
int GetAddrInfoW(Pointer<Utf16> pNodeName, Pointer<Utf16> pServiceName,
    Pointer<addrinfo> pHints, Pointer<Pointer<addrinfo>> ppResult) {
  final _GetAddrInfoW = _ws2_32.lookupFunction<
      Int32 Function(Pointer<Utf16> pNodeName, Pointer<Utf16> pServiceName,
          Pointer<addrinfo> pHints, Pointer<Pointer<addrinfo>> ppResult),
      int Function(
          Pointer<Utf16> pNodeName,
          Pointer<Utf16> pServiceName,
          Pointer<addrinfo> pHints,
          Pointer<Pointer<addrinfo>> ppResult)>('GetAddrInfoW');
  return _GetAddrInfoW(pNodeName, pServiceName, pHints, ppResult);
}

/// The getnameinfo function provides protocol-independent name resolution
/// from an address to an ANSI host name and from a port number to the ANSI
/// service name.
///
/// ```c
/// INT WSAAPI getnameinfo(
///   const SOCKADDR *pSockaddr,
///   socklen_t      SockaddrLength,
///   PCHAR          pNodeBuffer,
///   DWORD          NodeBufferSize,
///   PCHAR          pServiceBuffer,
///   DWORD          ServiceBufferSize,
///   INT            Flags
/// );
/// ```
/// {@category winsock}
int getnameinfo(
    Pointer<SOCKADDR> pSockaddr,
    int SockaddrLength,
    Pointer<Utf8> pNodeBuffer,
    int NodeBufferSize,
    Pointer<Utf8> pServiceBuffer,
    int ServiceBufferSize,
    int Flags) {
  final _getnameinfo = _ws2_32.lookupFunction<
      Int32 Function(
          Pointer<SOCKADDR> pSockaddr,
          Int32 SockaddrLength,
          Pointer<Utf8> pNodeBuffer,
          Uint32 NodeBufferSize,
          Pointer<Utf8> pServiceBuffer,
          Uint32 ServiceBufferSize,
          Int32 Flags),
      int Function(
          Pointer<SOCKADDR> pSockaddr,
          int SockaddrLength,
          Pointer<Utf8> pNodeBuffer,
          int NodeBufferSize,
          Pointer<Utf8> pServiceBuffer,
          int ServiceBufferSize,
          int Flags)>('getnameinfo');
  return _getnameinfo(pSockaddr, SockaddrLength, pNodeBuffer, NodeBufferSize,
      pServiceBuffer, ServiceBufferSize, Flags);
}

/// The getsockopt function retrieves a socket option.
///
/// ```c
/// int WSAAPI getsockopt(
///   SOCKET s,
///   int    level,
///   int    optname,
///   char   *optval,
///   int    *optlen
/// );
/// ```
/// {@category winsock}
int getsockopt(int s, int level, int optname, Pointer<Utf8> optval,
    Pointer<Int32> optlen) {
  final _getsockopt = _ws2_32.lookupFunction<
      Int32 Function(IntPtr s, Int32 level, Int32 optname, Pointer<Utf8> optval,
          Pointer<Int32> optlen),
      int Function(int s, int level, int optname, Pointer<Utf8> optval,
          Pointer<Int32> optlen)>('getsockopt');
  return _getsockopt(s, level, optname, optval, optlen);
}

/// The ioctlsocket function controls the I/O mode of a socket.
///
/// ```c
/// int WSAAPI ioctlsocket(
///   SOCKET s,
///   long   cmd,
///   u_long *argp
/// );
/// ```
/// {@category winsock}
int ioctlsocket(int s, int cmd, Pointer<Uint32> argp) {
  final _ioctlsocket = _ws2_32.lookupFunction<
      Int32 Function(IntPtr s, Int32 cmd, Pointer<Uint32> argp),
      int Function(int s, int cmd, Pointer<Uint32> argp)>('ioctlsocket');
  return _ioctlsocket(s, cmd, argp);
}

/// The listen function places a socket in a state in which it is listening
/// for an incoming connection.
///
/// ```c
/// int WSAAPI listen(
///   SOCKET s,
///   int    backlog
/// );
/// ```
/// {@category winsock}
int listen(int s, int backlog) {
  final _listen = _ws2_32.lookupFunction<
      Int32 Function(IntPtr s, Int32 backlog),
      int Function(int s, int backlog)>('listen');
  return _listen(s, backlog);
}

/// The recv function receives data from a connected socket or a bound
/// connectionless socket.
///
/// ```c
/// int WSAAPI recv(
///   SOCKET s,
///   char   *buf,
///   int    len,
///   int    flags
/// );
/// ```
/// {@category winsock}
int recv(int s, Pointer<Utf8> buf, int len, int flags) {
  final _recv = _ws2_32.lookupFunction<
      Int32 Function(IntPtr s, Pointer<Utf8> buf, Int32 len, Int32 flags),
      int Function(int s, Pointer<Utf8> buf, int len, int flags)>('recv');
  return _recv(s, buf, len, flags);
}

/// The recvfrom function receives a datagram, and stores the source
/// address.
///
/// ```c
/// int WSAAPI recvfrom(
///   SOCKET   s,
///   char     *buf,
///   int      len,
///   int      flags,
///   sockaddr *from,
///   int      *fromlen
/// );
/// ```
/// {@category winsock}
int recvfrom(int s, Pointer<Utf8> buf, int len, int flags,
    Pointer<SOCKADDR> from, Pointer<Int32> fromlen) {
  final _recvfrom = _ws2_32.lookupFunction<
      Int32 Function(IntPtr s, Pointer<Utf8> buf, Int32 len, Int32 flags,
          Pointer<SOCKADDR> from, Pointer<Int32> fromlen),
      int Function(int s, Pointer<Utf8> buf, int len, int flags,
          Pointer<SOCKADDR> from, Pointer<Int32> fromlen)>('recvfrom');
  return _recvfrom(s, buf, len, flags, from, fromlen);
}

/// The select function determines the status of one or more sockets,
/// waiting if necessary, to perform synchronous I/O.
///
/// ```c
/// int WSAAPI select(
///   int           nfds,
///   fd_set        *readfds,
///   fd_set        *writefds,
///   fd_set        *exceptfds,
///   const timeval *timeout
/// );
/// ```
/// {@category winsock}
int select(int nfds, Pointer<fd_set> readfds, Pointer<fd_set> writefds,
    Pointer<fd_set> exceptfds, Pointer<timeval> timeout) {
  final _select = _ws2_32.lookupFunction<
      Int32 Function(
          Int32 nfds,
          Pointer<fd_set> readfds,
          Pointer<fd_set> writefds,
          Pointer<fd_set> exceptfds,
          Pointer<timeval> timeout),
      int Function(int nfds, Pointer<fd_set> readfds, Pointer<fd_set> writefds,
          Pointer<fd_set> exceptfds, Pointer<timeval> timeout)>('select');
  return _select(nfds, readfds, writefds, exceptfds, timeout);
}

/// The send function sends data on a connected socket.
///
/// ```c
/// int WSAAPI send(
///   SOCKET     s,
///   const char *buf,
///   int        len,
///   int        flags
/// );
/// ```
/// {@category winsock}
int send(int s, Pointer<Utf8> buf, int len, int flags) {
  final _send = _ws2_32.lookupFunction<
      Int32 Function(IntPtr s, Pointer<Utf8> buf, Int32 len, Uint32 flags),
      int Function(int s, Pointer<Utf8> buf, int len, int flags)>('send');
  return _send(s, buf, len, flags);
}

/// The sendto function sends data to a specific destination.
///
/// ```c
/// int WSAAPI sendto(
///   SOCKET         s,
///   const char     *buf,
///   int            len,
///   int            flags,
///   const sockaddr *to,
///   int            tolen
/// );
/// ```
/// {@category winsock}
int sendto(int s, Pointer<Utf8> buf, int len, int flags, Pointer<SOCKADDR> to,
    int tolen) {
  final _sendto = _ws2_32.lookupFunction<
      Int32 Function(IntPtr s, Pointer<Utf8> buf, Int32 len, Int32 flags,
          Pointer<SOCKADDR> to, Int32 tolen),
      int Function(int s, Pointer<Utf8> buf, int len, int flags,
          Pointer<SOCKADDR> to, int tolen)>('sendto');
  return _sendto(s, buf, len, flags, to, tolen);
}

/// The shutdown function disables sends or receives on a socket.
///
/// ```c
/// int WSAAPI shutdown(
///   SOCKET s,
///   int    how
/// );
/// ```
/// {@category winsock}
int shutdown(int s, int how) {
  final _shutdown = _ws2_32.lookupFunction<Int32 Function(IntPtr s, Int32 how),
      int Function(int s, int how)>('shutdown');
  return _shutdown(s, how);
}

/// The socket function creates a socket that is bound to a specific
/// transport service provider.
///
/// ```c
/// SOCKET WSAAPI socket(
///   int af,
///   int type,
///   int protocol
/// );
/// ```
/// {@category winsock}
int socket(int af, int type, int protocol) {
  final _socket = _ws2_32.lookupFunction<
      IntPtr Function(Int32 af, Int32 type, Int32 protocol),
      int Function(int af, int type, int protocol)>('socket');
  return _socket(af, type, protocol);
}
