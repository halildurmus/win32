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
  group('api-ms-win-ro-typeresolution-l1-1-0.dll', () {
    test('RoGetMetaDataFile can be instantiated', () {
      check(_RoGetMetaDataFile).isA<Function>();
    });
  });
}

@Native<
  Int32 Function(
    HSTRING,
    VTablePointer,
    Pointer<HSTRING>,
    Pointer<VTablePointer>,
    Pointer<Uint32>,
  )
>(symbol: 'RoGetMetaDataFile')
external int _RoGetMetaDataFile(
  int name,
  VTablePointer metaDataDispenser,
  Pointer<HSTRING> metaDataFilePath,
  Pointer<VTablePointer> metaDataImport,
  Pointer<Uint32> typeDefToken,
);
