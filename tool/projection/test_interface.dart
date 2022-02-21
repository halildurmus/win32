import 'package:winmd/winmd.dart';

import 'interface.dart';
import 'method.dart';

class TestInterfaceProjection {
  final TypeDef typeDef;
  final InterfaceProjection projection;

  const TestInterfaceProjection(this.typeDef, this.projection);

  String get header => '''
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

  String testMethod(String objName, MethodProjection methodProjection) => '''
test('Can instantiate ${methodProjection.name}', () {
  expect($objName.${methodProjection.name}, isA<Function>());
});
''';

  @override
  String toString() {
    final objName = projection.shortName.toLowerCase();
    return """
$header

void main() {
  final ptr = calloc<COMObject>();

  final $objName = ${projection.shortName}(ptr);

  ${projection.methodProjections.map((p) => testMethod(objName, p)).join('\n')}

  free(ptr);
}
  """;
  }
}
