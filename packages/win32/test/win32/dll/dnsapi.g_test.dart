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
  group('dnsapi.dll', () {
    test('DnsServiceDeRegister can be instantiated', () {
      check(_DnsServiceDeRegister).isA<Function>();
    });
    test('DnsServiceRegister can be instantiated', () {
      check(_DnsServiceRegister).isA<Function>();
    });
    test('DnsServiceRegisterCancel can be instantiated', () {
      check(_DnsServiceRegisterCancel).isA<Function>();
    });
  });
}

final _dnsapi = DynamicLibrary.open('dnsapi.dll');

final _DnsServiceDeRegister = _dnsapi
    .lookupFunction<
      Uint32 Function(
        Pointer<DNS_SERVICE_REGISTER_REQUEST>,
        Pointer<DNS_SERVICE_CANCEL>,
      ),
      int Function(
        Pointer<DNS_SERVICE_REGISTER_REQUEST>,
        Pointer<DNS_SERVICE_CANCEL>,
      )
    >('DnsServiceDeRegister');

final _DnsServiceRegister = _dnsapi
    .lookupFunction<
      Uint32 Function(
        Pointer<DNS_SERVICE_REGISTER_REQUEST>,
        Pointer<DNS_SERVICE_CANCEL>,
      ),
      int Function(
        Pointer<DNS_SERVICE_REGISTER_REQUEST>,
        Pointer<DNS_SERVICE_CANCEL>,
      )
    >('DnsServiceRegister');

final _DnsServiceRegisterCancel = _dnsapi
    .lookupFunction<
      Uint32 Function(Pointer<DNS_SERVICE_CANCEL>),
      int Function(Pointer<DNS_SERVICE_CANCEL>)
    >('DnsServiceRegisterCancel');
