// Tests that Win32 API prototypes can be successfully loaded (i.e. that
// lookupFunction works for all the APIs generated).
//
// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// ignore_for_file: non_constant_identifier_names, unused_import,
// ignore_for_file: unused_local_variable

@TestOn('windows')
library;

import 'dart:ffi';

import 'package:checks/checks.dart';
import 'package:ffi/ffi.dart';
import 'package:test/scaffolding.dart';
import 'package:win32/src/_internal/ws2_32.g.dart';
import 'package:win32/win32.dart';
import 'package:win32/winsock2.dart';

import '../../helpers.dart';

void main() {
  group('ws2_32.dll', () {
    test('accept can be instantiated', () {
      check(accept_Wrapper).isA<Function>();
    });
    test('bind can be instantiated', () {
      check(bind_Wrapper).isA<Function>();
    });
    test('closesocket can be instantiated', () {
      check(closesocket_Wrapper).isA<Function>();
    });
    test('connect can be instantiated', () {
      check(connect_Wrapper).isA<Function>();
    });
    test('GetAddrInfo can be instantiated', () {
      check(_GetAddrInfo).isA<Function>();
    });
    test('gethostname can be instantiated', () {
      check(gethostname_Wrapper).isA<Function>();
    });
    test('getnameinfo can be instantiated', () {
      check(getnameinfo_Wrapper).isA<Function>();
    });
    test('getpeername can be instantiated', () {
      check(getpeername_Wrapper).isA<Function>();
    });
    test('getprotobyname can be instantiated', () {
      check(getprotobyname_Wrapper).isA<Function>();
    });
    test('getprotobynumber can be instantiated', () {
      check(getprotobynumber_Wrapper).isA<Function>();
    });
    test('getservbyname can be instantiated', () {
      check(getservbyname_Wrapper).isA<Function>();
    });
    test('getservbyport can be instantiated', () {
      check(getservbyport_Wrapper).isA<Function>();
    });
    test('getsockname can be instantiated', () {
      check(getsockname_Wrapper).isA<Function>();
    });
    test('getsockopt can be instantiated', () {
      check(getsockopt_Wrapper).isA<Function>();
    });
    test('htonl can be instantiated', () {
      check(htonl_Wrapper).isA<Function>();
    });
    test('htons can be instantiated', () {
      check(htons_Wrapper).isA<Function>();
    });
    test('inet_ntop can be instantiated', () {
      check(inet_ntop_Wrapper).isA<Function>();
    });
    test('ioctlsocket can be instantiated', () {
      check(ioctlsocket_Wrapper).isA<Function>();
    });
    test('listen can be instantiated', () {
      check(listen_Wrapper).isA<Function>();
    });
    test('ntohl can be instantiated', () {
      check(ntohl_Wrapper).isA<Function>();
    });
    test('ntohs can be instantiated', () {
      check(ntohs_Wrapper).isA<Function>();
    });
    test('recv can be instantiated', () {
      check(recv_Wrapper).isA<Function>();
    });
    test('recvfrom can be instantiated', () {
      check(recvfrom_Wrapper).isA<Function>();
    });
    test('select can be instantiated', () {
      check(select_Wrapper).isA<Function>();
    });
    test('send can be instantiated', () {
      check(send_Wrapper).isA<Function>();
    });
    test('sendto can be instantiated', () {
      check(sendto_Wrapper).isA<Function>();
    });
    test('shutdown can be instantiated', () {
      check(shutdown_Wrapper).isA<Function>();
    });
    test('socket can be instantiated', () {
      check(socket_Wrapper).isA<Function>();
    });
  });
}

@Native<
  Int32 Function(PCWSTR, PCWSTR, Pointer<ADDRINFO>, Pointer<Pointer<ADDRINFO>>)
>(symbol: 'GetAddrInfoW')
external int _GetAddrInfo(
  PCWSTR pNodeName,
  PCWSTR pServiceName,
  Pointer<ADDRINFO> pHints,
  Pointer<Pointer<ADDRINFO>> ppResult,
);
