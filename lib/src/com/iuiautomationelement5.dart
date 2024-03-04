// iuiautomationelement5.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import
// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../callbacks.dart';
import '../combase.dart';
import '../constants.dart';
import '../exceptions.dart';
import '../guid.dart';
import '../macros.dart';
import '../propertykey.dart';
import '../structs.g.dart';
import '../utils.dart';
import '../variant.dart';
import '../win32/ole32.g.dart';
import 'iuiautomationelement4.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IUIAutomationElement5 = '{98141c1d-0d0e-4175-bbe2-6bff455842a7}';

/// Extends the IUIAutomationElement4 interface to provide access to current
/// and cached landmark data.
///
/// {@category com}
class IUIAutomationElement5 extends IUIAutomationElement4 {
  // vtable begins at 104, is 4 entries long.
  IUIAutomationElement5(super.ptr);

  factory IUIAutomationElement5.from(IUnknown interface) =>
      IUIAutomationElement5(interface.toInterface(IID_IUIAutomationElement5));

  int get currentLandmarkType {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = (ptr.ref.vtable + 104)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer, Pointer<Uint32> retVal)>>>()
              .value
              .asFunction<int Function(Pointer, Pointer<Uint32> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<Utf16> get currentLocalizedLandmarkType {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = (ptr.ref.vtable + 105)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer, Pointer<Pointer<Utf16>> retVal)>>>()
              .value
              .asFunction<
                  int Function(Pointer, Pointer<Pointer<Utf16>> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get cachedLandmarkType {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = (ptr.ref.vtable + 106)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer, Pointer<Uint32> retVal)>>>()
              .value
              .asFunction<int Function(Pointer, Pointer<Uint32> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<Utf16> get cachedLocalizedLandmarkType {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = (ptr.ref.vtable + 107)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer, Pointer<Pointer<Utf16>> retVal)>>>()
              .value
              .asFunction<
                  int Function(Pointer, Pointer<Pointer<Utf16>> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }
}
