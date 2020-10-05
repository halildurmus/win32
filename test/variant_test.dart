@TestOn('windows')

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:test/test.dart';
import 'package:win32/win32.dart';

void main() {
  test('Variant creation', () {
    final variant = VARIANT.allocate();
    VariantInit(variant.addressOf);
    expect(variant.vt, equals(VARENUM.VT_EMPTY));
    free(variant.addressOf);
  });
}
