import 'package:winmd/winmd.dart';

import 'com_interface.dart';
import 'com_property.dart';
import 'method.dart';

class TestInterfaceProjection {
  final TypeDef typeDef;
  final ComInterfaceProjection projection;

  const TestInterfaceProjection(this.typeDef, this.projection);

  String get header => '''
// Copyright (c) 2020, Dart | Windows.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Tests that Win32 API prototypes can be successfully loaded (i.e. that
// lookupFunction works for all the APIs generated)

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_local_variable

@TestOn('windows')

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:test/test.dart';

import 'package:win32/win32.dart';
  ''';

  String testMethod(String interfaceName, String instanceName,
      MethodProjection methodProjection) {
    if (methodProjection.runtimeType == ComGetPropertyProjection ||
        methodProjection.runtimeType == ComSetPropertyProjection) {
      return '';
      // TODO: Add this.
      // final propertyType =
      //     (methodProjection as PropertyProjection).returnType.dartType;
      //     return '''
      // test('Can access property $interfaceName.${methodProjection.name}', () {
      //   expect($instanceName.${methodProjection.exposedMethodName}, isNot(isA<$propertyType>()));
      // });''';
    } else {
      return '''
  test('Can instantiate $interfaceName.${methodProjection.camelCasedName}', () {
    expect($instanceName.${methodProjection.camelCasedName}, isA<Function>());
  });''';
    }
  }

  @override
  String toString() {
    final interfaceName = projection.shortName;
    final instanceName = interfaceName.substring(1).toLowerCase();
    return """
$header

void main() {
  final ptr = calloc<COMObject>();

  final $instanceName = $interfaceName(ptr);
  ${projection.methodProjections.map((p) => testMethod(interfaceName, instanceName, p)).join()}

  free(ptr);
}
  """;
  }
}
