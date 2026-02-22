@TestOn('windows')
library;

import 'dart:ffi';

import 'package:checks/checks.dart';
import 'package:ffi_leak_tracker/ffi_leak_tracker.dart';
import 'package:test/scaffolding.dart';
import 'package:win32/win32.dart';

import '../helpers.dart';

void main() {
  setUpAll(LeakTracker.enableInDebug);

  setUp(LeakTracker.reset);

  tearDown(LeakTracker.verifyNoLeaksInDebug);

  group('PropVariant', () {
    setUpAll(initializeCom);

    test('creates a null PROPVARIANT', () {
      final propVariant = PropVariant.from(null);
      check(propVariant.vt).equals(VT_NULL);
      check(propVariant.isEmpty).isFalse();
      check(propVariant.isNull).isTrue();
      check(propVariant.value).isNull();
      propVariant.value = null;
      check(propVariant.vt).equals(VT_NULL);
      check(propVariant.value).isNull();
      propVariant.free();
    });

    test('creates an empty PROPVARIANT', () {
      final propVariant = PropVariant();
      check(propVariant.vt).equals(VT_EMPTY);
      check(propVariant.isEmpty).isTrue();
      check(propVariant.isNull).isFalse();
      check(propVariant.value).isNull();
      propVariant.free();
    });

    test('creates a BOOL PROPVARIANT', () {
      final propVariant = PropVariant.bool$(true);
      check(propVariant.vt).equals(VT_BOOL);
      check(propVariant.value).equals(true);
      propVariant.value = false;
      check(propVariant.value).equals(false);
      propVariant.free();
    });

    test('creates a BSTR PROPVARIANT', () {
      const testString = 'Dart is fun!';
      final propVariant = PropVariant.bstr(testString);
      check(propVariant.vt).equals(VT_BSTR);
      check(propVariant.value).isNotNull().equals(testString);
      propVariant.value = 'Dart is awesome!';
      check(propVariant.vt).equals(VT_BSTR);
      check(propVariant.value).equals('Dart is awesome!');
      propVariant.free();
    });

    test('creates a Double PROPVARIANT', () {
      var testValue = 3.14159;
      final propVariant = PropVariant.double$(testValue);
      check(propVariant.vt).equals(VT_R8);
      check(propVariant.value).equals(testValue);
      testValue = 2.71828;
      propVariant.value = testValue;
      check(propVariant.value).equals(testValue);
      propVariant.free();
    });

    test('creates a Float PROPVARIANT', () {
      var testValue = 3.14159;
      final propVariant = PropVariant.float(testValue);
      check(propVariant.vt).equals(VT_R4);
      check(propVariant.value).isCloseTo(testValue, 0.0001);
      testValue = 2.71828;
      propVariant.value = testValue;
      check(propVariant.value).isCloseTo(testValue, 0.0001);
      propVariant.free();
    });

    test('creates an Int8 PROPVARIANT', () {
      const testValue = -128; // -2^7
      final propVariant = PropVariant.int8(testValue);
      check(propVariant.vt).equals(VT_I1);
      check(propVariant.value).equals(testValue);
      propVariant.value = 127; // 2^7 - 1
      check(propVariant.value).equals(127);
      propVariant.free();
    });

    test('creates an Int16 PROPVARIANT', () {
      const testValue = -32768; // -2^15
      final propVariant = PropVariant.int16(testValue);
      check(propVariant.vt).equals(VT_I2);
      check(propVariant.value).equals(testValue);
      propVariant.value = 32767; // 2^15 - 1
      check(propVariant.value).equals(32767);
      propVariant.free();
    });

    test('creates an Int32 PROPVARIANT', () {
      const testValue = -2147483648; // -2^31
      final propVariant = PropVariant.int32(testValue);
      check(propVariant.vt).equals(VT_I4);
      check(propVariant.value).equals(testValue);
      propVariant.value = 2147483647; // 2^31 - 1
      check(propVariant.value).equals(2147483647);
      propVariant.free();
    });

    test('creates an IDispatch PROPVARIANT', () {
      final dispatcher = Dispatcher.fromProgID('Shell.Application');
      final dispatch = dispatcher.dispatch;
      final propVariant = PropVariant.dispatch(dispatch..addRef());
      check(propVariant.vt).equals(VT_DISPATCH);
      final value = propVariant.value;
      check(value).isNotNull();
      check(refCount(value!)).equals(2);
      propVariant.free();
      check(refCount(dispatch)).equals(1);
      dispatcher.dispose();
    });

    test('creates an IUnknown PROPVARIANT', () {
      final unknown = createInstance<IUnknown>(FileOpenDialog);
      final propVariant = PropVariant.unknown(unknown..addRef());
      check(propVariant.vt).equals(VT_UNKNOWN);
      final value = propVariant.value!;
      check(refCount(value)).equals(2);
      propVariant.free();
      check(refCount(unknown)).equals(1);
      check(unknown.release()).isZero();
    });

    test('creates an IUnknown PROPVARIANT by reference', () {
      final unknown = createInstance<IUnknown>(FileOpenDialog);
      final ppunkval = adaptiveCalloc<VTablePointer>()..value = unknown.ptr;
      final propVariant = PropVariant.unknownByRef(ppunkval);
      final unk = IUnknown(propVariant.value.value);
      check(refCount(unk)).equals(1);
      propVariant.free();
      check(unk.release()).isZero();
      free(ppunkval);
      check(unknown.release()).isZero();
    });

    test('creates an Uint8 PROPVARIANT', () {
      const testValue = 0;
      final propVariant = PropVariant.uint8(testValue);
      check(propVariant.vt).equals(VT_UI1);
      check(propVariant.value).equals(testValue);
      propVariant.value = 255; // 2^8 - 1
      check(propVariant.value).equals(255);
      propVariant.free();
    });

    test('creates an Uint16 PROPVARIANT', () {
      const testValue = 0;
      final propVariant = PropVariant.uint16(testValue);
      check(propVariant.vt).equals(VT_UI2);
      check(propVariant.value).equals(testValue);
      propVariant.value = 65535; // 2^16 - 1
      check(propVariant.value).equals(65535);
      propVariant.free();
    });

    test('creates an Uint32 PROPVARIANT', () {
      const testValue = 0;
      final propVariant = PropVariant.uint32(testValue);
      check(propVariant.vt).equals(VT_UI4);
      check(propVariant.value).equals(testValue);
      propVariant.value = 4294967295; // 2^32 - 1
      check(propVariant.value).equals(4294967295);
      propVariant.free();
    });

    test('copies PROPVARIANT', () {
      final original = PropVariant.int32(42);
      final copy = original.copy();
      check(original.address).not((it) => it.equals(copy.address));
      check(copy.vt).equals(VT_I4);
      check(copy.value).equals(42);

      // Modify the copy and ensure the original remains unaffected.
      copy.value = 100;
      check(original.value).equals(42);
      check(copy.value).equals(100);

      copy.free();
      original.free();
    });

    test('throws ArgumentError for null pointer', () {
      check(() => PropVariant.fromPointer(nullptr)).throws<ArgumentError>();
    });

    test('throws ArgumentError for unsupported type', () {
      final propVariant = PropVariant();
      check(() => propVariant.value = DateTime.now())
          .throws<ArgumentError>()
          .has((e) => e.message, 'message')
          .equals('Unsupported PROPVARIANT value type.');
      propVariant.free();
    });
  });
}
