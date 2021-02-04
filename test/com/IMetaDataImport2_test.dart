// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Tests that Win32 API prototypes can be successfully loaded (i.e. that
// lookupFunction works for all the APIs generated)

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

@TestOn('windows')

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:test/test.dart';

import 'package:win32/win32.dart';

void main() {
  final ptr = calloc<COMObject>();

  final metadataimport2 = IMetaDataImport2(ptr);
  test('Can instantiate IMetaDataImport2.EnumGenericParams', () {
    expect(metadataimport2.EnumGenericParams, isA<Function>());
  });
  test('Can instantiate IMetaDataImport2.GetGenericParamProps', () {
    expect(metadataimport2.GetGenericParamProps, isA<Function>());
  });
  test('Can instantiate IMetaDataImport2.GetMethodSpecProps', () {
    expect(metadataimport2.GetMethodSpecProps, isA<Function>());
  });
  test('Can instantiate IMetaDataImport2.EnumGenericParamConstraints', () {
    expect(metadataimport2.EnumGenericParamConstraints, isA<Function>());
  });
  test('Can instantiate IMetaDataImport2.GetGenericParamConstraintProps', () {
    expect(metadataimport2.GetGenericParamConstraintProps, isA<Function>());
  });
  test('Can instantiate IMetaDataImport2.GetPEKind', () {
    expect(metadataimport2.GetPEKind, isA<Function>());
  });
  test('Can instantiate IMetaDataImport2.GetVersionString', () {
    expect(metadataimport2.GetVersionString, isA<Function>());
  });
  test('Can instantiate IMetaDataImport2.EnumMethodSpecs', () {
    expect(metadataimport2.EnumMethodSpecs, isA<Function>());
  });
  calloc.free(ptr);
}
