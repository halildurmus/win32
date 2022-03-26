// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Helper functions to minimize ceremony when calling WinRT APIs.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../api-ms-win-core-winrt-l1-1-0.dart';
import '../api-ms-win-core-winrt-string-l1-1-0.dart';
import '../com/IInspectable.dart';
import '../combase.dart';
import '../constants.dart';
import '../exceptions.dart';
import '../guid.dart';
import '../macros.dart';
import '../ole32.dart';
import '../types.dart';
import '../utils.dart';

/// Initializes the Windows Runtime on the current thread with a single-threaded
/// concurrency model.
///
/// {@category winrt}
void winrtInitialize() => RoInitialize(RO_INIT_TYPE.RO_INIT_SINGLETHREADED);

/// Closes the Windows Runtime on the current thread.
///
/// {@category winrt}
void winrtUninitialize() => RoUninitialize();

extension WinRTStringConversion on Pointer<HSTRING> {
  /// Gets the Dart string at the handle pointed to by this object.
  String toDartString() => convertFromHString(value);
}

/// Takes a `HSTRING` (a WinRT String handle), and converts it to a Dart
/// `String`.
///
/// {@category winrt}
String convertFromHString(int hstring) =>
    WindowsGetStringRawBuffer(hstring, nullptr).toDartString();

/// Takes a Dart String and converts it to an `HSTRING` (a WinRT String),
/// returning an integer handle.
///
/// The caller is responsible for deleting the `HSTRING` when it is no longer
/// used, through a call to `WindowsDeleteString(HSTRING hstr)`, which
/// decrements the reference count of that string. If the reference count
/// reaches 0, the Windows Runtime deallocates the buffer.
///
/// {@category winrt}
int convertToHString(String string) {
  final hString = calloc<HSTRING>();
  final stringPtr = string.toNativeUtf16();
  // Create a HSTRING representing the object
  try {
    final hr = WindowsCreateString(stringPtr, string.length, hString);
    if (FAILED(hr)) {
      throw WindowsException(hr);
    } else {
      return hString.value;
    }
  } finally {
    free(stringPtr);
  }
}

/// Creates a WinRT object.
///
/// ```dart
/// final object = CreateObject('Windows.Globalization.Calendar', IID_ICalendar);
/// final calendar = ICalendar(object.cast());
/// ```
///
/// {@category winrt}
Pointer<COMObject> CreateObject(String className, String iid) {
  final hstrClass = calloc<HSTRING>();
  final lpClassName = className.toNativeUtf16();
  final inspectablePtr = calloc<COMObject>();
  final riid = calloc<GUID>();
  final classPtr = calloc<Pointer>();
  final iidPtr = iid.toNativeUtf16();
  final classNamePtr = className.toNativeUtf16();

  try {
    // Create a HSTRING representing the object
    var hr = WindowsCreateString(classNamePtr, className.length, hstrClass);
    if (FAILED(hr)) {
      throw WindowsException(hr);
    }
    // Activates the specified Windows Runtime class. This returns the WinRT
    // IInspectable interface, which is a subclass of IUnknown.
    hr = RoActivateInstance(hstrClass.value, inspectablePtr.cast());
    if (FAILED(hr)) {
      throw WindowsException(hr);
    }

    // Create an IID for the interface required
    hr = IIDFromString(iidPtr, riid);
    if (FAILED(hr)) {
      throw WindowsException(hr);
    }

    // Now use IInspectable to navigate to the relevant interface
    final inspectable = IInspectable(inspectablePtr);
    hr = inspectable.QueryInterface(riid, classPtr);
    if (FAILED(hr)) {
      throw WindowsException(hr);
    }

    // Return a pointer to the relevant class
    return classPtr.cast();
  } finally {
    free(classNamePtr);
    free(iidPtr);
    free(riid);
    free(inspectablePtr);
    free(lpClassName);
    free(hstrClass);
  }
}
