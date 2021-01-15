@TestOn('windows')

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:test/test.dart';
import 'package:win32/win32.dart';

void main() {
  test('Variant creation', () {
    final variant = zeroAllocate<VARIANT>();
    VariantInit(variant);
    expect(variant.ref.vt, equals(VARENUM.VT_EMPTY));
    free(variant);
  });

  test('BSTR allocation', () {
    const testString = 'This is a sample text string.';
    final testStringPtr = TEXT(testString);
    final bstr = SysAllocString(testStringPtr);
    expect(SysStringLen(bstr), equals(testString.length));
    expect(SysStringByteLen(bstr), equals(testString.length * 2));

    SysFreeString(bstr);
    free(testStringPtr);
  });
}
