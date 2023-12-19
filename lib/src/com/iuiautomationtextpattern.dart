// iuiautomationtextpattern.dart

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
const IID_IUIAutomationTextPattern = '{32eba289-3583-42c9-9c59-3b6d9a1e9b6a}';

/// Provides access to a control that contains text.
///
/// {@category com}
class IUIAutomationTextPattern extends IUnknown {
  // vtable begins at 3, is 6 entries long.
  IUIAutomationTextPattern(super.ptr);

  factory IUIAutomationTextPattern.from(IUnknown interface) =>
      IUIAutomationTextPattern(
          interface.toInterface(IID_IUIAutomationTextPattern));

  int rangeFromPoint(POINT pt, Pointer<Pointer<COMObject>> range) => ptr
      .ref.vtable
      .elementAt(3)
      .cast<
          Pointer<
              NativeFunction<
                  Int32 Function(
                      Pointer, POINT pt, Pointer<Pointer<COMObject>> range)>>>()
      .value
      .asFunction<
          int Function(Pointer, POINT pt,
              Pointer<Pointer<COMObject>> range)>()(ptr.ref.lpVtbl, pt, range);

  int rangeFromChild(
          Pointer<COMObject> child, Pointer<Pointer<COMObject>> range) =>
      ptr
              .ref.vtable
              .elementAt(4)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer, Pointer<COMObject> child,
                              Pointer<Pointer<COMObject>> range)>>>()
              .value
              .asFunction<
                  int Function(Pointer, Pointer<COMObject> child,
                      Pointer<Pointer<COMObject>> range)>()(
          ptr.ref.lpVtbl, child, range);

  int getSelection(Pointer<Pointer<COMObject>> ranges) => ptr.ref.vtable
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
                          Pointer, Pointer<Pointer<COMObject>> ranges)>>>()
          .value
          .asFunction<
              int Function(Pointer, Pointer<Pointer<COMObject>> ranges)>()(
      ptr.ref.lpVtbl, ranges);

  int getVisibleRanges(Pointer<Pointer<COMObject>> ranges) => ptr.ref.vtable
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
                          Pointer, Pointer<Pointer<COMObject>> ranges)>>>()
          .value
          .asFunction<
              int Function(Pointer, Pointer<Pointer<COMObject>> ranges)>()(
      ptr.ref.lpVtbl, ranges);

  Pointer<COMObject> get documentRange {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(7)
            .cast<
                Pointer<
                    NativeFunction<
                        Int32 Function(Pointer, Pointer<COMObject> range)>>>()
            .value
            .asFunction<int Function(Pointer, Pointer<COMObject> range)>()(
        ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return retValuePtr;
  }

  int get supportedTextSelection {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(8)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer,
                              Pointer<Int32> supportedTextSelection)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer, Pointer<Int32> supportedTextSelection)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }
}
