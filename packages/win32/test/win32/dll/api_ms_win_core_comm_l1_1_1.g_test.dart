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

final _api_ms_win_core_comm_l1_1_1 = DynamicLibrary.open(
  'api-ms-win-core-comm-l1-1-1.dll',
);

final _OpenCommPort = _api_ms_win_core_comm_l1_1_1
    .lookupFunction<
      Pointer Function(Uint32, Uint32, Uint32),
      Pointer Function(int, int, int)
    >('OpenCommPort');
