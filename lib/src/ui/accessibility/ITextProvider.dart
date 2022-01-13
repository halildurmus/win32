// ITextProvider.dart

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
import '../../system/com/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../ui/accessibility/IRawElementProviderSimple.dart';
import '../../ui/accessibility/ITextRangeProvider.dart';
import '../../ui/accessibility/structs.g.dart';

/// @nodoc
const IID_ITextProvider = '{3589C92C-63F3-4367-99BB-ADA653B77CF2}';

/// {@category Interface}
/// {@category com}
class ITextProvider extends IUnknown {
  // vtable begins at 3, is 6 entries long.
  ITextProvider(Pointer<COMObject> ptr) : super(ptr);

  int GetSelection(
    Pointer<Pointer<SAFEARRAY>> pRetVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<SAFEARRAY>> pRetVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<SAFEARRAY>> pRetVal,
          )>()(
        ptr.ref.lpVtbl,
        pRetVal,
      );

  int GetVisibleRanges(
    Pointer<Pointer<SAFEARRAY>> pRetVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<SAFEARRAY>> pRetVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<SAFEARRAY>> pRetVal,
          )>()(
        ptr.ref.lpVtbl,
        pRetVal,
      );

  int RangeFromChild(
    Pointer<COMObject> childElement,
    Pointer<Pointer<COMObject>> pRetVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> childElement,
            Pointer<Pointer<COMObject>> pRetVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> childElement,
            Pointer<Pointer<COMObject>> pRetVal,
          )>()(
        ptr.ref.lpVtbl,
        childElement,
        pRetVal,
      );

  int RangeFromPoint(
    UiaPoint point,
    Pointer<Pointer<COMObject>> pRetVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            UiaPoint point,
            Pointer<Pointer<COMObject>> pRetVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            UiaPoint point,
            Pointer<Pointer<COMObject>> pRetVal,
          )>()(
        ptr.ref.lpVtbl,
        point,
        pRetVal,
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
            Pointer<Pointer<COMObject>> pRetVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> pRetVal,
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
            Pointer<Int32> pRetVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pRetVal,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }
}
