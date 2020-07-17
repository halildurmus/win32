// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Helper functions to minimize ceremony when calling WinRT APIs.

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../exceptions.dart';
import '../extensions/unpackUtf16.dart';
import '../generated/IInspectable.dart';
import '../macros.dart';
import '../ole32.dart';
import '../structs.dart';
import '../utils.dart';

import 'winrt_constants.dart';
import 'winrt_prototypes.dart';

/// Initializes the Windows Runtime on the current thread with a single-threaded
/// concurrency model.
/// {@category winrt}
void winrtInitialize() => RoInitialize(RO_INIT_TYPE.RO_INIT_SINGLETHREADED);

/// Closes the Windows Runtime on the current thread.
/// {@category winrt}
void winrtUninitialize() => RoUninitialize();

/// Takes a `HSTRING` (a WinRT String), and converts it to a Dart `String`.
/// {@category winrt}
String convertFromHString(Pointer<IntPtr> hstring) {
  final stringLength = allocate<Uint32>();
  final stringPtr = WindowsGetStringRawBuffer(hstring.value, stringLength);
  final dartString = stringPtr.unpackString(stringLength.value);

  free(stringLength);

  return dartString;
}

/// Takes a Dart String and converts it to an `HSTRING` (a WinRT String),
/// returning a pointer to the `HSTRING`.
///
/// The caller is responsible for deleting the `HSTRING` when it is no longer
/// used, through a call to `WindowsDeleteString()`.
/// {@category winrt}
Pointer<IntPtr> convertToHString(String string) {
  final hString = allocate<IntPtr>();

  // Create a HSTRING representing the object
  var hr = WindowsCreateString(Utf16.toUtf16(string), string.length, hString);
  if (FAILED(hr)) {
    throw WindowsException(hr);
  } else {
    return hString;
  }
}

/// Creates a WinRT object.
///
/// ```dart
/// final object = CreateObject('Windows.Globalization.Calendar', IID_ICalendar);
/// final calendar = ICalendar(object.cast());
/// ```
/// {@category winrt}
Pointer<IntPtr> CreateObject(String className, String iid) {
  final hstrClass = allocate<IntPtr>();

  // Create a HSTRING representing the object
  var hr = WindowsCreateString(
      Utf16.toUtf16(className), className.length, hstrClass);
  if (FAILED(hr)) {
    throw WindowsException(hr);
  }
  // Activates the specified Windows Runtime class. This returns the WinRT
  // IInspectable interface, which is a subclass of IUnknown.
  final inspectablePtr = allocate<IntPtr>();
  hr = RoActivateInstance(hstrClass.value, inspectablePtr);
  if (FAILED(hr)) {
    throw WindowsException(hr);
  }

  // Create an IID for the interface required
  final riidCalendar = GUID.allocate().addressOf;
  hr = IIDFromString(TEXT(iid), riidCalendar);
  if (FAILED(hr)) {
    throw WindowsException(hr);
  }

  // Now use IInspectable to navigate to the relevant interface
  final inspectable = IInspectable(inspectablePtr.cast());
  final classPtr = allocate<IntPtr>();
  hr = inspectable.QueryInterface(riidCalendar, classPtr);
  if (FAILED(hr)) {
    throw WindowsException(hr);
  }

  // Return a pointer to the relevant class
  return classPtr;
}
