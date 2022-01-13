// IDTFilter.dart

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
const IID_IDTFilter = '{C4C4C4B2-0049-4E2B-98FB-9537F6CE516D}';

/// {@category Interface}
/// {@category com}
class IDTFilter extends IUnknown {
  // vtable begins at 3, is 8 entries long.
  IDTFilter(Pointer<COMObject> ptr) : super(ptr);

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

  int get_BlockedRatingAttributes(
    int enSystem,
    int enLevel,
    Pointer<Int32> plbfEnAttr,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 enSystem,
            Int32 enLevel,
            Pointer<Int32> plbfEnAttr,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int enSystem,
            int enLevel,
            Pointer<Int32> plbfEnAttr,
          )>()(
        ptr.ref.lpVtbl,
        enSystem,
        enLevel,
        plbfEnAttr,
      );

  int put_BlockedRatingAttributes(
    int enSystem,
    int enLevel,
    int lbfAttrs,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 enSystem,
            Int32 enLevel,
            Int32 lbfAttrs,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int enSystem,
            int enLevel,
            int lbfAttrs,
          )>()(
        ptr.ref.lpVtbl,
        enSystem,
        enLevel,
        lbfAttrs,
      );

  int get BlockUnRated {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pfBlockUnRatedShows,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pfBlockUnRatedShows,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set BlockUnRated(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(8)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int32 fBlockUnRatedShows,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int fBlockUnRatedShows,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get BlockUnRatedDelay {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pmsecsDelayBeforeBlock,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pmsecsDelayBeforeBlock,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set BlockUnRatedDelay(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(10)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int32 msecsDelayBeforeBlock,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int msecsDelayBeforeBlock,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}

/// @nodoc
const CLSID_DTFilter = '{C4C4C4F2-0049-4E2B-98FB-9537F6CE516D}';

/// {@category com}
class DTFilter extends IDTFilter {
  DTFilter(Pointer<COMObject> ptr) : super(ptr);

  factory DTFilter.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_DTFilter);
    final iid = calloc<GUID>()..ref.setGUID(IID_IDTFilter);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return DTFilter(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
