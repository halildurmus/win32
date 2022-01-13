// IEvalRat.dart

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

import '../../system/com/IDispatch.dart';
import '../../media/directshow/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IEvalRat = '{C5C5C5B1-3ABC-11D6-B25B-00C04FA0C026}';

/// {@category Interface}
/// {@category com}
class IEvalRat extends IDispatch {
  // vtable begins at 7, is 6 entries long.
  IEvalRat(Pointer<COMObject> ptr) : super(ptr);

  int get_BlockedRatingAttributes(
    int enSystem,
    int enLevel,
    Pointer<Int32> plbfAttrs,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 enSystem,
            Int32 enLevel,
            Pointer<Int32> plbfAttrs,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int enSystem,
            int enLevel,
            Pointer<Int32> plbfAttrs,
          )>()(
        ptr.ref.lpVtbl,
        enSystem,
        enLevel,
        plbfAttrs,
      );

  int put_BlockedRatingAttributes(
    int enSystem,
    int enLevel,
    int lbfAttrs,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
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
          .elementAt(9)
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
        .elementAt(10)
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

  int MostRestrictiveRating(
    int enSystem1,
    int enEnLevel1,
    int lbfEnAttr1,
    int enSystem2,
    int enEnLevel2,
    int lbfEnAttr2,
    Pointer<Int32> penSystem,
    Pointer<Int32> penEnLevel,
    Pointer<Int32> plbfEnAttr,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 enSystem1,
            Int32 enEnLevel1,
            Int32 lbfEnAttr1,
            Int32 enSystem2,
            Int32 enEnLevel2,
            Int32 lbfEnAttr2,
            Pointer<Int32> penSystem,
            Pointer<Int32> penEnLevel,
            Pointer<Int32> plbfEnAttr,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int enSystem1,
            int enEnLevel1,
            int lbfEnAttr1,
            int enSystem2,
            int enEnLevel2,
            int lbfEnAttr2,
            Pointer<Int32> penSystem,
            Pointer<Int32> penEnLevel,
            Pointer<Int32> plbfEnAttr,
          )>()(
        ptr.ref.lpVtbl,
        enSystem1,
        enEnLevel1,
        lbfEnAttr1,
        enSystem2,
        enEnLevel2,
        lbfEnAttr2,
        penSystem,
        penEnLevel,
        plbfEnAttr,
      );

  int TestRating(
    int enShowSystem,
    int enShowLevel,
    int lbfEnShowAttributes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 enShowSystem,
            Int32 enShowLevel,
            Int32 lbfEnShowAttributes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int enShowSystem,
            int enShowLevel,
            int lbfEnShowAttributes,
          )>()(
        ptr.ref.lpVtbl,
        enShowSystem,
        enShowLevel,
        lbfEnShowAttributes,
      );
}

/// @nodoc
const CLSID_EvalRat = '{C5C5C5F1-3ABC-11D6-B25B-00C04FA0C026}';

/// {@category com}
class EvalRat extends IEvalRat {
  EvalRat(Pointer<COMObject> ptr) : super(ptr);

  factory EvalRat.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_EvalRat);
    final iid = calloc<GUID>()..ref.setGUID(IID_IEvalRat);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return EvalRat(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
