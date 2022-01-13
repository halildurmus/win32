// IGestureRecognizer.dart

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

/// @nodoc
const IID_IGestureRecognizer = '{AE9EF86B-7054-45E3-AE22-3174DC8811B7}';

/// {@category Interface}
/// {@category com}
class IGestureRecognizer extends IUnknown {
  // vtable begins at 3, is 6 entries long.
  IGestureRecognizer(Pointer<COMObject> ptr) : super(ptr);

  int get Enabled {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pfEnabled,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pfEnabled,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set Enabled(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(4)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int32 fEnabled,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int fEnabled,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get MaxStrokeCount {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pcStrokes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pcStrokes,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set MaxStrokeCount(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(6)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int32 cStrokes,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int cStrokes,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int EnableGestures(
    int cGestures,
    Pointer<Int32> pGestures,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cGestures,
            Pointer<Int32> pGestures,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cGestures,
            Pointer<Int32> pGestures,
          )>()(
        ptr.ref.lpVtbl,
        cGestures,
        pGestures,
      );

  int Reset() => ptr.ref.lpVtbl.value
          .elementAt(8)
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
}

/// @nodoc
const CLSID_GestureRecognizer = '{EA30C654-C62C-441F-AC00-95F9A196782C}';

/// {@category com}
class GestureRecognizer extends IGestureRecognizer {
  GestureRecognizer(Pointer<COMObject> ptr) : super(ptr);

  factory GestureRecognizer.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_GestureRecognizer);
    final iid = calloc<GUID>()..ref.setGUID(IID_IGestureRecognizer);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return GestureRecognizer(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
