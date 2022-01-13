// IMSVidAudioRenderer.dart

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

import '../../media/directshow/IMSVidOutputDevice.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IMSVidAudioRenderer = '{37B0353F-A4C8-11D2-B634-00C04F79498E}';

/// {@category Interface}
/// {@category com}
class IMSVidAudioRenderer extends IMSVidOutputDevice {
  // vtable begins at 16, is 4 entries long.
  IMSVidAudioRenderer(Pointer<COMObject> ptr) : super(ptr);

  set Volume(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(16)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int32 lVol,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int lVol,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get Volume {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> lVol,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> lVol,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set Balance(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(18)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int32 lBal,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int lBal,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get Balance {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> lBal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> lBal,
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
const CLSID_MSVidAudioRenderer = '{37B03544-A4C8-11D2-B634-00C04F79498E}';

/// {@category com}
class MSVidAudioRenderer extends IMSVidAudioRenderer {
  MSVidAudioRenderer(Pointer<COMObject> ptr) : super(ptr);

  factory MSVidAudioRenderer.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_MSVidAudioRenderer);
    final iid = calloc<GUID>()..ref.setGUID(IID_IMSVidAudioRenderer);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return MSVidAudioRenderer(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
