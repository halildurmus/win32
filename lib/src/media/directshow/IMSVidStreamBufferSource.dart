// IMSVidStreamBufferSource.dart

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

import '../../media/directshow/IMSVidFilePlayback.dart';
import '../../foundation/structs.g.dart';
import '../../specialTypes.dart';
import '../../media/directshow/structs.g.dart';

/// @nodoc
const IID_IMSVidStreamBufferSource = '{EB0C8CF9-6950-4772-87B1-47D11CF3A02F}';

/// {@category Interface}
/// {@category com}
class IMSVidStreamBufferSource extends IMSVidFilePlayback {
  // vtable begins at 34, is 7 entries long.
  IMSVidStreamBufferSource(Pointer<COMObject> ptr) : super(ptr);

  int get Start {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(34)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> lStart,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> lStart,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<COMObject> get RecordingAttribute {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(35)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> pRecordingAttribute,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> pRecordingAttribute,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int CurrentRatings(
    Pointer<Int32> pEnSystem,
    Pointer<Int32> pEnRating,
    Pointer<Int32> pBfEnAttr,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(36)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pEnSystem,
            Pointer<Int32> pEnRating,
            Pointer<Int32> pBfEnAttr,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pEnSystem,
            Pointer<Int32> pEnRating,
            Pointer<Int32> pBfEnAttr,
          )>()(
        ptr.ref.lpVtbl,
        pEnSystem,
        pEnRating,
        pBfEnAttr,
      );

  int MaxRatingsLevel(
    int enSystem,
    int enRating,
    int lbfEnAttr,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(37)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 enSystem,
            Int32 enRating,
            Int32 lbfEnAttr,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int enSystem,
            int enRating,
            int lbfEnAttr,
          )>()(
        ptr.ref.lpVtbl,
        enSystem,
        enRating,
        lbfEnAttr,
      );

  set BlockUnrated(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(38)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int16 bBlock,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int bBlock,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  set UnratedDelay(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(39)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int32 dwDelay,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int dwDelay,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  Pointer<COMObject> get SBESource {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(40)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> sbeFilter,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> sbeFilter,
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
const CLSID_MSVidStreamBufferSource = '{AD8E510D-217F-409B-8076-29C5E73B98E8}';

/// {@category com}
class MSVidStreamBufferSource extends IMSVidStreamBufferSource {
  MSVidStreamBufferSource(Pointer<COMObject> ptr) : super(ptr);

  factory MSVidStreamBufferSource.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_MSVidStreamBufferSource);
    final iid = calloc<GUID>()..ref.setGUID(IID_IMSVidStreamBufferSource);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return MSVidStreamBufferSource(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
