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
import 'package:win32/win32.dart';

import '../../helpers.dart';

void main() {
  group('api-ms-win-core-comm-l1-1-1.dll', () {
    test(
      'OpenCommPort can be instantiated',
      skip: 17134 > windowsBuildNumber,
      () {
        check(_OpenCommPort).isA<Function>();
      },
    );
  });
}

@Native<HANDLE Function(Uint32, Uint32, Uint32)>(symbol: 'OpenCommPort')
external int _OpenCommPort(
  int uPortNumber,
  int dwDesiredAccess,
  int dwFlagsAndAttributes,
);
