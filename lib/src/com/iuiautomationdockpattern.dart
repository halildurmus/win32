// iuiautomationdockpattern.dart

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
const IID_IUIAutomationDockPattern = '{fde5ef97-1464-48f6-90bf-43d0948e86ec}';

/// Provides access to a control that enables child elements to be arranged
/// horizontally and vertically, relative to each other.
///
/// {@category com}
class IUIAutomationDockPattern extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IUIAutomationDockPattern(super.ptr);

  factory IUIAutomationDockPattern.from(IUnknown interface) =>
      IUIAutomationDockPattern(
          interface.toInterface(IID_IUIAutomationDockPattern));

  int setDockPosition(int dockPos) => (ptr.ref.vtable + 3)
      .cast<Pointer<NativeFunction<Int32 Function(Pointer, Int32 dockPos)>>>()
      .value
      .asFunction<
          int Function(Pointer, int dockPos)>()(ptr.ref.lpVtbl, dockPos);

  int get currentDockPosition {
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

  int get cachedDockPosition {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = (ptr.ref.vtable + 5)
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
}
