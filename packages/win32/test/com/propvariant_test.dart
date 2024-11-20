@TestOn('windows')
library;

import 'dart:ffi';

import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:win32/win32.dart';

import '../helpers.dart';

void main() {
  setUpAll(initializeCom);

  group('PropVariant', () {
    test('creates a null PROPVARIANT', () {
      final propVariant = PropVariant.from(null);
      check(propVariant.vt).equals(VT_NULL);
      check(propVariant.isEmpty).isFalse();
      check(propVariant.isNull).isTrue();
      check(propVariant.value).isNull();
      propVariant.value = null;
      check(propVariant.vt).equals(VT_NULL);
      check(propVariant.value).isNull();
    });

    test('creates an empty PROPVARIANT', () {
      final propVariant = PropVariant();
      check(propVariant.vt).equals(VT_EMPTY);
      check(propVariant.isEmpty).isTrue();
      check(propVariant.isNull).isFalse();
      check(propVariant.value).isNull();
    });

    test('creates a BOOL PROPVARIANT', () {
      final propVariant = PropVariant.bool$(true);
      check(propVariant.vt).equals(VT_BOOL);
      check(propVariant.value).equals(true);
      propVariant.value = false;
      check(propVariant.value).equals(false);
    });

    test('creates a BSTR PROPVARIANT', () {
      const testString = 'Dart is fun!';
      final propVariant = PropVariant.bstr(testString);
      check(propVariant.vt).equals(VT_BSTR);
      check(propVariant.value).isNotNull().equals(testString);
      propVariant.value = 'Dart is awesome!';
      check(propVariant.vt).equals(VT_BSTR);
      check(propVariant.value).equals('Dart is awesome!');
    });

    test('creates a Double PROPVARIANT', () {
      var testValue = 3.14159;
      final propVariant = PropVariant.double$(testValue);
      check(propVariant.vt).equals(VT_R8);
      check(propVariant.value).equals(testValue);
      testValue = 2.71828;
      propVariant.value = testValue;
      check(propVariant.value).equals(testValue);
    });

    test('creates a Float PROPVARIANT', () {
      var testValue = 3.14159;
      final propVariant = PropVariant.float(testValue);
      check(propVariant.vt).equals(VT_R4);
      check(propVariant.value).isCloseTo(testValue, 0.0001);
      testValue = 2.71828;
      propVariant.value = testValue;
      check(propVariant.value).isCloseTo(testValue, 0.0001);
    });

    test('creates an Int8 PROPVARIANT', () {
      const testValue = -128; // -2^7
      final propVariant = PropVariant.int8(testValue);
      check(propVariant.vt).equals(VT_I1);
      check(propVariant.value).equals(testValue);
      propVariant.value = 127; // 2^7 - 1
      check(propVariant.value).equals(127);
    });

    test('creates an Int16 PROPVARIANT', () {
      const testValue = -32768; // -2^15
      final propVariant = PropVariant.int16(testValue);
      check(propVariant.vt).equals(VT_I2);
      check(propVariant.value).equals(testValue);
      propVariant.value = 32767; // 2^15 - 1
      check(propVariant.value).equals(32767);
    });

    test('creates an Int32 PROPVARIANT', () {
      const testValue = -2147483648; // -2^31
      final propVariant = PropVariant.int32(testValue);
      check(propVariant.vt).equals(VT_I4);
      check(propVariant.value).equals(testValue);
      propVariant.value = 2147483647; // 2^31 - 1
      check(propVariant.value).equals(2147483647);
    });

    test('creates an IDispatch PROPVARIANT', () {
      final dispatch = Dispatcher.fromProgID('Shell.Application').dispatch
        ..addRef();
      final propVariant = PropVariant.dispatch(dispatch);
      check(propVariant.vt).equals(VT_DISPATCH);
      final value = propVariant.value;
      check(value).isNotNull();
      check(refCount(value!)).equals(3);
      check(value.release()).equals(2);
      propVariant.free();
      check(refCount(dispatch)).equals(1);
      check(dispatch.release()).isZero();
    });

    test('creates an IUnknown PROPVARIANT', () {
      final unknown = createInstance<IUnknown>(FileOpenDialog);
      check(refCount(unknown)).equals(1);
      unknown.detach(); // Give up ownership.
      final propVariant = PropVariant.unknown(unknown);
      check(propVariant.vt).equals(VT_UNKNOWN);
      final value = propVariant.value!;
      check(refCount(value)).equals(2);
      propVariant.free();
      check(refCount(value)).equals(1);
      check(value.release()).isZero();
    });

    test('creates an IUnknown PROPVARIANT by reference', () {
      final unknown = createInstance<IUnknown>(FileOpenDialog);
      check(refCount(unknown)).equals(1);
      unknown.detach(); // Give up ownership.
      final ppunkval = loggingCalloc<VTablePointer>()..value = unknown.ptr;
      final propVariant = PropVariant.unknownByRef(ppunkval);
      final unk = IUnknown(propVariant.value.value);
      check(refCount(unk)).equals(1);
      propVariant.free();
      check(unk.release()).isZero();
      free(ppunkval);
    });

    test('creates an Uint8 PROPVARIANT', () {
      const testValue = 0;
      final propVariant = PropVariant.uint8(testValue);
      check(propVariant.vt).equals(VT_UI1);
      check(propVariant.value).equals(testValue);
      propVariant.value = 255; // 2^8 - 1
      check(propVariant.value).equals(255);
    });

    test('creates an Uint16 PROPVARIANT', () {
      const testValue = 0;
      final propVariant = PropVariant.uint16(testValue);
      check(propVariant.vt).equals(VT_UI2);
      check(propVariant.value).equals(testValue);
      propVariant.value = 65535; // 2^16 - 1
      check(propVariant.value).equals(65535);
    });

    test('creates an Uint32 PROPVARIANT', () {
      const testValue = 0;
      final propVariant = PropVariant.uint32(testValue);
      check(propVariant.vt).equals(VT_UI4);
      check(propVariant.value).equals(testValue);
      propVariant.value = 4294967295; // 2^32 - 1
      check(propVariant.value).equals(4294967295);
    });

    test('clones PROPVARIANT', () {
      final original = PropVariant.int32(42);
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
      check(() => PropVariant.fromPointer(nullptr)).throws<ArgumentError>();
    });

    test('throws ArgumentError for unsupported type', () {
      final propVariant = PropVariant();
      check(() => propVariant.value = DateTime.now())
          .throws<ArgumentError>()
          .has((e) => e.message, 'message')
          .equals(
            'Unsupported type DateTime. Supported types are null, bool, '
            'double, IDispatch, IUnknown, int, and String.',
          );
    });
  });
}
