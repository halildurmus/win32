// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// Tests that Win32 API prototypes can be successfully loaded (i.e. that
// lookupFunction works for all the APIs generated).
//
// ignore_for_file: non_constant_identifier_names, unnecessary_ignore
// ignore_for_file: unused_import

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
    Pointer,
    VTablePointer,
    Pointer<Pointer>,
    Pointer<VTablePointer>,
    Pointer<Uint32>,
  )
>(symbol: 'RoGetMetaDataFile')
external int _RoGetMetaDataFile(
  Pointer name,
  VTablePointer metaDataDispenser,
  Pointer<Pointer> metaDataFilePath,
  Pointer<VTablePointer> metaDataImport,
  Pointer<Uint32> typeDefToken,
);
