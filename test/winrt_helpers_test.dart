// ignore_for_file: deprecated_member_use_from_same_package

@TestOn('windows')

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:test/test.dart';
import 'package:win32/win32.dart';

import 'helpers.dart';

void main() {
  group('WinRT helpers', () {
    setUp(initializeCOM);

    test('toDartString', () {
      final str = 'Hello, world!';
      final hString = convertToHString(str);
      final pHString = calloc<HSTRING>()..value = hString;

      final dartStr = pHString.toDartString();
      expect(dartStr, equals(str));

      WindowsDeleteString(hString);
      free(pHString);
    });

    test('getInterfaces', () {
      final iids = [
        '{00000038-0000-0000-c000-000000000046}', // IWeakReferenceSource
        '{2ca8278a-12c5-4c5f-8977-94547793c241}', // IFileOpenPicker
        '{8ceb6cd2-b446-46f7-b265-90f8e55ad650}', // IFileOpenPicker2
        '{3f57b569-2522-4ca5-aa73-a15509f1fcbf}', // IFileOpenPickerWithOperationId
        if (getWindowsBuildNumber() >= 18362)
          '{d9a5c5b3-c5dc-5b98-bd80-a8d0ca0584d8}' // IFileOpenPicker3
      ];
      final className = 'Windows.Storage.Pickers.FileOpenPicker';
      final object = activateClass(className);
      expect(getInterfaces(object), equals(iids));
    });

    test('getClassName', () {
      const className = 'Windows.Globalization.Calendar';
      final object = activateClass(className);
      expect(getClassName(object), equals(className));
    });

    test('getTrustLevel of a base trust class', () {
      const className = 'Windows.Globalization.Calendar';
      final object = activateClass(className);
      expect(getTrustLevel(object), equals(TrustLevel.baseTrust));
    });

    test('getTrustLevel of a partial trust class', () {
      const className = 'Windows.Storage.Pickers.FileOpenPicker';
      final object = activateClass(className);
      expect(getTrustLevel(object), equals(TrustLevel.partialTrust));
    });

    tearDown(forceGC);
    tearDownAll(CoUninitialize);
  });
}

/// Activates the specified Windows Runtime class in the [className].
IInspectable activateClass(String className) {
  // Create a HSTRING representing the object
  final hClassName = convertToHString(className);
  final inspectablePtr = calloc<COMObject>();

  try {
    final hr = RoActivateInstance(hClassName, inspectablePtr.cast());
    if (FAILED(hr)) throw WindowsException(hr);
    // Return a pointer to the relevant class
    return IInspectable(inspectablePtr);
  } finally {
    WindowsDeleteString(hClassName);
  }
}
