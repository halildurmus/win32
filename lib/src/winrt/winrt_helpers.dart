// winrt_helpers.dart

// Helper functions to minimize ceremony when calling WinRT APIs.

import 'dart:ffi';
import 'package:ffi/ffi.dart';

import '../utf16.dart';

import 'package:win32/src/win32.dart';
import 'package:win32/src/macros.dart';
import 'package:win32/src/structs.dart';
import 'package:win32/src/winrt/winrt_prototypes.dart';
import 'package:win32/src/winrt/winrt_constants.dart';

import 'package:win32/src/generated/IInspectable.dart';

/// Initializes the Windows Runtime on the current thread with a single-threaded
/// concurrency model.
void winrtInitialize() => RoInitialize(RO_INIT_TYPE.RO_INIT_SINGLETHREADED);

/// Closes the Windows Runtime on the current thread.
void winrtUninitialize() => RoUninitialize();

/// Takes a HSTRING (a WinRT String), and converts it to a Dart String
String convertHString(Pointer<IntPtr> hstring) {
  final stringLength = allocate<Uint32>();
  final stringPtr = WindowsGetStringRawBuffer(hstring.value, stringLength);
  final dartString = stringPtr.unpackString(stringLength.value);

  free(stringLength);

  return dartString;
}

/// Creates a WinRT object.
///
/// ```dart
/// final object = CreateObject('Windows.Globalization.Calendar', IID_ICalendar);
/// final calendar = ICalendar(object.cast());
/// ```
Pointer<IntPtr> CreateObject(String className, String iid) {
  final hstrClass = allocate<IntPtr>();

  // Create a HSTRING representing the object
  var hr = WindowsCreateString(
      Utf16.toUtf16(className), className.length, hstrClass);
  if (FAILED(hr)) {
    throw Exception('WindowsCreateString failed.');
  }

  // Activates the specified Windows Runtime class. This returns the WinRT
  // IInspectable interface, which is a subclass of IUnknown.
  final inspectablePtr = allocate<IntPtr>();
  hr = RoActivateInstance(hstrClass.value, inspectablePtr);
  if (FAILED(hr)) {
    throw Exception('RoActivateInstance failed.');
  }

  // Create an IID for the interface required
  final iidCalendar = GUID.allocate();
  hr = IIDFromString(TEXT(iid), iidCalendar.addressOf);
  if (FAILED(hr)) {
    throw Exception('IIDFromString failed.');
  }

  // Now use IInspectable to navigate to the relevant interface
  final inspectable = IInspectable(inspectablePtr.cast());
  final classPtr = allocate<IntPtr>();
  hr = inspectable.QueryInterface(iidCalendar.addressOf, classPtr);
  if (FAILED(hr)) {
    throw Exception('QueryInterface failed.');
  }

  // Return a pointer to the relevant class
  return classPtr;
}
