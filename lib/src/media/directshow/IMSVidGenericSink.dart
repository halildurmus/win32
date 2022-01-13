// IMSVidGenericSink.dart

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
import '../../media/directshow/structs.g.dart';

/// @nodoc
const IID_IMSVidGenericSink = '{6C29B41D-455B-4C33-963A-0D28E5E555EA}';

/// {@category Interface}
/// {@category com}
class IMSVidGenericSink extends IMSVidOutputDevice {
  // vtable begins at 16, is 3 entries long.
  IMSVidGenericSink(Pointer<COMObject> ptr) : super(ptr);

  int SetSinkFilter(
    Pointer<Utf16> bstrName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrName,
          )>()(
        ptr.ref.lpVtbl,
        bstrName,
      );

  int get SinkStreams {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pStreams,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pStreams,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set SinkStreams(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(18)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int32 Streams,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int Streams,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}

/// @nodoc
const CLSID_MSVidGenericSink = '{4A5869CF-929D-4040-AE03-FCAFC5B9CD42}';

/// {@category com}
class MSVidGenericSink extends IMSVidGenericSink {
  MSVidGenericSink(Pointer<COMObject> ptr) : super(ptr);

  factory MSVidGenericSink.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_MSVidGenericSink);
    final iid = calloc<GUID>()..ref.setGUID(IID_IMSVidGenericSink);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return MSVidGenericSink(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
