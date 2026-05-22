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
  group('api-ms-win-ro-typeresolution-l1-1-0.dll', () {
    test('RoGetMetaDataFile can be instantiated', () {
      check(_RoGetMetaDataFile).isA<Function>();
    });
  });
}

final _api_ms_win_ro_typeresolution_l1_1_0 = DynamicLibrary.open(
  'api-ms-win-ro-typeresolution-l1-1-0.dll',
);

final _RoGetMetaDataFile = _api_ms_win_ro_typeresolution_l1_1_0
    .lookupFunction<
      Int32 Function(
        Pointer,
        VTablePointer,
        Pointer<Pointer>,
        Pointer<VTablePointer>,
        Pointer<Uint32>,
      ),
      int Function(
        Pointer,
        VTablePointer,
        Pointer<Pointer>,
        Pointer<VTablePointer>,
        Pointer<Uint32>,
      )
    >('RoGetMetaDataFile');
