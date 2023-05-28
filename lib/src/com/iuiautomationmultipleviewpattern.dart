// iuiautomationmultipleviewpattern.dart

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
import '../structs.g.dart';
import '../utils.dart';
import '../variant.dart';
import '../win32/ole32.g.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IUIAutomationMultipleViewPattern =
    '{8d253c91-1dc5-4bb5-b18f-ade16fa495e8}';

/// Provides access to a control that can switch between multiple
/// representations of the same information or set of child controls.
///
/// {@category Interface}
/// {@category com}
class IUIAutomationMultipleViewPattern extends IUnknown {
  // vtable begins at 3, is 6 entries long.
  IUIAutomationMultipleViewPattern(super.ptr);

  factory IUIAutomationMultipleViewPattern.from(IUnknown interface) =>
      IUIAutomationMultipleViewPattern(
          interface.toInterface(IID_IUIAutomationMultipleViewPattern));

  int getViewName(int view, Pointer<Pointer<Utf16>> name) => ptr.ref.vtable
      .elementAt(3)
      .cast<
          Pointer<
              NativeFunction<
                  Int32 Function(
                      Pointer, Int32 view, Pointer<Pointer<Utf16>> name)>>>()
      .value
      .asFunction<
          int Function(Pointer, int view,
              Pointer<Pointer<Utf16>> name)>()(ptr.ref.lpVtbl, view, name);

  int setCurrentView(int view) => ptr.ref.vtable
      .elementAt(4)
      .cast<Pointer<NativeFunction<Int32 Function(Pointer, Int32 view)>>>()
      .value
      .asFunction<int Function(Pointer, int view)>()(ptr.ref.lpVtbl, view);

  int get currentCurrentView {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(5)
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

  int getCurrentSupportedViews(Pointer<Pointer<SAFEARRAY>> retVal) => ptr
          .ref.vtable
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
                          Pointer, Pointer<Pointer<SAFEARRAY>> retVal)>>>()
          .value
          .asFunction<
              int Function(Pointer, Pointer<Pointer<SAFEARRAY>> retVal)>()(
      ptr.ref.lpVtbl, retVal);

  int get cachedCurrentView {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(7)
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

  int getCachedSupportedViews(Pointer<Pointer<SAFEARRAY>> retVal) =>
      ptr.ref.vtable
              .elementAt(8)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer, Pointer<Pointer<SAFEARRAY>> retVal)>>>()
              .value
              .asFunction<
                  int Function(Pointer, Pointer<Pointer<SAFEARRAY>> retVal)>()(
          ptr.ref.lpVtbl, retVal);
}
