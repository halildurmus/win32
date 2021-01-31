@TestOn('windows')

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:test/test.dart';
import 'package:win32/win32.dart';

void main() {
  test('Variant creation', () {
    final variant = calloc<VARIANT>();
    VariantInit(variant);
    expect(variant.ref.vt, equals(VARENUM.VT_EMPTY));
    free(variant);
  });

  test('Variant time representation from DOS date/time', () {
    // MS-DOS dates are YYYYYYYMMMMDDDDD, where Y is offset from 1980
    const theDate = 29 + (02 << 5) + (24 << 9); // Feb 29th, 2004
    final varDateTime = calloc<Double>();
    expect(DosDateTimeToVariantTime(theDate, NULL, varDateTime), equals(TRUE));

    final sysDateTime = calloc<SYSTEMTIME>();
    expect(
        VariantTimeToSystemTime(varDateTime.value, sysDateTime), equals(TRUE));
    expect(sysDateTime.ref.wYear, equals(2004));
    expect(sysDateTime.ref.wMonth, equals(2));
    expect(sysDateTime.ref.wDay, equals(29));

    final dosDate = calloc<Uint16>();
    final dosTime = calloc<Uint16>();
    expect(VariantTimeToDosDateTime(varDateTime.value, dosDate, dosTime),
        equals(TRUE));
    expect(dosDate.value, equals(theDate));

    free(varDateTime);
    free(sysDateTime);
    free(dosDate);
    free(dosTime);
  });

  test('SHORT Variant', () {
    final intVar = calloc<VARIANT>();
    VariantInit(intVar);
    intVar.ref.vt = VARENUM.VT_I2;
    intVar.ref.iVal = -32768;
    expect(intVar.ref.iVal, equals(-32768));

    intVar.ref.iVal = 32767;
    expect(intVar.ref.iVal, equals(32767));

    intVar.ref.iVal = 0x8000;
    expect(intVar.ref.iVal, equals(-32768));

    free(intVar);
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
