// iuiautomationdragpattern.dart

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
import 'iunknown.dart';

/// @nodoc
const IID_IUIAutomationDragPattern = '{1dc7b570-1f54-4bad-bcda-d36a722fb7bd}';

/// Provides access to information exposed by a UI Automation provider for
/// an element that can be dragged as part of a drag-and-drop operation.
///
/// {@category com}
class IUIAutomationDragPattern extends IUnknown {
  // vtable begins at 3, is 8 entries long.
  IUIAutomationDragPattern(super.ptr);

  factory IUIAutomationDragPattern.from(IUnknown interface) =>
      IUIAutomationDragPattern(
          interface.toInterface(IID_IUIAutomationDragPattern));

  int get currentIsGrabbed {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = (ptr.ref.vtable + 3)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer, Pointer<Int32> retVal)>>>()
              .value
              .asFunction<int Function(Pointer, Pointer<Int32> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get cachedIsGrabbed {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = (ptr.ref.vtable + 4)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer, Pointer<Int32> retVal)>>>()
              .value
              .asFunction<int Function(Pointer, Pointer<Int32> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<Utf16> get currentDropEffect {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = (ptr.ref.vtable + 5)
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

  Pointer<Utf16> get cachedDropEffect {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = (ptr.ref.vtable + 6)
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

  Pointer<SAFEARRAY> get currentDropEffects {
    final retValuePtr = calloc<Pointer<SAFEARRAY>>();

    try {
      final hr = (ptr.ref.vtable + 7)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer, Pointer<Pointer<SAFEARRAY>> retVal)>>>()
              .value
              .asFunction<
                  int Function(Pointer, Pointer<Pointer<SAFEARRAY>> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<SAFEARRAY> get cachedDropEffects {
    final retValuePtr = calloc<Pointer<SAFEARRAY>>();

    try {
      final hr = (ptr.ref.vtable + 8)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer, Pointer<Pointer<SAFEARRAY>> retVal)>>>()
              .value
              .asFunction<
                  int Function(Pointer, Pointer<Pointer<SAFEARRAY>> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int getCurrentGrabbedItems(
          Pointer<Pointer<COMObject>> retVal) =>
      (ptr.ref.vtable + 9)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer, Pointer<Pointer<COMObject>> retVal)>>>()
              .value
              .asFunction<
                  int Function(Pointer, Pointer<Pointer<COMObject>> retVal)>()(
          ptr.ref.lpVtbl, retVal);

  int getCachedGrabbedItems(
          Pointer<Pointer<COMObject>> retVal) =>
      (ptr.ref.vtable + 10)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer, Pointer<Pointer<COMObject>> retVal)>>>()
              .value
              .asFunction<
                  int Function(Pointer, Pointer<Pointer<COMObject>> retVal)>()(
          ptr.ref.lpVtbl, retVal);
}
