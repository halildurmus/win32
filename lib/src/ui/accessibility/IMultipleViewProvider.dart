// IMultipleViewProvider.dart

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
import '../../system/com/structs.g.dart';

/// @nodoc
const IID_IMultipleViewProvider = '{6278CAB1-B556-4A1A-B4E0-418ACC523201}';

/// {@category Interface}
/// {@category com}
class IMultipleViewProvider extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IMultipleViewProvider(Pointer<COMObject> ptr) : super(ptr);

  int GetViewName(
    int viewId,
    Pointer<Pointer<Utf16>> pRetVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 viewId,
            Pointer<Pointer<Utf16>> pRetVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int viewId,
            Pointer<Pointer<Utf16>> pRetVal,
          )>()(
        ptr.ref.lpVtbl,
        viewId,
        pRetVal,
      );

  int SetCurrentView(
    int viewId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 viewId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int viewId,
          )>()(
        ptr.ref.lpVtbl,
        viewId,
      );

  int get CurrentView {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(5)
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

  int GetSupportedViews(
    Pointer<Pointer<SAFEARRAY>> pRetVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
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
}
