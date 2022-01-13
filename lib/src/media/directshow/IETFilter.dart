// IETFilter.dart

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
import '../../media/directshow/structs.g.dart';

/// @nodoc
const IID_IETFilter = '{C4C4C4B1-0049-4E2B-98FB-9537F6CE516D}';

/// {@category Interface}
/// {@category com}
class IETFilter extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IETFilter(Pointer<COMObject> ptr) : super(ptr);

  int get EvalRatObjOK {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pHrCoCreateRetVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pHrCoCreateRetVal,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int GetCurrRating(
    Pointer<Int32> pEnSystem,
    Pointer<Int32> pEnRating,
    Pointer<Int32> plbfEnAttr,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pEnSystem,
            Pointer<Int32> pEnRating,
            Pointer<Int32> plbfEnAttr,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pEnSystem,
            Pointer<Int32> pEnRating,
            Pointer<Int32> plbfEnAttr,
          )>()(
        ptr.ref.lpVtbl,
        pEnSystem,
        pEnRating,
        plbfEnAttr,
      );

  int GetCurrLicenseExpDate(
    Pointer<Int32> protType,
    Pointer<Int32> lpDateTime,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> protType,
            Pointer<Int32> lpDateTime,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> protType,
            Pointer<Int32> lpDateTime,
          )>()(
        ptr.ref.lpVtbl,
        protType,
        lpDateTime,
      );

  int GetLastErrorCode() => ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int SetRecordingOn(
    int fRecState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fRecState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fRecState,
          )>()(
        ptr.ref.lpVtbl,
        fRecState,
      );
}

/// @nodoc
const CLSID_ETFilter = '{C4C4C4F1-0049-4E2B-98FB-9537F6CE516D}';

/// {@category com}
class ETFilter extends IETFilter {
  ETFilter(Pointer<COMObject> ptr) : super(ptr);

  factory ETFilter.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_ETFilter);
    final iid = calloc<GUID>()..ref.setGUID(IID_IETFilter);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return ETFilter(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
