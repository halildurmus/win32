@TestOn('windows')

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:test/test.dart';
import 'package:win32/win32.dart';

void main() {
  group('Variant', () {
    setUp(() {
      final hr = CoInitializeEx(
          nullptr, COINIT_APARTMENTTHREADED | COINIT_DISABLE_OLE1DDE);
      if (FAILED(hr)) throw WindowsException(hr);
    });

    test('creation', () {
      final variant = calloc<VARIANT>();
      VariantInit(variant);
      expect(variant.ref.vt, equals(VARENUM.VT_EMPTY));
      VariantClear(variant);
      free(variant);
    });

    test('pointer to an object that implements the IUnknown interface', () {
      final spVoice = SpVoice.createInstance();
      final spellChecker = SpellCheckerFactory.createInstance()..addRef();

      final variant = calloc<VARIANT>();
      VariantInit(variant);
      variant.ref.vt = VARENUM.VT_UNKNOWN;
      variant.ref.punkVal = spVoice;

      final unk = variant.ref.punkVal;
      expect(unk.ptr.address, isNonZero);
      expect(unk.ptr.ref.isNull, isFalse);
      expect(unk.addRef(), equals(2));

      variant.ref.punkVal = spellChecker;
      final unk2 = variant.ref.punkVal;
      expect(unk2.ptr.address, isNonZero);
      expect(unk2.ptr.ref.isNull, isFalse);
      expect(unk2.addRef(), equals(3));

      VariantClear(variant);
      free(variant);
    });

    test('reference to an IUnknown interface pointer', () {
      final spVoice = SpVoice.createInstance();
      final spellChecker = SpellCheckerFactory.createInstance()..addRef();

      final variant = calloc<VARIANT>();
      VariantInit(variant);
      variant.ref.vt = VARENUM.VT_UNKNOWN | VARENUM.VT_BYREF;
      variant.ref.ppunkVal = spVoice.ptr.cast();

      final unk = IUnknown(variant.ref.ppunkVal.cast());
      expect(unk.ptr.address, isNonZero);
      expect(unk.ptr.ref.isNull, isFalse);
      expect(unk.addRef(), equals(2));

      variant.ref.ppunkVal = spellChecker.ptr.cast();
      final unk2 = IUnknown(variant.ref.ppunkVal.cast());
      expect(unk2.ptr.address, isNonZero);
      expect(unk2.ptr.ref.isNull, isFalse);
      expect(unk2.addRef(), equals(3));

      VariantClear(variant);
      free(variant);
    });

    test('time representation from DOS date/time', () {
      // MS-DOS dates are YYYYYYYMMMMDDDDD, where Y is offset from 1980
      const theDate = 29 + (02 << 5) + (24 << 9); // Feb 29th, 2004
      final pvTime = calloc<DOUBLE>();
      expect(DosDateTimeToVariantTime(theDate, NULL, pvTime), equals(TRUE));

      final lpSystemTime = calloc<SYSTEMTIME>();
      expect(VariantTimeToSystemTime(pvTime.value, lpSystemTime), equals(TRUE));
      expect(lpSystemTime.ref.wYear, equals(2004));
      expect(lpSystemTime.ref.wMonth, equals(2));
      expect(lpSystemTime.ref.wDay, equals(29));

      final dosDate = calloc<USHORT>();
      final dosTime = calloc<USHORT>();
      expect(VariantTimeToDosDateTime(pvTime.value, dosDate, dosTime),
          equals(TRUE));
      expect(dosDate.value, equals(theDate));

      free(pvTime);
      free(lpSystemTime);
      free(dosDate);
      free(dosTime);
    });

    test('LONG', () {
      final intVar = calloc<VARIANT>();
      VariantInit(intVar);
      intVar.ref.vt = VARENUM.VT_I4;
      intVar.ref.lVal = -2147483648;
      expect(intVar.ref.lVal, equals(-2147483648));

      intVar.ref.lVal = 2147483647;
      expect(intVar.ref.lVal, equals(2147483647));

      intVar.ref.lVal = 0x80000000;
      expect(intVar.ref.lVal, equals(-2147483648));

      VariantClear(intVar);
      free(intVar);
    });

    test('INT', () {
      final intVar = calloc<VARIANT>();
      VariantInit(intVar);
      intVar.ref.vt = VARENUM.VT_I4;
      intVar.ref.intVal = -2147483648;
      expect(intVar.ref.intVal, equals(-2147483648));

      intVar.ref.intVal = 2147483647;
      expect(intVar.ref.intVal, equals(2147483647));

      intVar.ref.intVal = 0x80000000;
      expect(intVar.ref.intVal, equals(-2147483648));

      VariantClear(intVar);
      free(intVar);
    });

    test('ULONGLONG', () {
      final bigint = calloc<VARIANT>();
      VariantInit(bigint);
      bigint.ref.vt = VARENUM.VT_UI8;
      bigint.ref.ullVal = BigInt.zero;
      expect(bigint.ref.ullVal, equals(BigInt.from(0)));

      bigint.ref.ullVal = BigInt.parse('18446744073709551615');
      final uint64Max = BigInt.parse('FFFFFFFFFFFFFFFF', radix: 16);
      expect(bigint.ref.ullVal, equals(uint64Max));

      bigint.ref.ullVal = BigInt.parse('8000000000000000', radix: 16);
      final testValue2 = BigInt.parse('9223372036854775808');
      expect(bigint.ref.ullVal, equals(testValue2));

      VariantClear(bigint);
      free(bigint);
    });

    test('ULONG', () {
      final intVar = calloc<VARIANT>();
      VariantInit(intVar);
      intVar.ref.vt = VARENUM.VT_UI4;
      intVar.ref.ulVal = 0;
      expect(intVar.ref.ulVal, equals(0));

      intVar.ref.ulVal = 4294967295;
      expect(intVar.ref.ulVal, equals(4294967295));

      intVar.ref.ulVal = 0x80000000;
      expect(intVar.ref.ulVal, equals(2147483648));

      VariantClear(intVar);
      free(intVar);
    });

    test('UINT', () {
      final intVar = calloc<VARIANT>();
      VariantInit(intVar);
      intVar.ref.vt = VARENUM.VT_UI4;
      intVar.ref.uintVal = 0;
      expect(intVar.ref.uintVal, equals(0));

      intVar.ref.uintVal = 4294967295;
      expect(intVar.ref.uintVal, equals(4294967295));

      intVar.ref.uintVal = 0x80000000;
      expect(intVar.ref.uintVal, equals(2147483648));

      VariantClear(intVar);
      free(intVar);
    });

    test('SHORT', () {
      final intVar = calloc<VARIANT>();
      VariantInit(intVar);
      intVar.ref.vt = VARENUM.VT_I2;
      intVar.ref.iVal = -32768;
      expect(intVar.ref.iVal, equals(-32768));

      intVar.ref.iVal = 32767;
      expect(intVar.ref.iVal, equals(32767));

      intVar.ref.iVal = 0x8000;
      expect(intVar.ref.iVal, equals(-32768));

      VariantClear(intVar);
      free(intVar);
    });
    test('BYTE', () {
      final intVar = calloc<VARIANT>();
      VariantInit(intVar);
      intVar.ref.vt = VARENUM.VT_UI1;
      intVar.ref.bVal = 0;
      expect(intVar.ref.bVal, equals(0));

      intVar.ref.bVal = 255;
      expect(intVar.ref.bVal, equals(255));

      intVar.ref.bVal = 0x80;
      expect(intVar.ref.bVal, equals(128));

      VariantClear(intVar);
      free(intVar);
    });

    test('USHORT', () {
      final intVar = calloc<VARIANT>();
      VariantInit(intVar);
      intVar.ref.vt = VARENUM.VT_UI2;
      intVar.ref.uiVal = 0;
      expect(intVar.ref.uiVal, equals(0));

      intVar.ref.uiVal = 65535;
      expect(intVar.ref.uiVal, equals(65535));

      intVar.ref.uiVal = 0x8000;
      expect(intVar.ref.uiVal, equals(32768));

      VariantClear(intVar);
      free(intVar);
    });
  });

  test('BSTR allocation', () {
    const testString = 'This is a sample text string.';
    final testStringPtr = testString.toNativeUtf16();
    final bstr = SysAllocString(testStringPtr);

    expect(SysStringLen(bstr), equals(testString.length));
    expect(SysStringByteLen(bstr), equals(testString.length * 2));

    SysFreeString(bstr);
    free(testStringPtr);
  });
}
