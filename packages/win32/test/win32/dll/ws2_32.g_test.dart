// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// Tests that Win32 API prototypes can be successfully loaded (i.e. that
// lookupFunction works for all the APIs generated).
//
// ignore_for_file: non_constant_identifier_names, unnecessary_ignore
// ignore_for_file: specify_nonobvious_property_types, unused_import

@TestOn('windows')
library;

import 'dart:ffi';

import 'package:checks/checks.dart';
import 'package:ffi/ffi.dart';
import 'package:test/scaffolding.dart';
import 'package:win32/win32.dart';

import '../../helpers.dart';

void main() {
  group('ws2_32.dll', () {
    test('accept can be instantiated', () {
      check(_accept).isA<Function>();
    });
    test('bind can be instantiated', () {
      check(_bind).isA<Function>();
    });
    test('closesocket can be instantiated', () {
      check(_closesocket).isA<Function>();
    });
    test('connect can be instantiated', () {
      check(_connect).isA<Function>();
    });
    test('GetAddrInfo can be instantiated', () {
      check(_GetAddrInfo).isA<Function>();
    });
    test('gethostname can be instantiated', () {
      check(_gethostname).isA<Function>();
    });
    test('getnameinfo can be instantiated', () {
      check(_getnameinfo).isA<Function>();
    });
    test('getpeername can be instantiated', () {
      check(_getpeername).isA<Function>();
    });
    test('getprotobyname can be instantiated', () {
      check(_getprotobyname).isA<Function>();
    });
    test('getprotobynumber can be instantiated', () {
      check(_getprotobynumber).isA<Function>();
    });
    test('getservbyname can be instantiated', () {
      check(_getservbyname).isA<Function>();
    });
    test('getservbyport can be instantiated', () {
      check(_getservbyport).isA<Function>();
    });
    test('getsockname can be instantiated', () {
      check(_getsockname).isA<Function>();
    });
    test('getsockopt can be instantiated', () {
      check(_getsockopt).isA<Function>();
    });
    test('htonl can be instantiated', () {
      check(_htonl).isA<Function>();
    });
    test('htons can be instantiated', () {
      check(_htons).isA<Function>();
    });
    test('inet_ntop can be instantiated', () {
      check(_inet_ntop).isA<Function>();
    });
    test('ioctlsocket can be instantiated', () {
      check(_ioctlsocket).isA<Function>();
    });
    test('listen can be instantiated', () {
      check(_listen).isA<Function>();
    });
    test('ntohl can be instantiated', () {
      check(_ntohl).isA<Function>();
    });
    test('ntohs can be instantiated', () {
      check(_ntohs).isA<Function>();
    });
    test('recv can be instantiated', () {
      check(_recv).isA<Function>();
    });
    test('recvfrom can be instantiated', () {
      check(_recvfrom).isA<Function>();
    });
    test('select can be instantiated', () {
      check(_select).isA<Function>();
    });
    test('send can be instantiated', () {
      check(_send).isA<Function>();
    });
    test('sendto can be instantiated', () {
      check(_sendto).isA<Function>();
    });
    test('shutdown can be instantiated', () {
      check(_shutdown).isA<Function>();
    });
    test('socket can be instantiated', () {
      check(_socket).isA<Function>();
    });
  });
}

final _ws2_32 = DynamicLibrary.open('ws2_32.dll');

final _accept = _ws2_32
    .lookupFunction<
      IntPtr Function(IntPtr, Pointer<SOCKADDR>, Pointer<Int32>),
      int Function(int, Pointer<SOCKADDR>, Pointer<Int32>)
    >('accept');

final _bind = _ws2_32
    .lookupFunction<
      Int32 Function(IntPtr, Pointer<SOCKADDR>, Int32),
      int Function(int, Pointer<SOCKADDR>, int)
    >('bind');

final _closesocket = _ws2_32
    .lookupFunction<Int32 Function(IntPtr), int Function(int)>('closesocket');

final _connect = _ws2_32
    .lookupFunction<
      Int32 Function(IntPtr, Pointer<SOCKADDR>, Int32),
      int Function(int, Pointer<SOCKADDR>, int)
    >('connect');

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

final _gethostname = _ws2_32
    .lookupFunction<
      Int32 Function(Pointer<Utf8>, Int32),
      int Function(Pointer<Utf8>, int)
    >('gethostname');

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

final _getpeername = _ws2_32
    .lookupFunction<
      Int32 Function(IntPtr, Pointer<SOCKADDR>, Pointer<Int32>),
      int Function(int, Pointer<SOCKADDR>, Pointer<Int32>)
    >('getpeername');

final _getprotobyname = _ws2_32
    .lookupFunction<
      Pointer<PROTOENT> Function(Pointer<Utf8>),
      Pointer<PROTOENT> Function(Pointer<Utf8>)
    >('getprotobyname');

final _getprotobynumber = _ws2_32
    .lookupFunction<
      Pointer<PROTOENT> Function(Int32),
      Pointer<PROTOENT> Function(int)
    >('getprotobynumber');

final _getservbyname = _ws2_32
    .lookupFunction<
      Pointer<SERVENT> Function(Pointer<Utf8>, Pointer<Utf8>),
      Pointer<SERVENT> Function(Pointer<Utf8>, Pointer<Utf8>)
    >('getservbyname');

final _getservbyport = _ws2_32
    .lookupFunction<
      Pointer<SERVENT> Function(Int32, Pointer<Utf8>),
      Pointer<SERVENT> Function(int, Pointer<Utf8>)
    >('getservbyport');

final _getsockname = _ws2_32
    .lookupFunction<
      Int32 Function(IntPtr, Pointer<SOCKADDR>, Pointer<Int32>),
      int Function(int, Pointer<SOCKADDR>, Pointer<Int32>)
    >('getsockname');

final _getsockopt = _ws2_32
    .lookupFunction<
      Int32 Function(IntPtr, Int32, Int32, Pointer<Utf8>, Pointer<Int32>),
      int Function(int, int, int, Pointer<Utf8>, Pointer<Int32>)
    >('getsockopt');

final _htonl = _ws2_32
    .lookupFunction<Uint32 Function(Uint32), int Function(int)>('htonl');

final _htons = _ws2_32
    .lookupFunction<Uint16 Function(Uint16), int Function(int)>('htons');

final _inet_ntop = _ws2_32
    .lookupFunction<
      Pointer<Utf8> Function(Int32, Pointer, Pointer<Utf8>, IntPtr),
      Pointer<Utf8> Function(int, Pointer, Pointer<Utf8>, int)
    >('inet_ntop');

final _ioctlsocket = _ws2_32
    .lookupFunction<
      Int32 Function(IntPtr, Int32, Pointer<Uint32>),
      int Function(int, int, Pointer<Uint32>)
    >('ioctlsocket');

final _listen = _ws2_32
    .lookupFunction<Int32 Function(IntPtr, Int32), int Function(int, int)>(
      'listen',
    );

final _ntohl = _ws2_32
    .lookupFunction<Uint32 Function(Uint32), int Function(int)>('ntohl');

final _ntohs = _ws2_32
    .lookupFunction<Uint16 Function(Uint16), int Function(int)>('ntohs');

final _recv = _ws2_32
    .lookupFunction<
      Int32 Function(IntPtr, Pointer<Utf8>, Int32, Int32),
      int Function(int, Pointer<Utf8>, int, int)
    >('recv');

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

final _send = _ws2_32
    .lookupFunction<
      Int32 Function(IntPtr, Pointer<Utf8>, Int32, Int32),
      int Function(int, Pointer<Utf8>, int, int)
    >('send');

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

final _shutdown = _ws2_32
    .lookupFunction<Int32 Function(IntPtr, Int32), int Function(int, int)>(
      'shutdown',
    );

final _socket = _ws2_32
    .lookupFunction<
      IntPtr Function(Int32, Int32, Int32),
      int Function(int, int, int)
    >('socket');
