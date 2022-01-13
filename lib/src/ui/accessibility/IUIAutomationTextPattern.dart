// IUIAutomationTextPattern.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../combase.dart';
import '../../constants.dart';
import '../../exceptions.dart';
import '../../guid.dart';
import '../../macros.dart';
import '../../ole32.dart';
import '../../utils.dart';

import '../../system/com/IUnknown.dart';
import '../../foundation/structs.g.dart';
import '../../ui/accessibility/IUIAutomationTextRange.dart';
import '../../ui/accessibility/IUIAutomationElement.dart';
import '../../ui/accessibility/IUIAutomationTextRangeArray.dart';
import '../../ui/accessibility/structs.g.dart';

/// @nodoc
const IID_IUIAutomationTextPattern = '{32EBA289-3583-42C9-9C59-3B6D9A1E9B6A}';

/// {@category Interface}
/// {@category com}
class IUIAutomationTextPattern extends IUnknown {
  // vtable begins at 3, is 6 entries long.
  IUIAutomationTextPattern(Pointer<COMObject> ptr) : super(ptr);

  int RangeFromPoint(
    POINT pt,
    Pointer<Pointer<COMObject>> range,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            POINT pt,
            Pointer<Pointer<COMObject>> range,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            POINT pt,
            Pointer<Pointer<COMObject>> range,
          )>()(
        ptr.ref.lpVtbl,
        pt,
        range,
      );

  int RangeFromChild(
    Pointer<COMObject> child,
    Pointer<Pointer<COMObject>> range,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> child,
            Pointer<Pointer<COMObject>> range,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> child,
            Pointer<Pointer<COMObject>> range,
          )>()(
        ptr.ref.lpVtbl,
        child,
        range,
      );

  int GetSelection(
    Pointer<Pointer<COMObject>> ranges,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ranges,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ranges,
          )>()(
        ptr.ref.lpVtbl,
        ranges,
      );

  int GetVisibleRanges(
    Pointer<Pointer<COMObject>> ranges,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ranges,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ranges,
          )>()(
        ptr.ref.lpVtbl,
        ranges,
      );

  Pointer<COMObject> get DocumentRange {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> range,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> range,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get SupportedTextSelection {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> supportedTextSelection,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> supportedTextSelection,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }
}
