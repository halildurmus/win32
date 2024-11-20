@TestOn('windows')
library;

import 'dart:ffi';

import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:win32/win32.dart';

import '../helpers.dart';

void main() {
  setUpAll(initializeCom);

  group('Variant', () {
    test('converts DOS date/time to Variant time and back', () {
      // MS-DOS dates are YYYYYYYMMMMDDDDD, where Y is offset from 1980.
      const theDate = 29 + (02 << 5) + (24 << 9); // Feb 29th, 2004
      final pvTime = loggingCalloc<DOUBLE>();
      check(DosDateTimeToVariantTime(theDate, NULL, pvTime)).equals(TRUE);

      final lpSystemTime = loggingCalloc<SYSTEMTIME>();
      check(VariantTimeToSystemTime(pvTime.value, lpSystemTime)).equals(TRUE);
      final SYSTEMTIME(:wYear, :wMonth, :wDay) = lpSystemTime.ref;
      check(wYear).equals(2004);
      check(wMonth).equals(2);
      check(wDay).equals(29);

      final dosDate = loggingCalloc<USHORT>();
      final dosTime = loggingCalloc<USHORT>();
      check(
        VariantTimeToDosDateTime(pvTime.value, dosDate, dosTime),
      ).equals(TRUE);
      check(dosDate.value).equals(theDate);

      free(pvTime);
      free(lpSystemTime);
      free(dosDate);
      free(dosTime);
    });

    test('creates a null VARIANT', () {
      final variant = Variant.from(null);
      check(variant.vt).equals(VT_NULL);
      check(variant.isEmpty).isFalse();
      check(variant.isNull).isTrue();
      check(variant.value).isNull();
      variant.value = null;
      check(variant.vt).equals(VT_NULL);
      check(variant.value).isNull();
    });

    test('creates an empty VARIANT', () {
      final variant = Variant();
      check(variant.vt).equals(VT_EMPTY);
      check(variant.isEmpty).isTrue();
      check(variant.isNull).isFalse();
      check(variant.value).isNull();
    });

    test('creates a BOOL VARIANT', () {
      final variant = Variant.bool$(true);
      check(variant.vt).equals(VT_BOOL);
      check(variant.value).equals(true);
      variant.value = false;
      check(variant.value).equals(false);
    });

    test('creates a BSTR VARIANT', () {
      const testString = 'Dart is fun!';
      final variant = Variant.bstr(testString);
      check(variant.vt).equals(VT_BSTR);
      check(variant.value).isNotNull().equals(testString);
      variant.value = 'Dart is awesome!';
      check(variant.vt).equals(VT_BSTR);
      check(variant.value).equals('Dart is awesome!');
    });

    test('creates a Double VARIANT', () {
      var testValue = 3.14159;
      final variant = Variant.double$(testValue);
      check(variant.vt).equals(VT_R8);
      check(variant.value).equals(testValue);
      testValue = 2.71828;
      variant.value = testValue;
      check(variant.value).equals(testValue);
    });

    test('creates a Float VARIANT', () {
      var testValue = 3.14159;
      final variant = Variant.float(testValue);
      check(variant.vt).equals(VT_R4);
      check(variant.value).isCloseTo(testValue, 0.0001);
      testValue = 2.71828;
      variant.value = testValue;
      check(variant.value).isCloseTo(testValue, 0.0001);
    });

    test('creates an Int8 VARIANT', () {
      const testValue = -128; // -2^7
      final variant = Variant.int8(testValue);
      check(variant.vt).equals(VT_I1);
      check(variant.value).equals(testValue);
      variant.value = 127; // 2^7 - 1
      check(variant.value).equals(127);
    });

    test('creates an Int16 VARIANT', () {
      const testValue = -32768; // -2^15
      final variant = Variant.int16(testValue);
      check(variant.vt).equals(VT_I2);
      check(variant.value).equals(testValue);
      variant.value = 32767; // 2^15 - 1
      check(variant.value).equals(32767);
    });

    test('creates an Int32 VARIANT', () {
      const testValue = -2147483648; // -2^31
      final variant = Variant.int32(testValue);
      check(variant.vt).equals(VT_I4);
      check(variant.value).equals(testValue);
      variant.value = 2147483647; // 2^31 - 1
      check(variant.value).equals(2147483647);
    });

    test('creates an Int64 VARIANT', () {
      const testValue = -9223372036854775808; // -2^63
      final variant = Variant.int64(testValue);
      check(variant.vt).equals(VT_I8);
      check(variant.value).equals(testValue);
      variant.value = 9223372036854775807; // 2^63 - 1
      check(variant.value).equals(9223372036854775807);
    });

    test('creates an IDispatch VARIANT', () {
      final dispatch = Dispatcher.fromProgID('Shell.Application').dispatch
        ..addRef();
      final variant = Variant.dispatch(dispatch);
      check(variant.vt).equals(VT_DISPATCH);
      final value = variant.value;
      check(value).isNotNull();
      check(refCount(value!)).equals(3);
      check(value.release()).equals(2);
      variant.free();
      check(refCount(dispatch)).equals(1);
      check(dispatch.release()).isZero();
    });

    test('creates an IUnknown VARIANT', () {
      final unknown = createInstance<IUnknown>(FileOpenDialog);
      check(refCount(unknown)).equals(1);
      unknown.detach(); // Give up ownership.
      final variant = Variant.unknown(unknown);
      check(variant.vt).equals(VT_UNKNOWN);
      final value = variant.value!;
      check(refCount(value)).equals(2);
      variant.free();
      check(refCount(value)).equals(1);
      check(value.release()).isZero();
    });

    test('creates an IUnknown VARIANT by reference', () {
      final unknown = createInstance<IUnknown>(FileOpenDialog);
      check(refCount(unknown)).equals(1);
      unknown.detach(); // Give up ownership.
      final ppunkval = loggingCalloc<VTablePointer>()..value = unknown.ptr;
      final variant = Variant.unknownByRef(ppunkval);
      final unk = IUnknown(variant.value.value);
      check(refCount(unk)).equals(1);
      variant.free();
      check(unk.release()).isZero();
      free(ppunkval);
    });

    test('creates an Uint8 VARIANT', () {
      const testValue = 0;
      final variant = Variant.uint8(testValue);
      check(variant.vt).equals(VT_UI1);
      check(variant.value).equals(testValue);
      variant.value = 255; // 2^8 - 1
      check(variant.value).equals(255);
    });

    test('creates an Uint16 VARIANT', () {
      const testValue = 0;
      final variant = Variant.uint16(testValue);
      check(variant.vt).equals(VT_UI2);
      check(variant.value).equals(testValue);
      variant.value = 65535; // 2^16 - 1
      check(variant.value).equals(65535);
    });

    test('creates an Uint32 VARIANT', () {
      const testValue = 0;
      final variant = Variant.uint32(testValue);
      check(variant.vt).equals(VT_UI4);
      check(variant.value).equals(testValue);
      variant.value = 4294967295; // 2^32 - 1
      check(variant.value).equals(4294967295);
    });

    test('creates an Uint64 VARIANT', () {
      final variant = Variant.uint64(0);
      check(variant.vt).equals(VT_UI8);
      check(variant.value).isZero();
      variant.value = 0xffffffffffffffff; // 2^64 - 1
      check(variant.value).equals(0xffffffffffffffff);
      check(variant.value).equals(-1);
    });

    test('clones VARIANT', () {
      final original = Variant.int32(42);
      final clone = original.clone();
      check(original.ptr.address).not((it) => it.equals(clone.ptr.address));
      check(clone.vt).equals(VT_I4);
      check(clone.value).equals(42);

      // Modify the clone and ensure the original remains unaffected.
      clone.value = 100;
      check(original.value).equals(42);
      check(clone.value).equals(100);
    });

    test('throws ArgumentError for null pointer', () {
      check(() => Variant.fromPointer(nullptr)).throws<ArgumentError>();
    });

    test('throws ArgumentError for unsupported type', () {
      final variant = Variant();
      check(() => variant.value = DateTime.now())
          .throws<ArgumentError>()
          .has((e) => e.message, 'message')
          .equals(
            'Unsupported type DateTime. Supported types are null, bool, '
            'double, IDispatch, IUnknown, int, and String.',
          );
    });
  });
}
