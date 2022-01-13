// IFaxAccountIncomingQueue.dart

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
import '../../devices/fax/IFaxIncomingJobs.dart';
import '../../foundation/structs.g.dart';
import '../../devices/fax/IFaxIncomingJob.dart';

/// @nodoc
const IID_IFaxAccountIncomingQueue = '{DD142D92-0186-4A95-A090-CBC3EADBA6B4}';

/// {@category Interface}
/// {@category com}
class IFaxAccountIncomingQueue extends IDispatch {
  // vtable begins at 7, is 2 entries long.
  IFaxAccountIncomingQueue(Pointer<COMObject> ptr) : super(ptr);

  int GetJobs(
    Pointer<Pointer<COMObject>> pFaxIncomingJobs,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
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
          .elementAt(8)
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
const CLSID_FaxAccountIncomingQueue = '{9BCF6094-B4DA-45F4-B8D6-DDEB2186652C}';

/// {@category com}
class FaxAccountIncomingQueue extends IFaxAccountIncomingQueue {
  FaxAccountIncomingQueue(Pointer<COMObject> ptr) : super(ptr);

  factory FaxAccountIncomingQueue.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_FaxAccountIncomingQueue);
    final iid = calloc<GUID>()..ref.setGUID(IID_IFaxAccountIncomingQueue);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return FaxAccountIncomingQueue(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
