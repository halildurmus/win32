// IAMVideoCompression.dart

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
const IID_IAMVideoCompression = '{C6E13343-30AC-11D0-A18C-00A0C9118956}';

/// {@category Interface}
/// {@category com}
class IAMVideoCompression extends IUnknown {
  // vtable begins at 3, is 11 entries long.
  IAMVideoCompression(Pointer<COMObject> ptr) : super(ptr);

  set KeyFrameRate(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(3)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int32 KeyFrameRate,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int KeyFrameRate,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get KeyFrameRate {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pKeyFrameRate,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pKeyFrameRate,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set PFramesPerKeyFrame(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(5)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int32 PFramesPerKeyFrame,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int PFramesPerKeyFrame,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get PFramesPerKeyFrame {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pPFramesPerKeyFrame,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pPFramesPerKeyFrame,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set Quality(double value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(7)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Double Quality,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          double Quality,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  double get Quality {
    final retValuePtr = calloc<Double>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Double> pQuality,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Double> pQuality,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set WindowSize(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(9)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Uint64 WindowSize,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int WindowSize,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get WindowSize {
    final retValuePtr = calloc<Uint64>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint64> pWindowSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint64> pWindowSize,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int GetInfo(
    Pointer<Utf16> pszVersion,
    Pointer<Int32> pcbVersion,
    Pointer<Utf16> pszDescription,
    Pointer<Int32> pcbDescription,
    Pointer<Int32> pDefaultKeyFrameRate,
    Pointer<Int32> pDefaultPFramesPerKey,
    Pointer<Double> pDefaultQuality,
    Pointer<Int32> pCapabilities,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszVersion,
            Pointer<Int32> pcbVersion,
            Pointer<Utf16> pszDescription,
            Pointer<Int32> pcbDescription,
            Pointer<Int32> pDefaultKeyFrameRate,
            Pointer<Int32> pDefaultPFramesPerKey,
            Pointer<Double> pDefaultQuality,
            Pointer<Int32> pCapabilities,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszVersion,
            Pointer<Int32> pcbVersion,
            Pointer<Utf16> pszDescription,
            Pointer<Int32> pcbDescription,
            Pointer<Int32> pDefaultKeyFrameRate,
            Pointer<Int32> pDefaultPFramesPerKey,
            Pointer<Double> pDefaultQuality,
            Pointer<Int32> pCapabilities,
          )>()(
        ptr.ref.lpVtbl,
        pszVersion,
        pcbVersion,
        pszDescription,
        pcbDescription,
        pDefaultKeyFrameRate,
        pDefaultPFramesPerKey,
        pDefaultQuality,
        pCapabilities,
      );

  int OverrideKeyFrame(
    int FrameNumber,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 FrameNumber,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int FrameNumber,
          )>()(
        ptr.ref.lpVtbl,
        FrameNumber,
      );

  int OverrideFrameSize(
    int FrameNumber,
    int Size,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 FrameNumber,
            Int32 Size,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int FrameNumber,
            int Size,
          )>()(
        ptr.ref.lpVtbl,
        FrameNumber,
        Size,
      );
}
