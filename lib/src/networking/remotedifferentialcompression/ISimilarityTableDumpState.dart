// ISimilarityTableDumpState.dart

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
import '../../networking/remotedifferentialcompression/structs.g.dart';

/// @nodoc
const IID_ISimilarityTableDumpState = '{96236A7B-9DBC-11DA-9E3F-0011114AE311}';

/// {@category Interface}
/// {@category com}
class ISimilarityTableDumpState extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  ISimilarityTableDumpState(Pointer<COMObject> ptr) : super(ptr);

  int GetNextData(
    int resultsSize,
    Pointer<Uint32> resultsUsed,
    Pointer<Int32> eof,
    Pointer<SimilarityDumpData> results,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 resultsSize,
            Pointer<Uint32> resultsUsed,
            Pointer<Int32> eof,
            Pointer<SimilarityDumpData> results,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int resultsSize,
            Pointer<Uint32> resultsUsed,
            Pointer<Int32> eof,
            Pointer<SimilarityDumpData> results,
          )>()(
        ptr.ref.lpVtbl,
        resultsSize,
        resultsUsed,
        eof,
        results,
      );
}

/// @nodoc
const CLSID_SimilarityTableDumpState = '{96236A8E-9DBC-11DA-9E3F-0011114AE311}';

/// {@category com}
class SimilarityTableDumpState extends ISimilarityTableDumpState {
  SimilarityTableDumpState(Pointer<COMObject> ptr) : super(ptr);

  factory SimilarityTableDumpState.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_SimilarityTableDumpState);
    final iid = calloc<GUID>()..ref.setGUID(IID_ISimilarityTableDumpState);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return SimilarityTableDumpState(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
