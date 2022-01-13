// IMSVidVideoRenderer2.dart

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

import '../../media/directshow/IMSVidVideoRenderer.dart';
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';
import '../../media/directshow/IVMRSurfaceAllocator.dart';

/// @nodoc
const IID_IMSVidVideoRenderer2 = '{6BDD5C1E-2810-4159-94BC-05511AE8549B}';

/// {@category Interface}
/// {@category com}
class IMSVidVideoRenderer2 extends IMSVidVideoRenderer {
  // vtable begins at 46, is 7 entries long.
  IMSVidVideoRenderer2(Pointer<COMObject> ptr) : super(ptr);

  Pointer<COMObject> get Allocator {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(46)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> AllocPresent,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> AllocPresent,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get__Allocator(
    Pointer<Pointer<COMObject>> AllocPresent,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(47)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> AllocPresent,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> AllocPresent,
          )>()(
        ptr.ref.lpVtbl,
        AllocPresent,
      );

  int get Allocator_ID {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(48)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> ID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> ID,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int SetAllocator(
    Pointer<COMObject> AllocPresent,
    int ID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(49)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> AllocPresent,
            Int32 ID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> AllocPresent,
            int ID,
          )>()(
        ptr.ref.lpVtbl,
        AllocPresent,
        ID,
      );

  int SetAllocator2(
    Pointer<COMObject> AllocPresent,
    int ID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(50)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> AllocPresent,
            Int32 ID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> AllocPresent,
            int ID,
          )>()(
        ptr.ref.lpVtbl,
        AllocPresent,
        ID,
      );

  set SuppressEffects(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(51)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int16 bSuppress,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int bSuppress,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get SuppressEffects {
    final retValuePtr = calloc<Int16>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(52)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int16> bSuppress,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int16> bSuppress,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }
}
