// IFaxIncomingQueue.dart

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
import '../../devices/fax/IFaxIncomingJobs.dart';
import '../../devices/fax/IFaxIncomingJob.dart';

/// @nodoc
const IID_IFaxIncomingQueue = '{902E64EF-8FD8-4B75-9725-6014DF161545}';

/// {@category Interface}
/// {@category com}
class IFaxIncomingQueue extends IDispatch {
  // vtable begins at 7, is 6 entries long.
  IFaxIncomingQueue(Pointer<COMObject> ptr) : super(ptr);

  int get Blocked {
    final retValuePtr = calloc<Int16>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int16> pbBlocked,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int16> pbBlocked,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set Blocked(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(8)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int16 bBlocked,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int bBlocked,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int Refresh() => ptr.ref.lpVtbl.value
          .elementAt(9)
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

  int Save() => ptr.ref.lpVtbl.value
          .elementAt(10)
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

  int GetJobs(
    Pointer<Pointer<COMObject>> pFaxIncomingJobs,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> pFaxIncomingJobs,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> pFaxIncomingJobs,
          )>()(
        ptr.ref.lpVtbl,
        pFaxIncomingJobs,
      );

  int GetJob(
    Pointer<Utf16> bstrJobId,
    Pointer<Pointer<COMObject>> pFaxIncomingJob,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrJobId,
            Pointer<Pointer<COMObject>> pFaxIncomingJob,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrJobId,
            Pointer<Pointer<COMObject>> pFaxIncomingJob,
          )>()(
        ptr.ref.lpVtbl,
        bstrJobId,
        pFaxIncomingJob,
      );
}

/// @nodoc
const CLSID_FaxIncomingQueue = '{69131717-F3F1-40E3-809D-A6CBF7BD85E5}';

/// {@category com}
class FaxIncomingQueue extends IFaxIncomingQueue {
  FaxIncomingQueue(Pointer<COMObject> ptr) : super(ptr);

  factory FaxIncomingQueue.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_FaxIncomingQueue);
    final iid = calloc<GUID>()..ref.setGUID(IID_IFaxIncomingQueue);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return FaxIncomingQueue(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
