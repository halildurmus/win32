// IDigitalCableTuneRequest.dart

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

import '../../media/directshow/IATSCChannelTuneRequest.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IDigitalCableTuneRequest = '{BAD7753B-6B37-4810-AE57-3CE0C4A9E6CB}';

/// {@category Interface}
/// {@category com}
class IDigitalCableTuneRequest extends IATSCChannelTuneRequest {
  // vtable begins at 16, is 4 entries long.
  IDigitalCableTuneRequest(Pointer<COMObject> ptr) : super(ptr);

  int get MajorChannel {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pMajorChannel,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pMajorChannel,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set MajorChannel(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(17)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int32 MajorChannel,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int MajorChannel,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get SourceID {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pSourceID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pSourceID,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set SourceID(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(19)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int32 SourceID,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int SourceID,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}

/// @nodoc
const CLSID_DigitalCableTuneRequest = '{26EC0B63-AA90-458A-8DF4-5659F2C8A18A}';

/// {@category com}
class DigitalCableTuneRequest extends IDigitalCableTuneRequest {
  DigitalCableTuneRequest(Pointer<COMObject> ptr) : super(ptr);

  factory DigitalCableTuneRequest.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_DigitalCableTuneRequest);
    final iid = calloc<GUID>()..ref.setGUID(IID_IDigitalCableTuneRequest);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return DigitalCableTuneRequest(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
