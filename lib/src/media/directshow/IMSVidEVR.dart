// IMSVidEVR.dart

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
import '../../media/mediafoundation/IMFVideoPresenter.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IMSVidEVR = '{15E496AE-82A8-4CF9-A6B6-C561DC60398F}';

/// {@category Interface}
/// {@category com}
class IMSVidEVR extends IMSVidVideoRenderer {
  // vtable begins at 46, is 4 entries long.
  IMSVidEVR(Pointer<COMObject> ptr) : super(ptr);

  Pointer<COMObject> get Presenter {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(46)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppAllocPresent,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppAllocPresent,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set Presenter(Pointer<COMObject> value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(47)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Pointer<COMObject> pAllocPresent,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          Pointer<COMObject> pAllocPresent,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  set SuppressEffects(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(48)
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
          .elementAt(49)
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

/// @nodoc
const CLSID_MSVidEVR = '{C45268A2-FA81-4E19-B1E3-72EDBD60AEDA}';

/// {@category com}
class MSVidEVR extends IMSVidEVR {
  MSVidEVR(Pointer<COMObject> ptr) : super(ptr);

  factory MSVidEVR.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_MSVidEVR);
    final iid = calloc<GUID>()..ref.setGUID(IID_IMSVidEVR);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return MSVidEVR(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
