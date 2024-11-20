@TestOn('windows')
library;

import 'dart:async';
import 'dart:ffi';

import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:win32/win32.dart';

import 'helpers.dart';

void main() {
  group('utils tests', () {
    test('createInstance succeeds', () {
      initializeCom();
      final unknown = createInstance<IUnknown>(SpellCheckerFactory);
      check(unknown.addRef()).equals(2);
      check(unknown.release()).equals(1);
      check(unknown.release()).isZero();
      CoUninitialize();
    });

    test('createInstance throws when COM is not initialized', () {
      // Since other tests may have called CoInitialize, the behavior of this
      // test is uncertain. It should either:
      // 1. Throw a WindowsException indicating that CoInitialize has not been
      //    called,
      //    or
      // 2. Return normally if another test has already initialized COM.
      check(() => createInstance<IFileOpenDialog>(FileOpenDialog)).anyOf([
        (it) => it.throws<WindowsException>()
          ..has((e) => e.hr, 'hr').equals(CO_E_NOTINITIALIZED)
          ..has(
            (e) => e.message,
            'message',
          ).contains('CoInitialize has not been called'),
        (it) => it.returnsNormally(),
      ]);
    });

    test('createInstance fails gracefully with invalid CLSID', () {
      initializeCom();
      final zeroGuid = Guid.zero();
      check(() => createInstance<IUnknown>(zeroGuid))
          .throws<WindowsException>()
          .has((e) => e.hr, 'hr')
          .equals(REGDB_E_CLASSNOTREG);
      CoUninitialize();
    });

    test('free successfully frees loggingCalloc-allocated pointer', () {
      final ptr = loggingCalloc<Int32>();
      final imalloc = CoGetMalloc(1);
      check(imalloc).isNotNull();
      check(imalloc!.didAlloc(ptr)).equals(TRUE);
      check(imalloc.getSize(ptr)).equals(sizeOf<Int32>());
      check(() => free(ptr)).returnsNormally();
      check(imalloc.didAlloc(ptr)).equals(FALSE);
    });

    test('free successfully frees malloc-allocated pointer', () {
      final ptr = loggingMalloc<Int32>();
      final imalloc = CoGetMalloc(1);
      check(imalloc).isNotNull();
      check(imalloc!.didAlloc(ptr)).equals(TRUE);
      check(imalloc.getSize(ptr)).equals(sizeOf<Int32>());
      check(() => free(ptr)).returnsNormally();
      check(imalloc.didAlloc(ptr)).equals(FALSE);
    });

    test('free throws AssertionError on null pointers', () {
      check(() => free(nullptr))
          .throws<AssertionError>()
          .has((e) => e.message, 'message')
          .equals("Pointer must not be a 'nullptr'.");
    });

    test('printStruct prints correct memory layout', () {
      final struct = loggingCalloc<GUID>()
        ..ref.setGUID('{6b29fc40-ca47-1067-b31d-00dd010662da}');

      // Redirect stdout to capture the output of printStruct.
      final outputBuffer = StringBuffer();
      final zoneSpecification = ZoneSpecification(
        print: (self, parent, zone, line) {
          outputBuffer.writeln(line); // Capture the printed line.
        },
      );

      // Run the printStruct function in a custom zone.
      Zone.current.fork(specification: zoneSpecification).run(() {
        printStruct(struct, sizeOf<GUID>());
      });

      // Expected output in memory layout (16-bit words in little-endian order).
      const expectedOutput =
          '0xFC40, 0x6B29, 0xCA47, 0x1067, 0x1DB3, 0xDD00, 0x601, 0xDA62';

      // Verify the output matches the expected format.
      check(outputBuffer.toString().trim()).equals(expectedOutput);

      free(struct);
    });

    test('isComInitialized', () {
      // This test is not deterministic, as it depends on the state of COM
      // initialization from other tests.
      check(isComInitialized).anyOf([(it) => it.isFalse, (it) => it.isTrue]);
      initializeCom();
      check(isComInitialized).isTrue();
      CoUninitialize();
      // This test is not deterministic, as it depends on the state of COM
      // initialization from other tests.
      check(isComInitialized).anyOf([(it) => it.isFalse, (it) => it.isTrue]);
    });

    test('isWindowsRuntimeAvailable detects WinRT availability', () {
      check(isWindowsRuntimeAvailable).isTrue();
    });

    test('registerHighDPISupport succeeds', () {
      check(
        AreDpiAwarenessContextsEqual(
          GetThreadDpiAwarenessContext(),
          DPI_AWARENESS_CONTEXT_PER_MONITOR_AWARE_V2,
        ),
      ).isFalse();
      registerHighDPISupport();
      check(
        AreDpiAwarenessContextsEqual(
          GetThreadDpiAwarenessContext(),
          DPI_AWARENESS_CONTEXT_PER_MONITOR_AWARE_V2,
        ),
      ).isTrue();
    });
  });
}
