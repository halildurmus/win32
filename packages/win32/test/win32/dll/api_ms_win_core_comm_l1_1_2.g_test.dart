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
  group('api-ms-win-core-comm-l1-1-2.dll', () {
    test(
      'GetCommPorts can be instantiated',
      skip: 17134 > windowsBuildNumber,
      () {
        check(_GetCommPorts).isA<Function>();
      },
    );
  });
}

final _api_ms_win_core_comm_l1_1_2 = DynamicLibrary.open(
  'api-ms-win-core-comm-l1-1-2.dll',
);

final _GetCommPorts = _api_ms_win_core_comm_l1_1_2
    .lookupFunction<
      Uint32 Function(Pointer<Uint32>, Uint32, Pointer<Uint32>),
      int Function(Pointer<Uint32>, int, Pointer<Uint32>)
    >('GetCommPorts');
