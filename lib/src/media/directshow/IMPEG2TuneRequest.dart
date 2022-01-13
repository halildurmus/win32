// IMPEG2TuneRequest.dart

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

import '../../media/directshow/ITuneRequest.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IMPEG2TuneRequest = '{EB7D987F-8A01-42AD-B8AE-574DEEE44D1A}';

/// {@category Interface}
/// {@category com}
class IMPEG2TuneRequest extends ITuneRequest {
  // vtable begins at 12, is 4 entries long.
  IMPEG2TuneRequest(Pointer<COMObject> ptr) : super(ptr);

  int get TSID {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> TSID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> TSID,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set TSID(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(13)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int32 TSID,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int TSID,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get ProgNo {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> ProgNo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> ProgNo,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set ProgNo(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(15)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int32 ProgNo,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int ProgNo,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}

/// @nodoc
const CLSID_MPEG2TuneRequest = '{0955AC62-BF2E-4CBA-A2B9-A63F772D46CF}';

/// {@category com}
class MPEG2TuneRequest extends IMPEG2TuneRequest {
  MPEG2TuneRequest(Pointer<COMObject> ptr) : super(ptr);

  factory MPEG2TuneRequest.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_MPEG2TuneRequest);
    final iid = calloc<GUID>()..ref.setGUID(IID_IMPEG2TuneRequest);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return MPEG2TuneRequest(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
