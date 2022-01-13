// IFaxAccountOutgoingQueue.dart

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
import '../../devices/fax/IFaxOutgoingJobs.dart';
import '../../foundation/structs.g.dart';
import '../../devices/fax/IFaxOutgoingJob.dart';

/// @nodoc
const IID_IFaxAccountOutgoingQueue = '{0F1424E9-F22D-4553-B7A5-0D24BD0D7E46}';

/// {@category Interface}
/// {@category com}
class IFaxAccountOutgoingQueue extends IDispatch {
  // vtable begins at 7, is 2 entries long.
  IFaxAccountOutgoingQueue(Pointer<COMObject> ptr) : super(ptr);

  int GetJobs(
    Pointer<Pointer<COMObject>> pFaxOutgoingJobs,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> pFaxOutgoingJobs,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> pFaxOutgoingJobs,
          )>()(
        ptr.ref.lpVtbl,
        pFaxOutgoingJobs,
      );

  int GetJob(
    Pointer<Utf16> bstrJobId,
    Pointer<Pointer<COMObject>> pFaxOutgoingJob,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrJobId,
            Pointer<Pointer<COMObject>> pFaxOutgoingJob,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrJobId,
            Pointer<Pointer<COMObject>> pFaxOutgoingJob,
          )>()(
        ptr.ref.lpVtbl,
        bstrJobId,
        pFaxOutgoingJob,
      );
}

/// @nodoc
const CLSID_FaxAccountOutgoingQueue = '{FEECEEFB-C149-48BA-BAB8-B791E101F62F}';

/// {@category com}
class FaxAccountOutgoingQueue extends IFaxAccountOutgoingQueue {
  FaxAccountOutgoingQueue(Pointer<COMObject> ptr) : super(ptr);

  factory FaxAccountOutgoingQueue.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_FaxAccountOutgoingQueue);
    final iid = calloc<GUID>()..ref.setGUID(IID_IFaxAccountOutgoingQueue);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return FaxAccountOutgoingQueue(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
