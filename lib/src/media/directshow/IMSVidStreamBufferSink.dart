// IMSVidStreamBufferSink.dart

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
import '../../media/directshow/IMSVidStreamBufferRecordingControl.dart';
import '../../specialTypes.dart';

/// @nodoc
const IID_IMSVidStreamBufferSink = '{159DBB45-CD1B-4DAB-83EA-5CB1F4F21D07}';

/// {@category Interface}
/// {@category com}
class IMSVidStreamBufferSink extends IMSVidOutputDevice {
  // vtable begins at 16, is 6 entries long.
  IMSVidStreamBufferSink(Pointer<COMObject> ptr) : super(ptr);

  int get_ContentRecorder(
    Pointer<Utf16> pszFilename,
    Pointer<Pointer<COMObject>> pRecordingIUnknown,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszFilename,
            Pointer<Pointer<COMObject>> pRecordingIUnknown,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszFilename,
            Pointer<Pointer<COMObject>> pRecordingIUnknown,
          )>()(
        ptr.ref.lpVtbl,
        pszFilename,
        pRecordingIUnknown,
      );

  int get_ReferenceRecorder(
    Pointer<Utf16> pszFilename,
    Pointer<Pointer<COMObject>> pRecordingIUnknown,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszFilename,
            Pointer<Pointer<COMObject>> pRecordingIUnknown,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszFilename,
            Pointer<Pointer<COMObject>> pRecordingIUnknown,
          )>()(
        ptr.ref.lpVtbl,
        pszFilename,
        pRecordingIUnknown,
      );

  Pointer<Utf16> get SinkName {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pName,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set SinkName(Pointer<Utf16> value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(19)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Pointer<Utf16> Name,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          Pointer<Utf16> Name,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int NameSetLock() => ptr.ref.lpVtbl.value
          .elementAt(20)
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

  Pointer<COMObject> get SBESink {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> sbeConfig,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> sbeConfig,
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
const CLSID_MSVidStreamBufferSink = '{9E77AAC4-35E5-42A1-BDC2-8F3FF399847C}';

/// {@category com}
class MSVidStreamBufferSink extends IMSVidStreamBufferSink {
  MSVidStreamBufferSink(Pointer<COMObject> ptr) : super(ptr);

  factory MSVidStreamBufferSink.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_MSVidStreamBufferSink);
    final iid = calloc<GUID>()..ref.setGUID(IID_IMSVidStreamBufferSink);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return MSVidStreamBufferSink(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
