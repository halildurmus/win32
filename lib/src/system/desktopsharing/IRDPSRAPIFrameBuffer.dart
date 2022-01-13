// IRDPSRAPIFrameBuffer.dart

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
import '../../foundation/structs.g.dart';
import '../../system/com/structs.g.dart';

/// @nodoc
const IID_IRDPSRAPIFrameBuffer = '{3D67E7D2-B27B-448E-81B3-C6110ED8B4BE}';

/// {@category Interface}
/// {@category com}
class IRDPSRAPIFrameBuffer extends IDispatch {
  // vtable begins at 7, is 4 entries long.
  IRDPSRAPIFrameBuffer(Pointer<COMObject> ptr) : super(ptr);

  int get Width {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> plWidth,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> plWidth,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get Height {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> plHeight,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> plHeight,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get Bpp {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> plBpp,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> plBpp,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int GetFrameBufferBits(
    int x,
    int y,
    int Width,
    int Heigth,
    Pointer<Pointer<SAFEARRAY>> ppBits,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 x,
            Int32 y,
            Int32 Width,
            Int32 Heigth,
            Pointer<Pointer<SAFEARRAY>> ppBits,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int x,
            int y,
            int Width,
            int Heigth,
            Pointer<Pointer<SAFEARRAY>> ppBits,
          )>()(
        ptr.ref.lpVtbl,
        x,
        y,
        Width,
        Heigth,
        ppBits,
      );
}

/// @nodoc
const CLSID_RDPSRAPIFrameBuffer = '{A4F66BCC-538E-4101-951D-30847ADB5101}';

/// {@category com}
class RDPSRAPIFrameBuffer extends IRDPSRAPIFrameBuffer {
  RDPSRAPIFrameBuffer(Pointer<COMObject> ptr) : super(ptr);

  factory RDPSRAPIFrameBuffer.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_RDPSRAPIFrameBuffer);
    final iid = calloc<GUID>()..ref.setGUID(IID_IRDPSRAPIFrameBuffer);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return RDPSRAPIFrameBuffer(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
