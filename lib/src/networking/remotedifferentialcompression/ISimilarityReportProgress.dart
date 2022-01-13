// ISimilarityReportProgress.dart

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
const IID_ISimilarityReportProgress = '{96236A7A-9DBC-11DA-9E3F-0011114AE311}';

/// {@category Interface}
/// {@category com}
class ISimilarityReportProgress extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  ISimilarityReportProgress(Pointer<COMObject> ptr) : super(ptr);

  int ReportProgress(
    int percentCompleted,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 percentCompleted,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int percentCompleted,
          )>()(
        ptr.ref.lpVtbl,
        percentCompleted,
      );
}

/// @nodoc
const CLSID_SimilarityReportProgress = '{96236A8D-9DBC-11DA-9E3F-0011114AE311}';

/// {@category com}
class SimilarityReportProgress extends ISimilarityReportProgress {
  SimilarityReportProgress(Pointer<COMObject> ptr) : super(ptr);

  factory SimilarityReportProgress.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_SimilarityReportProgress);
    final iid = calloc<GUID>()..ref.setGUID(IID_ISimilarityReportProgress);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return SimilarityReportProgress(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
