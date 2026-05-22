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
  group('api-ms-win-core-path-l1-1-0.dll', () {
    test('PathAllocCanonicalize can be instantiated', () {
      check(_PathAllocCanonicalize).isA<Function>();
    });
    test('PathAllocCombine can be instantiated', () {
      check(_PathAllocCombine).isA<Function>();
    });
  });
}

final _api_ms_win_core_path_l1_1_0 = DynamicLibrary.open(
  'api-ms-win-core-path-l1-1-0.dll',
);

final _PathAllocCanonicalize = _api_ms_win_core_path_l1_1_0
    .lookupFunction<
      Int32 Function(Pointer<Utf16>, Uint32, Pointer<Pointer<Utf16>>),
      int Function(Pointer<Utf16>, int, Pointer<Pointer<Utf16>>)
    >('PathAllocCanonicalize');

final _PathAllocCombine = _api_ms_win_core_path_l1_1_0
    .lookupFunction<
      Int32 Function(
        Pointer<Utf16>,
        Pointer<Utf16>,
        Uint32,
        Pointer<Pointer<Utf16>>,
      ),
      int Function(Pointer<Utf16>, Pointer<Utf16>, int, Pointer<Pointer<Utf16>>)
    >('PathAllocCombine');
